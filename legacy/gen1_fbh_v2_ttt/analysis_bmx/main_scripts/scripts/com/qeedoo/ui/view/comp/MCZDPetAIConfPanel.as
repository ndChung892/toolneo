package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compDragable.MCZDPetFightConf;
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
   import mx.containers.Tile;
   import mx.controls.Alert;
   import mx.controls.ComboBox;
   import mx.controls.RadioButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DropdownEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MCZDPetAIConfPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _207100162confSlot22:AISkillSlot;
      
      private var _207100135confSlot16:AISkillSlot;
      
      private var _824603340confSlot6:AISkillSlot;
      
      private var _3066321cvs1:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _timer:Timer;
      
      private var _114718tg1:RadioButton;
      
      private var _207100130confSlot11:AISkillSlot;
      
      private var _pet:Object;
      
      private var _skCompList:Object = {};
      
      private var _207100138confSlot19:AISkillSlot;
      
      private var _selectedSkill:ItemSlot;
      
      private var _824603338confSlot8:AISkillSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _824603342confSlot4:AISkillSlot;
      
      private var _3645t1:Tile;
      
      public var _MCZDPetAIConfPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3618s5:AISkillComp;
      
      public var confPos:int = 0;
      
      private var _207100160confSlot20:AISkillSlot;
      
      public var _MCZDPetAIConfPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _MCZDPetAIConfPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _MCZDPetAIConfPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _MCZDPetAIConfPanel_BasicTxtButton4:BasicTxtButton;
      
      public var petId:Number = 0;
      
      private var _3557102tgId:ComboBox;
      
      private var _207100133confSlot14:AISkillSlot;
      
      private var _114719tg2:RadioButton;
      
      private var _824603344confSlot2:AISkillSlot;
      
      private var _3617s4:AISkillComp;
      
      private var _confSlotList:Array = [];
      
      private var _114720tg3:RadioButton;
      
      private var _207100163confSlot23:AISkillSlot;
      
      private var _207100136confSlot17:AISkillSlot;
      
      private var _824603346confSlot0:AISkillSlot;
      
      private var _3616s3:AISkillComp;
      
      private var _skillList:Array;
      
      private var _selectedSlot:AISkillComp;
      
      private var _207100131confSlot12:AISkillSlot;
      
      private var _114721tg4:RadioButton;
      
      private var _3615s2:AISkillComp;
      
      private var _3066323cvs3:Canvas;
      
      private var _207100161confSlot21:AISkillSlot;
      
      private var _824603337confSlot9:AISkillSlot;
      
      private var _207100134confSlot15:AISkillSlot;
      
      private var _824603341confSlot5:AISkillSlot;
      
      private var _3614s1:AISkillComp;
      
      mx_internal var _watchers:Array = [];
      
      private var _824603339confSlot7:AISkillSlot;
      
      private var _824603343confSlot3:AISkillSlot;
      
      private var _114722tg5:RadioButton;
      
      private var _207100137confSlot18:AISkillSlot;
      
      private var _encapsulatedConfData:Object;
      
      private var _3613s0:AISkillComp;
      
      private var _207100129confSlot10:AISkillSlot;
      
      private var _3587ps:PageSelector;
      
      private var _parent:MCZDPetConfigCanvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3066322cvs2:Canvas;
      
      private var _824603345confSlot1:AISkillSlot;
      
      private var _207100132confSlot13:AISkillSlot;
      
      private var _clearFlag:Boolean = false;
      
      private const defaultSkills:Array = [1000,1001];
      
      public var _MCZDPetAIConfPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _MCZDPetAIConfPanel_BasicGlowButton2:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":420,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MCZDPetAIConfPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cvs1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":40,
                        "width":160,
                        "height":350,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_MCZDPetAIConfPanel_BasicTxtButton1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":3};
                           }
                        }),new UIComponentDescriptor({
                           "type":AISkillComp,
                           "id":"s0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":27
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":AISkillComp,
                           "id":"s1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":74
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":AISkillComp,
                           "id":"s2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":121
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":AISkillComp,
                           "id":"s3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":168
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":AISkillComp,
                           "id":"s4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":215
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":AISkillComp,
                           "id":"s5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":262
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"ps",
                           "events":{"creationComplete":"__ps_creationComplete"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":315};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cvs2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "x":170,
                        "y":39,
                        "width":240,
                        "height":140,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_MCZDPetAIConfPanel_BasicTxtButton2",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":5};
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"tg1",
                           "events":{"change":"__tg1_change"},
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "selected":true,
                                 "x":15,
                                 "y":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"tg2",
                           "events":{"change":"__tg2_change"},
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "x":15,
                                 "y":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"tg3",
                           "events":{"change":"__tg3_change"},
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "x":15,
                                 "y":70
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"tg4",
                           "events":{"change":"__tg4_change"},
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "x":15,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"tg5",
                           "events":{"change":"__tg5_change"},
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "x":15,
                                 "y":110,
                                 "width":220
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ComboBox,
                           "id":"tgId",
                           "events":{"close":"__tgId_close"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "x":98,
                                 "y":110,
                                 "width":50,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cvs3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "x":170,
                        "y":185,
                        "width":240,
                        "height":205,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_MCZDPetAIConfPanel_BasicTxtButton3",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":5};
                           }
                        }),new UIComponentDescriptor({
                           "type":Tile,
                           "id":"t1",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 3;
                              this.verticalGap = 3;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":28,
                                 "width":225,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot0",
                                    "events":{"click":"__confSlot0_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"1"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot1",
                                    "events":{"click":"__confSlot1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"2"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot2",
                                    "events":{"click":"__confSlot2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"3"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot3",
                                    "events":{"click":"__confSlot3_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"4"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot4",
                                    "events":{"click":"__confSlot4_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"5"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot5",
                                    "events":{"click":"__confSlot5_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"6"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot6",
                                    "events":{"click":"__confSlot6_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"7"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot7",
                                    "events":{"click":"__confSlot7_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"8"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot8",
                                    "events":{"click":"__confSlot8_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"9"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot9",
                                    "events":{"click":"__confSlot9_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"10"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot10",
                                    "events":{"click":"__confSlot10_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"11"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot11",
                                    "events":{"click":"__confSlot11_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"12"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot12",
                                    "events":{"click":"__confSlot12_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"13"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot13",
                                    "events":{"click":"__confSlot13_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"14"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot14",
                                    "events":{"click":"__confSlot14_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"15"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot15",
                                    "events":{"click":"__confSlot15_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"16"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot16",
                                    "events":{"click":"__confSlot16_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"17"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot17",
                                    "events":{"click":"__confSlot17_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"18"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot18",
                                    "events":{"click":"__confSlot18_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"19"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot19",
                                    "events":{"click":"__confSlot19_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"20"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot20",
                                    "events":{"click":"__confSlot20_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"21"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot21",
                                    "events":{"click":"__confSlot21_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"22"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot22",
                                    "events":{"click":"__confSlot22_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"23"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":AISkillSlot,
                                    "id":"confSlot23",
                                    "events":{"click":"__confSlot23_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "frontLabel":"24"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_MCZDPetAIConfPanel_BasicTxtButton4",
                           "stylesFactory":function():void
                           {
                              this.bottom = "3";
                              this.left = "5";
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_MCZDPetAIConfPanel_BasicGlowButton1",
                           "events":{"click":"___MCZDPetAIConfPanel_BasicGlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "20";
                              this.bottom = "3";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_MCZDPetAIConfPanel_BasicGlowButton2",
                           "events":{"click":"___MCZDPetAIConfPanel_BasicGlowButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "60";
                              this.bottom = "3";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":40
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _skillTargetTemp:Object = {};
      
      public function MCZDPetAIConfPanel()
      {
         _skillList = defaultSkills.concat();
         super();
         mx_internal::_document = this;
         this.width = 420;
         this.height = 400;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___MCZDPetAIConfPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MCZDPetAIConfPanel._watcherSetupUtil = param1;
      }
      
      public function set confSlot20(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100160confSlot20;
         if(_loc2_ !== param1)
         {
            this._207100160confSlot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot20",_loc2_,param1));
         }
      }
      
      private function onSkillListRollOut(param1:MouseEvent) : void
      {
         var _loc2_:AISkillComp = AISkillComp(param1.currentTarget);
         if(_loc2_ == _selectedSlot)
         {
            _loc2_.filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
         }
      }
      
      public function set confSlot21(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100161confSlot21;
         if(_loc2_ !== param1)
         {
            this._207100161confSlot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot21",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ps() : PageSelector
      {
         return this._3587ps;
      }
      
      public function set confSlot22(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100162confSlot22;
         if(_loc2_ !== param1)
         {
            this._207100162confSlot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot22",_loc2_,param1));
         }
      }
      
      public function set confSlot23(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100163confSlot23;
         if(_loc2_ !== param1)
         {
            this._207100163confSlot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot23",_loc2_,param1));
         }
      }
      
      private function _MCZDPetAIConfPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetAIConfPanel_BasicTitleCanvas1.text = param1;
         },"_MCZDPetAIConfPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetAIConfPanel_BasicTxtButton1.label = param1;
         },"_MCZDPetAIConfPanel_BasicTxtButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetAIConfPanel_BasicTxtButton2.text = param1;
         },"_MCZDPetAIConfPanel_BasicTxtButton2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg1.label = param1;
         },"tg1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg1.toolTip = param1;
         },"tg1.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg2.label = param1;
         },"tg2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg2.toolTip = param1;
         },"tg2.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg3.label = param1;
         },"tg3.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg3.toolTip = param1;
         },"tg3.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg4.label = param1;
         },"tg4.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg4.toolTip = param1;
         },"tg4.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg5.label = param1;
         },"tg5.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[15].replace("{num}",(tgId.selectedIndex + 1).toString());
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tg5.toolTip = param1;
         },"tg5.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return [1,2,3,4,5,6,7,8,9,10];
         },function(param1:Object):void
         {
            tgId.dataProvider = param1;
         },"tgId.dataProvider");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return tg5.selected;
         },function(param1:Boolean):void
         {
            tgId.enabled = param1;
         },"tgId.enabled");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetAIConfPanel_BasicTxtButton3.text = param1;
         },"_MCZDPetAIConfPanel_BasicTxtButton3.text");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot0.slotType = param1;
         },"confSlot0.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot1.slotType = param1;
         },"confSlot1.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot2.slotType = param1;
         },"confSlot2.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot3.slotType = param1;
         },"confSlot3.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot4.slotType = param1;
         },"confSlot4.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot5.slotType = param1;
         },"confSlot5.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot6.slotType = param1;
         },"confSlot6.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot7.slotType = param1;
         },"confSlot7.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot8.slotType = param1;
         },"confSlot8.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot9.slotType = param1;
         },"confSlot9.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot10.slotType = param1;
         },"confSlot10.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot11.slotType = param1;
         },"confSlot11.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot12.slotType = param1;
         },"confSlot12.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot13.slotType = param1;
         },"confSlot13.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot14.slotType = param1;
         },"confSlot14.slotType");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot15.slotType = param1;
         },"confSlot15.slotType");
         result[31] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot16.slotType = param1;
         },"confSlot16.slotType");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot17.slotType = param1;
         },"confSlot17.slotType");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot18.slotType = param1;
         },"confSlot18.slotType");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot19.slotType = param1;
         },"confSlot19.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot20.slotType = param1;
         },"confSlot20.slotType");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot21.slotType = param1;
         },"confSlot21.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot22.slotType = param1;
         },"confSlot22.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            confSlot23.slotType = param1;
         },"confSlot23.slotType");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetAIConfPanel_BasicTxtButton4.text = param1;
         },"_MCZDPetAIConfPanel_BasicTxtButton4.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetAIConfPanel_BasicGlowButton1.label = param1;
         },"_MCZDPetAIConfPanel_BasicGlowButton1.label");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AI_CONF_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetAIConfPanel_BasicGlowButton2.label = param1;
         },"_MCZDPetAIConfPanel_BasicGlowButton2.label");
         result[42] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get cvs3() : Canvas
      {
         return this._3066323cvs3;
      }
      
      public function set ps(param1:PageSelector) : void
      {
         var _loc2_:Object = this._3587ps;
         if(_loc2_ !== param1)
         {
            this._3587ps = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ps",_loc2_,param1));
         }
      }
      
      public function __confSlot16_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function __ps_creationComplete(param1:FlexEvent) : void
      {
         initPs();
      }
      
      public function ___MCZDPetAIConfPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         savePetConf();
      }
      
      [Bindable(event="propertyChange")]
      public function get s0() : AISkillComp
      {
         return this._3613s0;
      }
      
      public function __confSlot7_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s2() : AISkillComp
      {
         return this._3615s2;
      }
      
      [Bindable(event="propertyChange")]
      public function get s4() : AISkillComp
      {
         return this._3617s4;
      }
      
      [Bindable(event="propertyChange")]
      public function get s5() : AISkillComp
      {
         return this._3618s5;
      }
      
      [Bindable(event="propertyChange")]
      public function get s1() : AISkillComp
      {
         return this._3614s1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tg2() : RadioButton
      {
         return this._114719tg2;
      }
      
      [Bindable(event="propertyChange")]
      public function get s3() : AISkillComp
      {
         return this._3616s3;
      }
      
      [Bindable(event="propertyChange")]
      public function get tg4() : RadioButton
      {
         return this._114721tg4;
      }
      
      [Bindable(event="propertyChange")]
      public function get tg5() : RadioButton
      {
         return this._114722tg5;
      }
      
      [Bindable(event="propertyChange")]
      public function get tg1() : RadioButton
      {
         return this._114718tg1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tg3() : RadioButton
      {
         return this._114720tg3;
      }
      
      private function drawGuideFrame() : void
      {
         if(Boolean(_timer) && _timer.running)
         {
            _timer.stop();
            _timer = null;
         }
         _timer = new Timer(500,0);
         _timer.addEventListener(TimerEvent.TIMER,handleDrawTimer);
         _timer.start();
      }
      
      public function set s0(param1:AISkillComp) : void
      {
         var _loc2_:Object = this._3613s0;
         if(_loc2_ !== param1)
         {
            this._3613s0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s0",_loc2_,param1));
         }
      }
      
      public function set s1(param1:AISkillComp) : void
      {
         var _loc2_:Object = this._3614s1;
         if(_loc2_ !== param1)
         {
            this._3614s1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t1() : Tile
      {
         return this._3645t1;
      }
      
      public function set s2(param1:AISkillComp) : void
      {
         var _loc2_:Object = this._3615s2;
         if(_loc2_ !== param1)
         {
            this._3615s2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s2",_loc2_,param1));
         }
      }
      
      public function set s3(param1:AISkillComp) : void
      {
         var _loc2_:Object = this._3616s3;
         if(_loc2_ !== param1)
         {
            this._3616s3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s3",_loc2_,param1));
         }
      }
      
      public function set s4(param1:AISkillComp) : void
      {
         var _loc2_:Object = this._3617s4;
         if(_loc2_ !== param1)
         {
            this._3617s4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s4",_loc2_,param1));
         }
      }
      
      public function set s5(param1:AISkillComp) : void
      {
         var _loc2_:Object = this._3618s5;
         if(_loc2_ !== param1)
         {
            this._3618s5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s5",_loc2_,param1));
         }
      }
      
      public function set tg2(param1:RadioButton) : void
      {
         var _loc2_:Object = this._114719tg2;
         if(_loc2_ !== param1)
         {
            this._114719tg2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tg2",_loc2_,param1));
         }
      }
      
      public function set tg4(param1:RadioButton) : void
      {
         var _loc2_:Object = this._114721tg4;
         if(_loc2_ !== param1)
         {
            this._114721tg4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tg4",_loc2_,param1));
         }
      }
      
      public function set tg1(param1:RadioButton) : void
      {
         var _loc2_:Object = this._114718tg1;
         if(_loc2_ !== param1)
         {
            this._114718tg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tg1",_loc2_,param1));
         }
      }
      
      public function set tg3(param1:RadioButton) : void
      {
         var _loc2_:Object = this._114720tg3;
         if(_loc2_ !== param1)
         {
            this._114720tg3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tg3",_loc2_,param1));
         }
      }
      
      public function set tg5(param1:RadioButton) : void
      {
         var _loc2_:Object = this._114722tg5;
         if(_loc2_ !== param1)
         {
            this._114722tg5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tg5",_loc2_,param1));
         }
      }
      
      public function __tg5_change(param1:Event) : void
      {
         setTarget(param1);
      }
      
      public function __confSlot4_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function __confSlot13_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function set confSlot1(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603345confSlot1;
         if(_loc2_ !== param1)
         {
            this._824603345confSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot1",_loc2_,param1));
         }
      }
      
      public function set confSlot3(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603343confSlot3;
         if(_loc2_ !== param1)
         {
            this._824603343confSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot3",_loc2_,param1));
         }
      }
      
      public function set confSlot0(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603346confSlot0;
         if(_loc2_ !== param1)
         {
            this._824603346confSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot0",_loc2_,param1));
         }
      }
      
      public function set confSlot5(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603341confSlot5;
         if(_loc2_ !== param1)
         {
            this._824603341confSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot5",_loc2_,param1));
         }
      }
      
      public function set confSlot2(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603344confSlot2;
         if(_loc2_ !== param1)
         {
            this._824603344confSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot2",_loc2_,param1));
         }
      }
      
      public function set confSlot6(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603340confSlot6;
         if(_loc2_ !== param1)
         {
            this._824603340confSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot6",_loc2_,param1));
         }
      }
      
      public function set confSlot7(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603339confSlot7;
         if(_loc2_ !== param1)
         {
            this._824603339confSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot7",_loc2_,param1));
         }
      }
      
      public function set confSlot4(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603342confSlot4;
         if(_loc2_ !== param1)
         {
            this._824603342confSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot4",_loc2_,param1));
         }
      }
      
      public function set confSlot8(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603338confSlot8;
         if(_loc2_ !== param1)
         {
            this._824603338confSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot8",_loc2_,param1));
         }
      }
      
      public function set confSlot9(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._824603337confSlot9;
         if(_loc2_ !== param1)
         {
            this._824603337confSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot9",_loc2_,param1));
         }
      }
      
      public function set t1(param1:Tile) : void
      {
         var _loc2_:Object = this._3645t1;
         if(_loc2_ !== param1)
         {
            this._3645t1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1",_loc2_,param1));
         }
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 6)
         {
            this["s" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      public function __tg3_change(param1:Event) : void
      {
         setTarget(param1);
      }
      
      public function __confSlot10_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      private function clearView() : void
      {
         if(!initialized)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < 24)
         {
            this["confSlot" + _loc1_].clean();
            _loc1_++;
         }
         var _loc2_:int = 0;
         while(_loc2_ < 6)
         {
            this["s" + _loc2_].clean();
            _loc2_++;
         }
         _skillTargetTemp = [];
         if(_selectedSlot)
         {
            _selectedSlot.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
         }
      }
      
      private function setTarget(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:String = param1.currentTarget.id.slice(2);
         if(Boolean(_selectedSlot) && _selectedSlot.giid > 0)
         {
            if(_loc2_ == "Id")
            {
               _skillTargetTemp[_selectedSlot.giid] = "5" + tgId.selectedIndex.toString();
            }
            else
            {
               _skillTargetTemp[_selectedSlot.giid] = _loc2_;
               if(Number(_loc2_) == 5)
               {
                  _loc3_ = tgId.selectedIndex;
                  _skillTargetTemp[_selectedSlot.giid] += _loc3_.toString();
               }
               _selectedSlot.tarType = Language.AI_CONF_PANEL_U[20] + Language.AI_CONF_PANEL_U[36];
            }
         }
      }
      
      public function __confSlot9_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function __confSlot18_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      private function savePetConf() : void
      {
         var _loc5_:ItemSlot = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc1_:MCZDPetFightConf = MCZDPetFightConf(_core.view.getUI(ViewManager.PANEL_MCZD_PETFIGHT_CONF));
         _encapsulatedConfData = {
            "pid":-1,
            "pos":-1,
            "cmdList":[]
         };
         _encapsulatedConfData.pid = petId;
         _encapsulatedConfData.pos = confPos;
         var _loc2_:Number = 24;
         var _loc3_:Array = [];
         var _loc4_:* = int(_loc2_ - 1);
         while(_loc4_ >= 0)
         {
            _loc5_ = this["confSlot" + _loc4_];
            if(_loc5_)
            {
               if(_loc5_.giid >= 0)
               {
                  _loc6_ = {
                     "action":GamePredef.BATTLE_ACTION_ATTACK,
                     "level":-1,
                     "id":1000,
                     "t":1
                  };
                  if(_loc5_.type == GamePredef.TBL_SKILL)
                  {
                     _loc7_ = _core.data.gameData[GamePredef.TBL_SKILL][_loc5_.giid];
                     if(_loc7_)
                     {
                        _loc6_.action = GamePredef.BATTLE_ACTION_SKILL;
                        _loc6_.level = _loc7_.level;
                        _loc6_.id = _loc7_.id;
                        if(_skillTargetTemp[_loc7_.id])
                        {
                           _loc6_.t = _skillTargetTemp[_loc7_.id];
                        }
                     }
                  }
                  _loc3_[_loc4_] = _loc6_;
               }
            }
            _loc4_--;
         }
         _encapsulatedConfData.cmdList = _loc3_;
         _loc1_.saveConfData(_encapsulatedConfData);
         _parent.conf = _encapsulatedConfData;
         this.hide();
      }
      
      public function __confSlot1_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function __confSlot21_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      private function showAIHelp() : void
      {
         var _loc1_:Alert = Alert.show(Language.AI_CONF_PANEL_U[7]);
      }
      
      public function __confSlot15_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function __tg1_change(param1:Event) : void
      {
         setTarget(param1);
      }
      
      public function __confSlot6_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot11() : AISkillSlot
      {
         return this._207100130confSlot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot12() : AISkillSlot
      {
         return this._207100131confSlot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot13() : AISkillSlot
      {
         return this._207100132confSlot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot15() : AISkillSlot
      {
         return this._207100134confSlot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot16() : AISkillSlot
      {
         return this._207100135confSlot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot10() : AISkillSlot
      {
         return this._207100129confSlot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot18() : AISkillSlot
      {
         return this._207100137confSlot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot19() : AISkillSlot
      {
         return this._207100138confSlot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot14() : AISkillSlot
      {
         return this._207100133confSlot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot17() : AISkillSlot
      {
         return this._207100136confSlot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get tgId() : ComboBox
      {
         return this._3557102tgId;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot21() : AISkillSlot
      {
         return this._207100161confSlot21;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot22() : AISkillSlot
      {
         return this._207100162confSlot22;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot23() : AISkillSlot
      {
         return this._207100163confSlot23;
      }
      
      public function __confSlot12_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function showPanel(param1:int, param2:Number, param3:MCZDPetConfigCanvas, param4:Object = null) : void
      {
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc10_:Array = null;
         var _loc11_:int = 0;
         var _loc12_:Object = null;
         var _loc13_:ItemSlot = null;
         if(petId != param2)
         {
            clearView();
         }
         confPos = param1;
         petId = param2;
         _parent = param3;
         _skillList = defaultSkills.concat();
         if(!(Boolean(_pet) && _pet.id == param2))
         {
            for each(_loc5_ in _core.player.petList)
            {
               if(_loc5_.id == param2)
               {
                  _pet = _loc5_;
                  break;
               }
            }
         }
         if(_pet)
         {
            _loc6_ = 1;
            while(_loc6_ <= 15)
            {
               if(_pet["skill" + _loc6_] > 0)
               {
                  _loc7_ = _core.data.gameData[GamePredef.TBL_SKILL][_pet["skill" + _loc6_]];
                  if((Boolean(_loc7_)) && _loc7_.kind == 1)
                  {
                     _skillList.push(_loc7_.id);
                  }
               }
               _loc6_++;
            }
         }
         if(param4)
         {
            _loc8_ = new Array();
            for each(_loc9_ in param4.cmdList)
            {
               _loc8_.push(_loc9_);
            }
            _loc10_ = _loc8_;
            _loc11_ = 0;
            while(_loc11_ < _loc10_.length)
            {
               _loc12_ = _loc10_[_loc11_];
               _loc13_ = this["confSlot" + _loc11_];
               if(_loc12_)
               {
                  if(_loc12_.action == GamePredef.BATTLE_ACTION_SKILL)
                  {
                     _loc13_.type = GamePredef.TBL_SKILL;
                     _loc13_.giid = _loc12_.id;
                  }
                  else if(_loc12_.action == GamePredef.BATTLE_ACTION_ATTACK)
                  {
                     _loc13_.type = GamePredef.TBL_SKILL;
                     _loc13_.giid = 1000;
                  }
                  else if(_loc12_.action == GamePredef.BATTLE_ACTION_DEFENCE)
                  {
                     _loc13_.type = GamePredef.TBL_SKILL;
                     _loc13_.giid = 1001;
                  }
                  _skillTargetTemp[_loc12_.id] = _loc12_.t;
               }
               _loc11_++;
            }
         }
         ps.onPageChanged = onPageChanged;
         ps.onPageCleared = clearPage;
         ps.initPageSeletor(_skillList.length,6);
         super.show();
         if(_selectedSlot != s0)
         {
            s0.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
         }
      }
      
      private function _MCZDPetAIConfPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PETFIGHT_PANEL_U[1];
         _loc1_ = Language.AI_CONF_PANEL_U[0];
         _loc1_ = Language.AI_CONF_PANEL_U[10];
         _loc1_ = Language.AI_CONF_PANEL_U[36];
         _loc1_ = Language.AI_CONF_PANEL_U[35];
         _loc1_ = Language.AI_CONF_PANEL_U[22];
         _loc1_ = Language.AI_CONF_PANEL_U[12];
         _loc1_ = Language.AI_CONF_PANEL_U[23];
         _loc1_ = Language.AI_CONF_PANEL_U[13];
         _loc1_ = Language.AI_CONF_PANEL_U[24];
         _loc1_ = Language.AI_CONF_PANEL_U[14];
         _loc1_ = Language.AI_CONF_PANEL_U[25];
         _loc1_ = Language.AI_CONF_PANEL_U[15].replace("{num}",(tgId.selectedIndex + 1).toString());
         _loc1_ = [1,2,3,4,5,6,7,8,9,10];
         _loc1_ = tg5.selected;
         _loc1_ = Language.AI_CONF_PANEL_U[6];
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Slot.SLOT_PET_AI;
         _loc1_ = Language.AI_CONF_PANEL_U[21];
         _loc1_ = Language.AI_CONF_PANEL_U[9];
         _loc1_ = Language.AI_CONF_PANEL_U[8];
      }
      
      private function handleDrawTimer(param1:TimerEvent) : void
      {
         if(!_clearFlag)
         {
            cvs2.graphics.lineStyle(2,16711680);
            cvs2.graphics.drawRoundRect(10,32,200,100,5);
         }
         else
         {
            cvs2.graphics.clear();
         }
         _clearFlag = !_clearFlag;
      }
      
      public function __confSlot3_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 6)
         {
            this["s" + _loc1_].addEventListener(MouseEvent.CLICK,onSkillListClick,false,0,true);
            this["s" + _loc1_].addEventListener(MouseEvent.ROLL_OUT,onSkillListRollOut,false,0,true);
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot20() : AISkillSlot
      {
         return this._207100160confSlot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot1() : AISkillSlot
      {
         return this._824603345confSlot1;
      }
      
      private function clearDraw() : void
      {
         cvs2.graphics.clear();
         if(Boolean(_timer) && _timer.running)
         {
            _timer.stop();
            _timer.removeEventListener(TimerEvent.TIMER,handleDrawTimer);
            _timer = null;
         }
      }
      
      public function __confSlot23_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot0() : AISkillSlot
      {
         return this._824603346confSlot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot8() : AISkillSlot
      {
         return this._824603338confSlot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot2() : AISkillSlot
      {
         return this._824603344confSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot3() : AISkillSlot
      {
         return this._824603343confSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot4() : AISkillSlot
      {
         return this._824603342confSlot4;
      }
      
      override public function hide() : void
      {
         visible = false;
         var _loc1_:Event = new Event(DragableCanvas.EVENT_CLOSE);
         dispatchEvent(_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot6() : AISkillSlot
      {
         return this._824603340confSlot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot9() : AISkillSlot
      {
         return this._824603337confSlot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot7() : AISkillSlot
      {
         return this._824603339confSlot7;
      }
      
      public function __confSlot17_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      private function initPs() : void
      {
         ps.lastBtnLabel = "";
         ps.nextBtnLabel = "";
         ps.btnLastPage.width = 13;
         ps.btnNextPage.width = 13;
         ps.setLastBtnStyle("fazendaPageLast");
         ps.setNextBtnStyle("fazendaPageNext");
      }
      
      public function __confSlot0_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function ___MCZDPetAIConfPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         showAIHelp();
      }
      
      public function __tgId_close(param1:DropdownEvent) : void
      {
         setTarget(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get confSlot5() : AISkillSlot
      {
         return this._824603341confSlot5;
      }
      
      public function __confSlot8_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function __confSlot20_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function __tg4_change(param1:Event) : void
      {
         setTarget(param1);
      }
      
      public function ___MCZDPetAIConfPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __confSlot14_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MCZDPetAIConfPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MCZDPetAIConfPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MCZDPetAIConfPanelWatcherSetupUtil");
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
      
      public function __confSlot5_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function set cvs1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3066321cvs1;
         if(_loc2_ !== param1)
         {
            this._3066321cvs1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvs1",_loc2_,param1));
         }
      }
      
      public function set cvs2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3066322cvs2;
         if(_loc2_ !== param1)
         {
            this._3066322cvs2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvs2",_loc2_,param1));
         }
      }
      
      public function set cvs3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3066323cvs3;
         if(_loc2_ !== param1)
         {
            this._3066323cvs3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvs3",_loc2_,param1));
         }
      }
      
      private function putSlot(param1:Event) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.giid > 0)
         {
            _loc2_.clean();
            return;
         }
         if(_selectedSlot)
         {
            if(Boolean(_loc2_) && _loc2_.giid < 0)
            {
               _loc2_.type = GamePredef.TBL_SKILL;
               _loc2_.giid = _selectedSlot.giid;
            }
         }
      }
      
      public function __tg2_change(param1:Event) : void
      {
         setTarget(param1);
      }
      
      public function set confSlot11(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100130confSlot11;
         if(_loc2_ !== param1)
         {
            this._207100130confSlot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot11",_loc2_,param1));
         }
      }
      
      public function set confSlot12(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100131confSlot12;
         if(_loc2_ !== param1)
         {
            this._207100131confSlot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot12",_loc2_,param1));
         }
      }
      
      public function set confSlot13(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100132confSlot13;
         if(_loc2_ !== param1)
         {
            this._207100132confSlot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot13",_loc2_,param1));
         }
      }
      
      public function __confSlot11_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function set confSlot16(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100135confSlot16;
         if(_loc2_ !== param1)
         {
            this._207100135confSlot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot16",_loc2_,param1));
         }
      }
      
      public function set confSlot10(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100129confSlot10;
         if(_loc2_ !== param1)
         {
            this._207100129confSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot10",_loc2_,param1));
         }
      }
      
      public function set confSlot18(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100137confSlot18;
         if(_loc2_ !== param1)
         {
            this._207100137confSlot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot18",_loc2_,param1));
         }
      }
      
      public function __confSlot19_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function set confSlot19(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100138confSlot19;
         if(_loc2_ !== param1)
         {
            this._207100138confSlot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot19",_loc2_,param1));
         }
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            _loc5_ = _core.data.getData(GamePredef.TBL_SKILL,_skillList[_loc3_]);
            _loc6_ = int(_skillTargetTemp[_loc5_.id]);
            if(!_loc6_)
            {
               _loc6_ = 1;
            }
            if(_loc6_ >= 50)
            {
               _loc6_ = 5;
            }
            this["s" + _loc4_].sk = _skillList[_loc3_];
            this["s" + _loc4_].nm = _loc5_.name;
            this["s" + _loc4_].tarType = Language.AI_CONF_PANEL_U[20] + Language.AI_CONF_PANEL_U[36];
            _loc4_++;
         }
      }
      
      public function set confSlot17(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100136confSlot17;
         if(_loc2_ !== param1)
         {
            this._207100136confSlot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot17",_loc2_,param1));
         }
      }
      
      public function set confSlot15(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100134confSlot15;
         if(_loc2_ !== param1)
         {
            this._207100134confSlot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot15",_loc2_,param1));
         }
      }
      
      public function set tgId(param1:ComboBox) : void
      {
         var _loc2_:Object = this._3557102tgId;
         if(_loc2_ !== param1)
         {
            this._3557102tgId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tgId",_loc2_,param1));
         }
      }
      
      public function __confSlot2_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
      
      public function set confSlot14(param1:AISkillSlot) : void
      {
         var _loc2_:Object = this._207100133confSlot14;
         if(_loc2_ !== param1)
         {
            this._207100133confSlot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confSlot14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cvs1() : Canvas
      {
         return this._3066321cvs1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cvs2() : Canvas
      {
         return this._3066322cvs2;
      }
      
      private function clearSlot(param1:Event) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(Boolean(_loc2_) && _loc2_.giid > 0)
         {
            _loc2_.clean();
         }
      }
      
      private function onSkillListClick(param1:MouseEvent) : void
      {
         var _loc2_:AISkillComp = AISkillComp(param1.currentTarget);
         if(_loc2_)
         {
            if(_selectedSlot == _loc2_)
            {
               return;
            }
            if(_selectedSlot)
            {
               _selectedSlot.filters = [];
            }
            _selectedSlot = _loc2_;
            _selectedSlot.filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
            if(_selectedSlot == s1)
            {
               tg1.enabled = false;
               tg2.enabled = false;
               tg3.enabled = false;
               tg4.enabled = false;
               tg5.enabled = false;
               tgId.enabled = false;
            }
            else
            {
               tg1.enabled = true;
               tg2.enabled = true;
               tg3.enabled = true;
               tg4.enabled = true;
               tg5.enabled = true;
               tgId.enabled = true;
            }
            if(_skillTargetTemp[_loc2_.giid])
            {
               if(_skillTargetTemp[_loc2_.giid] >= 50)
               {
                  tgId.selectedIndex = _skillTargetTemp[_loc2_.giid] - 50;
                  tg5.selected = true;
               }
               else
               {
                  this["tg" + _skillTargetTemp[_loc2_.giid]].selected = true;
               }
            }
            else
            {
               this.tg1.selected = true;
            }
         }
      }
      
      public function __confSlot22_click(param1:MouseEvent) : void
      {
         putSlot(param1);
      }
   }
}

