package com.qeedoo.ui.view.comp
{
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.JSONUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.ToolTipVO;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.compDragable.EquiptFuncPanel;
   import com.qeedoo.ui.view.compDragable.ProductPanel;
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
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.states.RemoveChild;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipEquip extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _993674992propSuit:Text;
      
      private var _285513520magicWeaponAdditional:VBox;
      
      private var _1716723311petStone5:Image;
      
      private var _1318946322artifactSkillStr:Text;
      
      private var _1638753418iconImg:Image;
      
      private var _81196151magicWeaponSkill1:Repeater;
      
      private var _994192832propBind:Text;
      
      private var _81196152magicWeaponSkill0:Text;
      
      private var _955531502_TipEquip_VBox2:VBox;
      
      private var _1565378349petStoneText:Text;
      
      private var _1716723309petStone3:Image;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _849270234tipContainer:VBox;
      
      private var _3769vo:ToolTipVO;
      
      public var _TipEquip_Text1:Text;
      
      public var _TipEquip_Text2:Text;
      
      public var _TipEquip_Text6:Text;
      
      private var _1311839802tipName:Label;
      
      private var _959581682qiling:Text;
      
      private var _714532018artifactSubSkillStr:Text;
      
      private var _99346des:Label;
      
      private var dm:DataManager;
      
      private var _core:Core;
      
      public var _TipEquip_Label2:Label;
      
      private var _1298740563endure:Text;
      
      public var _TipEquip_Label6:Label;
      
      public var _TipEquip_Label3:Label;
      
      private var _431118970reqLevel:Text;
      
      public var _TipEquip_RemoveChild1:RemoveChild;
      
      private var _1716723310petStone4:Image;
      
      private var obj:Object;
      
      public var _TipEquip_Text13:Array;
      
      public var _TipEquip_Text17:Text;
      
      public var _TipEquip_Text19:Text;
      
      private var _1095316408currencyPrice:Currency;
      
      private var _1716723308petStone2:Image;
      
      public var _TipEquip_Image2:Image;
      
      public var _TipEquip_Image3:Image;
      
      public var _TipEquip_Image4:Image;
      
      public var _TipEquip_Image5:Image;
      
      public var _TipEquip_Image6:Image;
      
      public var _TipEquip_Image7:Image;
      
      public var _TipEquip_Image8:Image;
      
      public var _TipEquip_Image9:Image;
      
      private var _1716723312petStone6:Image;
      
      public var _TipEquip_Image10:Image;
      
      public var _TipEquip_Image11:Image;
      
      public var _TipEquip_Image12:Image;
      
      public var _TipEquip_Image13:Array;
      
      private var _549739330canSell:Label;
      
      private var _302557384petStoneSkillText:Text;
      
      public var _TipEquip_Image20:Image;
      
      public var _TipEquip_Image21:Image;
      
      public var _TipEquip_Image22:Image;
      
      public var _TipEquip_Image23:Image;
      
      public var _TipEquip_Image24:Image;
      
      public var _TipEquip_Image25:Image;
      
      public var _TipEquip_Image26:Image;
      
      public var _TipEquip_Image27:Image;
      
      public var _TipEquip_Image29:Image;
      
      public var _TipEquip_Image28:Image;
      
      public var _TipEquip_SetProperty2:SetProperty;
      
      private var _993680394propSoul:Text;
      
      private var _267844315magicWeaponLevel:Text;
      
      private var _148001439useType:Text;
      
      private var _1449103471jewelInfo:Text;
      
      mx_internal var _watchers:Array;
      
      public var _TipEquip_Button1:Button;
      
      private var _1590276251petStoneContainer:HBox;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1202564229jewelCanvas:Canvas;
      
      private var _1887817563sublimation:Text;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1716723307petStone1:Image;
      
      public function TipEquip()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BasicToolTip,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "id":"tipContainer",
                  "stylesFactory":function():void
                  {
                     this.verticalGap = 0;
                     this.paddingLeft = 5;
                     this.paddingRight = 5;
                     this.paddingTop = 5;
                     this.paddingBottom = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":57,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"tipName",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":45,
                                          "y":5,
                                          "text":"完美的什么装备名字[金]"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_TipEquip_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 3997440;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2,
                                          "y":39,
                                          "text":"已绑定"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_TipEquip_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "right";
                                       this.right = "5";
                                       this.color = 16766552;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":38,
                                          "text":"名字最长的人打造",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"iconImg",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":5,
                                          "width":32,
                                          "height":32
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":46,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":74,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":88,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":102,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":115.75,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":129.5,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":143,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":156.75,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":170.75,
                                          "y":22,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_TipEquip_Button1",
                                    "events":{"click":"___TipEquip_Button1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "styleName":"BtnToolTipClose",
                                          "width":15,
                                          "height":15
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipEquip_Text1",
                           "stylesFactory":function():void
                           {
                              this.color = 16773307;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"text":"装备描述"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipEquip_Text2",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"装备位置: 主手"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"useType",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"使用对象: 123"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"reqLevel",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"等级需求: 123"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"magicWeaponLevel",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"神器等级: 123"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipEquip_Text6",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"物理攻击: 9999"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"endure",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"装备耐久: 9999/9999"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"propBind",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"绑定属性"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"propSoul",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"灵魂属性"};
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "id":"magicWeaponAdditional",
                           "stylesFactory":function():void
                           {
                              this.verticalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Text,
                                 "id":"magicWeaponSkill0",
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":"神器技能: "};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"_TipEquip_Image12",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":25,
                                             "y":5,
                                             "width":12,
                                             "height":12
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Text,
                                       "id":"artifactSkillStr",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":40,
                                             "y":3,
                                             "text":"XXX技能"
                                          };
                                       }
                                    })]};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Text,
                                 "id":"artifactSubSkillStr",
                                 "propertiesFactory":function():Object
                                 {
                                    return {"text":"魂威技能:"};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Repeater,
                                 "id":"magicWeaponSkill1",
                                 "propertiesFactory":function():Object
                                 {
                                    return {"childDescriptors":[new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {"childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_TipEquip_Image13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":25,
                                                   "y":5,
                                                   "width":12,
                                                   "height":12
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Text,
                                             "id":"_TipEquip_Text13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":40,
                                                   "y":3,
                                                   "text":"XXX技能"
                                                };
                                             }
                                          })]};
                                       }
                                    })]};
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"propSuit",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"套装属性"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"petStoneText",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"Đá TBPet",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"petStoneContainer",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"petStone1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"petStone2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"petStone3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"petStone4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"petStone5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"petStone6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"petStoneSkillText",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipEquip_Text17",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"宝石属性"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"jewelCanvas",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":19,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image20",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image21",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":17.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image22",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":32.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image23",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":47.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image24",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":61.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image25",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":76.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image26",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":91.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image27",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":106.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image28",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":121.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipEquip_Image29",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":136.4,
                                          "y":3,
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"jewelInfo",
                           "stylesFactory":function():void
                           {
                              this.color = 7829367;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"text":""};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipEquip_Text19",
                           "stylesFactory":function():void
                           {
                              this.color = 65280;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"text":"装备描述2"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"currencyPrice"
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"canSell",
                           "stylesFactory":function():void
                           {
                              this.color = 13158600;
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"sublimation",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"qiling",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"des",
                           "stylesFactory":function():void
                           {
                              this.color = 7829367;
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_TipEquip_Label6",
                           "stylesFactory":function():void
                           {
                              this.color = 7829367;
                           }
                        })]
                     };
                  }
               })]};
            }
         });
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.currentState = "common";
         this.states = [_TipEquip_State1_c(),_TipEquip_State2_c()];
         this.addEventListener("resize",___TipEquip_BasicToolTip1_resize);
      }
      
      private static function getSuitPropStr(param1:int, param2:int, param3:String = "", param4:int = -1) : String
      {
         var _loc6_:Object = null;
         var _loc5_:Boolean = false;
         if(param1 > 0 && param2 > 0)
         {
            if(param1 == GamePredef.EQUSUIT_PROP_HP_PER || param1 == GamePredef.EQUSUIT_PROP_MP_PER || param1 == GamePredef.EQUSUIT_PROP_ATTACK_PER || param1 == GamePredef.EQUSUIT_PROP_MATTACK_PER || param1 == GamePredef.EQUSUIT_PROP_DEFENCE_PER || param1 == GamePredef.EQUSUIT_PROP_MDEFENCE_PER || param1 == GamePredef.EQUSUIT_PROP_ENHPHYHURT)
            {
               _loc5_ = true;
            }
            if(param4 >= 2)
            {
               _loc6_ = {
                  "0":1,
                  "1":1,
                  "2":0.5,
                  "3":1,
                  "4":2
               };
               if(_loc5_)
               {
                  if(param1 == GamePredef.EQUSUIT_PROP_ENHPHYHURT)
                  {
                     param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + Number(param2 * _loc6_[param4]) / 100 + "% " + param3 + "\n";
                  }
                  else
                  {
                     param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + int(param2 * _loc6_[param4]) + "% " + param3 + "\n";
                  }
               }
               else if(param1 == GamePredef.EQUSUIT_PROP_CRITICAL_DAMAGE)
               {
                  param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + Number(param2 * _loc6_[param4] / 10000).toFixed(2) + " " + param3 + "\n";
               }
               else
               {
                  param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + int(param2 * _loc6_[param4]) + " " + param3 + "\n";
               }
               param3 = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param4] + "\'>" + param3 + "</font>";
            }
            else if(param4 >= 0)
            {
               if(_loc5_)
               {
                  if(param1 == GamePredef.EQUSUIT_PROP_ENHPHYHURT)
                  {
                     param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + Number(param2 * 0.5 / 100) + "%-" + Number(param2 * 2 / 100) + "% " + param3 + "\n";
                  }
                  else
                  {
                     param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + int(param2 * 0.5) + "%-" + param2 * 2 + "% " + param3 + "\n";
                  }
               }
               else if(param1 == GamePredef.EQUSUIT_PROP_CRITICAL_DAMAGE)
               {
                  param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + Number(param2 * 0.5 / 10000).toFixed(2) + "-" + Number(param2 * 2 / 10000).toFixed(2) + " " + param3 + "\n";
               }
               else
               {
                  param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + int(param2 * 0.5) + "-" + param2 * 2 + " " + param3 + "\n";
               }
               param3 = BasicToolTip.FONT_COLOR_PRE_UNACTIVE + param3 + BasicToolTip.FONT_COLOR_SUF_UNACTIVE;
            }
            else
            {
               param3 = GamePredef.EQUSUIT_PROP_NAME[param1] + ": " + int(param2) + "\n";
               param3 = BasicToolTip.COLOR_YELLOW.replace("{str}",param3);
            }
         }
         return param3;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipEquip._watcherSetupUtil = param1;
      }
      
      private function _TipEquip_SetProperty1_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "height";
         _loc1_.value = 472;
         return _loc1_;
      }
      
      public function set propSoul(param1:Text) : void
      {
         var _loc2_:Object = this._993680394propSoul;
         if(_loc2_ !== param1)
         {
            this._993680394propSoul = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propSoul",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get artifactSkillStr() : Text
      {
         return this._1318946322artifactSkillStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get qiling() : Text
      {
         return this._959581682qiling;
      }
      
      public function set qiling(param1:Text) : void
      {
         var _loc2_:Object = this._959581682qiling;
         if(_loc2_ !== param1)
         {
            this._959581682qiling = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qiling",_loc2_,param1));
         }
      }
      
      public function set propSuit(param1:Text) : void
      {
         var _loc2_:Object = this._993674992propSuit;
         if(_loc2_ !== param1)
         {
            this._993674992propSuit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propSuit",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tipContainer() : VBox
      {
         return this._849270234tipContainer;
      }
      
      [Bindable(event="propertyChange")]
      public function get des() : Label
      {
         return this._99346des;
      }
      
      private function _TipEquip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currencyPrice;
         _loc1_ = tipContainer;
         _loc1_ = vo.name;
         _loc1_ = vo.bind;
         _loc1_ = vo.maker;
         _loc1_ = vo.urlIcon;
         _loc1_ = vo.clsStar1;
         _loc1_ = vo.clsStar2;
         _loc1_ = vo.clsStar3;
         _loc1_ = vo.clsStar4;
         _loc1_ = vo.clsStar5;
         _loc1_ = vo.clsStar6;
         _loc1_ = vo.clsStar7;
         _loc1_ = vo.clsStar8;
         _loc1_ = vo.clsStar9;
         _loc1_ = vo.clsStar10;
         _loc1_ = vo.btnVisible;
         _loc1_ = vo.description;
         _loc1_ = vo.position;
         _loc1_ = vo.useType;
         _loc1_ = vo.reqLevel;
         _loc1_ = vo.level;
         _loc1_ = vo.level != null;
         _loc1_ = vo.propBasic;
         _loc1_ = vo.propBasic != null;
         _loc1_ = vo.endure;
         _loc1_ = vo.endure != null;
         _loc1_ = vo.propBind;
         _loc1_ = vo.propBind != null;
         _loc1_ = vo.propSoul;
         _loc1_ = vo.propSoul != null;
         _loc1_ = COLOR_YELLOW.replace("{str}",Language.TIPEQUIP_S[29]);
         _loc1_ = ResManager.ICON_EQUIP_JEWEL_15;
         _loc1_ = COLOR_YELLOW.replace("{str}",Language.TIPEQUIP_S[30]);
         _loc1_ = ResManager.ICON_EQUIP_JEWEL_16;
         _loc1_ = magicWeaponSkill1.currentItem.tip;
         _loc1_ = vo.propSuit;
         _loc1_ = vo.propSuit != null;
         _loc1_ = ResManager.ICON_EQUIP_HOLE;
         _loc1_ = ResManager.ICON_EQUIP_HOLE;
         _loc1_ = ResManager.ICON_EQUIP_HOLE;
         _loc1_ = ResManager.ICON_EQUIP_HOLE;
         _loc1_ = ResManager.ICON_EQUIP_HOLE;
         _loc1_ = ResManager.ICON_EQUIP_HOLE;
         _loc1_ = vo.propJewel;
         _loc1_ = vo.propJewel != null;
         _loc1_ = vo.clsJewel1;
         _loc1_ = vo.clsJewel2;
         _loc1_ = vo.clsJewel3;
         _loc1_ = vo.clsJewel4;
         _loc1_ = vo.clsJewel5;
         _loc1_ = vo.clsJewel6;
         _loc1_ = vo.clsJewel7;
         _loc1_ = vo.clsJewel8;
         _loc1_ = vo.clsJewel9;
         _loc1_ = vo.clsJewel10;
         _loc1_ = vo.info;
         _loc1_ = vo.info != null;
         _loc1_ = vo.currency;
         _loc1_ = vo.currencyType;
         _loc1_ = vo.costVisible;
         _loc1_ = vo.costVisible;
         _loc1_ = !vo.costVisible;
         _loc1_ = !vo.costVisible;
         _loc1_ = Language.TIPEQUIP_S[24];
         _loc1_ = Language.TIPEQUIP_S[34];
      }
      
      public function set _TipEquip_VBox2(param1:VBox) : void
      {
         var _loc2_:Object = this._955531502_TipEquip_VBox2;
         if(_loc2_ !== param1)
         {
            this._955531502_TipEquip_VBox2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TipEquip_VBox2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propBind() : Text
      {
         return this._994192832propBind;
      }
      
      public function set tipContainer(param1:VBox) : void
      {
         var _loc2_:Object = this._849270234tipContainer;
         if(_loc2_ !== param1)
         {
            this._849270234tipContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipContainer",_loc2_,param1));
         }
      }
      
      public function set artifactSkillStr(param1:Text) : void
      {
         var _loc2_:Object = this._1318946322artifactSkillStr;
         if(_loc2_ !== param1)
         {
            this._1318946322artifactSkillStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"artifactSkillStr",_loc2_,param1));
         }
      }
      
      public function set des(param1:Label) : void
      {
         var _loc2_:Object = this._99346des;
         if(_loc2_ !== param1)
         {
            this._99346des = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"des",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petStone1() : Image
      {
         return this._1716723307petStone1;
      }
      
      [Bindable(event="propertyChange")]
      public function get petStone2() : Image
      {
         return this._1716723308petStone2;
      }
      
      [Bindable(event="propertyChange")]
      public function get petStone3() : Image
      {
         return this._1716723309petStone3;
      }
      
      [Bindable(event="propertyChange")]
      public function get petStone4() : Image
      {
         return this._1716723310petStone4;
      }
      
      [Bindable(event="propertyChange")]
      public function get petStone5() : Image
      {
         return this._1716723311petStone5;
      }
      
      private function setLotto(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc2_:Number = Number(GamePredef.EQUIPT_QUALITY[param1.slotData.q - 1]);
         var _loc3_:Number = Number(GamePredef.EQUIPT_QUALITY[param1.slotData.q]);
         if(param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
         {
            _loc4_ = Math.round(param1.slotData.q);
            if(!Number(param1.slotData.q) || Number(param1.slotData.q) < 0)
            {
               _loc4_ = "MIN";
            }
            else if(Number(param1.slotData.q) > 8)
            {
               _loc4_ = "MAX";
            }
            _loc2_ = Number(GamePredef.ARTIFACT_QUALITY[_loc4_].min);
            _loc3_ = Number(GamePredef.ARTIFACT_QUALITY[_loc4_].max);
         }
         vo.costVisible = param1.temp.tradable > 0;
         if(param1.slotData.q > 0 && param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER)
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.slotData.q)] + "\'>" + GamePredef.PRE_EQU_NAME[_core.basic.getPreByQuality(param1.slotData.q)] + vo.name + "</font>";
         }
         if(param1.slotData.q > 0 && param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
         {
            vo.name += GamePredef.ARTIFACT_QUALITY_NAME_ARR[param1.slotData.q - 1];
         }
         if(ToolKit.isBigOrEqual(param1.temp.color,0))
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.temp.color] + "\'>" + vo.name + "</font>";
         }
         if(param1.slotData.q >= 5 && param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER)
         {
            vo.name += Language.TIPEQUIP_S[2];
         }
         vo.propBasic = "";
         if(param1.temp.mainProp1 > 0)
         {
            vo.propBasic = GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp1] + ": " + FONT_COLOR_PRE_PROP + int(param1.temp.mainPropNum1 * _loc2_) + "-" + int(param1.temp.mainPropNum1 * _loc3_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.mainProp2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp2] + ": " + FONT_COLOR_PRE_PROP + int(param1.temp.mainPropNum2 * _loc2_) + "-" + int(param1.temp.mainPropNum2 * _loc3_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop1 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop1] + ": " + FONT_COLOR_PRE_PROP + int(param1.temp.propNum1 * _loc2_) + "-" + int(param1.temp.propNum1 * _loc3_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop2] + ": " + FONT_COLOR_PRE_PROP + int(param1.temp.propNum2 * _loc2_) + "-" + int(param1.temp.propNum2 * _loc3_) + FONT_COLOR_SUF_PROP;
         }
         vo.propBind = "";
         if(param1.temp.bindPropNum > 0 && (param1.slotData.q >= 6 || param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON || param1.temp.kind == GamePredef.ITEM_KIND_FLYER))
         {
            propBind.visible = true;
            propBind.includeInLayout = true;
            _loc5_ = param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON || param1.temp.kind == GamePredef.ITEM_KIND_FLYER ? int(param1.temp.bindPropNum) : "0-" + int(param1.temp.bindPropNum * _loc3_);
            vo.propBind = PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp1] + ": " + FONT_COLOR_PRE_PROP + _loc5_ + "%" + FONT_COLOR_SUF_PROP;
            vo.propBind += "\n";
            vo.propBind += PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp2] + ": " + FONT_COLOR_PRE_PROP + _loc5_ + "%" + FONT_COLOR_SUF_PROP;
         }
         if(param1.slotData.b <= 0)
         {
            if(vo.propBind.length > 0)
            {
               vo.propBind = FONT_COLOR_PRE_UNACTIVE + vo.propBind + FONT_COLOR_SUF_UNACTIVE;
            }
         }
         if(vo.propBind.length > 0)
         {
            vo.propBind = PRE_BIND_PROP + "\n" + vo.propBind;
         }
         if(param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER && param1.temp.kind != GamePredef.ITEM_KIND_PETEQU)
         {
            vo.propJewel = Language.TIPEQUIP_S[5];
         }
         if(param1.slotData.q >= 15 && param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER)
         {
            propSoul.visible = true;
            propSoul.includeInLayout = true;
            vo.propSoul = Language.TIPEQUIP_S[6];
         }
      }
      
      public function set magicWeaponAdditional(param1:VBox) : void
      {
         var _loc2_:Object = this._285513520magicWeaponAdditional;
         if(_loc2_ !== param1)
         {
            this._285513520magicWeaponAdditional = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicWeaponAdditional",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petStone6() : Image
      {
         return this._1716723312petStone6;
      }
      
      public function set propBind(param1:Text) : void
      {
         var _loc2_:Object = this._994192832propBind;
         if(_loc2_ !== param1)
         {
            this._994192832propBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propBind",_loc2_,param1));
         }
      }
      
      public function set canSell(param1:Label) : void
      {
         var _loc2_:Object = this._549739330canSell;
         if(_loc2_ !== param1)
         {
            this._549739330canSell = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSell",_loc2_,param1));
         }
      }
      
      public function set petStoneSkillText(param1:Text) : void
      {
         var _loc2_:Object = this._302557384petStoneSkillText;
         if(_loc2_ !== param1)
         {
            this._302557384petStoneSkillText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStoneSkillText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImg() : Image
      {
         return this._1638753418iconImg;
      }
      
      private function isEquSid(param1:int) : void
      {
         var _loc2_:Core = Core.getInstance();
         _loc2_.remote.call("isEquSid",new Responder(onIsEquSid),param1);
      }
      
      public function set object(param1:Object) : void
      {
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         vo = new ToolTipVO();
         obj = param1;
         if(!param1.temp)
         {
            return;
         }
         setCommon(param1);
         if(param1.slotType == Slot.SLOT_TREASURE && (param1.slotData.q || Number(param1.slotData.quality)))
         {
            if(!param1.slotData.q)
            {
               param1.slotData.q = param1.slotData.quality;
            }
            setTreasure(param1);
         }
         else if(param1.slotType == Slot.SLOT_LOTTO && (param1.slotData.q || Number(param1.slotData.quality)))
         {
            if(param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
            {
               setLotto(param1);
            }
            else if(param1.type == BasicToolTip.TYPE_TEMP)
            {
               setTemp(param1);
            }
            else
            {
               setInst(param1);
            }
         }
         else if(param1.slotType == Slot.SLOT_TEMPORARY_BAG)
         {
            setLotto(param1);
         }
         else if(param1.q > 0)
         {
            if(!param1.slotData)
            {
               param1.slotData = {"q":param1.q};
            }
            setLotto(param1);
         }
         else if(param1.type == BasicToolTip.TYPE_TEMP)
         {
            setTemp(param1);
         }
         else
         {
            setInst(param1);
         }
      }
      
      private function equipDataLoaded(param1:GameDataEvent) : void
      {
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.data.id,equipDataLoaded);
         vo.activeEquipName = param1.data.name;
         refreshSoul();
      }
      
      public function set artifactSubSkillStr(param1:Text) : void
      {
         var _loc2_:Object = this._714532018artifactSubSkillStr;
         if(_loc2_ !== param1)
         {
            this._714532018artifactSubSkillStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"artifactSubSkillStr",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimation() : Text
      {
         return this._1887817563sublimation;
      }
      
      [Bindable(event="propertyChange")]
      public function get petStoneContainer() : HBox
      {
         return this._1590276251petStoneContainer;
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      public function set useType(param1:Text) : void
      {
         var _loc2_:Object = this._148001439useType;
         if(_loc2_ !== param1)
         {
            this._148001439useType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useType",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get endure() : Text
      {
         return this._1298740563endure;
      }
      
      public function set petStone1(param1:Image) : void
      {
         var _loc2_:Object = this._1716723307petStone1;
         if(_loc2_ !== param1)
         {
            this._1716723307petStone1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStone1",_loc2_,param1));
         }
      }
      
      public function set petStone2(param1:Image) : void
      {
         var _loc2_:Object = this._1716723308petStone2;
         if(_loc2_ !== param1)
         {
            this._1716723308petStone2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStone2",_loc2_,param1));
         }
      }
      
      public function set petStone3(param1:Image) : void
      {
         var _loc2_:Object = this._1716723309petStone3;
         if(_loc2_ !== param1)
         {
            this._1716723309petStone3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStone3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get magicWeaponLevel() : Text
      {
         return this._267844315magicWeaponLevel;
      }
      
      public function set petStone5(param1:Image) : void
      {
         var _loc2_:Object = this._1716723311petStone5;
         if(_loc2_ !== param1)
         {
            this._1716723311petStone5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStone5",_loc2_,param1));
         }
      }
      
      public function ___TipEquip_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function set petStone6(param1:Image) : void
      {
         var _loc2_:Object = this._1716723312petStone6;
         if(_loc2_ !== param1)
         {
            this._1716723312petStone6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStone6",_loc2_,param1));
         }
      }
      
      public function set petStone4(param1:Image) : void
      {
         var _loc2_:Object = this._1716723310petStone4;
         if(_loc2_ !== param1)
         {
            this._1716723310petStone4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStone4",_loc2_,param1));
         }
      }
      
      private function setCommon(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Array = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Array = null;
         if(tipContainer.contains(magicWeaponAdditional))
         {
            tipContainer.removeChild(magicWeaponAdditional);
         }
         vo.bind = "";
         vo.btnVisible = param1.btnVisible;
         tipName.toolTip = "";
         sublimation.htmlText = "";
         qiling.htmlText = "";
         vo.name = param1.temp.name;
         if(ToolKit.isBigOrEqual(param1.temp.color,0))
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.temp.color] + "\'>" + param1.temp.name + "</font>";
         }
         if(param1.quality > 0 && param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER)
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.quality)] + "\'>" + GamePredef.PRE_EQU_NAME[_core.basic.getPreByQuality(param1.quality)] + vo.name + "</font>";
         }
         vo.urlIcon = ResManager.getIconUrl(param1.temp.iconCode);
         ResManager.setColorCode(iconImg,param1.temp.colorCode);
         vo.description = param1.temp.description;
         vo.info = param1.temp.info;
         if(ToolKit.isBigThan(param1.temp.t,0) && ToolKit.isSmallOrEqual(param1.temp.t,100000000000))
         {
            if(vo.info.length > 0)
            {
               vo.info += "<br>";
            }
            vo.info += Language.TIPEQUIP_S[7];
            _loc3_ = param1.temp.t % 60;
            _loc4_ = Math.floor(param1.temp.t / 60) % 24;
            _loc5_ = Math.floor(param1.temp.t / 1440) % 31;
            _loc6_ = Math.floor(param1.temp.t / 44640) % 365;
            _loc7_ = Math.floor(param1.temp.t / 16293600);
            if(ToolKit.isBigThan(_loc7_,0))
            {
               vo.info += Language.TIPEQUIP_S[8].toString().replace("{year}",_loc7_);
            }
            if(ToolKit.isBigThan(_loc6_,0))
            {
               vo.info += Language.TIPEQUIP_S[9].toString().replace("{month}",_loc6_);
            }
            if(ToolKit.isBigThan(_loc5_,0))
            {
               vo.info += Language.TIPEQUIP_S[10].toString().replace("{day}",_loc5_);
            }
            if(ToolKit.isBigThan(_loc4_,0))
            {
               vo.info += Language.TIPEQUIP_S[11].toString().replace("{hour}",_loc4_);
            }
            if(ToolKit.isBigThan(_loc3_,0))
            {
               vo.info += Language.TIPEQUIP_S[12].toString().replace("{minute}",_loc3_);
            }
         }
         if(!ToolKit.isEqual(param1.temp.kind,GamePredef.ITEM_KIND_DRESS))
         {
            _loc8_ = String(Language.TIPEQUIP_S[13].toString().replace("{endureMax}",param1.temp.endureMax));
            vo.endure = _loc8_;
         }
         var _loc2_:String = String(Language.TIPEQUIP_S[14].toString().replace("{EQUIP_POSITION}",GamePredef.EQUIP_POSITION[param1.temp.position]));
         vo.costVisible = true;
         vo.position = _loc2_;
         vo.bind = GamePredef.PROP_BINDTYPE[param1.temp.bindType];
         if(Boolean(param1.slotData) && Boolean(param1.slotData.type))
         {
            if(param1.slotData.type == GamePredef.TBL_EQUIPT_TEMPLATE || param1.slotData.type == GamePredef.TBL_ITEM_TEMPLATE || param1.slotData.type == GamePredef.TBL_CREATURE)
            {
               vo.bind = "";
            }
         }
         if(param1.cost > 0)
         {
            vo.currency = param1.cost;
            vo.currencyType = param1.costType;
         }
         else
         {
            if(param1.temp.price > 0)
            {
               vo.currency = param1.temp.price;
               vo.currencyType = Currency.TYPE_MONEYALL;
            }
            if(param1.temp.gold > 0)
            {
               vo.currency = param1.temp.gold;
               vo.currencyType = Currency.TYPE_GOLDALL;
            }
         }
         jewelCanvas.visible = false;
         jewelCanvas.includeInLayout = false;
         propBind.visible = false;
         propBind.includeInLayout = false;
         propSoul.visible = false;
         propSoul.includeInLayout = false;
         switch(Number(param1.temp.useType))
         {
            case 1:
               if(param1.temp.reqLevel)
               {
                  _loc9_ = String(Language.TIPEQUIP_S[15].toString().replace("{reqLevel}",param1.temp.reqLevel));
                  vo.reqLevel = _loc9_;
                  if(ToolKit.isSmallThan(_core.player.level,param1.temp.reqLevel))
                  {
                     vo.reqLevel = FONT_COLOR_RED_PROP + vo.reqLevel + FONT_COLOR_SUF_PROP;
                  }
               }
               if(param1.temp.reqClass)
               {
                  vo.useType = Language.TIPEQUIP_S[16];
                  _loc10_ = param1.temp.reqClass.split("|");
                  _loc11_ = 0;
                  for each(_loc12_ in _loc10_)
                  {
                     if(_loc12_ && _loc12_ >= 1 && _loc12_ <= 6)
                     {
                        vo.useType += dm.getGameDataList(GamePredef.TBL_CLASS)[_loc12_].name + " ";
                        _loc11_ += _loc12_;
                     }
                  }
                  if(_loc11_ == 21)
                  {
                     vo.useType = Language.TIPEQUIP_S[17];
                  }
                  if(String(param1.temp.reqClass).indexOf("|" + _core.player.classId + "|") < 0)
                  {
                     vo.useType = FONT_COLOR_RED_PROP + vo.useType + FONT_COLOR_SUF_PROP;
                  }
               }
               useType.includeInLayout = true;
               reqLevel.includeInLayout = true;
               break;
            case 2:
               if(ToolKit.isEqual(param1.temp.kind,GamePredef.ITEM_KIND_PETEQU))
               {
                  vo.useType = Language.TIPEQUIP_S[16];
                  if(param1.temp.reqClassId)
                  {
                     _loc13_ = param1.temp.reqClassId.split("|");
                     for each(_loc12_ in _loc13_)
                     {
                        if(_loc12_)
                        {
                           vo.useType += dm.getGameDataList(GamePredef.TBL_CREATURE)[_loc12_].name + " ";
                        }
                     }
                     if(!_core.battlePet || String(param1.temp.reqClassId).indexOf("|" + _core.battlePet.tid + "|") < 0)
                     {
                        vo.useType = FONT_COLOR_RED_PROP + vo.useType + FONT_COLOR_SUF_PROP;
                     }
                  }
                  else if(param1.temp.reqClass)
                  {
                     _loc10_ = param1.temp.reqClass.split("|");
                     _loc11_ = 0;
                     for each(_loc12_ in _loc10_)
                     {
                        if(_loc12_ && _loc12_ >= 1 && _loc12_ <= 6)
                        {
                           vo.useType += GamePredef.CREATURE_CLASS_NAME[_loc12_] + " ";
                           _loc11_ += _loc12_;
                        }
                     }
                     if(_loc11_ == 21)
                     {
                        vo.useType = Language.TIPITEM_S[20];
                     }
                     if(!_core.battlePet || String(param1.temp.reqClass).indexOf("|" + _core.battlePet.creatureData.classId + "|") < 0)
                     {
                        vo.useType = FONT_COLOR_RED_PROP + vo.useType + FONT_COLOR_SUF_PROP;
                     }
                  }
                  else
                  {
                     vo.useType = Language.TIPEQUIP_S[20];
                     if(param1.temp.reqLevel)
                     {
                        _loc9_ = String(Language.TIPEQUIP_S[15].toString().replace("{reqLevel}",param1.temp.reqLevel));
                        vo.reqLevel = _loc9_;
                     }
                  }
                  if(param1.temp.reqLevel)
                  {
                     _loc9_ = String(Language.TIPEQUIP_S[15].toString().replace("{reqLevel}",param1.temp.reqLevel));
                     vo.reqLevel = _loc9_;
                  }
               }
               else
               {
                  vo.useType = Language.TIPEQUIP_S[18];
                  if(param1.temp.reqLevel)
                  {
                     _loc9_ = String(Language.TIPEQUIP_S[15].toString().replace("{reqLevel}",param1.temp.reqLevel));
                     vo.reqLevel = _loc9_;
                  }
               }
               useType.includeInLayout = true;
               reqLevel.includeInLayout = true;
               break;
            case 3:
               vo.useType = Language.TIPEQUIP_S[19];
               if(param1.temp.reqLevel)
               {
                  _loc9_ = String(Language.TIPEQUIP_S[15].toString().replace("{reqLevel}",param1.temp.reqLevel));
                  vo.reqLevel = _loc9_;
                  if(ToolKit.isSmallThan(_core.player.level,param1.temp.reqLevel))
                  {
                     vo.reqLevel = FONT_COLOR_RED_PROP + vo.reqLevel + FONT_COLOR_SUF_PROP;
                  }
               }
               useType.includeInLayout = true;
               reqLevel.includeInLayout = true;
               break;
            case 4:
               vo.useType = Language.TIPEQUIP_S[20];
               useType.includeInLayout = true;
               reqLevel.includeInLayout = false;
         }
         if(obj.slotData)
         {
            isEquSid(obj.slotData.sid);
         }
      }
      
      public function currencyHide(param1:String) : void
      {
         if(param1 == "temp")
         {
            currentState = "simplify";
         }
         if(param1 == "inst")
         {
            if(!vo.currency || vo.currency < 500 || canSell.visible)
            {
               currentState = "simplify";
            }
            else
            {
               currentState = "common";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petStoneText() : Text
      {
         return this._1565378349petStoneText;
      }
      
      public function set jewelCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1202564229jewelCanvas;
         if(_loc2_ !== param1)
         {
            this._1202564229jewelCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelCanvas",_loc2_,param1));
         }
      }
      
      public function set reqLevel(param1:Text) : void
      {
         var _loc2_:Object = this._431118970reqLevel;
         if(_loc2_ !== param1)
         {
            this._431118970reqLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqLevel",_loc2_,param1));
         }
      }
      
      public function set magicWeaponSkill0(param1:Text) : void
      {
         var _loc2_:Object = this._81196152magicWeaponSkill0;
         if(_loc2_ !== param1)
         {
            this._81196152magicWeaponSkill0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicWeaponSkill0",_loc2_,param1));
         }
      }
      
      public function set magicWeaponSkill1(param1:Repeater) : void
      {
         var _loc2_:Object = this._81196151magicWeaponSkill1;
         if(_loc2_ !== param1)
         {
            this._81196151magicWeaponSkill1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicWeaponSkill1",_loc2_,param1));
         }
      }
      
      public function set iconImg(param1:Image) : void
      {
         var _loc2_:Object = this._1638753418iconImg;
         if(_loc2_ !== param1)
         {
            this._1638753418iconImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propSuit() : Text
      {
         return this._993674992propSuit;
      }
      
      [Bindable(event="propertyChange")]
      public function get _TipEquip_VBox2() : VBox
      {
         return this._955531502_TipEquip_VBox2;
      }
      
      public function set petStoneContainer(param1:HBox) : void
      {
         var _loc2_:Object = this._1590276251petStoneContainer;
         if(_loc2_ !== param1)
         {
            this._1590276251petStoneContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStoneContainer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get magicWeaponAdditional() : VBox
      {
         return this._285513520magicWeaponAdditional;
      }
      
      private function setTreasure(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc2_:Number = Number(GamePredef.EQUIPT_QUALITY[int(param1.slotData.q) - 1]);
         var _loc3_:Number = Number(GamePredef.EQUIPT_QUALITY[int(param1.slotData.q)]);
         if(param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
         {
            _loc4_ = Math.round(param1.slotData.q);
            if(!Number(param1.slotData.q) || Number(param1.slotData.q) < 0)
            {
               _loc4_ = "MIN";
            }
            else if(Number(param1.slotData.q) > 8)
            {
               _loc4_ = "MAX";
            }
            _loc2_ = Number(GamePredef.ARTIFACT_QUALITY[_loc4_].min);
            _loc3_ = Number(GamePredef.ARTIFACT_QUALITY[_loc4_].max);
         }
         vo.costVisible = param1.temp.tradable > 0;
         if(param1.slotData.q > 0 && param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER)
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.slotData.q)] + "\'>" + GamePredef.PRE_EQU_NAME[_core.basic.getPreByQuality(param1.slotData.q)] + vo.name + "</font>";
         }
         if(param1.slotData.q > 0 && param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
         {
            vo.name += GamePredef.ARTIFACT_QUALITY_NAME_ARR[param1.slotData.q - 1];
         }
         if(ToolKit.isBigOrEqual(param1.temp.color,0))
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.temp.color] + "\'>" + param1.temp.name + "</font>";
         }
         if(param1.slotData.q >= 5 && param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER)
         {
            vo.name += Language.TIPEQUIP_S[2];
         }
         vo.propBasic = "";
         if(param1.temp.mainProp1 > 0)
         {
            vo.propBasic = GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp1] + ": " + FONT_COLOR_PRE_PROP + int(param1.temp.mainPropNum1 * _loc2_) + "-" + int(param1.temp.mainPropNum1 * _loc3_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.mainProp2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp2] + ": " + FONT_COLOR_PRE_PROP + int(param1.temp.mainPropNum2 * _loc2_) + "-" + int(param1.temp.mainPropNum2 * _loc3_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop1 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop1] + ": " + FONT_COLOR_PRE_PROP + int(param1.temp.propNum1 * _loc2_) + "-" + int(param1.temp.propNum1 * _loc3_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop2] + ": " + FONT_COLOR_PRE_PROP + int(param1.temp.propNum2 * _loc2_) + "-" + int(param1.temp.propNum2 * _loc3_) + FONT_COLOR_SUF_PROP;
         }
         vo.propBind = "";
         if(param1.temp.bindPropNum > 0 && (param1.slotData.q >= 6 || param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON || param1.temp.kind == GamePredef.ITEM_KIND_FLYER))
         {
            propBind.visible = true;
            propBind.includeInLayout = true;
            _loc5_ = param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON || param1.temp.kind == GamePredef.ITEM_KIND_FLYER ? int(param1.temp.bindPropNum) : "0-" + int(param1.temp.bindPropNum * _loc3_);
            vo.propBind = PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp1] + ": " + FONT_COLOR_PRE_PROP + _loc5_ + "%" + FONT_COLOR_SUF_PROP;
            if(param1.temp.mainProp2 > 0)
            {
               vo.propBind += "\n";
               vo.propBind += PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp2] + ": " + FONT_COLOR_PRE_PROP + _loc5_ + "%" + FONT_COLOR_SUF_PROP;
            }
         }
         if(param1.slotData.b > 0)
         {
            vo.bind = Language.TIPEQUIP_S[3];
         }
         else
         {
            vo.bind = Language.TIPEQUIP_S[4];
            if(vo.propBind.length > 0)
            {
               vo.propBind = FONT_COLOR_PRE_UNACTIVE + vo.propBind + FONT_COLOR_SUF_UNACTIVE;
            }
         }
         if(Boolean(param1.slotData.sid) && Boolean(param1.slotData.gold))
         {
            vo.bind = "";
         }
         if(vo.propBind.length > 0)
         {
            vo.propBind = PRE_BIND_PROP + "\n" + vo.propBind;
         }
         if(param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER && param1.temp.kind != GamePredef.ITEM_KIND_PETEQU)
         {
            vo.propJewel = Language.TIPEQUIP_S[5];
         }
         if(param1.slotData.q >= 15 && param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER)
         {
            propSoul.visible = true;
            propSoul.includeInLayout = true;
            vo.propSoul = Language.TIPEQUIP_S[6];
         }
      }
      
      public function set jewelInfo(param1:Text) : void
      {
         var _loc2_:Object = this._1449103471jewelInfo;
         if(_loc2_ !== param1)
         {
            this._1449103471jewelInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petStoneSkillText() : Text
      {
         return this._302557384petStoneSkillText;
      }
      
      [Bindable(event="propertyChange")]
      public function get canSell() : Label
      {
         return this._549739330canSell;
      }
      
      public function set endure(param1:Text) : void
      {
         var _loc2_:Object = this._1298740563endure;
         if(_loc2_ !== param1)
         {
            this._1298740563endure = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endure",_loc2_,param1));
         }
      }
      
      public function set sublimation(param1:Text) : void
      {
         var _loc2_:Object = this._1887817563sublimation;
         if(_loc2_ !== param1)
         {
            this._1887817563sublimation = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimation",_loc2_,param1));
         }
      }
      
      private function _TipEquip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return currencyPrice;
         },function(param1:DisplayObject):void
         {
            _TipEquip_RemoveChild1.target = param1;
         },"_TipEquip_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return tipContainer;
         },function(param1:Object):void
         {
            _TipEquip_SetProperty2.target = param1;
         },"_TipEquip_SetProperty2.target");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tipName.htmlText = param1;
         },"tipName.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEquip_Label2.htmlText = param1;
         },"_TipEquip_Label2.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.maker;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEquip_Label3.htmlText = param1;
         },"_TipEquip_Label3.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.urlIcon;
         },function(param1:Object):void
         {
            iconImg.source = param1;
         },"iconImg.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar1;
         },function(param1:Object):void
         {
            _TipEquip_Image2.source = param1;
         },"_TipEquip_Image2.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar2;
         },function(param1:Object):void
         {
            _TipEquip_Image3.source = param1;
         },"_TipEquip_Image3.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar3;
         },function(param1:Object):void
         {
            _TipEquip_Image4.source = param1;
         },"_TipEquip_Image4.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar4;
         },function(param1:Object):void
         {
            _TipEquip_Image5.source = param1;
         },"_TipEquip_Image5.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar5;
         },function(param1:Object):void
         {
            _TipEquip_Image6.source = param1;
         },"_TipEquip_Image6.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar6;
         },function(param1:Object):void
         {
            _TipEquip_Image7.source = param1;
         },"_TipEquip_Image7.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar7;
         },function(param1:Object):void
         {
            _TipEquip_Image8.source = param1;
         },"_TipEquip_Image8.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar8;
         },function(param1:Object):void
         {
            _TipEquip_Image9.source = param1;
         },"_TipEquip_Image9.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar9;
         },function(param1:Object):void
         {
            _TipEquip_Image10.source = param1;
         },"_TipEquip_Image10.source");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar10;
         },function(param1:Object):void
         {
            _TipEquip_Image11.source = param1;
         },"_TipEquip_Image11.source");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.btnVisible;
         },function(param1:Boolean):void
         {
            _TipEquip_Button1.visible = param1;
         },"_TipEquip_Button1.visible");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEquip_Text1.htmlText = param1;
         },"_TipEquip_Text1.htmlText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.position;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEquip_Text2.htmlText = param1;
         },"_TipEquip_Text2.htmlText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.useType;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            useType.htmlText = param1;
         },"useType.htmlText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.reqLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqLevel.htmlText = param1;
         },"reqLevel.htmlText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            magicWeaponLevel.htmlText = param1;
         },"magicWeaponLevel.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.level != null;
         },function(param1:Boolean):void
         {
            magicWeaponLevel.includeInLayout = param1;
         },"magicWeaponLevel.includeInLayout");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propBasic;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEquip_Text6.htmlText = param1;
         },"_TipEquip_Text6.htmlText");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.propBasic != null;
         },function(param1:Boolean):void
         {
            _TipEquip_Text6.includeInLayout = param1;
         },"_TipEquip_Text6.includeInLayout");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.endure;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            endure.htmlText = param1;
         },"endure.htmlText");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.endure != null;
         },function(param1:Boolean):void
         {
            endure.includeInLayout = param1;
         },"endure.includeInLayout");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propBind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propBind.htmlText = param1;
         },"propBind.htmlText");
         result[27] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.propBind != null;
         },function(param1:Boolean):void
         {
            propBind.includeInLayout = param1;
         },"propBind.includeInLayout");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propSoul;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propSoul.htmlText = param1;
         },"propSoul.htmlText");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.propSoul != null;
         },function(param1:Boolean):void
         {
            propSoul.includeInLayout = param1;
         },"propSoul.includeInLayout");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = COLOR_YELLOW.replace("{str}",Language.TIPEQUIP_S[29]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            magicWeaponSkill0.htmlText = param1;
         },"magicWeaponSkill0.htmlText");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_EQUIP_JEWEL_15;
         },function(param1:Object):void
         {
            _TipEquip_Image12.source = param1;
         },"_TipEquip_Image12.source");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = COLOR_YELLOW.replace("{str}",Language.TIPEQUIP_S[30]);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            artifactSubSkillStr.htmlText = param1;
         },"artifactSubSkillStr.htmlText");
         result[33] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return ResManager.ICON_EQUIP_JEWEL_16;
         },function(param1:Object, param2:Array):void
         {
            _TipEquip_Image13[param2[0]].source = param1;
         },"_TipEquip_Image13.source");
         result[34] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):String
         {
            var _loc3_:* = magicWeaponSkill1.mx_internal::getItemAt(param2[0]).tip;
            return _loc3_ == undefined ? null : String(_loc3_);
         },function(param1:String, param2:Array):void
         {
            _TipEquip_Text13[param2[0]].htmlText = param1;
         },"_TipEquip_Text13.htmlText");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propSuit;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propSuit.htmlText = param1;
         },"propSuit.htmlText");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.propSuit != null;
         },function(param1:Boolean):void
         {
            propSuit.includeInLayout = param1;
         },"propSuit.includeInLayout");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_EQUIP_HOLE;
         },function(param1:Object):void
         {
            petStone1.source = param1;
         },"petStone1.source");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_EQUIP_HOLE;
         },function(param1:Object):void
         {
            petStone2.source = param1;
         },"petStone2.source");
         result[39] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_EQUIP_HOLE;
         },function(param1:Object):void
         {
            petStone3.source = param1;
         },"petStone3.source");
         result[40] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_EQUIP_HOLE;
         },function(param1:Object):void
         {
            petStone4.source = param1;
         },"petStone4.source");
         result[41] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_EQUIP_HOLE;
         },function(param1:Object):void
         {
            petStone5.source = param1;
         },"petStone5.source");
         result[42] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_EQUIP_HOLE;
         },function(param1:Object):void
         {
            petStone6.source = param1;
         },"petStone6.source");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propJewel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEquip_Text17.htmlText = param1;
         },"_TipEquip_Text17.htmlText");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.propJewel != null;
         },function(param1:Boolean):void
         {
            _TipEquip_Text17.includeInLayout = param1;
         },"_TipEquip_Text17.includeInLayout");
         result[45] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel1;
         },function(param1:Object):void
         {
            _TipEquip_Image20.source = param1;
         },"_TipEquip_Image20.source");
         result[46] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel2;
         },function(param1:Object):void
         {
            _TipEquip_Image21.source = param1;
         },"_TipEquip_Image21.source");
         result[47] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel3;
         },function(param1:Object):void
         {
            _TipEquip_Image22.source = param1;
         },"_TipEquip_Image22.source");
         result[48] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel4;
         },function(param1:Object):void
         {
            _TipEquip_Image23.source = param1;
         },"_TipEquip_Image23.source");
         result[49] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel5;
         },function(param1:Object):void
         {
            _TipEquip_Image24.source = param1;
         },"_TipEquip_Image24.source");
         result[50] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel6;
         },function(param1:Object):void
         {
            _TipEquip_Image25.source = param1;
         },"_TipEquip_Image25.source");
         result[51] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel7;
         },function(param1:Object):void
         {
            _TipEquip_Image26.source = param1;
         },"_TipEquip_Image26.source");
         result[52] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel8;
         },function(param1:Object):void
         {
            _TipEquip_Image27.source = param1;
         },"_TipEquip_Image27.source");
         result[53] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel9;
         },function(param1:Object):void
         {
            _TipEquip_Image28.source = param1;
         },"_TipEquip_Image28.source");
         result[54] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel10;
         },function(param1:Object):void
         {
            _TipEquip_Image29.source = param1;
         },"_TipEquip_Image29.source");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.info;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEquip_Text19.htmlText = param1;
         },"_TipEquip_Text19.htmlText");
         result[56] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.info != null;
         },function(param1:Boolean):void
         {
            _TipEquip_Text19.includeInLayout = param1;
         },"_TipEquip_Text19.includeInLayout");
         result[57] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.currency;
         },function(param1:Number):void
         {
            currencyPrice.value = param1;
         },"currencyPrice.value");
         result[58] = binding;
         binding = new Binding(this,function():uint
         {
            return vo.currencyType;
         },function(param1:uint):void
         {
            currencyPrice.type = param1;
         },"currencyPrice.type");
         result[59] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.costVisible;
         },function(param1:Boolean):void
         {
            currencyPrice.visible = param1;
         },"currencyPrice.visible");
         result[60] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.costVisible;
         },function(param1:Boolean):void
         {
            currencyPrice.includeInLayout = param1;
         },"currencyPrice.includeInLayout");
         result[61] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !vo.costVisible;
         },function(param1:Boolean):void
         {
            canSell.visible = param1;
         },"canSell.visible");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !vo.costVisible;
         },function(param1:Boolean):void
         {
            canSell.includeInLayout = param1;
         },"canSell.includeInLayout");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPEQUIP_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            canSell.text = param1;
         },"canSell.text");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPEQUIP_S[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEquip_Label6.text = param1;
         },"_TipEquip_Label6.text");
         result[65] = binding;
         return result;
      }
      
      private function setTemp(param1:Object) : void
      {
         vo.propBasic = "";
         if(param1.temp.mainProp1 > 0)
         {
            vo.propBasic += GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp1] + ": " + FONT_COLOR_PRE_PROP + param1.temp.mainPropNum1 + (param1.temp.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || param1.temp.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.mainProp2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp2] + ": " + FONT_COLOR_PRE_PROP + param1.temp.mainPropNum2 + (param1.temp.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || param1.temp.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop1 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop1] + ": " + FONT_COLOR_PRE_PROP + param1.temp.propNum1 + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop2] + ": " + FONT_COLOR_PRE_PROP + param1.temp.propNum2 + FONT_COLOR_SUF_PROP;
         }
      }
      
      public function ___TipEquip_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get artifactSubSkillStr() : Text
      {
         return this._714532018artifactSubSkillStr;
      }
      
      private function set vo(param1:ToolTipVO) : void
      {
         var _loc2_:Object = this._3769vo;
         if(_loc2_ !== param1)
         {
            this._3769vo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vo",_loc2_,param1));
         }
      }
      
      private function refreshSoul() : void
      {
         var _loc1_:String = null;
         if(vo.activeEquipName == null)
         {
            vo.activeEquipName = "";
         }
         if(obj.soulActived)
         {
            if(obj.inst.activeProp > 0)
            {
               _loc1_ = String(Language.TIPEQUIP_S[0].toString().replace("{PRE_SOUL_PROP}",PRE_SOUL_PROP));
               _loc1_ = _loc1_.replace("{activeEquipName}",vo.activeEquipName);
               _loc1_ = _loc1_.replace("{ELEMENT_COLOR}",GamePredef.ELEMENT_COLOR[obj.inst.element]);
               _loc1_ = _loc1_.replace("{ELEMENT_NAME}",GamePredef.ELEMENT_NAME[obj.inst.element]);
               _loc1_ = _loc1_.replace("{EQUIPT_ACTIVE_NAME}",GamePredef.EQUIPT_ACTIVE_NAME[obj.inst.activeProp]);
               _loc1_ = _loc1_.replace("{FONT_COLOR_PRE_PROP}",FONT_COLOR_PRE_PROP);
               _loc1_ = _loc1_.replace("{activePropNum}",obj.inst.activePropNum);
               _loc1_ = _loc1_.replace("{FONT_COLOR_SUF_PROP}",FONT_COLOR_SUF_PROP);
               vo.propSoul = _loc1_;
            }
         }
         else if(obj.inst.activeProp > 0)
         {
            _loc1_ = String(Language.TIPEQUIP_S[1].toString());
            _loc1_ = _loc1_.replace("{PRE_SOUL_PROP}",PRE_SOUL_PROP);
            _loc1_ = _loc1_.replace("{FONT_COLOR_PRE_UNACTIVE}",FONT_COLOR_PRE_UNACTIVE);
            _loc1_ = _loc1_.replace("{activeEquipName}",vo.activeEquipName);
            _loc1_ = _loc1_.replace("{ELEMENT_NAME}",GamePredef.ELEMENT_NAME[obj.inst.element]);
            _loc1_ = _loc1_.replace("{EQUIPT_ACTIVE_NAME}",GamePredef.EQUIPT_ACTIVE_NAME[obj.inst.activeProp]);
            _loc1_ = _loc1_.replace("{activePropNum}",obj.inst.activePropNum);
            _loc1_ = _loc1_.replace("{FONT_COLOR_SUF_UNACTIVE}",FONT_COLOR_SUF_UNACTIVE);
            vo.propSoul = _loc1_;
         }
      }
      
      public function set currencyPrice(param1:Currency) : void
      {
         var _loc2_:Object = this._1095316408currencyPrice;
         if(_loc2_ !== param1)
         {
            this._1095316408currencyPrice = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyPrice",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get useType() : Text
      {
         return this._148001439useType;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelCanvas() : Canvas
      {
         return this._1202564229jewelCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqLevel() : Text
      {
         return this._431118970reqLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get magicWeaponSkill1() : Repeater
      {
         return this._81196151magicWeaponSkill1;
      }
      
      public function set tipName(param1:Label) : void
      {
         var _loc2_:Object = this._1311839802tipName;
         if(_loc2_ !== param1)
         {
            this._1311839802tipName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipName",_loc2_,param1));
         }
      }
      
      private function onIsEquSid(param1:Boolean) : void
      {
         if(param1)
         {
            des.text = Language.TIPEQUIP_S[32];
         }
         else
         {
            des.text = Language.TIPEQUIP_S[33];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get magicWeaponSkill0() : Text
      {
         return this._81196152magicWeaponSkill0;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelInfo() : Text
      {
         return this._1449103471jewelInfo;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipEquip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipEquip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipEquipWatcherSetupUtil");
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
      
      private function _TipEquip_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "common";
         _loc1_.overrides = [_TipEquip_SetProperty1_c(),_TipEquip_SetProperty2_i()];
         return _loc1_;
      }
      
      public function set petStoneText(param1:Text) : void
      {
         var _loc2_:Object = this._1565378349petStoneText;
         if(_loc2_ !== param1)
         {
            this._1565378349petStoneText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStoneText",_loc2_,param1));
         }
      }
      
      public function set magicWeaponLevel(param1:Text) : void
      {
         var _loc2_:Object = this._267844315magicWeaponLevel;
         if(_loc2_ !== param1)
         {
            this._267844315magicWeaponLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicWeaponLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyPrice() : Currency
      {
         return this._1095316408currencyPrice;
      }
      
      [Bindable(event="propertyChange")]
      public function get tipName() : Label
      {
         return this._1311839802tipName;
      }
      
      private function _TipEquip_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipEquip_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_TipEquip_RemoveChild1",_TipEquip_RemoveChild1);
         return _loc1_;
      }
      
      private function setInst(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc7_:String = null;
         var _loc9_:Date = null;
         var _loc10_:String = null;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:ArrayCollection = null;
         var _loc15_:Boolean = false;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:Object = null;
         var _loc22_:Object = null;
         var _loc23_:Object = null;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:* = undefined;
         var _loc27_:* = undefined;
         var _loc28_:* = undefined;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:String = null;
         var _loc32_:Object = null;
         var _loc33_:int = 0;
         var _loc34_:* = null;
         var _loc35_:uint = 0;
         var _loc36_:Object = null;
         var _loc37_:String = null;
         var _loc38_:Object = null;
         var _loc39_:int = 0;
         var _loc40_:int = 0;
         var _loc41_:int = 0;
         var _loc42_:String = null;
         var _loc43_:Object = null;
         var _loc44_:int = 0;
         var _loc45_:Number = NaN;
         var _loc46_:int = 0;
         var _loc47_:Object = null;
         var _loc48_:Object = null;
         var _loc49_:Number = NaN;
         var _loc50_:* = undefined;
         var _loc51_:Object = null;
         var _loc52_:* = undefined;
         var _loc53_:String = null;
         var _loc54_:Number = NaN;
         var _loc55_:Object = null;
         var _loc56_:Number = NaN;
         var _loc57_:* = undefined;
         var _loc58_:String = null;
         var _loc59_:Object = null;
         var _loc60_:String = null;
         var _loc61_:Object = null;
         var _loc62_:Object = null;
         var _loc63_:Number = NaN;
         var _loc64_:Image = null;
         var _loc65_:* = undefined;
         var _loc66_:* = undefined;
         var _loc67_:Number = NaN;
         var _loc68_:String = null;
         var _loc69_:Object = null;
         var _loc70_:Object = null;
         var _loc71_:String = null;
         var _loc72_:int = 0;
         var _loc73_:Object = null;
         var _loc74_:Object = null;
         var _loc75_:int = 0;
         var _loc76_:int = 0;
         var _loc77_:int = 0;
         var _loc78_:int = 0;
         var _loc79_:String = null;
         var _loc80_:String = null;
         var _loc81_:Object = null;
         var _loc82_:Object = null;
         if(ToolKit.isBigThan(param1.inst.t,0))
         {
            _loc9_ = new Date(Number(param1.inst.t));
            _loc10_ = String(Language.TIPEQUIP_S[21].toString());
            _loc10_ = _loc10_.replace("{fullYear}",_loc9_.fullYear);
            _loc10_ = _loc10_.replace("{lastMonth}",ToolKit.add(_loc9_.month,1));
            _loc10_ = _loc10_.replace("{lastDate}",_loc9_.date);
            _loc10_ = _loc10_.replace("{lastHour}",_loc9_.hours);
            _loc10_ = _loc10_.replace("{lastMinutes}",_loc9_.minutes);
            vo.info += _loc10_;
         }
         vo.costVisible = param1.temp.tradable > 0;
         if(vo.costVisible)
         {
            if(param1.temp.price > 0)
            {
               vo.currency = int(param1.temp.price / 4);
               if(param1.inst.binded > 0)
               {
                  vo.currencyType = Currency.TYPE_MONEY_BIND;
               }
               else
               {
                  vo.currencyType = Currency.TYPE_MONEY;
               }
            }
            if(param1.temp.gold > 0)
            {
               vo.currency = 1;
               if(param1.inst.binded > 0)
               {
                  vo.currencyType = Currency.TYPE_MONEY_BIND;
               }
               else
               {
                  vo.currencyType = Currency.TYPE_MONEY;
               }
            }
         }
         _loc2_ = 1;
         while(_loc2_ <= param1.inst.upgradeNum)
         {
            if(Number(param1.temp.type) == GamePredef.ITEM_TYPE_MAIN_MAGICWEAPON)
            {
               break;
            }
            if(Number(param1.temp.type) == GamePredef.ITEM_TYPE_SUB_MAGICWEAPON)
            {
               if(!param1.inst.flag || param1.inst.flag == "")
               {
                  break;
               }
            }
            vo["clsStar" + _loc2_] = ResManager.ICON_EQUIP_STAR;
            _loc2_++;
         }
         if(param1.inst)
         {
            if(Number(param1.temp.kind) == GamePredef.ITEM_KIND_MAGICWEAPON)
            {
               _loc11_ = COLOR_ANY.replace("{colorStr}",GamePredef.MSG_ITEM_COLOR[param1.inst.color]).replace("{str}",param1.inst.upgradeNum);
               vo.level = Language.TIPEQUIP_S[28].toString().replace("{level}",_loc11_);
               if(param1.temp.type == GamePredef.ITEM_TYPE_MAIN_MAGICWEAPON)
               {
                  tipContainer.addChildAt(magicWeaponLevel,tipContainer.getChildIndex(reqLevel) + 1);
                  _loc16_ = Number(param1.inst.mainPropNum1);
                  _loc17_ = Number(param1.temp.mainPropNum1);
                  _loc18_ = _loc16_ / _loc17_;
                  if(_loc18_ > GamePredef.STAGE_EIGHT_MIN && _loc18_ < GamePredef.STAGE_EIGHT_MAX)
                  {
                     vo.name += Language.GAMEPREDEF_S[418];
                     _loc19_ = Math.floor(Number(param1.temp.mainPropNum1) * GamePredef.STAGE_EIGHT_MIN);
                     _loc20_ = Math.floor(Number(param1.temp.mainPropNum2) * GamePredef.STAGE_EIGHT_MIN);
                     _loc21_ = DataManager.getInstance().gameDataIndex;
                     _loc22_ = _loc21_[GamePredef.TBL_ARTIFACT][param1.inst.tid];
                     for each(_loc23_ in _loc22_)
                     {
                        if(param1.inst.mainPropNum1 == _loc23_.propNum1 && param1.inst.mainPropNum2 == _loc23_.propNum2)
                        {
                           vo.name += "+" + _loc23_.level;
                           break;
                        }
                     }
                     tipName.toolTip = Language.TIPEQUIP_S[38];
                  }
                  else if(_loc18_ == GamePredef.STAGE_EIGHT_MAX)
                  {
                     vo.name += Language.GAMEPREDEF_S[419];
                     tipName.toolTip = Language.TIPEQUIP_S[38];
                  }
                  else
                  {
                     _loc24_ = 0;
                     _loc25_ = 0;
                     while(_loc25_ <= GamePredef.ARTIFACT_QUALITY_ARR.length)
                     {
                        if(ToolKit.isSmallOrEqual(_loc18_,GamePredef.ARTIFACT_QUALITY_ARR[_loc25_]))
                        {
                           _loc24_ = _loc25_;
                           break;
                        }
                        _loc25_++;
                     }
                     if(GamePredef.ARTIFACT_QUALITY_NAME_ARR[_loc24_])
                     {
                        vo.name += GamePredef.ARTIFACT_QUALITY_NAME_ARR[_loc24_];
                        tipName.toolTip = Language.TIPEQUIP_S[38];
                     }
                  }
               }
               else if(tipContainer.contains(magicWeaponLevel))
               {
                  tipContainer.removeChild(magicWeaponLevel);
               }
               _loc12_ = "";
               _loc13_ = _core.getTemplateData(GamePredef.TBL_SKILL,Number(param1.inst.t1));
               if(Number(param1.temp.type) == GamePredef.ITEM_TYPE_MAIN_MAGICWEAPON && !_loc13_)
               {
                  _loc26_ = param1.temp.artifactSkill.toString().split("|")[0];
                  _loc13_ = _core.getTemplateData(GamePredef.TBL_SKILL,Number(_loc26_));
                  _loc12_ = _loc13_ && FONT_COLOR_PRE_UNACTIVE + _loc13_.name + FONT_COLOR_SUF_UNACTIVE + Language.TIPEQUIP_S[31];
               }
               else if(_loc13_)
               {
                  _loc27_ = " ";
                  _loc2_ = 0;
                  while(_loc2_ < Number(_loc13_.level))
                  {
                     _loc27_ += "I";
                     _loc2_++;
                  }
                  _loc12_ = COLOR_GREEN.replace("{str}",_loc13_.name + _loc27_);
               }
               artifactSkillStr.htmlText = _loc12_;
               _loc14_ = new ArrayCollection();
               _loc15_ = false;
               _loc2_ = 2;
               while(_loc2_ <= 10)
               {
                  _loc28_ = _core.getTemplateData(GamePredef.TBL_SKILL,Number(param1.inst["t" + _loc2_]));
                  if(_loc28_)
                  {
                     _loc27_ = " ";
                     _loc25_ = 0;
                     while(_loc25_ < Number(_loc28_.level))
                     {
                        _loc27_ += "I";
                        _loc25_++;
                     }
                     _loc15_ = true;
                     _loc14_.addItem({"tip":COLOR_GREEN.replace("{str}",_loc28_.name + _loc27_)});
                  }
                  _loc2_++;
               }
               magicWeaponSkill1.dataProvider = _loc14_;
               artifactSubSkillStr.visible = _loc15_;
               tipContainer.addChildAt(magicWeaponAdditional,tipContainer.getChildIndex(propBind) + 1);
            }
            else if(tipContainer.contains(magicWeaponAdditional))
            {
               tipContainer.removeChild(magicWeaponAdditional);
            }
         }
         var _loc3_:* = "";
         if(int(param1.inst.element) > 0)
         {
            _loc29_ = int(param1.inst.element);
            _loc3_ = String(GamePredef.ELEMENT_NAME[_loc29_]);
            _loc3_ = "<font color=\'" + GamePredef.ELEMENT_COLOR[_loc29_] + "\'>[" + _loc3_ + "]</font>";
         }
         _loc4_ = 0;
         var _loc5_:String = "";
         if(ToolKit.isBigOrEqual(param1.temp.color,0))
         {
            _loc4_ = int(param1.temp.color);
            vo.name = param1.temp.name + _loc3_;
         }
         else
         {
            vo.name += _loc3_;
            _loc4_ = int(param1.inst.color) > 0 ? int(param1.inst.color) : 0;
            _loc30_ = int(param1.inst.preNameType);
            if(_loc30_ > 0)
            {
               vo.name = GamePredef.PRE_EQU_NAME[_loc30_] + vo.name;
            }
            if(Boolean(_loc31_ = String(param1.inst.flag)) && _loc31_.indexOf("sublimeId") != -1)
            {
               _loc32_ = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc31_));
               if(int(_loc32_.sublimeId) > 0)
               {
                  vo.name += "+" + _loc32_.sublimeId;
                  if(int(param1.temp.kind) != 9 && int(param1.inst.color) == 4)
                  {
                     _loc4_ = GamePredef.SUBLIMATION_COLOR;
                  }
                  if(int(_loc32_.sublimeElement) > 0)
                  {
                     _loc33_ = int(_loc32_.sublimeElement);
                     _loc34_ = String(GamePredef.ELEMENT_NAME[_loc33_]);
                     _loc34_ = "<font color=\'" + GamePredef.ELEMENT_COLOR[_loc33_] + "\'>" + _loc34_ + "</font>";
                     _loc35_ = int(param1.temp.kind) != 9 ? GamePredef.TBL_SUBLIMATION : GamePredef.TBL_SUBLIMATION_PET;
                     _loc36_ = GameData.d[_loc35_][_loc32_.sublimeId];
                     _loc37_ = (Number(_loc36_.elementNum) * 100).toFixed(2);
                     _loc38_ = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][param1.inst.tid];
                     _loc39_ = int(GamePredef.EQUIP_FUNCTYPE[_loc38_.position]);
                     _loc40_ = _loc39_ == GamePredef.EQUIP_TYPE_ATTACK ? 1 : 3;
                     _loc41_ = _loc39_ == GamePredef.EQUIP_TYPE_ATTACK ? 43 : 44;
                     _loc42_ = String(Language.TIPEQUIP_S[_loc41_]);
                     _loc42_ = LanguageUtil.replace(_loc42_,{
                        "element":_loc34_,
                        "num":_loc37_
                     });
                     _loc43_ = {
                        "prop0":"",
                        "num0":0,
                        "prop1":"",
                        "num1":0,
                        "element":_loc42_
                     };
                     _loc2_ = _loc40_;
                     while(_loc2_ < _loc40_ + 2)
                     {
                        _loc44_ = int(_loc36_["prop" + _loc2_]);
                        _loc45_ = Number(_loc36_["propNum" + _loc2_]);
                        _loc46_ = _loc2_ - _loc40_;
                        _loc43_["prop" + _loc46_] = GamePredef.EQUIPT_PROP_NAME[_loc44_];
                        _loc43_["num" + _loc46_] = _loc45_;
                        _loc2_++;
                     }
                     _loc5_ = LanguageUtil.replace(Language.TIPEQUIP_S[42],_loc43_);
                  }
               }
            }
         }
         if(_loc4_ > 0)
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc4_] + "\'>" + vo.name + "</font>";
         }
         sublimation.htmlText = _loc5_;
         vo.propBasic = "";
         var _loc6_:* = "";
         if(Boolean(_loc7_ = String(param1.inst.flag2)) && _loc7_ != "")
         {
            _loc47_ = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc7_));
            if(int(param1.temp.kind) == 1 || int(param1.temp.kind) == 2 || int(param1.temp.kind) == 3 || int(param1.temp.kind) == 4)
            {
               if(int(param1.temp.reqLevel) > 150 && _loc7_.indexOf("t") != -1)
               {
                  _loc48_ = {
                     "prop0":"",
                     "color0":"#FFFFFF",
                     "num0":"",
                     "add0":"",
                     "prop1":"",
                     "color1":"#FFFFFF",
                     "num1":"",
                     "add1":"",
                     "prop2":"",
                     "color2":"#FFFFFF",
                     "num2":"",
                     "add2":""
                  };
                  _loc2_ = 0;
                  while(_loc2_ < 3)
                  {
                     if(_loc47_[_loc2_])
                     {
                        _loc48_["prop" + _loc2_] = Language.TIP_QILING_H[_loc47_[_loc2_]["t"]];
                        if(_loc47_[_loc2_]["v"] == _loc47_[_loc2_]["max"])
                        {
                           _loc48_["add" + _loc2_] = "<font color=\'#FA5B05\'>" + Language.QILING_PANEL[4] + "</font>";
                        }
                        _loc49_ = _loc47_[_loc2_]["v"] / _loc47_[_loc2_]["max"];
                        _loc50_ = 0;
                        while(_loc50_ < GamePredef.QILING_COLOR.length)
                        {
                           if(_loc49_ >= GamePredef.QILING_COLOR[_loc50_] / 100)
                           {
                              _loc48_["color" + _loc2_] = GamePredef.QILING_COLOR_CODE[_loc50_];
                              break;
                           }
                           _loc50_++;
                        }
                        if(GamePredef.PROP_SUFFIX[_loc47_[_loc2_]["t"]])
                        {
                           if(GamePredef.PROP_SUFFIX[_loc47_[_loc2_]["t"]] == 1)
                           {
                              _loc48_["num" + _loc2_] = Math.ceil(_loc47_[_loc2_]["v"]);
                           }
                           else if(GamePredef.PROP_SUFFIX[_loc47_[_loc2_]["t"]] == 2)
                           {
                              _loc48_["num" + _loc2_] = Number(_loc47_[_loc2_]["v"]).toFixed(3);
                           }
                           else
                           {
                              _loc48_["num" + _loc2_] = Number(_loc47_[_loc2_]["v"] * 100).toFixed(3) + "%";
                           }
                        }
                        else
                        {
                           _loc48_["num" + _loc2_] = Math.ceil(_loc47_[_loc2_]["v"]);
                        }
                     }
                     _loc2_++;
                  }
                  _loc6_ = LanguageUtil.replace(Language.TIPEQUIP_S[45],_loc48_);
               }
            }
         }
         qiling.htmlText = _loc6_;
         var _loc8_:* = GamePredef.MW_MAIN_POSITION[param1.temp.position] || GamePredef.MW_SUB_POSITION[param1.temp.position];
         if(_loc8_ && Boolean(param1.inst.flag) && param1.inst.flag != "")
         {
            _loc31_ = JSONUtil.JSONfy(param1.inst.flag);
            _loc51_ = com.adobe.serialization.json.JSON.decode(_loc31_);
            for(_loc52_ in _loc51_)
            {
               if(!_loc51_[_loc52_] || !_loc51_[_loc52_].hasOwnProperty("propVal"))
               {
                  break;
               }
               _loc53_ = "" + _loc51_[_loc52_].propVal;
               _loc54_ = 0;
               if(_loc53_.indexOf(".") > 0)
               {
                  _loc54_ = Number(_loc51_[_loc52_].propVal);
               }
               _loc55_ = GamePredef.MW_SUCC_GROW_MAP[int(_loc51_[_loc52_].propType)];
               _loc56_ = _loc55_ ? Number(_loc55_[int(param1.inst.upgradeNum)]) : 0;
               vo.propBasic += GamePredef.EQUIPT_PROP_NAME[int(_loc51_[_loc52_].propType)] + ": " + FONT_COLOR_PRE_PROP + (_loc54_ ? (_loc54_ * (1 + _loc56_ / 100)).toFixed(1) : Math.floor(_loc51_[_loc52_].propVal * (1 + _loc56_ / 100))) + (_loc56_ ? "(" + _loc56_ + "%)" : "") + FONT_COLOR_SUF_PROP + "\n";
            }
            vo.propBasic.substring(0,vo.propBasic.length - 1);
         }
         if(param1.inst.mainProp1 > 0)
         {
            _loc56_ = GamePredef.MW_GROW_MAP[param1.inst.mainProp1] ? Number(GamePredef.MW_GROW_MAP[param1.inst.mainProp1][param1.inst.upgradeNum]) : 1;
            _loc57_ = _loc8_ ? _loc56_ : GamePredef.EQUIPT_STAR_NUM[param1.inst.upgradeNum];
            vo.propBasic = GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp1] + ": " + FONT_COLOR_PRE_PROP + int(param1.inst.mainPropNum1 * _loc57_) + (param1.inst.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || param1.inst.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + FONT_COLOR_SUF_PROP;
            if(_loc8_)
            {
               vo.propBasic += "(" + param1.inst.mainPropNum1 + ")";
            }
         }
         if(param1.inst.mainProp2 > 0)
         {
            _loc56_ = GamePredef.MW_GROW_MAP[param1.inst.mainProp2] ? Number(GamePredef.MW_GROW_MAP[param1.inst.mainProp2][param1.inst.upgradeNum]) : 1;
            _loc57_ = _loc8_ ? _loc56_ : GamePredef.EQUIPT_STAR_NUM[param1.inst.upgradeNum];
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp2] + ": " + FONT_COLOR_PRE_PROP + int(param1.inst.mainPropNum2 * _loc57_) + (param1.inst.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || param1.inst.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + FONT_COLOR_SUF_PROP;
            if(_loc8_)
            {
               vo.propBasic += "(" + param1.inst.mainPropNum2 + ")";
            }
         }
         if(param1.inst.prop1 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.inst.prop1] + ": " + FONT_COLOR_PRE_PROP + param1.inst.propNum1 + FONT_COLOR_SUF_PROP;
         }
         if(param1.inst.prop2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.inst.prop2] + ": " + FONT_COLOR_PRE_PROP + param1.inst.propNum2 + FONT_COLOR_SUF_PROP;
         }
         vo.propBind = "";
         if(param1.inst.bindMainPropNum1 > 0 || param1.inst.bindMainPropNum2 > 0)
         {
            propBind.visible = true;
            propBind.includeInLayout = true;
         }
         if(param1.inst.binded > 0)
         {
            vo.bind = Language.TIPEQUIP_S[3];
            if(param1.inst.bindMainPropNum1 > 0)
            {
               vo.propBind = PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp1] + ": " + FONT_COLOR_PRE_PROP + param1.inst.bindMainPropNum1 + "%" + FONT_COLOR_SUF_PROP;
            }
            if(param1.inst.bindMainPropNum2 > 0)
            {
               if(vo.propBind.length > 0)
               {
                  vo.propBind += "\n";
               }
               vo.propBind += PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp2] + ": " + FONT_COLOR_PRE_PROP + param1.inst.bindMainPropNum2 + "%" + FONT_COLOR_SUF_PROP;
            }
         }
         else
         {
            vo.bind = Language.TIPEQUIP_S[4];
            if(param1.inst.bindMainPropNum1 > 0)
            {
               vo.propBind = PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp1] + ": " + param1.inst.bindMainPropNum1 + "%";
            }
            if(param1.inst.bindMainPropNum2 > 0)
            {
               if(vo.propBind.length > 0)
               {
                  vo.propBind += "\n";
               }
               vo.propBind += PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp2] + ": " + param1.inst.bindMainPropNum2 + "%";
            }
            if(vo.propBind.length > 0)
            {
               vo.propBind = FONT_COLOR_PRE_UNACTIVE + vo.propBind + FONT_COLOR_SUF_UNACTIVE;
            }
         }
         if(vo.propBind.length > 0)
         {
            vo.propBind = PRE_BIND_PROP + "\n" + vo.propBind;
         }
         if(!ToolKit.isEqual(param1.temp.kind,GamePredef.ITEM_KIND_PETEQU))
         {
            _loc58_ = "";
            _loc59_ = {};
            jewelInfo.text = "";
            jewelInfo.includeInLayout = true;
            jewelInfo.visible = true;
            if(param1.inst.holeNum > 0)
            {
               jewelCanvas.visible = true;
               jewelCanvas.includeInLayout = true;
            }
            _loc25_ = 1;
            while(_loc25_ <= param1.inst.holeNum)
            {
               if(param1.inst["t" + _loc25_] > 0)
               {
                  _loc61_ = _core.data.getData(GamePredef.TBL_ITEM_TEMPLATE,param1.inst["t" + _loc25_]);
                  if(_loc61_)
                  {
                     if(!_loc59_[_loc61_.propType])
                     {
                        _loc59_[_loc61_.propType] = 0;
                     }
                     _loc59_[_loc61_.propType] += Number(_loc61_.proplNum);
                     vo["clsJewel" + _loc25_] = ResManager["ICON_EQUIP_JEWEL_" + _loc61_.propType];
                  }
               }
               else
               {
                  vo["clsJewel" + _loc25_] = ResManager.ICON_EQUIP_HOLE;
                  jewelInfo.text = Language.TIPEQUIP_S[35];
               }
               _loc25_++;
            }
            if(param1.inst.holeNum < 10)
            {
               if(jewelInfo.text)
               {
                  jewelInfo.text += ",";
               }
               jewelInfo.text += Language.TIPEQUIP_S[36];
            }
            if(param1.temp.kind == GamePredef.ITEM_KIND_FLYER || param1.temp.kind == GamePredef.ITEM_KIND_DRESS || param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
            {
               jewelInfo.text = Language.TIPEQUIP_S[37];
            }
            for(_loc60_ in _loc59_)
            {
               if(_loc59_[_loc60_] > 0)
               {
                  _loc58_ += "\n" + GamePredef.JEWEL_PROP_NAME[_loc60_] + ": " + FONT_COLOR_PRE_PROP + _loc59_[_loc60_] + FONT_COLOR_SUF_PROP;
               }
            }
            if(_loc58_.length > 0)
            {
               vo.propJewel = PRE_JEWEL_PROP + _loc58_;
            }
         }
         else
         {
            jewelInfo.text = Language.TIPEQUIP_S[37];
         }
         if(ToolKit.isEqual(param1.temp.kind,GamePredef.ITEM_KIND_PETEQU))
         {
            petStoneText.includeInLayout = true;
            petStoneText.visible = true;
            petStoneContainer.includeInLayout = true;
            petStoneContainer.visible = true;
            jewelInfo.includeInLayout = false;
            jewelInfo.visible = false;
            if(Boolean(_loc7_ = JSONUtil.JSONfy(param1.inst.flag3)) && _loc7_ != "")
            {
               _loc62_ = com.adobe.serialization.json.JSON.decode(_loc7_);
               _loc63_ = 1;
               while(_loc63_ <= 6)
               {
                  _loc64_ = this["petStone" + _loc63_] as Image;
                  if(Boolean(_loc62_) && Boolean(_loc62_[_loc63_]))
                  {
                     _loc64_.source = ResManager.ICON_EQUIP_JEWEL_12;
                  }
                  else
                  {
                     _loc64_.source = ResManager.ICON_EQUIP_HOLE;
                  }
                  _loc63_++;
               }
               if(_loc62_ && _loc62_[1] && Number(_loc62_[1][2]) > 0)
               {
                  _loc65_ = Number(_loc62_[1][2]);
                  _loc66_ = GameData.d[GamePredef.TBL_SKILL][_loc65_];
                  petStoneSkillText.text = "KN Bảo Thạch:" + _loc66_["name"];
                  petStoneSkillText.visible = true;
               }
               else
               {
                  petStoneSkillText.text = "";
                  petStoneSkillText.visible = false;
               }
            }
            else
            {
               _loc67_ = 1;
               while(_loc67_ <= 6)
               {
                  _loc64_ = this["petStone" + _loc67_] as Image;
                  _loc64_.source = ResManager.ICON_EQUIP_HOLE;
                  _loc67_++;
               }
               petStoneSkillText.text = "";
               petStoneSkillText.visible = false;
            }
         }
         else
         {
            petStoneSkillText.text = "";
            petStoneSkillText.visible = false;
            petStoneText.includeInLayout = false;
            petStoneText.visible = false;
            petStoneContainer.includeInLayout = false;
            petStoneContainer.visible = false;
            jewelInfo.includeInLayout = true;
            jewelInfo.visible = true;
         }
         if(!ToolKit.isEqual(param1.temp.kind,GamePredef.ITEM_KIND_DRESS))
         {
            _loc68_ = String(Language.TIPEQUIP_S[22].toString());
            if(ProductPanel.isGloveEquip(param1.temp.id))
            {
               _loc68_ = _loc68_.replace("{endureLeft}",Number(param1.inst.endureLeft).toFixed(1));
            }
            else
            {
               _loc68_ = _loc68_.replace("{endureLeft}",Number(param1.inst.endureLeft));
            }
            _loc68_ = _loc68_.replace("{endureMax}",param1.inst.endureMax);
            vo.endure = _loc68_;
         }
         if(param1.inst.endureLeft == 0)
         {
            vo.endure = FONT_COLOR_RED_PROP + vo.endure + FONT_COLOR_SUF_PROP;
         }
         if(param1.inst.maker)
         {
            vo.maker = param1.inst.maker + Language.TIPEQUIP_S[23];
         }
         if(param1.temp.activeEquipId > 0)
         {
            if(param1.inst.activeProp > 0)
            {
               propSoul.visible = true;
               propSoul.includeInLayout = true;
            }
            if(dm.hasData(GamePredef.TBL_EQUIPT_TEMPLATE,param1.temp.activeEquipId))
            {
               _loc69_ = dm.getGameData(GamePredef.TBL_EQUIPT_TEMPLATE,param1.temp.activeEquipId);
               vo.activeEquipName = _loc69_.name;
               refreshSoul();
            }
            else
            {
               addEventListener(GameDataEvent.DATA_RECIEVED + "_" + GamePredef.TBL_EQUIPT_TEMPLATE + "_" + param1.temp.activeEquipId,equipDataLoaded);
               dm.getGameData(GamePredef.TBL_EQUIPT_TEMPLATE,param1.temp.activeEquipId);
            }
         }
         if(param1.temp.suitId)
         {
            _loc70_ = _core.getTemplateData(GamePredef.TBL_EQUIPT_SUIT,Number(param1.temp.suitId));
            if(_loc70_)
            {
               _loc71_ = BasicToolTip.PRE_SUIT_PROP + Language.TIPEQUIP_S[25].toString().replace("{suitName}",_loc70_.name) + BasicToolTip.SUF_SUIT_PROP;
               if(EquiptFuncPanel.isSpecPetEqu(param1.temp))
               {
                  _loc72_ = 0;
                  if(param1.index >= 606 && param1.index <= 607)
                  {
                     _loc73_ = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
                     if(_loc73_)
                     {
                        _loc74_ = {};
                        _loc74_ = _loc73_.getSpecPetEquSuitNum(_loc70_.id);
                        if(_loc74_)
                        {
                           _loc75_ = 0;
                           _loc76_ = 4;
                           while(_loc76_ >= 2)
                           {
                              if(_loc74_[_loc76_] == null)
                              {
                                 _loc74_[_loc76_] = 0;
                              }
                              _loc75_ += _loc74_[_loc76_];
                              if(_loc75_ == 2)
                              {
                                 _loc72_ = _loc76_;
                                 break;
                              }
                              _loc76_--;
                           }
                        }
                     }
                  }
                  _loc25_ = 1;
                  while(_loc25_ <= 5)
                  {
                     _loc77_ = int(_loc70_["suitProp" + _loc25_]);
                     _loc78_ = int(_loc70_["suitPropNum" + _loc25_]);
                     _loc79_ = "";
                     if(_loc77_ > 0 && _loc78_ > 0)
                     {
                        _loc80_ = getSuitPropStr(_loc77_,_loc78_,_loc79_,_loc72_);
                        _loc71_ += _loc80_;
                     }
                     _loc25_++;
                  }
                  _loc71_ += "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc72_] + "\'>" + _loc70_.skillDescription + "</font>";
               }
               else
               {
                  _loc81_ = {};
                  if(param1.index >= 600 && param1.index <= 605)
                  {
                     _loc73_ = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
                     if(_loc73_)
                     {
                        _loc81_ = _loc73_.getPetEquSuitNum(_loc70_.id);
                        if(_loc81_)
                        {
                           _loc75_ = 0;
                           _loc76_ = 4;
                           while(_loc76_ >= 2)
                           {
                              if(_loc81_[_loc76_] == null)
                              {
                                 _loc81_[_loc76_] = 0;
                              }
                              _loc81_[_loc76_] += _loc75_;
                              _loc75_ = int(_loc81_[_loc76_]);
                              _loc76_--;
                           }
                        }
                     }
                  }
                  _loc82_ = {
                     "0":1,
                     "1":1,
                     "2":0.5,
                     "3":1,
                     "4":2
                  };
                  _loc25_ = 1;
                  while(_loc25_ <= 5)
                  {
                     _loc77_ = int(_loc70_["suitProp" + _loc25_]);
                     _loc78_ = int(_loc70_["suitPropNum" + _loc25_]);
                     _loc79_ = String(Language.TIPEQUIP_S[26].toString().replace("{num}",_loc25_ + 1));
                     _loc4_ = 0;
                     if(_loc81_)
                     {
                        _loc76_ = 2;
                        while(_loc76_ <= 4)
                        {
                           if(Boolean(_loc81_[_loc76_]) && _loc81_[_loc76_] >= _loc25_ + 1)
                           {
                              _loc4_ = _loc76_;
                           }
                           _loc76_++;
                        }
                     }
                     _loc80_ = getSuitPropStr(_loc77_,_loc78_,_loc79_,_loc4_);
                     _loc71_ += _loc80_;
                     _loc25_++;
                  }
               }
               vo.propSuit = _loc71_;
            }
         }
      }
      
      private function _TipEquip_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _TipEquip_SetProperty2 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 192;
         BindingManager.executeBindings(this,"_TipEquip_SetProperty2",_TipEquip_SetProperty2);
         return _loc1_;
      }
      
      private function _TipEquip_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "simplify";
         _loc1_.overrides = [_TipEquip_RemoveChild1_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get propSoul() : Text
      {
         return this._993680394propSoul;
      }
   }
}

