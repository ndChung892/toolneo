package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.logic.Battle;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicMultiLineButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PentagonCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.comp.SkillUseSlot;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.compBattle.PetCmdCanvas;
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
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.DragSource;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.DragManager;
   import mx.states.RemoveChild;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _112005436vbox1:VBox;
      
      private var _169699452petFuncBtn5:BasicGlowButton;
      
      private var _1002706921simplecanvas3:SimpleCanvas;
      
      private var _900562943skill2:SkillUseSlot;
      
      private var _1091882814factor1:RoundedLabel;
      
      private var _550778330canvas2:Canvas;
      
      private var _861878256basichortxtbutton5:BasicTxtButton;
      
      private var _1137294803_PetPanel_HBox1:HBox;
      
      private var _237239562aptAgilityFinal:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1549420544delBtn1:BasicGlowButton;
      
      private var _839841133upBtn4:BasicGlowButton;
      
      private var _1315489237starHbox:HBox;
      
      private var _677962293petEqu5:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _505171262openBtn4:BasicGlowButton;
      
      private var _1554141557tabBtn2:BasicMultiLineButton;
      
      private var _112005437vbox2:VBox;
      
      private var _805962357propertyPentagon:PentagonCanvas;
      
      private var _861878254basichortxtbutton3:BasicTxtButton;
      
      private var _1751782644aptStaminaFinal:RoundedLabel;
      
      private var petDataTemp:Object;
      
      private var _900562942skill3:SkillUseSlot;
      
      private var _702954884aptIntelligence:BoxLabel;
      
      private var _1618724969aptEnergyFinal:RoundedLabel;
      
      private var _1091882815factor0:RoundedLabel;
      
      private var _550778331canvas3:Canvas;
      
      private var _507317139growRate:BoxLabel;
      
      private var _1549420545delBtn2:BasicGlowButton;
      
      private var _861878252basichortxtbutton1:BasicTxtButton;
      
      public var _PetPanel_SetProperty10:SetProperty;
      
      public var _PetPanel_SetProperty11:SetProperty;
      
      public var _PetPanel_SetProperty12:SetProperty;
      
      public var _PetPanel_SetProperty13:SetProperty;
      
      public var _PetPanel_SetProperty14:SetProperty;
      
      public var _PetPanel_SetProperty15:SetProperty;
      
      public var _PetPanel_SetProperty16:SetProperty;
      
      public var _PetPanel_SetProperty17:SetProperty;
      
      public var _PetPanel_SetProperty18:SetProperty;
      
      public var _PetPanel_SetProperty19:SetProperty;
      
      private var _169699450petFuncBtn3:BasicGlowButton;
      
      private var _839841132upBtn5:BasicGlowButton;
      
      public var _PetPanel_Image1:Image;
      
      public var _PetPanel_Image2:Array;
      
      private var _112005438vbox3:VBox;
      
      public var _PetPanel_SetProperty20:SetProperty;
      
      public var _PetPanel_SetProperty21:SetProperty;
      
      public var _PetPanel_SetProperty22:SetProperty;
      
      private var _348170509aptEnergy:BoxLabel;
      
      private var _677962294petEqu4:ItemSlot;
      
      private var _169699453petFuncBtn6:BasicGlowButton;
      
      public var petData:Object;
      
      private var _1554141558tabBtn1:BasicMultiLineButton;
      
      private var _505171265openBtn1:BasicGlowButton;
      
      private var _505171261openBtn5:BasicGlowButton;
      
      private var _1091882811factor4:RoundedLabel;
      
      public var _PetPanel_SetProperty1:SetProperty;
      
      public var _PetPanel_SetProperty2:SetProperty;
      
      public var _PetPanel_SetProperty3:SetProperty;
      
      public var _PetPanel_SetProperty5:SetProperty;
      
      public var _PetPanel_SetProperty8:SetProperty;
      
      public var _PetPanel_SetProperty9:SetProperty;
      
      private var _900562941skill4:SkillUseSlot;
      
      private var _2055403737aptStrengthEx:RoundedLabel;
      
      private var _169699448petFuncBtn1:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1588184269aptAgilityEx:RoundedLabel;
      
      private var _677962290petEqu8:ItemSlot;
      
      private var _112005439vbox4:VBox;
      
      private var selectedTabIndex:int = 0;
      
      private var _861878257basichortxtbutton6:BasicTxtButton;
      
      private var _1549420546delBtn3:BasicGlowButton;
      
      private var _314795602aptIntelligenceFinal:RoundedLabel;
      
      private var _677962295petEqu3:ItemSlot;
      
      private var _839841136upBtn1:BasicGlowButton;
      
      private var _1002706920simplecanvas2:SimpleCanvas;
      
      private var _900562940skill5:SkillUseSlot;
      
      private var _1554141559tabBtn0:BasicMultiLineButton;
      
      private var _1091882812factor3:RoundedLabel;
      
      private var _861878255basichortxtbutton4:BasicTxtButton;
      
      private var _505171264openBtn2:BasicGlowButton;
      
      private var _1002706919simplecanvas1:SimpleCanvas;
      
      private var _169699451petFuncBtn4:BasicGlowButton;
      
      private var _677962291petEqu7:ItemSlot;
      
      private var _395626106aptStrength:BoxLabel;
      
      private var _btnEnabled:Boolean = true;
      
      private var _839841135upBtn2:BasicGlowButton;
      
      private var _1549420547delBtn4:BasicGlowButton;
      
      private var _861878253basichortxtbutton2:BasicTxtButton;
      
      public var _PetPanel_RemoveChild1:RemoveChild;
      
      public var _PetPanel_RemoveChild2:RemoveChild;
      
      public var _PetPanel_RemoveChild3:RemoveChild;
      
      public var _PetPanel_RemoveChild4:RemoveChild;
      
      public var _PetPanel_RemoveChild5:RemoveChild;
      
      public var _PetPanel_RemoveChild6:RemoveChild;
      
      public var _PetPanel_RemoveChild7:RemoveChild;
      
      public var _PetPanel_RemoveChild8:RemoveChild;
      
      public var _PetPanel_RemoveChild9:RemoveChild;
      
      private var _677962296petEqu2:ItemSlot;
      
      private var _169699449petFuncBtn2:BasicGlowButton;
      
      private var _504961010growRateAdd:RoundedLabel;
      
      private var _815424624aptStrengthFinal:RoundedLabel;
      
      private var _1229780311aptIntelligenceEx:RoundedLabel;
      
      private var _1091882813factor2:RoundedLabel;
      
      private var _1543550368aptAgility:BoxLabel;
      
      private var _900562944skill1:SkillUseSlot;
      
      private var _505171263openBtn3:BasicGlowButton;
      
      private var _112005440vbox5:VBox;
      
      mx_internal var _watchers:Array = [];
      
      private var _1911434378aptStamina:BoxLabel;
      
      private var _1357563171aptStaminaEx:RoundedLabel;
      
      public var _PetPanel_RemoveChild10:RemoveChild;
      
      public var _PetPanel_RemoveChild11:RemoveChild;
      
      public var _PetPanel_RemoveChild12:RemoveChild;
      
      private var _677962292petEqu6:ItemSlot;
      
      private var _3540562star:Repeater;
      
      private var _415587680aptEnergyEx:RoundedLabel;
      
      private var _839841134upBtn3:BasicGlowButton;
      
      private var _1549420548delBtn5:BasicGlowButton;
      
      private var _501173401pettitle:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _677962297petEqu1:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":370,
               "height":447,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"pettitle"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"simplecanvas1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":10,
                        "percentWidth":100,
                        "percentHeight":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_PetPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":238,
                                 "y":52
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"factor0",
                           "stylesFactory":function():void
                           {
                              this.color = 15361583;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":284,
                                 "y":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"factor1",
                           "stylesFactory":function():void
                           {
                              this.color = 14689269;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":329,
                                 "y":89
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"factor2",
                           "stylesFactory":function():void
                           {
                              this.color = 16081443;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":313,
                                 "y":140
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"factor3",
                           "stylesFactory":function():void
                           {
                              this.color = 2329845;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":255,
                                 "y":140
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"factor4",
                           "stylesFactory":function():void
                           {
                              this.color = 9301547;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":239,
                                 "y":88
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"simplecanvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":380,
                        "height":138.5,
                        "y":40,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":PentagonCanvas,
                           "id":"propertyPentagon",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":111,
                                 "height":111,
                                 "x":240,
                                 "y":20,
                                 "lineShow":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"starHbox",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":130,
                                 "y":3,
                                 "x":230,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Repeater,
                                    "id":"star",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_PetPanel_Image2",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":9,
                                                "height":9
                                             };
                                          }
                                       })]};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"growRate",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":89,
                                 "y":4,
                                 "width":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"growRateAdd",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":164,
                                 "y":4,
                                 "width":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"aptStrength",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":89,
                                 "y":26,
                                 "width":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"aptAgility",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":89,
                                 "y":47,
                                 "width":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"aptStamina",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":89,
                                 "y":69,
                                 "width":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"aptIntelligence",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":89,
                                 "y":91,
                                 "width":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"aptEnergy",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":89,
                                 "y":113,
                                 "width":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptStrengthEx",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":128,
                                 "y":26,
                                 "width":35
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptAgilityEx",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":128,
                                 "y":47,
                                 "width":35
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptStaminaEx",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":128,
                                 "y":69,
                                 "width":35
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptIntelligenceEx",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":128,
                                 "y":91,
                                 "width":35
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptEnergyEx",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":128,
                                 "y":113,
                                 "width":35
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptStrengthFinal",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":164,
                                 "y":26,
                                 "width":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptAgilityFinal",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":164,
                                 "y":48,
                                 "width":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptStaminaFinal",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":164,
                                 "y":69,
                                 "width":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptIntelligenceFinal",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":164,
                                 "y":91,
                                 "width":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aptEnergyFinal",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":164,
                                 "y":113,
                                 "width":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"basichortxtbutton1",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.paddingTop = 1;
                              this.paddingBottom = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":17,
                                 "y":4,
                                 "width":66,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"basichortxtbutton2",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.paddingTop = 1;
                              this.paddingBottom = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":17,
                                 "y":26,
                                 "width":66,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"basichortxtbutton3",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.paddingTop = 1;
                              this.paddingBottom = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":17,
                                 "y":47,
                                 "width":66,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"basichortxtbutton4",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.paddingTop = 1;
                              this.paddingBottom = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":17,
                                 "y":69,
                                 "width":66,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"basichortxtbutton5",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.paddingTop = 1;
                              this.paddingBottom = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":17,
                                 "y":92,
                                 "width":66,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"basichortxtbutton6",
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                              this.paddingTop = 1;
                              this.paddingBottom = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":17,
                                 "y":113,
                                 "width":66,
                                 "height":19
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":13,
                        "y":176,
                        "width":290,
                        "height":213,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":4,
                                 "y":3,
                                 "styleName":"VerticalTab",
                                 "selected":true,
                                 "height":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":4,
                                 "y":69,
                                 "styleName":"VerticalTab",
                                 "height":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":4,
                                 "y":135,
                                 "styleName":"VerticalTab",
                                 "height":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"simplecanvas3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":0,
                                 "width":265,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":SkillUseSlot,
                                    "id":"skill1",
                                    "events":{
                                       "click":"__skill1_click",
                                       "creationComplete":"__skill1_creationComplete"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2.5,
                                          "y":2,
                                          "height":41,
                                          "currentState":"pet",
                                          "skillType":"pet",
                                          "width":150
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SkillUseSlot,
                                    "id":"skill2",
                                    "events":{
                                       "click":"__skill2_click",
                                       "creationComplete":"__skill2_creationComplete"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2.5,
                                          "y":44,
                                          "height":41,
                                          "currentState":"pet",
                                          "skillType":"pet",
                                          "width":150
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SkillUseSlot,
                                    "id":"skill3",
                                    "events":{
                                       "click":"__skill3_click",
                                       "creationComplete":"__skill3_creationComplete"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2.5,
                                          "y":86,
                                          "height":41,
                                          "currentState":"pet",
                                          "skillType":"pet",
                                          "width":150
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SkillUseSlot,
                                    "id":"skill4",
                                    "events":{
                                       "click":"__skill4_click",
                                       "creationComplete":"__skill4_creationComplete"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2.5,
                                          "y":128,
                                          "height":41,
                                          "currentState":"pet",
                                          "skillType":"pet",
                                          "width":150
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SkillUseSlot,
                                    "id":"skill5",
                                    "events":{
                                       "click":"__skill5_click",
                                       "creationComplete":"__skill5_creationComplete"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2.5,
                                          "y":170,
                                          "height":41,
                                          "currentState":"pet",
                                          "skillType":"pet",
                                          "width":150
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vbox1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalAlign = "center";
                                       this.verticalGap = 1;
                                       this.verticalAlign = "middle";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":3,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"delBtn1",
                                             "events":{"click":"__delBtn1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalRed",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn1",
                                             "events":{"click":"__upBtn1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"openBtn1",
                                             "events":{"click":"__openBtn1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalGreen",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vbox2",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalAlign = "center";
                                       this.verticalGap = 1;
                                       this.verticalAlign = "middle";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":45,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"delBtn2",
                                             "events":{"click":"__delBtn2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalRed",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn2",
                                             "events":{"click":"__upBtn2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"openBtn2",
                                             "events":{"click":"__openBtn2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalGreen",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vbox3",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalAlign = "center";
                                       this.verticalGap = 1;
                                       this.verticalAlign = "middle";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":87,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"delBtn3",
                                             "events":{"click":"__delBtn3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalRed",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn3",
                                             "events":{"click":"__upBtn3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"openBtn3",
                                             "events":{"click":"__openBtn3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalGreen",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vbox4",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalAlign = "center";
                                       this.verticalGap = 1;
                                       this.verticalAlign = "middle";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":129,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"delBtn4",
                                             "events":{"click":"__delBtn4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalRed",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn4",
                                             "events":{"click":"__upBtn4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"openBtn4",
                                             "events":{"click":"__openBtn4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalGreen",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vbox5",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalAlign = "center";
                                       this.verticalGap = 1;
                                       this.verticalAlign = "middle";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":183,
                                          "y":171,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"delBtn5",
                                             "events":{"click":"__delBtn5_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalRed",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn5",
                                             "events":{"click":"__upBtn5_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
                                                   "width":40.6,
                                                   "height":19
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"openBtn5",
                                             "events":{"click":"__openBtn5_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalGreen",
                                                   "width":40.6,
                                                   "height":19
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
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"petFuncBtn1",
                  "events":{"click":"__petFuncBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":306,
                        "y":180,
                        "styleName":"BtnStdRed",
                        "width":50.9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"petFuncBtn2",
                  "events":{"click":"__petFuncBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":306,
                        "y":212,
                        "styleName":"BtnStdRed",
                        "width":50.9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"petFuncBtn3",
                  "events":{"click":"__petFuncBtn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":306,
                        "y":244,
                        "styleName":"BtnStdRed",
                        "width":50.9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"petFuncBtn4",
                  "events":{"click":"__petFuncBtn4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":306,
                        "y":276,
                        "styleName":"BtnStdRed",
                        "width":50.9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"petFuncBtn5",
                  "events":{"click":"__petFuncBtn5_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":306,
                        "y":308,
                        "styleName":"BtnStdRed",
                        "width":50.9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"petFuncBtn6",
                  "events":{"click":"__petFuncBtn6_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":306,
                        "y":340,
                        "styleName":"BtnStdRed",
                        "width":50.9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas3",
                  "events":{"creationComplete":"__canvas3_creationComplete"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":390,
                        "width":380,
                        "height":59,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"petEqu1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "index":600,
                                 "y":9,
                                 "x":27,
                                 "slotType":4
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"petEqu2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "index":601,
                                 "y":9,
                                 "x":68,
                                 "slotType":4,
                                 "styleName":"TransparentSlot"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"petEqu3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "index":602,
                                 "y":9,
                                 "x":109,
                                 "slotType":4,
                                 "styleName":"TransparentSlot"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"petEqu4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "index":603,
                                 "y":9,
                                 "x":150,
                                 "slotType":4,
                                 "styleName":"TransparentSlot"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"petEqu5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "index":604,
                                 "y":9,
                                 "x":191,
                                 "slotType":4,
                                 "styleName":"TransparentSlot"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"petEqu6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "index":605,
                                 "y":9,
                                 "x":232,
                                 "slotType":4,
                                 "styleName":"TransparentSlot"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"petEqu7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "index":606,
                                 "y":9,
                                 "x":272,
                                 "slotType":4,
                                 "styleName":"TransparentSlot"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"petEqu8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "index":607,
                                 "y":9,
                                 "x":313,
                                 "slotType":4,
                                 "styleName":"TransparentSlot"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function PetPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 370;
         this.height = 447;
         this.styleName = "StandardContent";
         this.currentState = "skill";
         this.cacheAsBitmap = true;
         this.states = [_PetPanel_State1_c(),_PetPanel_State2_c()];
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn2() : BasicGlowButton
      {
         return this._1549420545delBtn2;
      }
      
      public function set delBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420545delBtn2;
         if(_loc2_ !== param1)
         {
            this._1549420545delBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn4() : BasicGlowButton
      {
         return this._1549420547delBtn4;
      }
      
      public function set delBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420546delBtn3;
         if(_loc2_ !== param1)
         {
            this._1549420546delBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn3",_loc2_,param1));
         }
      }
      
      private function _PetPanel_RemoveChild9_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild9 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild9",_PetPanel_RemoveChild9);
         return _loc1_;
      }
      
      private function _PetPanel_RemoveChild12_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild12 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild12",_PetPanel_RemoveChild12);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn3() : BasicGlowButton
      {
         return this._1549420546delBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get simplecanvas2() : SimpleCanvas
      {
         return this._1002706920simplecanvas2;
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn5() : BasicGlowButton
      {
         return this._1549420548delBtn5;
      }
      
      public function set delBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420547delBtn4;
         if(_loc2_ !== param1)
         {
            this._1549420547delBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn4",_loc2_,param1));
         }
      }
      
      private function _PetPanel_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty2 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 1;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty2",_PetPanel_SetProperty2);
         return _loc1_;
      }
      
      public function set skill2(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562943skill2;
         if(_loc2_ !== param1)
         {
            this._900562943skill2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill4() : SkillUseSlot
      {
         return this._900562941skill4;
      }
      
      public function set skill3(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562942skill3;
         if(_loc2_ !== param1)
         {
            this._900562942skill3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growRateAdd() : RoundedLabel
      {
         return this._504961010growRateAdd;
      }
      
      public function set delBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420548delBtn5;
         if(_loc2_ !== param1)
         {
            this._1549420548delBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill2() : SkillUseSlot
      {
         return this._900562943skill2;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill3() : SkillUseSlot
      {
         return this._900562942skill3;
      }
      
      public function set growRateAdd(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._504961010growRateAdd;
         if(_loc2_ !== param1)
         {
            this._504961010growRateAdd = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growRateAdd",_loc2_,param1));
         }
      }
      
      public function set skill4(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562941skill4;
         if(_loc2_ !== param1)
         {
            this._900562941skill4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill4",_loc2_,param1));
         }
      }
      
      public function set skill5(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562940skill5;
         if(_loc2_ !== param1)
         {
            this._900562940skill5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill5",_loc2_,param1));
         }
      }
      
      public function __petFuncBtn5_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get skill5() : SkillUseSlot
      {
         return this._900562940skill5;
      }
      
      [Bindable(event="propertyChange")]
      public function get delBtn1() : BasicGlowButton
      {
         return this._1549420544delBtn1;
      }
      
      private function _PetPanel_SetProperty19_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty19 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 170;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty19",_PetPanel_SetProperty19);
         return _loc1_;
      }
      
      private function skillTabBtnClick(param1:int) : void
      {
         drawSkillSlots(param1);
         selectedTabIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= 2)
         {
            if(_loc2_ == param1)
            {
               this["tabBtn" + _loc2_].selected = true;
            }
            else
            {
               this["tabBtn" + _loc2_].selected = false;
            }
            _loc2_++;
         }
      }
      
      public function set delBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1549420544delBtn1;
         if(_loc2_ !== param1)
         {
            this._1549420544delBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delBtn1",_loc2_,param1));
         }
      }
      
      public function __skill5_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      private function _PetPanel_SetProperty1_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty1 = _loc1_;
         _loc1_.name = "text";
         BindingManager.executeBindings(this,"_PetPanel_SetProperty1",_PetPanel_SetProperty1);
         return _loc1_;
      }
      
      private function _PetPanel_RemoveChild8_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild8 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild8",_PetPanel_RemoveChild8);
         return _loc1_;
      }
      
      private function _PetPanel_RemoveChild11_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild11 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild11",_PetPanel_RemoveChild11);
         return _loc1_;
      }
      
      private function _PetPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = pettitle;
         _loc1_ = Language.PETPANEL_U[10];
         _loc1_ = pettitle;
         _loc1_ = pettitle;
         _loc1_ = pettitle;
         _loc1_ = Language.PETPANEL_U[17];
         _loc1_ = simplecanvas2;
         _loc1_ = simplecanvas1;
         _loc1_ = canvas2;
         _loc1_ = canvas2;
         _loc1_ = canvas2;
         _loc1_ = petFuncBtn1;
         _loc1_ = petFuncBtn2;
         _loc1_ = petFuncBtn3;
         _loc1_ = petFuncBtn4;
         _loc1_ = canvas3;
         _loc1_ = vbox1;
         _loc1_ = vbox2;
         _loc1_ = vbox3;
         _loc1_ = vbox4;
         _loc1_ = vbox5;
         _loc1_ = simplecanvas3;
         _loc1_ = skill1;
         _loc1_ = skill2;
         _loc1_ = skill3;
         _loc1_ = skill4;
         _loc1_ = skill5;
         _loc1_ = skill1;
         _loc1_ = skill2;
         _loc1_ = skill3;
         _loc1_ = skill4;
         _loc1_ = skill5;
         _loc1_ = pettitle;
         _loc1_ = ResManager.PET_PENTAGON;
         _loc1_ = Language.CHARSELECTCANVAS_U[17];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[18];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[19];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[20];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[21];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.PETPANEL_U[18];
         _loc1_ = star.currentItem;
         _loc1_ = Language.PETPANEL_S[12];
         _loc1_ = Language.PETPANEL_S[13];
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptStrength + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptAgility + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptStamina + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptIntelligence + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[14] + ":" + petData.aptEnergy + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptStrengthEx || 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptAgilityEx || 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptStaminaEx || 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptIntelligenceEx || 0);
         _loc1_ = Language.PETPANEL_S[16] + ":" + (petData.aptEnergyEx || 0);
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptStrength) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0))));
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptAgility) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0))));
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptStamina) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0))));
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptIntelligence) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0))));
         _loc1_ = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptEnergy) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0))));
         _loc1_ = Language.PETPANEL_U[11];
         _loc1_ = Language.GAMEPREDEF_S[511];
         _loc1_ = Language.PETPANEL_U[12];
         _loc1_ = Language.GAMEPREDEF_S[512];
         _loc1_ = Language.PETPANEL_U[13];
         _loc1_ = Language.GAMEPREDEF_S[513];
         _loc1_ = Language.PETPANEL_U[14];
         _loc1_ = Language.GAMEPREDEF_S[514];
         _loc1_ = Language.PETPANEL_U[15];
         _loc1_ = Language.GAMEPREDEF_S[515];
         _loc1_ = Language.PETPANEL_U[16];
         _loc1_ = Language.GAMEPREDEF_S[516];
         _loc1_ = Language.PETPANEL_U[7];
         _loc1_ = Language.PETPANEL_U[8];
         _loc1_ = Language.PETPANEL_U[9];
         _loc1_ = Language.PETPANEL_U[19];
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[4];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[6];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[0];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[1];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[2];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[3];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[22];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[24];
         _loc1_ = this._btnEnabled;
         _loc1_ = GamePredef.EQUIP_POSITION[50];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [50];
         _loc1_ = GamePredef.EQUIP_POSITION[51];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [51];
         _loc1_ = GamePredef.EQUIP_POSITION[52];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [52];
         _loc1_ = GamePredef.EQUIP_POSITION[53];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [53];
         _loc1_ = GamePredef.EQUIP_POSITION[54];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [54];
         _loc1_ = GamePredef.EQUIP_POSITION[55];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [55];
         _loc1_ = GamePredef.EQUIP_POSITION[56];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [56];
         _loc1_ = GamePredef.EQUIP_POSITION[57];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = [57];
      }
      
      public function __skill1_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      private function _PetPanel_SetProperty18_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty18 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 170;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty18",_PetPanel_SetProperty18);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptEnergyFinal() : RoundedLabel
      {
         return this._1618724969aptEnergyFinal;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill1() : SkillUseSlot
      {
         return this._900562944skill1;
      }
      
      private function upSkill(param1:int) : void
      {
         var skillData:Object = null;
         var func:Function = null;
         var func2:Function = null;
         var index:int = param1;
         index = selectedTabIndex * 5 + index;
         var str:String = "";
         if(Boolean(petData) && ToolKit.isBigThan(petData["skill" + index],0))
         {
            skillData = _core.data.getGameData(GamePredef.TBL_SKILL,petData["skill" + index]);
            if(skillData)
            {
               if(ToolKit.isBigOrEqual(skillData.level,3))
               {
                  _core.sysMsg(Language.PETPANEL_S[3]);
               }
               else if(ToolKit.isEqual(skillData.level,1))
               {
                  if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_UP[petDataTemp.qLevel],1))
                  {
                     func = function(param1:CloseEvent):void
                     {
                        if(param1.detail == Alert.YES)
                        {
                           _core.remote.petUpSkill(petData.id,index);
                        }
                     };
                     str = Language.PETPANEL_S[4];
                     str = str.replace("{skillData.name}",skillData.name);
                     Alert.show(str,"",3,this,func);
                  }
                  else
                  {
                     str = Language.PETPANEL_S[5];
                     str = str.replace("{petSkillUpItem}",TextUtil.getCodeByTypeId(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_UP[petDataTemp.qLevel]));
                     _core.sysMsg(str);
                  }
               }
               else if(ToolKit.isEqual(skillData.level,2))
               {
                  if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_UP[petDataTemp.qLevel],3))
                  {
                     func2 = function(param1:CloseEvent):void
                     {
                        if(param1.detail == Alert.YES)
                        {
                           _core.remote.petUpSkill(petData.id,index);
                        }
                     };
                     str = Language.PETPANEL_S[6];
                     str = str.replace("{skillData.name}",skillData.name);
                     Alert.show(str,"",3,this,func2);
                  }
                  else
                  {
                     str = Language.PETPANEL_S[7];
                     str = str.replace("{petSkillUpItem}",TextUtil.getCodeByTypeId(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_UP[petDataTemp.qLevel]));
                     _core.sysMsg(str);
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn1() : BasicGlowButton
      {
         return this._169699448petFuncBtn1;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn3() : BasicGlowButton
      {
         return this._169699450petFuncBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn4() : BasicGlowButton
      {
         return this._169699451petFuncBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn5() : BasicGlowButton
      {
         return this._169699452petFuncBtn5;
      }
      
      private function _PetPanel_RemoveChild10_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild10 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild10",_PetPanel_RemoveChild10);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn2() : BasicGlowButton
      {
         return this._169699449petFuncBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStamina() : BoxLabel
      {
         return this._1911434378aptStamina;
      }
      
      private function _PetPanel_RemoveChild7_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild7 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild7",_PetPanel_RemoveChild7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get petFuncBtn6() : BasicGlowButton
      {
         return this._169699453petFuncBtn6;
      }
      
      public function set skill1(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._900562944skill1;
         if(_loc2_ !== param1)
         {
            this._900562944skill1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pettitle() : BasicTitleCanvas
      {
         return this._501173401pettitle;
      }
      
      public function set aptIntelligenceFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._314795602aptIntelligenceFinal;
         if(_loc2_ !== param1)
         {
            this._314795602aptIntelligenceFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptIntelligenceFinal",_loc2_,param1));
         }
      }
      
      public function __delBtn1_click(param1:MouseEvent) : void
      {
         delSkill(1);
      }
      
      public function set star(param1:Repeater) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3540562star;
         if(_loc2_ !== param1)
         {
            this._3540562star = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star",_loc2_,param1));
         }
      }
      
      private function _PetPanel_SetProperty17_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty17 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 170;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty17",_PetPanel_SetProperty17);
         return _loc1_;
      }
      
      public function __upBtn4_click(param1:MouseEvent) : void
      {
         upSkill(4);
      }
      
      public function set aptAgility(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._1543550368aptAgility;
         if(_loc2_ !== param1)
         {
            this._1543550368aptAgility = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptAgility",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get factor0() : RoundedLabel
      {
         return this._1091882815factor0;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor1() : RoundedLabel
      {
         return this._1091882814factor1;
      }
      
      private function _PetPanel_RemoveChild6_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild6 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild6",_PetPanel_RemoveChild6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor4() : RoundedLabel
      {
         return this._1091882811factor4;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor2() : RoundedLabel
      {
         return this._1091882813factor2;
      }
      
      public function changeSelectPet(param1:Object) : void
      {
         this.petData = param1;
      }
      
      public function set aptEnergyFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1618724969aptEnergyFinal;
         if(_loc2_ !== param1)
         {
            this._1618724969aptEnergyFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptEnergyFinal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get factor3() : RoundedLabel
      {
         return this._1091882812factor3;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStrengthEx() : RoundedLabel
      {
         return this._2055403737aptStrengthEx;
      }
      
      public function __petFuncBtn4_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(5);
      }
      
      public function showPet(param1:Object) : void
      {
         this.petData = param1;
         reformBattlePetData();
         initView();
      }
      
      public function set propertyPentagon(param1:PentagonCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._805962357propertyPentagon;
         if(_loc2_ !== param1)
         {
            this._805962357propertyPentagon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propertyPentagon",_loc2_,param1));
         }
      }
      
      private function _PetPanel_SetProperty16_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty16 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty16",_PetPanel_SetProperty16);
         return _loc1_;
      }
      
      public function __openBtn5_click(param1:MouseEvent) : void
      {
         openSkill(5);
      }
      
      public function set petFuncBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699448petFuncBtn1;
         if(_loc2_ !== param1)
         {
            this._169699448petFuncBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn1",_loc2_,param1));
         }
      }
      
      public function set petFuncBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699449petFuncBtn2;
         if(_loc2_ !== param1)
         {
            this._169699449petFuncBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn2",_loc2_,param1));
         }
      }
      
      private function skillLevelClicked(param1:GameDataEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc2_:Core = Core.getInstance();
         if(_loc2_.state == GamePredef.ST_CORE_BATTLE && _loc2_.cmdState == GamePredef.ST_BATTLE_SKILL)
         {
            _loc3_ = int(param1.data.level);
            _loc4_ = param1.data.skill;
            if(_loc2_.checkSkillRequire(_loc4_,true,true))
            {
               _loc2_.skill = _loc4_;
               _loc2_.skillLevel = _loc3_;
               if(!ToolKit.isEqual(_loc4_.targetType,Battle.SKILL_TARGET_TYPE_SELF_PLAYER) && !ToolKit.isEqual(_loc4_.targetType,Battle.SKILL_TARGET_TYPE_SELF_PET))
               {
                  _loc2_.view.showSelect();
               }
               visible = false;
            }
         }
         else
         {
            drag(param1.data.slot,param1.data.event,param1.data.level);
         }
      }
      
      public function set petFuncBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699450petFuncBtn3;
         if(_loc2_ !== param1)
         {
            this._169699450petFuncBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn3",_loc2_,param1));
         }
      }
      
      public function set petFuncBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699451petFuncBtn4;
         if(_loc2_ !== param1)
         {
            this._169699451petFuncBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn4",_loc2_,param1));
         }
      }
      
      public function set petFuncBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699452petFuncBtn5;
         if(_loc2_ !== param1)
         {
            this._169699452petFuncBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn5",_loc2_,param1));
         }
      }
      
      private function _PetPanel_RemoveChild5_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild5 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild5",_PetPanel_RemoveChild5);
         return _loc1_;
      }
      
      private function delSkill(param1:int) : void
      {
         var skillData:Object = null;
         var _delSkill:Function = null;
         var func:Function = null;
         var index:int = param1;
         index = selectedTabIndex * 5 + index;
         if(Boolean(petData) && ToolKit.isBigThan(petData["skill" + index],0))
         {
            if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_DEL,1))
            {
               skillData = _core.data.getGameData(GamePredef.TBL_SKILL,petData["skill" + index]);
               if(skillData)
               {
                  _delSkill = function(param1:String):void
                  {
                     var _loc2_:String = null;
                     if(param1)
                     {
                        _loc2_ = MD5.hash(param1);
                        _core.remote.petDelSkill(petData.id,index,_loc2_);
                     }
                  };
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        if(_core.delPass)
                        {
                           _core.remote.petDelSkill(petData.id,index,_core.delPass);
                        }
                        else
                        {
                           _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.PETPANEL_U[23],_delSkill);
                        }
                     }
                  };
                  Alert.show(Language.PETPANEL_S[1] + skillData.name + "?","",3,this,func);
               }
            }
            else
            {
               _core.sysMsg(Language.PETPANEL_S[2] + TextUtil.getCodeByTypeId(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_PET_SKILL_DEL) + "x1!");
            }
         }
      }
      
      private function addEL(param1:Event) : void
      {
         var _loc2_:SkillUseSlot = SkillUseSlot(param1.currentTarget);
         _loc2_.addEventListener(GameDataEvent.SKILL_LEVEL_CLICKED,skillLevelClicked);
      }
      
      public function set petFuncBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._169699453petFuncBtn6;
         if(_loc2_ !== param1)
         {
            this._169699453petFuncBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petFuncBtn6",_loc2_,param1));
         }
      }
      
      private function useSkill(param1:MouseEvent) : void
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Object = null;
         var _loc2_:SkillUseSlot = SkillUseSlot(param1.currentTarget);
         var _loc3_:Core = Core.getInstance();
         if(currentState == "skill")
         {
            _loc4_ = _loc2_.slotData;
            if(!_loc4_)
            {
               return;
            }
            if(param1.target.hasOwnProperty("id"))
            {
               _loc5_ = param1.target.id;
               _loc6_ = int(_loc5_.substr(3));
               _loc7_ = int(_loc4_["restoreStoneSid"]);
               if(_loc7_ > 0 && _loc6_ <= 2)
               {
                  _loc4_ = skillGetLevel(_loc7_,_loc6_);
               }
               else
               {
                  _loc4_ = skillGetLevel(_loc4_.id,_loc6_);
               }
            }
            if(_loc3_.state == GamePredef.ST_CORE_BATTLE && _loc3_.cmdState == GamePredef.ST_BATTLE_SKILL && _loc3_.checkSkillRequire(_loc4_,true,true))
            {
               if(_loc4_.restoreSid > 0)
               {
                  _loc8_ = _core.data.getSlot({"id":_core.battlePet.equ7});
                  _loc9_ = _core.data.getSlot({"id":_core.battlePet.equ8});
                  _loc10_ = _core.data.getGameData(18,_loc8_.itemId);
                  _loc11_ = _core.data.getGameData(18,_loc9_.itemId);
                  _loc12_ = Number(_loc10_.endureLeft);
                  _loc13_ = Number(_loc11_.endureLeft);
                  _loc14_ = Number(_loc10_.endureMax) * 0.1;
                  _loc15_ = Number(_loc11_.endureMax) * 0.1;
                  if(_loc12_ > 0 && _loc12_ < _loc14_ || _loc13_ > 0 && _loc13_ < _loc15_)
                  {
                     _core.sysMidNote(Language.CHARSELECTCANVAS_U[35]);
                  }
                  else if(_loc12_ <= 0 || _loc13_ <= 0)
                  {
                     _core.sysMidNote(Language.CHARSELECTCANVAS_U[36]);
                     return;
                  }
               }
               _core.skill = _loc4_;
               _core.skillLevel = _loc4_.level;
               visible = false;
               if(_loc4_.targetType == Battle.SKILL_TARGET_TYPE_SELF_PLAYER)
               {
                  _core.battle.battleCmd(_core.player.battleId,GamePredef.BATTLE_ACTION_SKILL,_core.skill.id,_core.skillLevel);
                  _core.skill = null;
                  _core.skillLevel = -1;
               }
               else if(_loc4_.targetType == Battle.SKILL_TARGET_TYPE_SELF_PET)
               {
                  _loc16_ = _core.battle.battleGetPlayerPet(_core.view.getUI(ViewManager.STAGE_BATTLE).cList);
                  _core.battle.battleCmd(_loc16_.battleId,GamePredef.BATTLE_ACTION_SKILL,_core.skill.id,_core.skillLevel);
                  _core.skill = null;
                  _core.skillLevel = -1;
               }
               else
               {
                  _core.view.showSelect();
               }
            }
         }
         else
         {
            drag(_loc2_,param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptEnergy() : BoxLabel
      {
         return this._348170509aptEnergy;
      }
      
      public function set tabBtn0(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set aptStamina(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1911434378aptStamina;
         if(_loc2_ !== param1)
         {
            this._1911434378aptStamina = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStamina",_loc2_,param1));
         }
      }
      
      public function set tabBtn2(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set upBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841136upBtn1;
         if(_loc2_ !== param1)
         {
            this._839841136upBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn1",_loc2_,param1));
         }
      }
      
      public function set upBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841135upBtn2;
         if(_loc2_ !== param1)
         {
            this._839841135upBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn2",_loc2_,param1));
         }
      }
      
      public function set upBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841134upBtn3;
         if(_loc2_ !== param1)
         {
            this._839841134upBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn3",_loc2_,param1));
         }
      }
      
      public function set upBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841133upBtn4;
         if(_loc2_ !== param1)
         {
            this._839841133upBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn4",_loc2_,param1));
         }
      }
      
      public function set upBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._839841132upBtn5;
         if(_loc2_ !== param1)
         {
            this._839841132upBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn5",_loc2_,param1));
         }
      }
      
      private function _PetPanel_SetProperty15_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty15 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty15",_PetPanel_SetProperty15);
         return _loc1_;
      }
      
      public function set pettitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._501173401pettitle;
         if(_loc2_ !== param1)
         {
            this._501173401pettitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pettitle",_loc2_,param1));
         }
      }
      
      private function drag(param1:SkillUseSlot, param2:MouseEvent, param3:int = 0) : void
      {
         var _loc4_:Image = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:* = undefined;
         _loc4_ = Image(param1.skillSlot.itemIcon);
         var _loc5_:DragSource = new DragSource();
         _loc5_.addData(_loc4_,"image");
         if(param1.skillSlot.type == GamePredef.TBL_SKILL)
         {
            if(param2.target is Button)
            {
               _loc8_ = Number(Button(param2.target).id.substr(3,Button(param2.target).id.length));
               if(_loc8_ > 0 && _loc8_ < 10)
               {
                  _loc9_ = _core.data.gameDataIndex[GamePredef.TBL_SKILL][_core.data.gameData[GamePredef.TBL_SKILL][param1.skillSlot.slotData.id].codeName];
                  for each(_loc10_ in _loc9_)
                  {
                     if(_loc10_.level == _loc8_)
                     {
                        param1.skillSlot.giid = _loc10_.id;
                        break;
                     }
                  }
               }
            }
         }
         _loc5_.addData(param1.skillSlot,"slot");
         _loc5_.addData(param3,"level");
         var _loc6_:Image = new Image();
         _loc6_.source = _loc4_.source;
         _loc6_.height = _loc4_.height;
         _loc6_.width = _loc4_.width;
         _loc6_.x = _loc4_.x;
         _loc6_.y = _loc4_.y;
         var _loc7_:int = 0;
         if(param3 > 0)
         {
            _loc7_ = -78 - param3 * 16;
         }
         DragManager.doDrag(_loc4_,_loc5_,param2,_loc6_,_loc7_,0,0.5);
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox3() : VBox
      {
         return this._112005438vbox3;
      }
      
      private function _PetPanel_RemoveChild4_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild4 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild4",_PetPanel_RemoveChild4);
         return _loc1_;
      }
      
      override public function hide() : void
      {
         var _loc2_:PetCmdCanvas = null;
         super.hide();
         var _loc1_:Core = Core.getInstance();
         if(_loc1_.state == GamePredef.ST_CORE_BATTLE)
         {
            _loc2_ = PetCmdCanvas(_loc1_.view.getUI(ViewManager.MAIN_BATTLE_PET));
            _loc2_.doCmd("btnAttack");
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox1() : VBox
      {
         return this._112005436vbox1;
      }
      
      public function set aptEnergyEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._415587680aptEnergyEx;
         if(_loc2_ !== param1)
         {
            this._415587680aptEnergyEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptEnergyEx",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox2() : VBox
      {
         return this._112005437vbox2;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptIntelligenceEx() : RoundedLabel
      {
         return this._1229780311aptIntelligenceEx;
      }
      
      private function reformBattlePetData() : void
      {
         if(currentState == "normal")
         {
            return;
         }
         var _loc1_:Array = new Array();
         var _loc2_:int = 1;
         var _loc3_:int = 2;
         var _loc4_:int = 1;
         var _loc5_:int = 1;
         var _loc6_:int = 1;
         var _loc7_:int = 15;
         while(_loc4_ <= _loc7_)
         {
            if(ToolKit.isBigThan(petData["skill" + _loc4_],0) && _core.data.getGameData(GamePredef.TBL_SKILL,petData["skill" + _loc4_]).kind == _loc2_)
            {
               _loc1_["skill" + _loc6_] = petData["skill" + _loc4_];
               _loc6_++;
            }
            _loc4_++;
         }
         while(_loc5_ <= _loc7_)
         {
            if(ToolKit.isBigThan(petData["skill" + _loc5_],0) && _core.data.getGameData(GamePredef.TBL_SKILL,petData["skill" + _loc5_]).kind == _loc3_)
            {
               _loc1_["skill" + _loc6_] = petData["skill" + _loc5_];
               _loc6_++;
            }
            _loc5_++;
         }
         while(_loc6_ <= _loc7_)
         {
            _loc1_["skill" + _loc6_] = -1;
            _loc6_++;
         }
         petData = _loc1_;
         _loc1_ = null;
      }
      
      public function __skill5_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      private function _PetPanel_SetProperty14_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty14 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty14",_PetPanel_SetProperty14);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox5() : VBox
      {
         return this._112005440vbox5;
      }
      
      private function _PetPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return pettitle;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty1.target = param1;
         },"_PetPanel_SetProperty1.target");
         result[0] = binding;
         binding = new Binding(this,function():*
         {
            return Language.PETPANEL_U[10];
         },function(param1:*):void
         {
            _PetPanel_SetProperty1.value = param1;
         },"_PetPanel_SetProperty1.value");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return pettitle;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty2.target = param1;
         },"_PetPanel_SetProperty2.target");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return pettitle;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty3.target = param1;
         },"_PetPanel_SetProperty3.target");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return pettitle;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty5.target = param1;
         },"_PetPanel_SetProperty5.target");
         result[4] = binding;
         binding = new Binding(this,function():*
         {
            return Language.PETPANEL_U[17];
         },function(param1:*):void
         {
            _PetPanel_SetProperty5.value = param1;
         },"_PetPanel_SetProperty5.value");
         result[5] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return simplecanvas2;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild1.target = param1;
         },"_PetPanel_RemoveChild1.target");
         result[6] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return simplecanvas1;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild2.target = param1;
         },"_PetPanel_RemoveChild2.target");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas2;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty8.target = param1;
         },"_PetPanel_SetProperty8.target");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas2;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty9.target = param1;
         },"_PetPanel_SetProperty9.target");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return canvas2;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty10.target = param1;
         },"_PetPanel_SetProperty10.target");
         result[10] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return petFuncBtn1;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild3.target = param1;
         },"_PetPanel_RemoveChild3.target");
         result[11] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return petFuncBtn2;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild4.target = param1;
         },"_PetPanel_RemoveChild4.target");
         result[12] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return petFuncBtn3;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild5.target = param1;
         },"_PetPanel_RemoveChild5.target");
         result[13] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return petFuncBtn4;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild6.target = param1;
         },"_PetPanel_RemoveChild6.target");
         result[14] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return canvas3;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild7.target = param1;
         },"_PetPanel_RemoveChild7.target");
         result[15] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return vbox1;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild8.target = param1;
         },"_PetPanel_RemoveChild8.target");
         result[16] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return vbox2;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild9.target = param1;
         },"_PetPanel_RemoveChild9.target");
         result[17] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return vbox3;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild10.target = param1;
         },"_PetPanel_RemoveChild10.target");
         result[18] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return vbox4;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild11.target = param1;
         },"_PetPanel_RemoveChild11.target");
         result[19] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return vbox5;
         },function(param1:DisplayObject):void
         {
            _PetPanel_RemoveChild12.target = param1;
         },"_PetPanel_RemoveChild12.target");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return simplecanvas3;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty11.target = param1;
         },"_PetPanel_SetProperty11.target");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return skill1;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty12.target = param1;
         },"_PetPanel_SetProperty12.target");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return skill2;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty13.target = param1;
         },"_PetPanel_SetProperty13.target");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return skill3;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty14.target = param1;
         },"_PetPanel_SetProperty14.target");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return skill4;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty15.target = param1;
         },"_PetPanel_SetProperty15.target");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return skill5;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty16.target = param1;
         },"_PetPanel_SetProperty16.target");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return skill1;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty17.target = param1;
         },"_PetPanel_SetProperty17.target");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return skill2;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty18.target = param1;
         },"_PetPanel_SetProperty18.target");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return skill3;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty19.target = param1;
         },"_PetPanel_SetProperty19.target");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return skill4;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty20.target = param1;
         },"_PetPanel_SetProperty20.target");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return skill5;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty21.target = param1;
         },"_PetPanel_SetProperty21.target");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return pettitle;
         },function(param1:Object):void
         {
            _PetPanel_SetProperty22.target = param1;
         },"_PetPanel_SetProperty22.target");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PET_PENTAGON;
         },function(param1:Object):void
         {
            _PetPanel_Image1.source = param1;
         },"_PetPanel_Image1.source");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor0.text = param1;
         },"factor0.text");
         result[34] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor0.filters = param1;
         },"factor0.filters");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor1.text = param1;
         },"factor1.text");
         result[36] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor1.filters = param1;
         },"factor1.filters");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor2.text = param1;
         },"factor2.text");
         result[38] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor2.filters = param1;
         },"factor2.filters");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor3.text = param1;
         },"factor3.text");
         result[40] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor3.filters = param1;
         },"factor3.filters");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor4.text = param1;
         },"factor4.text");
         result[42] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor4.filters = param1;
         },"factor4.filters");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            simplecanvas2.label = param1;
         },"simplecanvas2.label");
         result[44] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return star.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _PetPanel_Image2[param2[0]].source = param1;
         },"_PetPanel_Image2.source");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            growRate.toolTip = param1;
         },"growRate.toolTip");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            growRateAdd.toolTip = param1;
         },"growRateAdd.toolTip");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[14] + ":" + petData.aptStrength + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStrength.toolTip = param1;
         },"aptStrength.toolTip");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[14] + ":" + petData.aptAgility + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptAgility.toolTip = param1;
         },"aptAgility.toolTip");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[14] + ":" + petData.aptStamina + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStamina.toolTip = param1;
         },"aptStamina.toolTip");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[14] + ":" + petData.aptIntelligence + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptIntelligence.toolTip = param1;
         },"aptIntelligence.toolTip");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[14] + ":" + petData.aptEnergy + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptEnergy.toolTip = param1;
         },"aptEnergy.toolTip");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[16] + ":" + (petData.aptStrengthEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStrengthEx.toolTip = param1;
         },"aptStrengthEx.toolTip");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[16] + ":" + (petData.aptAgilityEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptAgilityEx.toolTip = param1;
         },"aptAgilityEx.toolTip");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[16] + ":" + (petData.aptStaminaEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStaminaEx.toolTip = param1;
         },"aptStaminaEx.toolTip");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[16] + ":" + (petData.aptIntelligenceEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptIntelligenceEx.toolTip = param1;
         },"aptIntelligenceEx.toolTip");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[16] + ":" + (petData.aptEnergyEx || 0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptEnergyEx.toolTip = param1;
         },"aptEnergyEx.toolTip");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptStrength) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStrengthFinal.toolTip = param1;
         },"aptStrengthFinal.toolTip");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptAgility) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptAgilityFinal.toolTip = param1;
         },"aptAgilityFinal.toolTip");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptStamina) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptStaminaFinal.toolTip = param1;
         },"aptStaminaFinal.toolTip");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptIntelligence) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptIntelligenceFinal.toolTip = param1;
         },"aptIntelligenceFinal.toolTip");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_S[15] + ":" + String(Number(petData.property.aptEnergy) + Number(Math.round((Number(petData.property.growRate) + Number(petData.property.growRateAdd)) * Number(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0))));
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            aptEnergyFinal.toolTip = param1;
         },"aptEnergyFinal.toolTip");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton1.label = param1;
         },"basichortxtbutton1.label");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[511];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton1.toolTip = param1;
         },"basichortxtbutton1.toolTip");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton2.label = param1;
         },"basichortxtbutton2.label");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[512];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton2.toolTip = param1;
         },"basichortxtbutton2.toolTip");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton3.label = param1;
         },"basichortxtbutton3.label");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[513];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton3.toolTip = param1;
         },"basichortxtbutton3.toolTip");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton4.label = param1;
         },"basichortxtbutton4.label");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[514];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton4.toolTip = param1;
         },"basichortxtbutton4.toolTip");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton5.label = param1;
         },"basichortxtbutton5.label");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[515];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton5.toolTip = param1;
         },"basichortxtbutton5.toolTip");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton6.label = param1;
         },"basichortxtbutton6.label");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[516];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            basichortxtbutton6.toolTip = param1;
         },"basichortxtbutton6.toolTip");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            simplecanvas3.label = param1;
         },"simplecanvas3.label");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn1.label = param1;
         },"delBtn1.label");
         result[79] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn1.enabled = param1;
         },"delBtn1.enabled");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn1.label = param1;
         },"upBtn1.label");
         result[81] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn1.enabled = param1;
         },"upBtn1.enabled");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn1.label = param1;
         },"openBtn1.label");
         result[83] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn1.enabled = param1;
         },"openBtn1.enabled");
         result[84] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn2.label = param1;
         },"delBtn2.label");
         result[85] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn2.enabled = param1;
         },"delBtn2.enabled");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn2.label = param1;
         },"upBtn2.label");
         result[87] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn2.enabled = param1;
         },"upBtn2.enabled");
         result[88] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn2.label = param1;
         },"openBtn2.label");
         result[89] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn2.enabled = param1;
         },"openBtn2.enabled");
         result[90] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn3.label = param1;
         },"delBtn3.label");
         result[91] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn3.enabled = param1;
         },"delBtn3.enabled");
         result[92] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn3.label = param1;
         },"upBtn3.label");
         result[93] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn3.enabled = param1;
         },"upBtn3.enabled");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn3.label = param1;
         },"openBtn3.label");
         result[95] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn3.enabled = param1;
         },"openBtn3.enabled");
         result[96] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn4.label = param1;
         },"delBtn4.label");
         result[97] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn4.enabled = param1;
         },"delBtn4.enabled");
         result[98] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn4.label = param1;
         },"upBtn4.label");
         result[99] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn4.enabled = param1;
         },"upBtn4.enabled");
         result[100] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn4.label = param1;
         },"openBtn4.label");
         result[101] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn4.enabled = param1;
         },"openBtn4.enabled");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delBtn5.label = param1;
         },"delBtn5.label");
         result[103] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            delBtn5.enabled = param1;
         },"delBtn5.enabled");
         result[104] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn5.label = param1;
         },"upBtn5.label");
         result[105] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn5.enabled = param1;
         },"upBtn5.enabled");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn5.label = param1;
         },"openBtn5.label");
         result[107] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            openBtn5.enabled = param1;
         },"openBtn5.enabled");
         result[108] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn1.label = param1;
         },"petFuncBtn1.label");
         result[109] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn1.enabled = param1;
         },"petFuncBtn1.enabled");
         result[110] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn2.label = param1;
         },"petFuncBtn2.label");
         result[111] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn2.enabled = param1;
         },"petFuncBtn2.enabled");
         result[112] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn3.label = param1;
         },"petFuncBtn3.label");
         result[113] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn3.enabled = param1;
         },"petFuncBtn3.enabled");
         result[114] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn4.label = param1;
         },"petFuncBtn4.label");
         result[115] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn4.enabled = param1;
         },"petFuncBtn4.enabled");
         result[116] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn5.label = param1;
         },"petFuncBtn5.label");
         result[117] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn5.enabled = param1;
         },"petFuncBtn5.enabled");
         result[118] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petFuncBtn6.label = param1;
         },"petFuncBtn6.label");
         result[119] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            petFuncBtn6.enabled = param1;
         },"petFuncBtn6.enabled");
         result[120] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.EQUIP_POSITION[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu1.text = param1;
         },"petEqu1.text");
         result[121] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu1.type = param1;
         },"petEqu1.type");
         result[122] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu1.acceptType = param1;
         },"petEqu1.acceptType");
         result[123] = binding;
         binding = new Binding(this,function():Array
         {
            return [50];
         },function(param1:Array):void
         {
            petEqu1.acceptPos = param1;
         },"petEqu1.acceptPos");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.EQUIP_POSITION[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu2.text = param1;
         },"petEqu2.text");
         result[125] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu2.type = param1;
         },"petEqu2.type");
         result[126] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu2.acceptType = param1;
         },"petEqu2.acceptType");
         result[127] = binding;
         binding = new Binding(this,function():Array
         {
            return [51];
         },function(param1:Array):void
         {
            petEqu2.acceptPos = param1;
         },"petEqu2.acceptPos");
         result[128] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.EQUIP_POSITION[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu3.text = param1;
         },"petEqu3.text");
         result[129] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu3.type = param1;
         },"petEqu3.type");
         result[130] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu3.acceptType = param1;
         },"petEqu3.acceptType");
         result[131] = binding;
         binding = new Binding(this,function():Array
         {
            return [52];
         },function(param1:Array):void
         {
            petEqu3.acceptPos = param1;
         },"petEqu3.acceptPos");
         result[132] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.EQUIP_POSITION[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu4.text = param1;
         },"petEqu4.text");
         result[133] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu4.type = param1;
         },"petEqu4.type");
         result[134] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu4.acceptType = param1;
         },"petEqu4.acceptType");
         result[135] = binding;
         binding = new Binding(this,function():Array
         {
            return [53];
         },function(param1:Array):void
         {
            petEqu4.acceptPos = param1;
         },"petEqu4.acceptPos");
         result[136] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.EQUIP_POSITION[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu5.text = param1;
         },"petEqu5.text");
         result[137] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu5.type = param1;
         },"petEqu5.type");
         result[138] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu5.acceptType = param1;
         },"petEqu5.acceptType");
         result[139] = binding;
         binding = new Binding(this,function():Array
         {
            return [54];
         },function(param1:Array):void
         {
            petEqu5.acceptPos = param1;
         },"petEqu5.acceptPos");
         result[140] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.EQUIP_POSITION[55];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu6.text = param1;
         },"petEqu6.text");
         result[141] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu6.type = param1;
         },"petEqu6.type");
         result[142] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu6.acceptType = param1;
         },"petEqu6.acceptType");
         result[143] = binding;
         binding = new Binding(this,function():Array
         {
            return [55];
         },function(param1:Array):void
         {
            petEqu6.acceptPos = param1;
         },"petEqu6.acceptPos");
         result[144] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.EQUIP_POSITION[56];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu7.text = param1;
         },"petEqu7.text");
         result[145] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu7.type = param1;
         },"petEqu7.type");
         result[146] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu7.acceptType = param1;
         },"petEqu7.acceptType");
         result[147] = binding;
         binding = new Binding(this,function():Array
         {
            return [56];
         },function(param1:Array):void
         {
            petEqu7.acceptPos = param1;
         },"petEqu7.acceptPos");
         result[148] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.EQUIP_POSITION[57];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEqu8.text = param1;
         },"petEqu8.text");
         result[149] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            petEqu8.type = param1;
         },"petEqu8.type");
         result[150] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            petEqu8.acceptType = param1;
         },"petEqu8.acceptType");
         result[151] = binding;
         binding = new Binding(this,function():Array
         {
            return [57];
         },function(param1:Array):void
         {
            petEqu8.acceptPos = param1;
         },"petEqu8.acceptPos");
         result[152] = binding;
         return result;
      }
      
      public function __upBtn3_click(param1:MouseEvent) : void
      {
         upSkill(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get aptIntelligence() : BoxLabel
      {
         return this._702954884aptIntelligence;
      }
      
      public function getSpecPetEquSuitNum(param1:int) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         if(petData != null)
         {
            _loc2_ = null;
            _loc3_ = GamePredef.PETEQU_NUM - 1;
            while(_loc3_ <= GamePredef.PETEQU_NUM)
            {
               _loc4_ = Number(petData["equ" + _loc3_]);
               if(_loc4_ > 0)
               {
                  _loc5_ = _core.data.getSlot({"id":_loc4_});
                  _loc6_ = _core.data.getData(_loc5_.type,_loc5_.itemId);
                  if(_loc6_)
                  {
                     _loc7_ = _core.getTemplateData(GamePredef.TBL_EQUIPT_TEMPLATE,_loc6_.tid);
                     if(_loc7_.suitId == param1)
                     {
                        if(_loc6_.color >= 2)
                        {
                           if(_loc2_ == null)
                           {
                              _loc2_ = {};
                           }
                           if(_loc2_[_loc6_.color] == null)
                           {
                              _loc2_[_loc6_.color] = 0;
                           }
                           _loc2_[_loc6_.color] += 1;
                        }
                     }
                  }
               }
               _loc3_++;
            }
            return _loc2_;
         }
         return null;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStrength() : BoxLabel
      {
         return this._395626106aptStrength;
      }
      
      public function set factor3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882812factor3;
         if(_loc2_ !== param1)
         {
            this._1091882812factor3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor3",_loc2_,param1));
         }
      }
      
      public function set factor4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882811factor4;
         if(_loc2_ !== param1)
         {
            this._1091882811factor4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor4",_loc2_,param1));
         }
      }
      
      public function set factor1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882814factor1;
         if(_loc2_ !== param1)
         {
            this._1091882814factor1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor1",_loc2_,param1));
         }
      }
      
      public function set factor2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882813factor2;
         if(_loc2_ !== param1)
         {
            this._1091882813factor2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor2",_loc2_,param1));
         }
      }
      
      private function _PetPanel_RemoveChild3_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild3 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild3",_PetPanel_RemoveChild3);
         return _loc1_;
      }
      
      public function set factor0(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882815factor0;
         if(_loc2_ !== param1)
         {
            this._1091882815factor0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor0",_loc2_,param1));
         }
      }
      
      public function set openBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171262openBtn4;
         if(_loc2_ !== param1)
         {
            this._505171262openBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn4",_loc2_,param1));
         }
      }
      
      public function set openBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171264openBtn2;
         if(_loc2_ !== param1)
         {
            this._505171264openBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn2",_loc2_,param1));
         }
      }
      
      public function set openBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171263openBtn3;
         if(_loc2_ !== param1)
         {
            this._505171263openBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn3",_loc2_,param1));
         }
      }
      
      public function set openBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171261openBtn5;
         if(_loc2_ !== param1)
         {
            this._505171261openBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn5",_loc2_,param1));
         }
      }
      
      public function set openBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._505171265openBtn1;
         if(_loc2_ !== param1)
         {
            this._505171265openBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn1",_loc2_,param1));
         }
      }
      
      public function __petFuncBtn3_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(2);
      }
      
      private function _PetPanel_SetProperty13_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty13 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty13",_PetPanel_SetProperty13);
         return _loc1_;
      }
      
      public function __openBtn4_click(param1:MouseEvent) : void
      {
         openSkill(4);
      }
      
      public function __delBtn5_click(param1:MouseEvent) : void
      {
         delSkill(5);
      }
      
      public function set aptStrengthEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2055403737aptStrengthEx;
         if(_loc2_ !== param1)
         {
            this._2055403737aptStrengthEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStrengthEx",_loc2_,param1));
         }
      }
      
      private function _PetPanel_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild2",_PetPanel_RemoveChild2);
         return _loc1_;
      }
      
      private function _PetPanel_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "skill";
         _loc1_.overrides = [_PetPanel_SetProperty5_i(),_PetPanel_RemoveChild1_i(),_PetPanel_RemoveChild2_i(),_PetPanel_SetProperty6_c(),_PetPanel_SetProperty7_c(),_PetPanel_SetProperty8_i(),_PetPanel_SetProperty9_i(),_PetPanel_SetProperty10_i(),_PetPanel_RemoveChild3_i(),_PetPanel_RemoveChild4_i(),_PetPanel_RemoveChild5_i(),_PetPanel_RemoveChild6_i(),_PetPanel_RemoveChild7_i(),_PetPanel_RemoveChild8_i(),_PetPanel_RemoveChild9_i(),_PetPanel_RemoveChild10_i(),_PetPanel_RemoveChild11_i(),_PetPanel_RemoveChild12_i(),_PetPanel_SetProperty11_i(),_PetPanel_SetProperty12_i(),_PetPanel_SetProperty13_i(),_PetPanel_SetProperty14_i(),_PetPanel_SetProperty15_i(),_PetPanel_SetProperty16_i(),_PetPanel_SetProperty17_i(),_PetPanel_SetProperty18_i(),_PetPanel_SetProperty19_i(),_PetPanel_SetProperty20_i(),_PetPanel_SetProperty21_i(),_PetPanel_SetProperty22_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox4() : VBox
      {
         return this._112005439vbox4;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu1() : ItemSlot
      {
         return this._677962297petEqu1;
      }
      
      public function set aptStaminaEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1357563171aptStaminaEx;
         if(_loc2_ !== param1)
         {
            this._1357563171aptStaminaEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStaminaEx",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu4() : ItemSlot
      {
         return this._677962294petEqu4;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu5() : ItemSlot
      {
         return this._677962293petEqu5;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu7() : ItemSlot
      {
         return this._677962291petEqu7;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu8() : ItemSlot
      {
         return this._677962290petEqu8;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu2() : ItemSlot
      {
         return this._677962296petEqu2;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu3() : ItemSlot
      {
         return this._677962295petEqu3;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PetPanel_HBox1() : HBox
      {
         return this._1137294803_PetPanel_HBox1;
      }
      
      [Bindable(event="propertyChange")]
      public function get starHbox() : HBox
      {
         return this._1315489237starHbox;
      }
      
      public function __skill2_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas2() : Canvas
      {
         return this._550778330canvas2;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas3() : Canvas
      {
         return this._550778331canvas3;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEqu6() : ItemSlot
      {
         return this._677962292petEqu6;
      }
      
      private function _PetPanel_SetProperty12_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty12 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty12",_PetPanel_SetProperty12);
         return _loc1_;
      }
      
      public function set aptAgilityFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._237239562aptAgilityFinal;
         if(_loc2_ !== param1)
         {
            this._237239562aptAgilityFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptAgilityFinal",_loc2_,param1));
         }
      }
      
      private function _PetPanel_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _PetPanel_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_PetPanel_RemoveChild1",_PetPanel_RemoveChild1);
         return _loc1_;
      }
      
      private function _PetPanel_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "normal";
         _loc1_.overrides = [_PetPanel_SetProperty1_i(),_PetPanel_SetProperty2_i(),_PetPanel_SetProperty3_i(),_PetPanel_SetProperty4_c()];
         return _loc1_;
      }
      
      public function onPetEquipOff(param1:Number, param2:int, param3:Number) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:ItemSlot = null;
         _loc4_ = _core.data.getSlot({"id":param3});
         if((Boolean(_loc4_)) && Boolean(_loc4_.type == GamePredef.TBL_EQUIPT_INSTANCE) && _loc4_.stackNum == 0)
         {
            _loc4_.stackNum = 1;
            this["petEqu" + param2].giid = -1;
            this["petEqu" + param2].restore();
            _loc5_ = _core.view.getUI(ViewManager.PANEL_BAG).getBagSlot(_loc4_.sid);
            if(_loc5_)
            {
               _loc5_.stackNum = 1;
               _loc5_.enabled = true;
               _loc5_.acceptable = true;
            }
         }
      }
      
      public function __skill4_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      public function set aptStaminaFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1751782644aptStaminaFinal;
         if(_loc2_ !== param1)
         {
            this._1751782644aptStaminaFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStaminaFinal",_loc2_,param1));
         }
      }
      
      public function set aptEnergy(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._348170509aptEnergy;
         if(_loc2_ !== param1)
         {
            this._348170509aptEnergy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptEnergy",_loc2_,param1));
         }
      }
      
      private function _PetPanel_SetProperty11_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty11 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 187;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty11",_PetPanel_SetProperty11);
         return _loc1_;
      }
      
      private function openSkill(param1:int) : void
      {
         var num:int = 0;
         var func:Function = null;
         var index:int = param1;
         index = selectedTabIndex * 5 + index;
         var str:String = "";
         if(Boolean(petData) && ToolKit.isEqual(petData["skill" + index],-1))
         {
            if(ToolKit.isBigThan(index,5))
            {
               num = GamePredef.GOLD_PET_SKILLOPEN[index] * GamePredef.GOLD_PET_SKILLOPEN_Q[petDataTemp.qLevel];
               if(Boolean(_core.player.enoughMoneyAuto(2,num)) || Boolean(_core.player.enoughMoneyAuto(2,num)))
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.petOpenSkill(petData.id,index);
                     }
                  };
                  str = Language.PETPANEL_S[8];
                  str = str.replace("{num}",num);
                  Alert.show(str,"",3,this,func);
               }
               else
               {
                  str = Language.PETPANEL_S[10];
                  str = str.replace("{num}",num);
                  _core.sysMsg(str);
               }
            }
         }
      }
      
      public function __skill4_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function __upBtn2_click(param1:MouseEvent) : void
      {
         upSkill(2);
      }
      
      private function _PetPanel_SetProperty9_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty9 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 40;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty9",_PetPanel_SetProperty9);
         return _loc1_;
      }
      
      private function _PetPanel_SetProperty22_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty22 = _loc1_;
         _loc1_.name = "horizontalScrollPolicy";
         _loc1_.value = "off";
         BindingManager.executeBindings(this,"_PetPanel_SetProperty22",_PetPanel_SetProperty22);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptIntelligenceFinal() : RoundedLabel
      {
         return this._314795602aptIntelligenceFinal;
      }
      
      [Bindable(event="propertyChange")]
      public function get star() : Repeater
      {
         return this._3540562star;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptAgility() : BoxLabel
      {
         return this._1543550368aptAgility;
      }
      
      private function _PetPanel_SetProperty10_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty10 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 203;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty10",_PetPanel_SetProperty10);
         return _loc1_;
      }
      
      public function set aptAgilityEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1588184269aptAgilityEx;
         if(_loc2_ !== param1)
         {
            this._1588184269aptAgilityEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptAgilityEx",_loc2_,param1));
         }
      }
      
      public function __petFuncBtn2_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(1);
      }
      
      public function __openBtn3_click(param1:MouseEvent) : void
      {
         openSkill(3);
      }
      
      public function __delBtn4_click(param1:MouseEvent) : void
      {
         delSkill(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get propertyPentagon() : PentagonCanvas
      {
         return this._805962357propertyPentagon;
      }
      
      public function getPetEquSuitNum(param1:Number) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         if(petData != null)
         {
            _loc2_ = {};
            _loc3_ = 1;
            while(_loc3_ <= GamePredef.PETEQU_NUM - 2)
            {
               _loc4_ = Number(petData["equ" + _loc3_]);
               if(_loc4_ > 0)
               {
                  _loc5_ = _core.data.getSlot({"id":_loc4_});
                  _loc6_ = _core.data.getData(_loc5_.type,_loc5_.itemId);
                  if(_loc6_.color >= 2)
                  {
                     _loc7_ = _core.getTemplateData(_loc5_.type,_loc5_.itemId);
                     if(_loc7_)
                     {
                        _loc8_ = int(_loc7_.suitId);
                        if(_loc2_[_loc8_] == null)
                        {
                           _loc2_[_loc8_] = [];
                        }
                        if(_loc2_[_loc8_][_loc6_.color] == null)
                        {
                           _loc2_[_loc8_][_loc6_.color] = 0;
                        }
                        _loc2_[_loc8_][_loc6_.color] += 1;
                     }
                  }
               }
               _loc3_++;
            }
            if(_loc2_[param1])
            {
               return _loc2_[param1];
            }
         }
         return null;
      }
      
      public function set vbox1(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005436vbox1;
         if(_loc2_ !== param1)
         {
            this._112005436vbox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox1",_loc2_,param1));
         }
      }
      
      public function set vbox2(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005437vbox2;
         if(_loc2_ !== param1)
         {
            this._112005437vbox2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox2",_loc2_,param1));
         }
      }
      
      private function _PetPanel_SetProperty21_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty21 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 170;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty21",_PetPanel_SetProperty21);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicMultiLineButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicMultiLineButton
      {
         return this._1554141557tabBtn2;
      }
      
      private function _PetPanel_SetProperty8_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty8 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 15;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty8",_PetPanel_SetProperty8);
         return _loc1_;
      }
      
      public function set vbox5(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005440vbox5;
         if(_loc2_ !== param1)
         {
            this._112005440vbox5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn1() : BasicGlowButton
      {
         return this._839841136upBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicMultiLineButton
      {
         return this._1554141558tabBtn1;
      }
      
      private function clearView() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 5)
         {
            this["skill" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn4() : BasicGlowButton
      {
         return this._839841133upBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn5() : BasicGlowButton
      {
         return this._839841132upBtn5;
      }
      
      public function set vbox4(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005439vbox4;
         if(_loc2_ !== param1)
         {
            this._112005439vbox4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn3() : BasicGlowButton
      {
         return this._839841134upBtn3;
      }
      
      public function set vbox3(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._112005438vbox3;
         if(_loc2_ !== param1)
         {
            this._112005438vbox3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptEnergyEx() : RoundedLabel
      {
         return this._415587680aptEnergyEx;
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn2() : BasicGlowButton
      {
         return this._839841135upBtn2;
      }
      
      private function openPetFuncPanel(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:ItemSlot = null;
         if(param1 == 7)
         {
            if(_core.player.level < 120)
            {
               _core.sysMsg(Language.PET_HANDBOOK_PANEL_U[112]);
               return;
            }
            _loc2_ = Number(petData.tid);
            _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_EVOLUTION);
            if(_loc3_)
            {
               _loc3_.open(_loc2_);
            }
         }
         else
         {
            _loc4_ = new ItemSlot();
            _loc4_.type = GamePredef.TBL_PET;
            _loc4_.slotType = Slot.SLOT_PET;
            _loc4_.giid = petData.id;
            _loc4_.stackNum = 1;
            _loc4_.slotData = petData;
            _core.view.getUI(ViewManager.PANEL_PETFUNC).putPet(_loc4_,param1);
         }
      }
      
      public function set aptIntelligenceEx(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1229780311aptIntelligenceEx;
         if(_loc2_ !== param1)
         {
            this._1229780311aptIntelligenceEx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptIntelligenceEx",_loc2_,param1));
         }
      }
      
      private function _PetPanel_SetProperty7_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "height";
         _loc1_.value = 270;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn2() : BasicGlowButton
      {
         return this._505171264openBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn5() : BasicGlowButton
      {
         return this._505171261openBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn1() : BasicGlowButton
      {
         return this._505171265openBtn1;
      }
      
      private function drawSkillSlots(param1:int) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc2_:int = 1;
         while(_loc2_ <= 5)
         {
            this["skill" + _loc2_].clean();
            _loc3_ = param1 * 5 + _loc2_;
            if(ToolKit.isBigThan(petData["skill" + _loc3_],0))
            {
               _loc4_ = _core.data.getGameData(GamePredef.TBL_SKILL,petData["skill" + _loc3_]);
               this["skill" + _loc2_].giid = petData["skill" + _loc3_];
               this["skill" + _loc2_].enabled = currentState == "skill" && _loc4_.kind == 2 ? false : true;
               this["delBtn" + _loc2_].visible = true;
               this["upBtn" + _loc2_].visible = true;
               if(ToolKit.isBigOrEqual(_loc4_.level,3))
               {
                  this["upBtn" + _loc2_].enabled = false;
               }
               else
               {
                  this["upBtn" + _loc2_].enabled = true;
               }
               this["openBtn" + _loc2_].visible = false;
               this["delBtn" + _loc2_].includeInLayout = true;
               this["upBtn" + _loc2_].includeInLayout = true;
               this["openBtn" + _loc2_].includeInLayout = false;
            }
            else if(ToolKit.isEqual(petData["skill" + _loc3_],0))
            {
               this["skill" + _loc2_].enabled = true;
               this["delBtn" + _loc2_].visible = false;
               this["upBtn" + _loc2_].visible = false;
               this["openBtn" + _loc2_].visible = false;
               this["delBtn" + _loc2_].includeInLayout = false;
               this["upBtn" + _loc2_].includeInLayout = false;
               this["openBtn" + _loc2_].includeInLayout = false;
            }
            else if(ToolKit.isEqual(petData["skill" + _loc3_],-1))
            {
               if(_loc3_ >= 6 || currentState == "skill")
               {
                  this["skill" + _loc2_].enabled = false;
                  this["openBtn" + _loc2_].visible = true;
                  this["openBtn" + _loc2_].includeInLayout = true;
               }
               else
               {
                  this["skill" + _loc2_].enabled = true;
                  this["openBtn" + _loc2_].visible = false;
                  this["openBtn" + _loc2_].includeInLayout = false;
               }
               this["delBtn" + _loc2_].visible = false;
               this["upBtn" + _loc2_].visible = false;
               this["delBtn" + _loc2_].includeInLayout = false;
               this["upBtn" + _loc2_].includeInLayout = false;
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn4() : BasicGlowButton
      {
         return this._505171262openBtn4;
      }
      
      private function _PetPanel_SetProperty20_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty20 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 170;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty20",_PetPanel_SetProperty20);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn3() : BasicGlowButton
      {
         return this._505171263openBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStaminaEx() : RoundedLabel
      {
         return this._1357563171aptStaminaEx;
      }
      
      public function __skill3_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get aptAgilityFinal() : RoundedLabel
      {
         return this._237239562aptAgilityFinal;
      }
      
      public function __upBtn1_click(param1:MouseEvent) : void
      {
         upSkill(1);
      }
      
      private function _PetPanel_SetProperty6_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "width";
         _loc1_.value = 235;
         return _loc1_;
      }
      
      public function __canvas3_creationComplete(param1:FlexEvent) : void
      {
         initPetEquListen();
      }
      
      public function set aptIntelligence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._702954884aptIntelligence;
         if(_loc2_ !== param1)
         {
            this._702954884aptIntelligence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptIntelligence",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStaminaFinal() : RoundedLabel
      {
         return this._1751782644aptStaminaFinal;
      }
      
      private function updateView() : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:Number = NaN;
         var _loc1_:String = "";
         if(petData)
         {
            clearView();
            petDataTemp = petData.creatureData;
            if(currentState != "skill")
            {
               propertyPentagon.setName = ["　","　","　","　","　"];
               propertyPentagon.showProperty(10000,[Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0),Number(petData.aptAgility) + (petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0),Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0),Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0),Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0)],[Number(Math.round((Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0) + Number(petData.aptStrengthEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd)))),Number(Math.round((Number(petData.aptAgility) + (petData.property.aptAgilityhEvolution ? Number(petData
               .property.aptAgilityEvolution) : 0) + Number(petData.aptAgilityEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd)))),Number(Math.round((Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0) + Number(petData.aptStaminaEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd)))),Number(Math.round((Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0) + Number(petData.aptIntelligenceEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd)))),Number(Math.round((Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0) + Number(petData.aptEnergyEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))))]);
               aptStrength.text = String(Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0));
               aptAgility.text = String(Number(petData.aptAgility) + (petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0));
               aptStamina.text = String(Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0));
               aptIntelligence.text = String(Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0));
               aptEnergy.text = String(Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0));
               aptStrengthEx.text = "+" + (petData.aptStrengthEx || 0);
               aptAgilityEx.text = "+" + (petData.aptAgilityEx || 0);
               aptStaminaEx.text = "+" + (petData.aptStaminaEx || 0);
               aptIntelligenceEx.text = "+" + (petData.aptIntelligenceEx || 0);
               aptEnergyEx.text = "+" + (petData.aptEnergyEx || 0);
               growRate.text = (Math.round(petData.property.growRate * 100) / 100).toString();
               aptStrengthFinal.text = "=> " + String(Math.round((Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0) + Number(petData.aptStrengthEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               aptAgilityFinal.text = "=> " + String(Math.round((Number(petData.aptAgility) + (petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0) + Number(petData.aptAgilityEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               aptStaminaFinal.text = "=> " + String(Math.round((Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0) + Number(petData.aptStaminaEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               aptIntelligenceFinal.text = "=> " + String(Math.round((Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0) + Number(petData.aptIntelligenceEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               aptEnergyFinal.text = "=> " + String(Math.round((Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0) + Number(petData.aptEnergyEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               growRateAdd.text = "+  " + (Math.round(petData.property.growRateAdd * 100) / 100).toString();
               aptStrength.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptStrength + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0);
               aptAgility.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptAgility + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0);
               aptStamina.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptStamina + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0);
               aptIntelligence.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptIntelligence + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0);
               aptEnergy.toolTip = Language.PETPANEL_S[14] + ":" + petData.aptEnergy + " " + Language.PETPANEL_S[17] + ":" + String(petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0);
               aptStrengthEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptStrengthEx || 0);
               aptAgilityEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptAgilityEx || 0);
               aptStaminaEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptStaminaEx || 0);
               aptIntelligenceEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptIntelligenceEx || 0);
               aptEnergyEx.toolTip = Language.PETPANEL_S[16] + ":" + (petData.aptEnergyEx || 0);
               aptStrengthFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptStrength) + (petData.property.aptStrengthEvolution ? Number(petData.property.aptStrengthEvolution) : 0) + Number(petData.aptStrengthEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               aptAgilityFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptAgility) + (petData.property.aptAgilityEvolution ? Number(petData.property.aptAgilityEvolution) : 0) + Number(petData.aptAgilityEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               aptStaminaFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptStamina) + (petData.property.aptStaminaEvolution ? Number(petData.property.aptStaminaEvolution) : 0) + Number(petData.aptStaminaEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               aptIntelligenceFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptIntelligence) + (petData.property.aptIntelligenceEvolution ? Number(petData.property.aptIntelligenceEvolution) : 0) + Number(petData.aptIntelligenceEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               aptEnergyFinal.toolTip = Language.PETPANEL_S[15] + ":" + String(Math.round((Number(petData.aptEnergy) + (petData.property.aptEnergyEvolution ? Number(petData.property.aptEnergyEvolution) : 0) + Number(petData.aptEnergyEx || 0)) * (Number(petData.property.growRate) + Number(petData.property.growRateAdd))));
               _loc2_ = [];
               _loc3_ = 0;
               while(_loc3_ <= 11)
               {
                  _loc2_[_loc3_] = ResManager.ICON_PET_STAR_DARK;
                  if(ToolKit.isSmallOrEqual(_loc3_ + 1,petData.upgradeNum))
                  {
                     _loc2_[_loc3_] = ResManager.ICON_PET_STAR_LIGHT;
                  }
                  _loc3_++;
               }
               star.dataProvider = _loc2_;
               _loc1_ = Language.PETPANEL_S[0];
               _loc1_ = _loc1_.replace("{upgradeNum}",petData.upgradeNum);
               starHbox.toolTip = _loc1_;
               _loc4_ = 1;
               while(_loc4_ <= GamePredef.PETEQU_NUM)
               {
                  if(ToolKit.isBigThan(petData["equ" + _loc4_],0))
                  {
                     _loc5_ = Number(petData["equ" + _loc4_]);
                     _loc6_ = _core.data.getSlot({"id":_loc5_});
                     _loc7_ = Number(petData["equ" + _loc4_]);
                     if(_loc7_ < 0)
                     {
                        this["petEqu" + _loc4_].giid = -1;
                        this["petEqu" + _loc4_].restore();
                     }
                     else if(_loc6_)
                     {
                        this["petEqu" + _loc4_].type = _loc6_.type;
                        this["petEqu" + _loc4_].giid = _loc6_.itemId;
                     }
                  }
                  else
                  {
                     this["petEqu" + _loc4_].giid = -1;
                     this["petEqu" + _loc4_].restore();
                  }
                  _loc4_++;
               }
            }
            drawSkillSlots(selectedTabIndex);
         }
      }
      
      private function doubleClickHandler(param1:GameEvent) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         _core.remote.petEquipOff(petData.id,_loc2_.giid);
      }
      
      public function set growRate(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._507317139growRate;
         if(_loc2_ !== param1)
         {
            this._507317139growRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growRate",_loc2_,param1));
         }
      }
      
      public function set aptStrengthFinal(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._815424624aptStrengthFinal;
         if(_loc2_ !== param1)
         {
            this._815424624aptStrengthFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStrengthFinal",_loc2_,param1));
         }
      }
      
      public function __openBtn2_click(param1:MouseEvent) : void
      {
         openSkill(2);
      }
      
      public function __delBtn3_click(param1:MouseEvent) : void
      {
         delSkill(3);
      }
      
      public function __petFuncBtn1_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(0);
      }
      
      private function initPetEquListen() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= GamePredef.PETEQU_NUM)
         {
            this["petEqu" + _loc1_].addEventListener(Slot.EVENT_SLOT_DCLICK,doubleClickHandler);
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptAgilityEx() : RoundedLabel
      {
         return this._1588184269aptAgilityEx;
      }
      
      private function _PetPanel_SetProperty5_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty5 = _loc1_;
         _loc1_.name = "text";
         BindingManager.executeBindings(this,"_PetPanel_SetProperty5",_PetPanel_SetProperty5);
         return _loc1_;
      }
      
      private function skillGetLevel(param1:Number, param2:int) : Object
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc3_:Object = GameData.d[GamePredef.TBL_SKILL][param1];
         if(param2 > 0)
         {
            _loc4_ = _core.data.gameDataIndex[GamePredef.TBL_SKILL][_loc3_.codeName];
            for each(_loc5_ in _loc4_)
            {
               if(Number(_loc5_.level) == Number(param2))
               {
                  _loc3_ = _loc5_;
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      public function onPetEquipOn(param1:Number, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:ItemSlot = null;
         var _loc7_:* = undefined;
         if(param3 > 0)
         {
            _loc5_ = _core.data.getSlot({"id":param3});
            if((Boolean(_loc5_)) && Boolean(_loc5_.type == GamePredef.TBL_EQUIPT_INSTANCE) && _loc5_.stackNum == 0)
            {
               _loc5_.stackNum = 1;
               _loc6_ = _core.view.getUI(ViewManager.PANEL_BAG).getBagSlot(_loc5_.sid);
               if(_loc6_)
               {
                  _loc6_.stackNum = 1;
                  _loc6_.enabled = true;
                  _loc6_.acceptable = true;
               }
            }
         }
         _loc5_ = _core.data.getSlot({"id":param4});
         if((Boolean(_loc5_)) && Boolean(_loc5_.type == GamePredef.TBL_EQUIPT_INSTANCE) && _loc5_.stackNum == 1)
         {
            this["petEqu" + param2].type = _loc5_.type;
            this["petEqu" + param2].giid = _loc5_.itemId;
            _core.data.updateSlot(_loc5_);
            _loc7_ = _core.view.getSlot(_loc5_.sid);
            _loc7_ && _loc7_.clean();
         }
      }
      
      public function set aptStrength(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._395626106aptStrength;
         if(_loc2_ !== param1)
         {
            this._395626106aptStrength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStrength",_loc2_,param1));
         }
      }
      
      public function enableUI() : void
      {
         this._btnEnabled = true;
      }
      
      public function __petFuncBtn6_click(param1:MouseEvent) : void
      {
         openPetFuncPanel(7);
      }
      
      public function disableUI() : void
      {
         this._btnEnabled = false;
      }
      
      private function _PetPanel_SetProperty4_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "height";
         _loc1_.value = 450;
         return _loc1_;
      }
      
      public function set petEqu1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962297petEqu1;
         if(_loc2_ !== param1)
         {
            this._677962297petEqu1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStrengthFinal() : RoundedLabel
      {
         return this._815424624aptStrengthFinal;
      }
      
      [Bindable(event="propertyChange")]
      public function get growRate() : BoxLabel
      {
         return this._507317139growRate;
      }
      
      public function set petEqu4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962294petEqu4;
         if(_loc2_ !== param1)
         {
            this._677962294petEqu4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu4",_loc2_,param1));
         }
      }
      
      public function set petEqu7(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962291petEqu7;
         if(_loc2_ !== param1)
         {
            this._677962291petEqu7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu7",_loc2_,param1));
         }
      }
      
      public function set petEqu3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962295petEqu3;
         if(_loc2_ !== param1)
         {
            this._677962295petEqu3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu3",_loc2_,param1));
         }
      }
      
      public function set petEqu8(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962290petEqu8;
         if(_loc2_ !== param1)
         {
            this._677962290petEqu8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu8",_loc2_,param1));
         }
      }
      
      public function set petEqu5(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962293petEqu5;
         if(_loc2_ !== param1)
         {
            this._677962293petEqu5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu5",_loc2_,param1));
         }
      }
      
      public function set petEqu6(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962292petEqu6;
         if(_loc2_ !== param1)
         {
            this._677962292petEqu6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu6",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetPanelWatcherSetupUtil");
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
      
      public function __skill2_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(1);
      }
      
      public function set canvas2(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550778330canvas2;
         if(_loc2_ !== param1)
         {
            this._550778330canvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas2",_loc2_,param1));
         }
      }
      
      public function set _PetPanel_HBox1(param1:HBox) : void
      {
         var _loc2_:Object = this._1137294803_PetPanel_HBox1;
         if(_loc2_ !== param1)
         {
            this._1137294803_PetPanel_HBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PetPanel_HBox1",_loc2_,param1));
         }
      }
      
      public function set canvas3(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._550778331canvas3;
         if(_loc2_ !== param1)
         {
            this._550778331canvas3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas3",_loc2_,param1));
         }
      }
      
      public function __skill1_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      public function set starHbox(param1:HBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1315489237starHbox;
         if(_loc2_ !== param1)
         {
            this._1315489237starHbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starHbox",_loc2_,param1));
         }
      }
      
      public function set petEqu2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677962296petEqu2;
         if(_loc2_ !== param1)
         {
            this._677962296petEqu2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEqu2",_loc2_,param1));
         }
      }
      
      private function _PetPanel_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _PetPanel_SetProperty3 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_PetPanel_SetProperty3",_PetPanel_SetProperty3);
         return _loc1_;
      }
      
      public function set simplecanvas2(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1002706920simplecanvas2;
         if(_loc2_ !== param1)
         {
            this._1002706920simplecanvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simplecanvas2",_loc2_,param1));
         }
      }
      
      public function set simplecanvas3(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1002706921simplecanvas3;
         if(_loc2_ !== param1)
         {
            this._1002706921simplecanvas3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simplecanvas3",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton3(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878254basichortxtbutton3;
         if(_loc2_ !== param1)
         {
            this._861878254basichortxtbutton3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton3",_loc2_,param1));
         }
      }
      
      public function set simplecanvas1(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1002706919simplecanvas1;
         if(_loc2_ !== param1)
         {
            this._1002706919simplecanvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simplecanvas1",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton4(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878255basichortxtbutton4;
         if(_loc2_ !== param1)
         {
            this._861878255basichortxtbutton4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton4",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878252basichortxtbutton1;
         if(_loc2_ !== param1)
         {
            this._861878252basichortxtbutton1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton1",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton5(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878256basichortxtbutton5;
         if(_loc2_ !== param1)
         {
            this._861878256basichortxtbutton5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton5",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878253basichortxtbutton2;
         if(_loc2_ !== param1)
         {
            this._861878253basichortxtbutton2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton2",_loc2_,param1));
         }
      }
      
      public function set basichortxtbutton6(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._861878257basichortxtbutton6;
         if(_loc2_ !== param1)
         {
            this._861878257basichortxtbutton6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basichortxtbutton6",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get simplecanvas1() : SimpleCanvas
      {
         return this._1002706919simplecanvas1;
      }
      
      public function __openBtn1_click(param1:MouseEvent) : void
      {
         openSkill(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get simplecanvas3() : SimpleCanvas
      {
         return this._1002706921simplecanvas3;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton2() : BasicTxtButton
      {
         return this._861878253basichortxtbutton2;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton3() : BasicTxtButton
      {
         return this._861878254basichortxtbutton3;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton4() : BasicTxtButton
      {
         return this._861878255basichortxtbutton4;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton5() : BasicTxtButton
      {
         return this._861878256basichortxtbutton5;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton6() : BasicTxtButton
      {
         return this._861878257basichortxtbutton6;
      }
      
      [Bindable(event="propertyChange")]
      public function get basichortxtbutton1() : BasicTxtButton
      {
         return this._861878252basichortxtbutton1;
      }
      
      public function __delBtn2_click(param1:MouseEvent) : void
      {
         delSkill(2);
      }
      
      public function __skill3_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      public function __upBtn5_click(param1:MouseEvent) : void
      {
         upSkill(5);
      }
   }
}

