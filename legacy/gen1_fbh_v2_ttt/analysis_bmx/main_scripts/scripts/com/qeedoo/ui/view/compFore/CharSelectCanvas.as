package com.qeedoo.ui.view.compFore
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.MMOGame;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.ClassVO;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicFilteredLabel;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.CharactorSelectCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.core.Application;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Fade;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.AddChild;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import mx.utils.StringUtil;
   
   use namespace mx_internal;
   
   public class CharSelectCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _93647166bgImg:Image;
      
      private var _1818849004textinput1:TextInput;
      
      private var _1016998297canvas100:Canvas;
      
      public var _CharSelectCanvas_AddChild1:AddChild;
      
      public var _CharSelectCanvas_AddChild2:AddChild;
      
      public var _CharSelectCanvas_AddChild3:AddChild;
      
      private var _3056711cls1:ClassVO;
      
      private var _3056715cls5:ClassVO;
      
      private var _553969783career5:BasicFilteredLabel;
      
      private var _739034253charImg:Image;
      
      private var _105740680canvas99:Canvas;
      
      private var _1110417475label1:Label;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _553969779career1:BasicFilteredLabel;
      
      private var _3052371chc1:ClassHeadCanvas;
      
      private var _241352517button7:BasicGlowButton;
      
      private var _553969781career3:BasicFilteredLabel;
      
      private var _3052375chc5:ClassHeadCanvas;
      
      public var _CharSelectCanvas_Label1:Label;
      
      private var _1361218077choos1:Button;
      
      private var _1395491115cClass:String;
      
      private var _core:Core;
      
      private var _878521912txtTips:Text;
      
      private var _1314878258tileBtn:Tile;
      
      private var _550778335canvas7:Canvas;
      
      private var selectedChar:CharactorSelectCanvas;
      
      private var _3056714cls4:ClassVO;
      
      private var _241352515button5:BasicGlowButton;
      
      private var _394199998footRing:UIComponent;
      
      private var gender:String;
      
      private var _1982979738bgFadeIn:Fade;
      
      private var drawFlag:Boolean = false;
      
      private var _1035784137textarea1:TextArea;
      
      private var _1444626525aLevel:int;
      
      private var _1586673493inputNameCvs:Canvas;
      
      private var _241352513button3:BasicGlowButton;
      
      private var _3052374chc4:ClassHeadCanvas;
      
      public var _CharSelectCanvas_SetProperty1:SetProperty;
      
      public var _CharSelectCanvas_SetProperty2:SetProperty;
      
      public var _CharSelectCanvas_SetProperty3:SetProperty;
      
      public var charName:String = "";
      
      private var _847803630enterGameBtn:Button;
      
      private var _553969784career6:BasicFilteredLabel;
      
      private var _853620273classVO:ClassVO;
      
      private var _1706774901inputName:TextInput;
      
      private var _3056713cls3:ClassVO;
      
      private var _249405520randName:Button;
      
      private var guildtimer:Timer;
      
      private var _1361218076choos2:Button;
      
      private var _1016998298canvas101:Canvas;
      
      private var _553969782career4:BasicFilteredLabel;
      
      public var _CharSelectCanvas_RoundedLabel1:RoundedLabel;
      
      public var _CharSelectCanvas_RoundedLabel2:RoundedLabel;
      
      public var _CharSelectCanvas_RoundedLabel3:RoundedLabel;
      
      public var _CharSelectCanvas_RoundedLabel4:RoundedLabel;
      
      public var _CharSelectCanvas_RoundedLabel5:RoundedLabel;
      
      private var _drawToolTipManager:Object;
      
      private var guildStep:int;
      
      private var _3052373chc3:ClassHeadCanvas;
      
      private var _550778336canvas8:Canvas;
      
      private var _1108006699button14:BasicGlowButton;
      
      private var _1387368223cLevel:String;
      
      private var charactorArr:ArrayCollection;
      
      private var _241352516button6:BasicGlowButton;
      
      private var _553969780career2:BasicFilteredLabel;
      
      mx_internal var _watchers:Array;
      
      private var _3056712cls2:ClassVO;
      
      private var currentPage:int = 0;
      
      private var _3056716cls6:ClassVO;
      
      private var _550778334canvas6:Canvas;
      
      private var _1988451153NMLBtn:Image;
      
      private var _241352514button4:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1361218025choose:ViewStack;
      
      private var _newChar:Object;
      
      private var _93848974cName:String;
      
      private var _1435069191charDesc:BasicGlowButton;
      
      mx_internal var _bindings:Array;
      
      private var _3052372chc2:ClassHeadCanvas;
      
      private var _3052376chc6:ClassHeadCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1462490097selectCharImg:Image;
      
      public function CharSelectCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":900,
                  "height":570,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Image,
                     "id":"bgImg",
                     "events":{"complete":"__bgImg_complete"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "visible":true,
                           "x":0,
                           "y":0,
                           "width":900,
                           "height":570
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ViewStack,
                     "id":"choose",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":0,
                           "y":0,
                           "percentWidth":100,
                           "percentHeight":100,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"canvas7",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "label":"View 1",
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "verticalScrollPolicy":"off",
                                    "horizontalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Tile,
                                       "id":"tileBtn",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalGap = 7.5;
                                          this.paddingTop = 32;
                                          this.paddingLeft = 12;
                                          this.paddingRight = 0;
                                          this.paddingBottom = 0;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"CanvasLogined",
                                             "width":425,
                                             "x":239,
                                             "height":105,
                                             "y":345
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":TextInput,
                                       "id":"textinput1",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":260,
                                             "y":354,
                                             "styleName":"CharSelectTitle",
                                             "editable":false,
                                             "enabled":false,
                                             "width":114
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":237,
                                             "y":467,
                                             "width":430,
                                             "height":50,
                                             "styleName":"ButtonWrapper",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":BasicGlowButton,
                                                "id":"button5",
                                                "events":{"click":"__button5_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":35,
                                                      "y":11,
                                                      "width":84,
                                                      "styleName":"LoginButton"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicGlowButton,
                                                "id":"button7",
                                                "events":{"click":"__button7_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":135,
                                                      "y":11,
                                                      "styleName":"LoginButton",
                                                      "enabled":false
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicGlowButton,
                                                "id":"button4",
                                                "events":{"click":"__button4_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":135,
                                                      "y":11,
                                                      "width":84,
                                                      "styleName":"LoginButton",
                                                      "visible":false
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicGlowButton,
                                                "id":"button6",
                                                "events":{"click":"__button6_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":235,
                                                      "y":11,
                                                      "width":84,
                                                      "styleName":"LoginButton",
                                                      "enabled":false
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicGlowButton,
                                                "id":"button3",
                                                "events":{"click":"__button3_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":335,
                                                      "y":11,
                                                      "styleName":"LoginButton"
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"selectCharImg",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":300,
                                             "y":0,
                                             "scaleContent":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicGlowButton,
                                       "id":"button14",
                                       "events":{"click":"__button14_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":560,
                                             "y":315,
                                             "styleName":"LoginButton",
                                             "width":107
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "id":"canvas8",
                              "events":{
                                 "creationComplete":"__canvas8_creationComplete",
                                 "show":"__canvas8_show"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "label":"create",
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":UIComponent,
                                       "id":"footRing",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":135,
                                             "y":0
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"charImg",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":190,
                                             "y":30,
                                             "width":383,
                                             "height":494,
                                             "scaleContent":false
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"NMLBtn",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":85,
                                             "y":35
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"canvas6",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":630,
                                             "y":102,
                                             "width":165,
                                             "styleName":"CharCreBorder",
                                             "height":380,
                                             "horizontalScrollPolicy":"off",
                                             "verticalScrollPolicy":"off",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":ClassHeadCanvas,
                                                "id":"chc1",
                                                "stylesFactory":function():void
                                                {
                                                   this.right = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":30};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ClassHeadCanvas,
                                                "id":"chc3",
                                                "stylesFactory":function():void
                                                {
                                                   this.right = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":85};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ClassHeadCanvas,
                                                "id":"chc5",
                                                "stylesFactory":function():void
                                                {
                                                   this.right = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":140};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ClassHeadCanvas,
                                                "id":"chc2",
                                                "stylesFactory":function():void
                                                {
                                                   this.right = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":195};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ClassHeadCanvas,
                                                "id":"chc4",
                                                "stylesFactory":function():void
                                                {
                                                   this.right = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":250};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":ClassHeadCanvas,
                                                "id":"chc6",
                                                "stylesFactory":function():void
                                                {
                                                   this.right = "15";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"y":305};
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicFilteredLabel,
                                                "id":"career1",
                                                "stylesFactory":function():void
                                                {
                                                   this.left = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "editable":false,
                                                      "y":36,
                                                      "width":25,
                                                      "height":38,
                                                      "styleName":"CharCreCareerText"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicFilteredLabel,
                                                "id":"career2",
                                                "stylesFactory":function():void
                                                {
                                                   this.left = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "editable":false,
                                                      "y":91,
                                                      "width":25,
                                                      "height":38,
                                                      "styleName":"CharCreCareerText"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicFilteredLabel,
                                                "id":"career3",
                                                "stylesFactory":function():void
                                                {
                                                   this.left = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "editable":false,
                                                      "y":146,
                                                      "width":25,
                                                      "height":38,
                                                      "styleName":"CharCreCareerText"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicFilteredLabel,
                                                "id":"career4",
                                                "stylesFactory":function():void
                                                {
                                                   this.left = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "editable":false,
                                                      "y":201,
                                                      "width":25,
                                                      "height":38,
                                                      "styleName":"CharCreCareerText"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicFilteredLabel,
                                                "id":"career5",
                                                "stylesFactory":function():void
                                                {
                                                   this.left = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "editable":false,
                                                      "y":256,
                                                      "width":25,
                                                      "height":38,
                                                      "styleName":"CharCreCareerText"
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":BasicFilteredLabel,
                                                "id":"career6",
                                                "stylesFactory":function():void
                                                {
                                                   this.left = "10";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "editable":false,
                                                      "y":311,
                                                      "width":25,
                                                      "height":38,
                                                      "styleName":"CharCreCareerText"
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"canvas101",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"CharCreTitle",
                                             "x":661,
                                             "y":90,
                                             "width":113,
                                             "height":30,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Label,
                                                "id":"_CharSelectCanvas_Label1",
                                                "stylesFactory":function():void
                                                {
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "styleName":"LabelCharCreTitle",
                                                      "x":0,
                                                      "width":113,
                                                      "height":25,
                                                      "y":5
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"label1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16768881;
                                          this.fontSize = 16;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":305,
                                             "y":423
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "id":"inputNameCvs",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":280,
                                             "y":450,
                                             "width":165,
                                             "height":28,
                                             "styleName":"CharCreNameInput",
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":TextInput,
                                                "id":"inputName",
                                                "events":{"keyDown":"__inputName_keyDown"},
                                                "stylesFactory":function():void
                                                {
                                                   this.backgroundAlpha = 0;
                                                   this.fontSize = 14;
                                                   this.color = 16777215;
                                                   this.textAlign = "center";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":0,
                                                      "y":4,
                                                      "width":165,
                                                      "height":22,
                                                      "maxChars":12
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Button,
                                                "id":"randName",
                                                "events":{"click":"__randName_click"},
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "x":145,
                                                      "y":2,
                                                      "styleName":"Dice",
                                                      "toolTip":"Nhấp chọn nhận tên ngẫu nhiên"
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"enterGameBtn",
                                       "events":{"click":"__enterGameBtn_click"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"CharCreEnter",
                                             "x":305,
                                             "y":495
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicGlowButton,
                              "id":"charDesc",
                              "stylesFactory":function():void
                              {
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":400,
                                    "y":31,
                                    "selected":true,
                                    "visible":true,
                                    "styleName":"BtnHorTabBlue",
                                    "labelPlacement":"bottom",
                                    "width":63.3,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":RoundedLabel,
                              "id":"_CharSelectCanvas_RoundedLabel1",
                              "stylesFactory":function():void
                              {
                                 this.color = 15361583;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":802,
                                    "y":383,
                                    "width":15,
                                    "height":15,
                                    "visible":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":RoundedLabel,
                              "id":"_CharSelectCanvas_RoundedLabel2",
                              "stylesFactory":function():void
                              {
                                 this.color = 14689269;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":848,
                                    "y":418,
                                    "width":15,
                                    "height":15,
                                    "visible":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":RoundedLabel,
                              "id":"_CharSelectCanvas_RoundedLabel3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16081443;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":832,
                                    "y":470,
                                    "width":15,
                                    "height":15,
                                    "visible":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":RoundedLabel,
                              "id":"_CharSelectCanvas_RoundedLabel4",
                              "stylesFactory":function():void
                              {
                                 this.color = 2329845;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":774,
                                    "y":470,
                                    "width":15,
                                    "height":15,
                                    "visible":true
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":RoundedLabel,
                              "id":"_CharSelectCanvas_RoundedLabel5",
                              "stylesFactory":function():void
                              {
                                 this.color = 9301547;
                                 this.fontSize = 12;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":758,
                                    "y":418,
                                    "width":15,
                                    "height":15,
                                    "visible":true
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextArea,
                     "id":"textarea1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "visible":false,
                           "x":155,
                           "y":170,
                           "width":356,
                           "height":73,
                           "editable":false,
                           "selectable":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"canvas100",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "height":65,
                           "width":125,
                           "x":300,
                           "y":10,
                           "styleName":"RoundedGradientBorder",
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"canvas99",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "height":65,
                           "width":125,
                           "x":203,
                           "y":10,
                           "styleName":"RoundedGradientBorder",
                           "visible":false
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         _853620273classVO = new ClassVO();
         _drawToolTipManager = {};
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.verticalCenter = "0";
            this.horizontalCenter = "0";
         };
         this.width = 900;
         this.height = 570;
         this.currentState = "choose";
         this.states = [_CharSelectCanvas_State1_c(),_CharSelectCanvas_State2_c()];
         _CharSelectCanvas_Fade1_i();
         this.addEventListener("creationComplete",___CharSelectCanvas_Canvas1_creationComplete);
         this.addEventListener("show",___CharSelectCanvas_Canvas1_show);
         this.addEventListener("hide",___CharSelectCanvas_Canvas1_hide);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CharSelectCanvas._watcherSetupUtil = param1;
      }
      
      private function showProp(param1:ClassVO) : void
      {
      }
      
      public function set selectCharImg(param1:Image) : void
      {
         var _loc2_:Object = this._1462490097selectCharImg;
         if(_loc2_ !== param1)
         {
            this._1462490097selectCharImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectCharImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get aLevel() : int
      {
         return this._1444626525aLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectCharImg() : Image
      {
         return this._1462490097selectCharImg;
      }
      
      private function _CharSelectCanvas_AddChild1_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _CharSelectCanvas_AddChild1 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_CharSelectCanvas_Button1_i);
         BindingManager.executeBindings(this,"_CharSelectCanvas_AddChild1",_CharSelectCanvas_AddChild1);
         return _loc1_;
      }
      
      public function set charDesc(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1435069191charDesc;
         if(_loc2_ !== param1)
         {
            this._1435069191charDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charDesc",_loc2_,param1));
         }
      }
      
      public function __choos1_click(param1:MouseEvent) : void
      {
         onChoosOne();
      }
      
      [Bindable(event="propertyChange")]
      public function get choose() : ViewStack
      {
         return this._1361218025choose;
      }
      
      private function set cClass(param1:String) : void
      {
         var _loc2_:Object = this._1395491115cClass;
         if(_loc2_ !== param1)
         {
            this._1395491115cClass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cClass",_loc2_,param1));
         }
      }
      
      public function set enterGameBtn(param1:Button) : void
      {
         var _loc2_:Object = this._847803630enterGameBtn;
         if(_loc2_ !== param1)
         {
            this._847803630enterGameBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterGameBtn",_loc2_,param1));
         }
      }
      
      public function __button7_click(param1:MouseEvent) : void
      {
         onDelete();
      }
      
      public function set textinput1(param1:TextInput) : void
      {
         var _loc2_:Object = this._1818849004textinput1;
         if(_loc2_ !== param1)
         {
            this._1818849004textinput1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textinput1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get classVO() : ClassVO
      {
         return this._853620273classVO;
      }
      
      private function inPutNameHandler(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            createNewCharactor();
         }
      }
      
      private function reChar() : void
      {
         var delStr:String;
         var func:Function = null;
         if(Boolean(selectedChar) && selectedChar.deleted)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == 1)
               {
                  _core.remote.restoreChar(_core.guid,selectedChar.cid);
               }
            };
         }
         delStr = Language.CHARSELECTCANVAS_U[29].replace("{cname}",selectedChar.cName);
         Alert.show(delStr,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set choose(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1361218025choose;
         if(_loc2_ !== param1)
         {
            this._1361218025choose = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"choose",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textarea1() : TextArea
      {
         return this._1035784137textarea1;
      }
      
      private function onInputNameFocused(param1:MouseEvent) : void
      {
         destroyToolTip(enterGameBtn);
         drawToolTip(inputNameCvs,4,Language.CHARSELECTCANVAS_S[18]);
      }
      
      [Bindable(event="propertyChange")]
      private function get cls6() : ClassVO
      {
         return this._3056716cls6;
      }
      
      [Bindable(event="propertyChange")]
      private function get cls1() : ClassVO
      {
         return this._3056711cls1;
      }
      
      [Bindable(event="propertyChange")]
      private function get cls2() : ClassVO
      {
         return this._3056712cls2;
      }
      
      [Bindable(event="propertyChange")]
      public function get randName() : Button
      {
         return this._249405520randName;
      }
      
      [Bindable(event="propertyChange")]
      private function get cls3() : ClassVO
      {
         return this._3056713cls3;
      }
      
      private function _CharSelectCanvas_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _CharSelectCanvas_SetProperty3 = _loc1_;
         _loc1_.name = "filters";
         BindingManager.executeBindings(this,"_CharSelectCanvas_SetProperty3",_CharSelectCanvas_SetProperty3);
         return _loc1_;
      }
      
      private function onChoosTwo() : void
      {
         var _loc3_:int = 0;
         var _loc4_:CharactorSelectCanvas = null;
         var _loc5_:int = 0;
         var _loc6_:CharactorSelectCanvas = null;
         if(charactorArr.length <= currentPage * 3)
         {
            return;
         }
         var _loc1_:int = currentPage * 3;
         var _loc2_:int = currentPage * 3 + 3;
         tileBtn.removeAllChildren();
         if(charactorArr.length >= _loc2_)
         {
            _loc3_ = _loc1_;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = new CharactorSelectCanvas();
               _loc4_.cData = charactorArr[_loc3_];
               _loc4_.doubleClickEnabled = true;
               _loc4_.addEventListener(MouseEvent.CLICK,clickHandler);
               tileBtn.addChild(_loc4_);
               _loc3_++;
            }
            selectedChar = CharactorSelectCanvas(tileBtn.getChildAt(0));
            setTimeout(select,100,selectedChar);
         }
         else
         {
            _loc5_ = _loc1_;
            while(_loc5_ < charactorArr.length)
            {
               _loc6_ = new CharactorSelectCanvas();
               _loc6_.cData = charactorArr[_loc5_];
               _loc6_.doubleClickEnabled = true;
               _loc6_.addEventListener(MouseEvent.CLICK,clickHandler);
               tileBtn.addChild(_loc6_);
               _loc5_++;
            }
            selectedChar = CharactorSelectCanvas(tileBtn.getChildAt(0));
            setTimeout(select,100,selectedChar);
         }
         if(charactorArr.length <= _loc2_)
         {
            choos2.visible = false;
         }
         choos1.visible = true;
         ++currentPage;
         if(tileBtn.numChildren == 2)
         {
            canvas100.visible = true;
            tileBtn.addChild(canvas100);
         }
         if(tileBtn.numChildren == 1)
         {
            canvas100.visible = true;
            canvas99.visible = true;
            tileBtn.addChild(canvas100);
            tileBtn.addChild(canvas99);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cls5() : ClassVO
      {
         return this._3056715cls5;
      }
      
      private function autoSetFocus() : void
      {
         Application.application.focusManager.setFocus(inputName);
      }
      
      private function set classVO(param1:ClassVO) : void
      {
         var _loc2_:Object = this._853620273classVO;
         if(_loc2_ !== param1)
         {
            this._853620273classVO = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"classVO",_loc2_,param1));
         }
      }
      
      public function __button4_click(param1:MouseEvent) : void
      {
         reChar();
      }
      
      public function set textarea1(param1:TextArea) : void
      {
         var _loc2_:Object = this._1035784137textarea1;
         if(_loc2_ !== param1)
         {
            this._1035784137textarea1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textarea1",_loc2_,param1));
         }
      }
      
      private function onDelete() : void
      {
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.CHARSELECTCANVAS_S[16],delCharactor);
      }
      
      [Bindable(event="propertyChange")]
      public function get career2() : BasicFilteredLabel
      {
         return this._553969780career2;
      }
      
      [Bindable(event="propertyChange")]
      public function get career3() : BasicFilteredLabel
      {
         return this._553969781career3;
      }
      
      private function onChoosOne() : void
      {
         var _loc1_:int = 0;
         var _loc2_:CharactorSelectCanvas = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:CharactorSelectCanvas = null;
         tileBtn.removeAllChildren();
         if(currentPage <= 2)
         {
            _loc1_ = 0;
            while(_loc1_ < 3)
            {
               _loc2_ = new CharactorSelectCanvas();
               _loc2_.cData = charactorArr[_loc1_];
               _loc2_.doubleClickEnabled = true;
               _loc2_.addEventListener(MouseEvent.CLICK,clickHandler);
               tileBtn.addChild(_loc2_);
               _loc1_++;
            }
            selectedChar = CharactorSelectCanvas(tileBtn.getChildAt(0));
            setTimeout(select,100,selectedChar);
            choos2.visible = true;
            choos1.visible = false;
         }
         else
         {
            _loc3_ = (currentPage - 2) * 3;
            _loc4_ = (currentPage - 1) * 3;
            _loc5_ = _loc3_;
            while(_loc5_ < _loc4_)
            {
               _loc6_ = new CharactorSelectCanvas();
               _loc6_.cData = charactorArr[_loc5_];
               _loc6_.doubleClickEnabled = true;
               _loc6_.addEventListener(MouseEvent.CLICK,clickHandler);
               tileBtn.addChild(_loc6_);
               _loc5_++;
            }
            selectedChar = CharactorSelectCanvas(tileBtn.getChildAt(0));
            setTimeout(select,100,selectedChar);
            choos2.visible = true;
            choos1.visible = true;
         }
         --currentPage;
         if(tileBtn.numChildren == 2)
         {
            canvas100.visible = true;
            tileBtn.addChild(canvas100);
         }
         if(tileBtn.numChildren == 1)
         {
            canvas100.visible = true;
            canvas99.visible = true;
            tileBtn.addChild(canvas100);
            tileBtn.addChild(canvas99);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas99() : Canvas
      {
         return this._105740680canvas99;
      }
      
      [Bindable(event="propertyChange")]
      public function get career1() : BasicFilteredLabel
      {
         return this._553969779career1;
      }
      
      [Bindable(event="propertyChange")]
      public function get career4() : BasicFilteredLabel
      {
         return this._553969782career4;
      }
      
      [Bindable(event="propertyChange")]
      public function get career6() : BasicFilteredLabel
      {
         return this._553969784career6;
      }
      
      public function set button3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._241352513button3;
         if(_loc2_ !== param1)
         {
            this._241352513button3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button3",_loc2_,param1));
         }
      }
      
      public function set bgImg(param1:Image) : void
      {
         var _loc2_:Object = this._93647166bgImg;
         if(_loc2_ !== param1)
         {
            this._93647166bgImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgImg",_loc2_,param1));
         }
      }
      
      public function set button4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._241352514button4;
         if(_loc2_ !== param1)
         {
            this._241352514button4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button4",_loc2_,param1));
         }
      }
      
      public function set button5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._241352515button5;
         if(_loc2_ !== param1)
         {
            this._241352515button5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button5",_loc2_,param1));
         }
      }
      
      private function destroyToolTip(param1:UIComponent = null) : void
      {
         var _loc2_:Canvas = null;
         var _loc3_:String = null;
         if(param1)
         {
            if(_drawToolTipManager[param1.id])
            {
               _loc2_ = _drawToolTipManager[param1.id];
               if(contains(_loc2_))
               {
                  removeChild(_loc2_);
                  _loc2_.graphics.clear();
                  _loc2_.removeAllChildren();
                  _loc2_ = null;
                  delete _drawToolTipManager[param1.id];
               }
            }
         }
         else
         {
            for(_loc3_ in _drawToolTipManager)
            {
               _loc2_ = _drawToolTipManager[_loc3_];
               if(contains(_loc2_))
               {
                  removeChild(_loc2_);
                  _loc2_.graphics.clear();
                  _loc2_.removeAllChildren();
                  _loc2_ = null;
                  delete _drawToolTipManager[_loc3_];
               }
            }
         }
      }
      
      public function set button7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._241352517button7;
         if(_loc2_ !== param1)
         {
            this._241352517button7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get charImg() : Image
      {
         return this._739034253charImg;
      }
      
      public function set button6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._241352516button6;
         if(_loc2_ !== param1)
         {
            this._241352516button6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button6",_loc2_,param1));
         }
      }
      
      private function set cls2(param1:ClassVO) : void
      {
         var _loc2_:Object = this._3056712cls2;
         if(_loc2_ !== param1)
         {
            this._3056712cls2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cls2",_loc2_,param1));
         }
      }
      
      private function set cls3(param1:ClassVO) : void
      {
         var _loc2_:Object = this._3056713cls3;
         if(_loc2_ !== param1)
         {
            this._3056713cls3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cls3",_loc2_,param1));
         }
      }
      
      private function setEffect() : void
      {
         var _loc1_:* = new ResManager.ANI_CHAR_CRE();
         _loc1_.x = -30;
         _loc1_.y = -640;
         _loc1_.height = 50;
         _loc1_.width = 300;
         footRing.addChild(_loc1_);
      }
      
      private function delCharactor(param1:String) : void
      {
         button5.enabled = false;
         startDelete(param1);
      }
      
      private function set cls1(param1:ClassVO) : void
      {
         var _loc2_:Object = this._3056711cls1;
         if(_loc2_ !== param1)
         {
            this._3056711cls1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cls1",_loc2_,param1));
         }
      }
      
      private function set cls5(param1:ClassVO) : void
      {
         var _loc2_:Object = this._3056715cls5;
         if(_loc2_ !== param1)
         {
            this._3056715cls5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cls5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get career5() : BasicFilteredLabel
      {
         return this._553969783career5;
      }
      
      [Bindable(event="propertyChange")]
      private function get cls4() : ClassVO
      {
         return this._3056714cls4;
      }
      
      private function set cls6(param1:ClassVO) : void
      {
         var _loc2_:Object = this._3056716cls6;
         if(_loc2_ !== param1)
         {
            this._3056716cls6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cls6",_loc2_,param1));
         }
      }
      
      public function set randName(param1:Button) : void
      {
         var _loc2_:Object = this._249405520randName;
         if(_loc2_ !== param1)
         {
            this._249405520randName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"randName",_loc2_,param1));
         }
      }
      
      private function clickHandler(param1:Event) : void
      {
         var _loc2_:CharactorSelectCanvas = CharactorSelectCanvas(param1.currentTarget);
         select(_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      public function get inputNameCvs() : Canvas
      {
         return this._1586673493inputNameCvs;
      }
      
      private function startDelete(param1:String) : void
      {
         _core.view.getUI(ViewManager.POPU_WAIT).showText(Language.CHARSELECTCANVAS_S[10]);
         _core.view.getUI(ViewManager.POPU_WAIT).showTime(3);
         var _loc2_:String = MD5.hash(param1);
         _core.remote.startDeleteChar(int(selectedChar.cid),_loc2_);
         aLevel = 0;
         _core.acountLv = 0;
      }
      
      private function rand3(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_.push(param1[_loc3_]);
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      [Bindable(event="propertyChange")]
      public function get NMLBtn() : Image
      {
         return this._1988451153NMLBtn;
      }
      
      private function _CharSelectCanvas_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "create";
         _loc1_.overrides = [_CharSelectCanvas_SetProperty2_i(),_CharSelectCanvas_SetProperty3_i()];
         return _loc1_;
      }
      
      private function set cls4(param1:ClassVO) : void
      {
         var _loc2_:Object = this._3056714cls4;
         if(_loc2_ !== param1)
         {
            this._3056714cls4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cls4",_loc2_,param1));
         }
      }
      
      public function set chc2(param1:ClassHeadCanvas) : void
      {
         var _loc2_:Object = this._3052372chc2;
         if(_loc2_ !== param1)
         {
            this._3052372chc2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chc2",_loc2_,param1));
         }
      }
      
      public function __randName_click(param1:MouseEvent) : void
      {
         setRandName();
      }
      
      private function _CharSelectCanvas_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         choos1 = _loc1_;
         _loc1_.x = 200;
         _loc1_.y = 395;
         _loc1_.styleName = "BtnLoginTurnLeft";
         _loc1_.visible = false;
         _loc1_.addEventListener("click",__choos1_click);
         _loc1_.id = "choos1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CharSelectCanvas_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _CharSelectCanvas_SetProperty2 = _loc1_;
         _loc1_.name = "selectedIndex";
         _loc1_.value = 1;
         BindingManager.executeBindings(this,"_CharSelectCanvas_SetProperty2",_CharSelectCanvas_SetProperty2);
         return _loc1_;
      }
      
      public function set chc6(param1:ClassHeadCanvas) : void
      {
         var _loc2_:Object = this._3052376chc6;
         if(_loc2_ !== param1)
         {
            this._3052376chc6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chc6",_loc2_,param1));
         }
      }
      
      public function set chc3(param1:ClassHeadCanvas) : void
      {
         var _loc2_:Object = this._3052373chc3;
         if(_loc2_ !== param1)
         {
            this._3052373chc3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chc3",_loc2_,param1));
         }
      }
      
      public function set chc5(param1:ClassHeadCanvas) : void
      {
         var _loc2_:Object = this._3052375chc5;
         if(_loc2_ !== param1)
         {
            this._3052375chc5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chc5",_loc2_,param1));
         }
      }
      
      private function onLogin() : void
      {
         if(selectedChar)
         {
            if(selectedChar.deleted)
            {
               return;
            }
            _core.remote.chooseCharactor(int(selectedChar.cid));
            _core.view.getUI(ViewManager.POPU_WAIT).showText(Language.CHARSELECTCANVAS_S[9]);
            button5.enabled = false;
         }
      }
      
      private function getAcountGold(param1:int) : int
      {
         if(param1 == 1)
         {
            return 500;
         }
         if(param1 == 2)
         {
            return 1000;
         }
         if(param1 == 3)
         {
            return 1500;
         }
         return 0;
      }
      
      public function set bgFadeIn(param1:Fade) : void
      {
         var _loc2_:Object = this._1982979738bgFadeIn;
         if(_loc2_ !== param1)
         {
            this._1982979738bgFadeIn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgFadeIn",_loc2_,param1));
         }
      }
      
      private function setRandName() : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         randName.setFocus();
         destroyToolTip(inputNameCvs);
         drawToolTip(enterGameBtn,2,Language.CHARSELECTCANVAS_S[17]);
         var _loc1_:Object = _core.data.gameDataIndex[80];
         var _loc2_:Array = [];
         for(_loc3_ in _loc1_)
         {
            if(_loc3_ != "0")
            {
               _loc2_.push(_loc1_[_loc3_]);
            }
         }
         _loc1_ = _loc2_[Math.floor(Math.random() * _loc2_.length)];
         _loc4_ = rand3(_loc1_);
         if(!_loc4_ || !ToolKit.isEqual(_loc4_.type,32) && String(_loc4_.name).length < 6 && Math.random() > 0.3)
         {
            _loc5_ = rand3(_loc1_);
            while(_loc4_.id == _loc5_.id || String(_loc4_.name + _loc5_.name).length > 12)
            {
               _loc5_ = rand3(_loc1_);
            }
         }
         if(Boolean(_loc5_) && Math.floor(_loc4_.type / 10) == 2)
         {
            inputName.text = _loc4_.name + "·" + _loc5_.name;
         }
         else
         {
            inputName.text = _loc4_.name + (_loc5_ ? _loc5_.name : "");
         }
         if(Math.random() > 0.7)
         {
            _loc6_ = rand3(_core.data.gameDataIndex[80][0]).name;
            if(_loc6_)
            {
               inputName.text = _loc6_ + inputName.text + _loc6_;
            }
         }
         if(String(Language.GAMEPREDEF_S[338]).indexOf(inputName.text) > 0)
         {
            inputName.text = "";
            setRandName();
         }
      }
      
      public function set chc1(param1:ClassHeadCanvas) : void
      {
         var _loc2_:Object = this._3052371chc1;
         if(_loc2_ !== param1)
         {
            this._3052371chc1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chc1",_loc2_,param1));
         }
      }
      
      public function set chc4(param1:ClassHeadCanvas) : void
      {
         var _loc2_:Object = this._3052374chc4;
         if(_loc2_ !== param1)
         {
            this._3052374chc4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chc4",_loc2_,param1));
         }
      }
      
      private function _CharSelectCanvas_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "choose";
         _loc1_.overrides = [_CharSelectCanvas_AddChild1_i(),_CharSelectCanvas_AddChild2_i(),_CharSelectCanvas_SetProperty1_i(),_CharSelectCanvas_AddChild3_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get button14() : BasicGlowButton
      {
         return this._1108006699button14;
      }
      
      [Bindable(event="propertyChange")]
      public function get tileBtn() : Tile
      {
         return this._1314878258tileBtn;
      }
      
      private function _CharSelectCanvas_SetProperty1_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _CharSelectCanvas_SetProperty1 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 349;
         BindingManager.executeBindings(this,"_CharSelectCanvas_SetProperty1",_CharSelectCanvas_SetProperty1);
         return _loc1_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
      }
      
      public function set career5(param1:BasicFilteredLabel) : void
      {
         var _loc2_:Object = this._553969783career5;
         if(_loc2_ !== param1)
         {
            this._553969783career5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"career5",_loc2_,param1));
         }
      }
      
      private function getAcountName(param1:int) : String
      {
         if(param1 == 1)
         {
            return Language.CHARSELECTCANVAS_S[0];
         }
         if(param1 == 2)
         {
            return Language.CHARSELECTCANVAS_S[1];
         }
         if(param1 == 3)
         {
            return Language.CHARSELECTCANVAS_S[2];
         }
         return Language.CHARSELECTCANVAS_S[3];
      }
      
      private function _CharSelectCanvas_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         choos2 = _loc1_;
         _loc1_.styleName = "BtnLoginTurnRight";
         _loc1_.x = 673;
         _loc1_.y = 395;
         _loc1_.visible = false;
         _loc1_.addEventListener("click",__choos2_click);
         _loc1_.id = "choos2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function __button6_click(param1:MouseEvent) : void
      {
         onCreate();
      }
      
      public function set career1(param1:BasicFilteredLabel) : void
      {
         var _loc2_:Object = this._553969779career1;
         if(_loc2_ !== param1)
         {
            this._553969779career1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"career1",_loc2_,param1));
         }
      }
      
      public function __inputName_keyDown(param1:KeyboardEvent) : void
      {
         inPutNameHandler(param1);
      }
      
      public function set career3(param1:BasicFilteredLabel) : void
      {
         var _loc2_:Object = this._553969781career3;
         if(_loc2_ !== param1)
         {
            this._553969781career3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"career3",_loc2_,param1));
         }
      }
      
      public function __bgImg_complete(param1:Event) : void
      {
         bgFadeIn.stop();
         bgFadeIn.play();
      }
      
      public function set career4(param1:BasicFilteredLabel) : void
      {
         var _loc2_:Object = this._553969782career4;
         if(_loc2_ !== param1)
         {
            this._553969782career4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"career4",_loc2_,param1));
         }
      }
      
      private function select(param1:CharactorSelectCanvas) : void
      {
         if(!param1)
         {
            return;
         }
         selectedChar.selected = false;
         param1.selected = true;
         selectedChar = param1;
         selectCharImg.source = param1.cImgUrl;
         cName = param1.cName;
         cLevel = param1.cLevel;
         cClass = param1.cClass;
         button5.enabled = true;
         if(param1.deleted)
         {
            button5.enabled = false;
            button7.visible = false;
            button4.visible = true;
            txtTips.htmlText = param1.tips;
         }
         else
         {
            button5.enabled = true;
            button7.visible = true;
            button4.visible = false;
            txtTips.htmlText = "";
         }
      }
      
      public function set canvas99(param1:Canvas) : void
      {
         var _loc2_:Object = this._105740680canvas99;
         if(_loc2_ !== param1)
         {
            this._105740680canvas99 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas99",_loc2_,param1));
         }
      }
      
      private function setClassData() : void
      {
         var _loc4_:Object = null;
         var _loc5_:ClassVO = null;
         var _loc6_:Object = null;
         var _loc1_:Array = _core.data.getGameDataList(GamePredef.TBL_CLASS);
         if(!_loc1_)
         {
            callLater(setClassData);
            return;
         }
         _newChar = {};
         var _loc2_:Number = Math.floor(Math.random() * 12);
         var _loc3_:Number = Math.floor(_loc2_ / 2) + 1;
         if(this["cls" + _loc3_] == null)
         {
            for each(_loc4_ in _loc1_)
            {
               if(_loc4_)
               {
                  _loc5_ = new ClassVO();
                  _loc5_.data = _loc4_;
                  this["cls" + _loc4_.id] = _loc5_;
               }
            }
         }
         if(this["cls" + _loc3_])
         {
            if(_loc2_ % 2 == 0)
            {
               gender = "maleIconImage";
            }
            else
            {
               gender = "femaleIconImage";
            }
            _loc6_ = {};
            _loc6_.gender = gender;
            _loc6_.classData = this["cls" + _loc3_];
            callLater(focusClassHead,[_loc3_]);
            changeResAndDes(_loc6_);
         }
         inputName.addEventListener(MouseEvent.CLICK,onInputNameFocused);
         setRandName();
         enterGameBtn.setFocus();
         drawToolTip(enterGameBtn,2,Language.CHARSELECTCANVAS_S[17]);
      }
      
      public function set inputName(param1:TextInput) : void
      {
         var _loc2_:Object = this._1706774901inputName;
         if(_loc2_ !== param1)
         {
            this._1706774901inputName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get charDesc() : BasicGlowButton
      {
         return this._1435069191charDesc;
      }
      
      public function set career6(param1:BasicFilteredLabel) : void
      {
         var _loc2_:Object = this._553969784career6;
         if(_loc2_ !== param1)
         {
            this._553969784career6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"career6",_loc2_,param1));
         }
      }
      
      public function set career2(param1:BasicFilteredLabel) : void
      {
         var _loc2_:Object = this._553969780career2;
         if(_loc2_ !== param1)
         {
            this._553969780career2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"career2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cLevel() : String
      {
         return this._1387368223cLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get enterGameBtn() : Button
      {
         return this._847803630enterGameBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get textinput1() : TextInput
      {
         return this._1818849004textinput1;
      }
      
      public function set charImg(param1:Image) : void
      {
         var _loc2_:Object = this._739034253charImg;
         if(_loc2_ !== param1)
         {
            this._739034253charImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charImg",_loc2_,param1));
         }
      }
      
      private function set cName(param1:String) : void
      {
         var _loc2_:Object = this._93848974cName;
         if(_loc2_ !== param1)
         {
            this._93848974cName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cName",_loc2_,param1));
         }
      }
      
      private function dClickHandler(param1:Event) : void
      {
      }
      
      public function __button3_click(param1:MouseEvent) : void
      {
         onReturn();
      }
      
      public function set canvas101(param1:Canvas) : void
      {
         var _loc2_:Object = this._1016998298canvas101;
         if(_loc2_ !== param1)
         {
            this._1016998298canvas101 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas101",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cClass() : String
      {
         return this._1395491115cClass;
      }
      
      private function onCancel() : void
      {
         currentState = "choose";
      }
      
      private function _CharSelectCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():UIComponent
         {
            return canvas7;
         },function(param1:UIComponent):void
         {
            _CharSelectCanvas_AddChild1.relativeTo = param1;
         },"_CharSelectCanvas_AddChild1.relativeTo");
         result[0] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return canvas7;
         },function(param1:UIComponent):void
         {
            _CharSelectCanvas_AddChild2.relativeTo = param1;
         },"_CharSelectCanvas_AddChild2.relativeTo");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return textinput1;
         },function(param1:Object):void
         {
            _CharSelectCanvas_SetProperty1.target = param1;
         },"_CharSelectCanvas_SetProperty1.target");
         result[2] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return canvas7;
         },function(param1:UIComponent):void
         {
            _CharSelectCanvas_AddChild3.relativeTo = param1;
         },"_CharSelectCanvas_AddChild3.relativeTo");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return choose;
         },function(param1:Object):void
         {
            _CharSelectCanvas_SetProperty2.target = param1;
         },"_CharSelectCanvas_SetProperty2.target");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return bgImg;
         },function(param1:Object):void
         {
            _CharSelectCanvas_SetProperty3.target = param1;
         },"_CharSelectCanvas_SetProperty3.target");
         result[5] = binding;
         binding = new Binding(this,function():*
         {
            return [new ColorMatrixFilter([0])];
         },function(param1:*):void
         {
            _CharSelectCanvas_SetProperty3.value = param1;
         },"_CharSelectCanvas_SetProperty3.value");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return bgImg;
         },function(param1:Object):void
         {
            bgFadeIn.target = param1;
         },"bgFadeIn.target");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button5.label = param1;
         },"button5.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button7.label = param1;
         },"button7.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button4.label = param1;
         },"button4.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button6.label = param1;
         },"button6.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button3.label = param1;
         },"button3.label");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_BLACK_ROUND];
         },function(param1:Array):void
         {
            selectCharImg.filters = param1;
         },"selectCharImg.filters");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button14.label = param1;
         },"button14.label");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.LABEL_CHAR_CRE_1;
         },function(param1:Object):void
         {
            NMLBtn.source = param1;
         },"NMLBtn.source");
         result[15] = binding;
         binding = new Binding(this,function():ClassVO
         {
            return cls1;
         },function(param1:ClassVO):void
         {
            chc1.classData = param1;
         },"chc1.classData");
         result[16] = binding;
         binding = new Binding(this,function():ClassVO
         {
            return cls3;
         },function(param1:ClassVO):void
         {
            chc3.classData = param1;
         },"chc3.classData");
         result[17] = binding;
         binding = new Binding(this,function():ClassVO
         {
            return cls5;
         },function(param1:ClassVO):void
         {
            chc5.classData = param1;
         },"chc5.classData");
         result[18] = binding;
         binding = new Binding(this,function():ClassVO
         {
            return cls2;
         },function(param1:ClassVO):void
         {
            chc2.classData = param1;
         },"chc2.classData");
         result[19] = binding;
         binding = new Binding(this,function():ClassVO
         {
            return cls4;
         },function(param1:ClassVO):void
         {
            chc4.classData = param1;
         },"chc4.classData");
         result[20] = binding;
         binding = new Binding(this,function():ClassVO
         {
            return cls6;
         },function(param1:ClassVO):void
         {
            chc6.classData = param1;
         },"chc6.classData");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            career1.text = param1;
         },"career1.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            career2.text = param1;
         },"career2.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            career3.text = param1;
         },"career3.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            career4.text = param1;
         },"career4.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            career5.text = param1;
         },"career5.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            career6.text = param1;
         },"career6.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharSelectCanvas_Label1.text = param1;
         },"_CharSelectCanvas_Label1.text");
         result[28] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _CharSelectCanvas_Label1.filters = param1;
         },"_CharSelectCanvas_Label1.filters");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            label1.text = param1;
         },"label1.text");
         result[30] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            inputName.setStyle("borderSkin",param1);
         },"inputName.borderSkin");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            charDesc.label = param1;
         },"charDesc.label");
         result[32] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            _CharSelectCanvas_RoundedLabel1.filters = param1;
         },"_CharSelectCanvas_RoundedLabel1.filters");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharSelectCanvas_RoundedLabel1.text = param1;
         },"_CharSelectCanvas_RoundedLabel1.text");
         result[34] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            _CharSelectCanvas_RoundedLabel2.filters = param1;
         },"_CharSelectCanvas_RoundedLabel2.filters");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharSelectCanvas_RoundedLabel2.text = param1;
         },"_CharSelectCanvas_RoundedLabel2.text");
         result[36] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            _CharSelectCanvas_RoundedLabel3.filters = param1;
         },"_CharSelectCanvas_RoundedLabel3.filters");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharSelectCanvas_RoundedLabel3.text = param1;
         },"_CharSelectCanvas_RoundedLabel3.text");
         result[38] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            _CharSelectCanvas_RoundedLabel4.filters = param1;
         },"_CharSelectCanvas_RoundedLabel4.filters");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharSelectCanvas_RoundedLabel4.text = param1;
         },"_CharSelectCanvas_RoundedLabel4.text");
         result[40] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            _CharSelectCanvas_RoundedLabel5.filters = param1;
         },"_CharSelectCanvas_RoundedLabel5.filters");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharSelectCanvas_RoundedLabel5.text = param1;
         },"_CharSelectCanvas_RoundedLabel5.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_S[11] + int(aLevel * 20) + Language.CHARSELECTCANVAS_S[12] + getAcountName(aLevel) + Language.CHARSELECTCANVAS_S[13] + getAcountGold(aLevel) + Language.CHARSELECTCANVAS_S[14] + getAcountName(aLevel) + Language.CHARSELECTCANVAS_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            textarea1.text = param1;
         },"textarea1.text");
         result[43] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get button3() : BasicGlowButton
      {
         return this._241352513button3;
      }
      
      [Bindable(event="propertyChange")]
      public function get button4() : BasicGlowButton
      {
         return this._241352514button4;
      }
      
      [Bindable(event="propertyChange")]
      public function get button5() : BasicGlowButton
      {
         return this._241352515button5;
      }
      
      [Bindable(event="propertyChange")]
      public function get button6() : BasicGlowButton
      {
         return this._241352516button6;
      }
      
      [Bindable(event="propertyChange")]
      public function get bgImg() : Image
      {
         return this._93647166bgImg;
      }
      
      public function set canvas100(param1:Canvas) : void
      {
         var _loc2_:Object = this._1016998297canvas100;
         if(_loc2_ !== param1)
         {
            this._1016998297canvas100 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas100",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get button7() : BasicGlowButton
      {
         return this._241352517button7;
      }
      
      [Bindable(event="propertyChange")]
      public function get chc1() : ClassHeadCanvas
      {
         return this._3052371chc1;
      }
      
      public function enableUI() : void
      {
         this.button6.enabled = true;
         this.button14.enabled = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get chc2() : ClassHeadCanvas
      {
         return this._3052372chc2;
      }
      
      [Bindable(event="propertyChange")]
      public function get chc3() : ClassHeadCanvas
      {
         return this._3052373chc3;
      }
      
      public function __choos2_click(param1:MouseEvent) : void
      {
         onChoosTwo();
      }
      
      [Bindable(event="propertyChange")]
      public function get bgFadeIn() : Fade
      {
         return this._1982979738bgFadeIn;
      }
      
      [Bindable(event="propertyChange")]
      public function get chc6() : ClassHeadCanvas
      {
         return this._3052376chc6;
      }
      
      public function set NMLBtn(param1:Image) : void
      {
         var _loc2_:Object = this._1988451153NMLBtn;
         if(_loc2_ !== param1)
         {
            this._1988451153NMLBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"NMLBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chc4() : ClassHeadCanvas
      {
         return this._3052374chc4;
      }
      
      [Bindable(event="propertyChange")]
      public function get chc5() : ClassHeadCanvas
      {
         return this._3052375chc5;
      }
      
      private function set aLevel(param1:int) : void
      {
         var _loc2_:Object = this._1444626525aLevel;
         if(_loc2_ !== param1)
         {
            this._1444626525aLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inputName() : TextInput
      {
         return this._1706774901inputName;
      }
      
      public function set inputNameCvs(param1:Canvas) : void
      {
         var _loc2_:Object = this._1586673493inputNameCvs;
         if(_loc2_ !== param1)
         {
            this._1586673493inputNameCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputNameCvs",_loc2_,param1));
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
      
      public function __button14_click(param1:MouseEvent) : void
      {
         showDPass();
      }
      
      private function focusClassHead(param1:int) : void
      {
         if(this["chc" + param1])
         {
            this["chc" + param1][gender].filters = [GamePredef.FILTER_CHAR_SELECTED_2];
         }
      }
      
      private function onShow() : void
      {
         bgImg.source = ResManager.hash(GamePredef.DEFAULT_IMG_LOGIN);
      }
      
      public function disableUI() : void
      {
         this.button6.enabled = false;
         this.button14.enabled = false;
      }
      
      private function _CharSelectCanvas_AddChild3_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _CharSelectCanvas_AddChild3 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_CharSelectCanvas_Text1_i);
         BindingManager.executeBindings(this,"_CharSelectCanvas_AddChild3",_CharSelectCanvas_AddChild3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get cName() : String
      {
         return this._93848974cName;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CharSelectCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CharSelectCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compFore_CharSelectCanvasWatcherSetupUtil");
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
      
      private function showDPass() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.D_PASS_PANEL);
         if(_loc1_.visible)
         {
            return;
         }
         _loc1_.showPwdAgainCanvas();
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas100() : Canvas
      {
         return this._1016998297canvas100;
      }
      
      public function set tileBtn(param1:Tile) : void
      {
         var _loc2_:Object = this._1314878258tileBtn;
         if(_loc2_ !== param1)
         {
            this._1314878258tileBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tileBtn",_loc2_,param1));
         }
      }
      
      public function __canvas8_creationComplete(param1:FlexEvent) : void
      {
         setEffect();
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas101() : Canvas
      {
         return this._1016998298canvas101;
      }
      
      private function _CharSelectCanvas_Text1_i() : Text
      {
         var _loc1_:Text = new Text();
         txtTips = _loc1_;
         _loc1_.y = 0;
         _loc1_.text = "";
         _loc1_.width = 550;
         _loc1_.setStyle("fontThickness",0);
         _loc1_.setStyle("right","0");
         _loc1_.setStyle("fontSize",12);
         _loc1_.setStyle("fontFamily","Arial");
         _loc1_.setStyle("textAlign","right");
         _loc1_.id = "txtTips";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set footRing(param1:UIComponent) : void
      {
         var _loc2_:Object = this._394199998footRing;
         if(_loc2_ !== param1)
         {
            this._394199998footRing = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"footRing",_loc2_,param1));
         }
      }
      
      public function __button5_click(param1:MouseEvent) : void
      {
         onLogin();
      }
      
      private function _CharSelectCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = canvas7;
         _loc1_ = canvas7;
         _loc1_ = textinput1;
         _loc1_ = canvas7;
         _loc1_ = choose;
         _loc1_ = bgImg;
         _loc1_ = [new ColorMatrixFilter([0])];
         _loc1_ = bgImg;
         _loc1_ = Language.CHARSELECTCANVAS_U[24];
         _loc1_ = Language.CHARSELECTCANVAS_U[25];
         _loc1_ = Language.CHARSELECTCANVAS_U[28];
         _loc1_ = Language.CHARSELECTCANVAS_U[22];
         _loc1_ = Language.CHARSELECTCANVAS_U[26];
         _loc1_ = [GamePredef.FILTER_BLACK_ROUND];
         _loc1_ = Language.CHARSELECTCANVAS_U[0];
         _loc1_ = ResManager.LABEL_CHAR_CRE_1;
         _loc1_ = cls1;
         _loc1_ = cls3;
         _loc1_ = cls5;
         _loc1_ = cls2;
         _loc1_ = cls4;
         _loc1_ = cls6;
         _loc1_ = Language.CHARSELECTCANVAS_U[37];
         _loc1_ = Language.CHARSELECTCANVAS_U[38];
         _loc1_ = Language.CHARSELECTCANVAS_U[39];
         _loc1_ = Language.CHARSELECTCANVAS_U[40];
         _loc1_ = Language.CHARSELECTCANVAS_U[41];
         _loc1_ = Language.CHARSELECTCANVAS_U[42];
         _loc1_ = Language.CHARSELECTCANVAS_U[8];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.CHARSELECTCANVAS_U[31];
         _loc1_ = null;
         _loc1_ = Language.CHARSELECTCANVAS_U[1];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[17];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[18];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[19];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[20];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.CHARSELECTCANVAS_U[21];
         _loc1_ = Language.CHARSELECTCANVAS_S[11] + int(aLevel * 20) + Language.CHARSELECTCANVAS_S[12] + getAcountName(aLevel) + Language.CHARSELECTCANVAS_S[13] + getAcountGold(aLevel) + Language.CHARSELECTCANVAS_S[14] + getAcountName(aLevel) + Language.CHARSELECTCANVAS_S[15];
      }
      
      public function changeResAndDes(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         classVO = ClassVO(param1.classData);
         if(param1.gender == "maleIconImage")
         {
            _loc2_ = classVO.resCodeMale;
            _loc4_ = classVO.colorCodeMale1;
            _loc5_ = classVO.largeImgMale;
         }
         else
         {
            _loc2_ = classVO.resCodeFemale;
            _loc4_ = classVO.colorCodeFemale1;
            _loc5_ = classVO.largeImgFemale;
         }
         var _loc6_:Array = classVO.classDescription.split("|");
         _loc3_ = "<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[0] + "\'>" + _loc6_[2] + "</font>" + _loc6_[3];
         charImg.source = ResManager.getIconUrl(_loc5_);
         showProp(classVO);
         gender = param1.gender;
         _newChar.gender = param1.gender == "maleIconImage" ? 0 : 1;
         _newChar.classId = param1.classData.id;
         _newChar.color = 1;
         NMLBtn.source = ResManager["LABEL_CHAR_CRE_" + _newChar.classId];
      }
      
      public function ___CharSelectCanvas_Canvas1_show(param1:FlexEvent) : void
      {
         onShow();
      }
      
      private function createNewCharactor() : void
      {
         if(_newChar)
         {
            destroyToolTip();
            inputName.removeEventListener(MouseEvent.CLICK,onInputNameFocused);
            if(inputName.text.length < 0)
            {
               return;
            }
            if(_core.haveSpecialStr(inputName.text))
            {
               Alert.show(Language.CHARSELECTCANVAS_S[4],"");
               return;
            }
            if(_core.haveSpecialStr2(inputName.text))
            {
               Alert.show(Language.CHARSELECTCANVAS_S[19],"");
               return;
            }
            if(inputName.text.length > 12)
            {
               Alert.show(Language.CHARSELECTCANVAS_S[5],"");
               return;
            }
            if(_core.haveBadWord(inputName.text))
            {
               return;
            }
            if(inputName.text.length == 0)
            {
               Alert.show(Language.CHARSELECTCANVAS_S[6],"");
               return;
            }
            _newChar.name = StringUtil.trim(inputName.text);
            _core.remote.newChar(_newChar);
            charName = _newChar.name;
         }
         else
         {
            _newChar = {};
            Alert.show(Language.CHARSELECTCANVAS_S[7]);
         }
      }
      
      public function set canvas6(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778334canvas6;
         if(_loc2_ !== param1)
         {
            this._550778334canvas6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label1() : Label
      {
         return this._1110417475label1;
      }
      
      public function set canvas7(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778335canvas7;
         if(_loc2_ !== param1)
         {
            this._550778335canvas7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas7",_loc2_,param1));
         }
      }
      
      public function set canvas8(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778336canvas8;
         if(_loc2_ !== param1)
         {
            this._550778336canvas8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas8",_loc2_,param1));
         }
      }
      
      private function onHide() : void
      {
         bgImg.source = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get footRing() : UIComponent
      {
         return this._394199998footRing;
      }
      
      public function set choos2(param1:Button) : void
      {
         var _loc2_:Object = this._1361218076choos2;
         if(_loc2_ !== param1)
         {
            this._1361218076choos2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"choos2",_loc2_,param1));
         }
      }
      
      public function set txtTips(param1:Text) : void
      {
         var _loc2_:Object = this._878521912txtTips;
         if(_loc2_ !== param1)
         {
            this._878521912txtTips = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtTips",_loc2_,param1));
         }
      }
      
      private function _CharSelectCanvas_AddChild2_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _CharSelectCanvas_AddChild2 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_CharSelectCanvas_Button2_i);
         BindingManager.executeBindings(this,"_CharSelectCanvas_AddChild2",_CharSelectCanvas_AddChild2);
         return _loc1_;
      }
      
      public function set charactorDataList(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc5_:int = 0;
         var _loc6_:CharactorSelectCanvas = null;
         var _loc7_:int = 0;
         var _loc8_:CharactorSelectCanvas = null;
         tileBtn.removeAllChildren();
         aLevel = _core.acountLv;
         charactorArr = new ArrayCollection();
         for each(_loc2_ in param1)
         {
            charactorArr.addItem(_loc2_);
         }
         if(charactorArr.length == 0)
         {
            onCreate();
            _core.view.hide(ViewManager.D_PASS_PANEL);
            choos1.visible = false;
            choos2.visible = false;
         }
         else if(4 > charactorArr.length && charactorArr.length > 0)
         {
            while(_loc5_ < charactorArr.length)
            {
               _loc6_ = new CharactorSelectCanvas();
               _loc6_.cData = charactorArr[_loc5_];
               _loc6_.doubleClickEnabled = true;
               _loc6_.addEventListener(MouseEvent.CLICK,clickHandler);
               tileBtn.addChild(_loc6_);
               _loc5_++;
            }
            choos1.visible = false;
            choos2.visible = false;
         }
         else if(charactorArr.length > 3)
         {
            while(_loc7_ < 3)
            {
               _loc8_ = new CharactorSelectCanvas();
               _loc8_.cData = charactorArr[_loc7_];
               _loc8_.doubleClickEnabled = true;
               _loc8_.addEventListener(MouseEvent.CLICK,clickHandler);
               tileBtn.addChild(_loc8_);
               _loc7_++;
            }
            choos2.visible = true;
            choos1.visible = false;
         }
         button6.enabled = Boolean(charactorArr.length < 3);
         if(4 > tileBtn.numChildren && tileBtn.numChildren > 0)
         {
            selectedChar = CharactorSelectCanvas(tileBtn.getChildAt(0));
            setTimeout(select,100,selectedChar);
         }
         currentPage = 1;
         if(tileBtn.numChildren == 2)
         {
            canvas100.visible = true;
            tileBtn.addChild(canvas100);
         }
         if(tileBtn.numChildren == 1)
         {
            canvas100.visible = true;
            canvas99.visible = true;
            tileBtn.addChild(canvas100);
            tileBtn.addChild(canvas99);
         }
         var _loc3_:GameEvent = new GameEvent("ON_CHAR_SELECT_PAGE");
         var _loc4_:Object = MMOGame.app.parent;
         _loc4_.dispatchEvent(_loc3_);
      }
      
      [Bindable(event="propertyChange")]
      public function get txtTips() : Text
      {
         return this._878521912txtTips;
      }
      
      private function set cLevel(param1:String) : void
      {
         var _loc2_:Object = this._1387368223cLevel;
         if(_loc2_ !== param1)
         {
            this._1387368223cLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cLevel",_loc2_,param1));
         }
      }
      
      private function onCreate() : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         currentState = "create";
         setTimeout(autoSetFocus,200);
         var _loc1_:Object = _core.data.gameData[GamePredef.TBL_MAP][1];
         if(_loc1_)
         {
            _loc2_ = ResManager.getResUrlNoHash(_loc1_.resCode);
            _loc3_ = _core.view.getUI(ViewManager.STAGE_MAIN);
            if(Boolean(_loc3_) && Boolean(_loc3_.mapContainer))
            {
               _loc3_.loadHitTestLayer(_loc2_);
               _loc3_.mapContainer.init(_loc3_,_loc2_,_loc1_.width,_loc1_.height,_loc1_.type,null,false);
            }
         }
      }
      
      public function set choos1(param1:Button) : void
      {
         var _loc2_:Object = this._1361218077choos1;
         if(_loc2_ !== param1)
         {
            this._1361218077choos1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"choos1",_loc2_,param1));
         }
      }
      
      public function __canvas8_show(param1:FlexEvent) : void
      {
         setClassData();
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas6() : Canvas
      {
         return this._550778334canvas6;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas7() : Canvas
      {
         return this._550778335canvas7;
      }
      
      public function set button14(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1108006699button14;
         if(_loc2_ !== param1)
         {
            this._1108006699button14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button14",_loc2_,param1));
         }
      }
      
      private function _CharSelectCanvas_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         bgFadeIn = _loc1_;
         _loc1_.alphaFrom = 0;
         _loc1_.alphaTo = 1;
         BindingManager.executeBindings(this,"bgFadeIn",bgFadeIn);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get choos1() : Button
      {
         return this._1361218077choos1;
      }
      
      [Bindable(event="propertyChange")]
      public function get choos2() : Button
      {
         return this._1361218076choos2;
      }
      
      private function onReturn() : void
      {
         charName = "";
         tileBtn.removeAllChildren();
         _core.logout();
         _core.view.getUI(ViewManager.FORE_L_R).visible = true;
         _core.view.getUI(ViewManager.FORE_C_C).visible = false;
         _core.view.getUI(ViewManager.D_PASS_PANEL).hide();
         _core.remote.close();
      }
      
      public function ___CharSelectCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         onShow();
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas8() : Canvas
      {
         return this._550778336canvas8;
      }
      
      public function __enterGameBtn_click(param1:MouseEvent) : void
      {
         createNewCharactor();
      }
      
      public function ___CharSelectCanvas_Canvas1_hide(param1:FlexEvent) : void
      {
         onHide();
      }
      
      private function drawToolTip(param1:UIComponent, param2:int, param3:String = "", param4:int = 12, param5:int = 12) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc16_:Array = null;
         var _loc17_:Array = null;
         var _loc6_:Number = param1.x;
         var _loc7_:Number = param1.y;
         var _loc8_:Number = param1.width;
         var _loc9_:Number = param1.height;
         if(!_drawToolTipManager)
         {
            _drawToolTipManager = {};
         }
         destroyToolTip(param1);
         if(param3.length > 12)
         {
            _loc10_ = 12 * param4 + 5;
            _loc11_ = Math.floor(param3.length / param5) * param4 + param4 + 10;
         }
         else
         {
            _loc10_ = param3.length * param4 + 5;
            _loc11_ = param4 + 5;
         }
         var _loc12_:Canvas = new Canvas();
         var _loc13_:TextArea = new TextArea();
         _loc13_.editable = false;
         _loc13_.selectable = false;
         _loc13_.setStyle("borderStyle","none");
         _loc13_.setStyle("backgroundAlpha",0);
         _loc13_.text = param3;
         _loc13_.width = _loc10_;
         _loc13_.height = _loc11_;
         _loc13_.setStyle("color",16777215);
         _loc13_.x = 3;
         _loc12_.width = _loc10_ + 10 + 15;
         _loc12_.height = _loc11_ + 15 + 15;
         var _loc14_:Number = 0;
         var _loc15_:Number = 0;
         switch(param2)
         {
            case 1:
               _loc12_.x = _loc6_ + _loc8_;
               _loc12_.y = _loc7_ + _loc9_ / 2;
               _loc13_.x = 20;
               _loc13_.y = 20;
               _loc14_ = 15;
               _loc15_ = 15;
               _loc16_ = [15,0,25];
               _loc17_ = [15,0,15];
               break;
            case 2:
               _loc12_.x = _loc6_ - _loc12_.width;
               _loc12_.y = _loc7_ + _loc9_ / 2;
               _loc13_.x = 0;
               _loc13_.y = 20;
               _loc14_ = 0;
               _loc15_ = 15;
               _loc16_ = [_loc12_.width - 15,_loc12_.width,_loc12_.width - 25];
               _loc17_ = [15,0,15];
               break;
            case 3:
               _loc12_.x = _loc6_ + _loc8_;
               _loc12_.y = _loc7_ + _loc9_ / 2 - _loc12_.height;
               _loc13_.x = 20;
               _loc13_.y = 5;
               _loc14_ = 15;
               _loc15_ = 0;
               _loc16_ = [15,0,25];
               _loc17_ = [_loc12_.height - 15,_loc12_.height,_loc12_.height - 15];
               break;
            case 4:
               _loc12_.x = _loc6_ - _loc12_.width;
               _loc12_.y = _loc7_ + _loc9_ / 2 - _loc12_.height;
               _loc13_.x = 5;
               _loc13_.y = 5;
               _loc14_ = 0;
               _loc15_ = 0;
               _loc16_ = [_loc12_.width - 15,_loc12_.width,_loc12_.width - 25];
               _loc17_ = [_loc12_.height - 15,_loc12_.height,_loc12_.height - 15];
         }
         _loc12_.graphics.lineStyle(4,16762435);
         _loc12_.graphics.drawRoundRect(_loc14_,_loc15_,_loc12_.width - 15,_loc12_.height - 15,7);
         _loc12_.graphics.moveTo(_loc16_[0],_loc17_[0]);
         _loc12_.graphics.beginFill(16762435);
         _loc12_.graphics.lineTo(_loc16_[1],_loc17_[1]);
         _loc12_.graphics.lineTo(_loc16_[2],_loc17_[2]);
         _loc12_.graphics.endFill();
         _loc12_.addChild(_loc13_);
         addChild(_loc12_);
         _drawToolTipManager[param1.id] = _loc12_;
      }
   }
}

