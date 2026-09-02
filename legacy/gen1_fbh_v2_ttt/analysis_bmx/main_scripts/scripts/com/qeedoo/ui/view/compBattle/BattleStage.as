package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Creature;
   import com.qeedoo.game.object.Pet;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.AreaUtil;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.Localizer;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.comp.SpeakText;
   import com.qeedoo.ui.view.compGameStage.BattleCreatureView;
   import com.qeedoo.ui.view.compGameStage.CreatureView;
   import com.qeedoo.ui.view.compGameStage.DynamicItemContainer;
   import com.qeedoo.ui.view.compGameStage.StageMain;
   import com.qeedoo.ui.view.compMain.ChatCanvas;
   import com.qeedoo.ui.view.compMain.UserBarCanvas;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Fade;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BattleStage extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const _RELIVE_NORMAL:* = 1;
      
      private static const _RELIVE_FREE:* = 2;
      
      private static const _RELIVE_WB:* = 3;
      
      private static const _RELIVE_TEXT_ENUM:Object = [];
      
      _RELIVE_TEXT_ENUM[_RELIVE_NORMAL] = Language.BATTLESTAGE_S[1];
      _RELIVE_TEXT_ENUM[_RELIVE_FREE] = Language.BATTLESTAGE_S[11];
      _RELIVE_TEXT_ENUM[_RELIVE_WB] = Language.BATTLESTAGE_S[16];
      
      private var _1282133823fadeIn:Fade;
      
      private var _196953076bgLayer:SimpleCanvas;
      
      private var _93647166bgImg:Image;
      
      mx_internal var _bindings:Array;
      
      private var _1387484498cLayer:DynamicItemContainer;
      
      private var _sneak:int;
      
      private var _2053587258battlePos6:Localizer;
      
      public var exp:int;
      
      private var _93510486cBuff:BuffCanvas;
      
      private var _1091436750fadeOut:Fade;
      
      private var _1306176368stageOut:Fade;
      
      private var _593980680localizerContainer:Canvas;
      
      private var _2053587261battlePos9:Localizer;
      
      private var _1089356982magicCircleImg0:Image;
      
      private var _2107362836battlePos110:Localizer;
      
      private var _petAlive:Boolean = true;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _2053587253battlePos1:Localizer;
      
      private var _763304541battlePos18:Localizer;
      
      private var _alert:Alert;
      
      private var _763304544battlePos15:Localizer;
      
      private var _core:Core;
      
      private var _763304547battlePos12:Localizer;
      
      private var isRoundPlayFinish:Boolean = false;
      
      private var _auto:Object;
      
      private var _2053587256battlePos4:Localizer;
      
      public var rep:int;
      
      public var isAirBattle:Boolean;
      
      private const MIN_ACTION_TIME:int = 500;
      
      private var _94035408cTime:TimeCountCanvas;
      
      private var _playerAlive:Boolean = true;
      
      private var _actionCount:int;
      
      private var _2107362805battlePos100:Localizer;
      
      private var _2053587259battlePos7:Localizer;
      
      private const END_DELAY:int = 1500;
      
      private var _posDict:Object;
      
      private var _guestBattle:Boolean;
      
      private var _2053377414battleInfo:SpeakText;
      
      private var battleInfoBtn:BasicGlowButton;
      
      private var _1217229302infoPanel:BattleInfoCanvas;
      
      private var _454794285replayCmd:Canvas;
      
      private var _763304540battlePos19:Localizer;
      
      private var _battleSeq:Array;
      
      private var _763304543battlePos16:Localizer;
      
      private var _currentAction:Object;
      
      private var _2053587254battlePos2:Localizer;
      
      private var _isReplay:Boolean = false;
      
      public var battleTargetCanvas:BattleTargetCanvas;
      
      private const START_DELAY:int = 2000;
      
      private var _763304546battlePos13:Localizer;
      
      private var _playerActive:Boolean = true;
      
      public var expBattle:int;
      
      private var timerTarget:uint = 0;
      
      private var _763304549battlePos10:Localizer;
      
      private var timer:Timer;
      
      private var _reliveFlag:int = 1;
      
      private var _playList:Array;
      
      private var _2053587257battlePos5:Localizer;
      
      private var _333275108cloudLayer:UIComponent;
      
      private var _1859910569frontEffectLayer:UIComponent;
      
      private var _545119723watchCmd:Canvas;
      
      public var boss:int;
      
      private var _1769958153skillCanvas:SkillCanvas;
      
      private var _2053587260battlePos8:Localizer;
      
      private var _1238309517cLayerContainer:SimpleCanvas;
      
      private var _dirUpper:int;
      
      public var cPlayerCmd:PlayerCmdCanvas;
      
      private var _petActive:Boolean = true;
      
      private var _2053587252battlePos0:Localizer;
      
      mx_internal var _watchers:Array;
      
      public var cList:Object;
      
      private var _1897528125stageIn:Fade;
      
      private var _checkRemote:Boolean = false;
      
      private var _763304542battlePos17:Localizer;
      
      private var _877517529backEffectLayer:UIComponent;
      
      private var _playEnd:Boolean = true;
      
      private var _1096560525resTime:int = 20;
      
      private var _763304545battlePos14:Localizer;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _2053587255battlePos3:Localizer;
      
      private var _dirLower:int;
      
      public var _BattleStage_Label1:Label;
      
      public var _BattleStage_Label2:Label;
      
      private var _watch:Boolean = false;
      
      public var cPetCmd:PetCmdCanvas;
      
      private const battleIdFromLeftToRight:Object;
      
      private var _763304548battlePos11:Localizer;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _BattleStage_BasicGlowButton1:BasicGlowButton;
      
      public var _BattleStage_BasicGlowButton2:BasicGlowButton;
      
      public function BattleStage()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":SimpleCanvas,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"bgLayer",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"bgImg",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "alpha":0.6
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"magicCircleImg0"
               }),new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"cloudLayer"
               }),new UIComponentDescriptor({
                  "type":BuffCanvas,
                  "id":"cBuff",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":5};
                  }
               }),new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"backEffectLayer"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"cLayerContainer",
                  "stylesFactory":function():void
                  {
                     this.disabledOverlayAlpha = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DynamicItemContainer,
                  "id":"cLayer",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":900,
                        "height":570
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"frontEffectLayer"
               }),new UIComponentDescriptor({
                  "type":SpeakText,
                  "id":"battleInfo",
                  "stylesFactory":function():void
                  {
                     this.left = "100";
                     this.top = "280";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":413,
                        "height":93,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"localizerContainer",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":900,
                        "height":570,
                        "visible":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos9",
                           "stylesFactory":function():void
                           {
                              this.left = "184";
                              this.top = "410";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos7",
                           "stylesFactory":function():void
                           {
                              this.left = "249";
                              this.top = "347";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos3",
                           "stylesFactory":function():void
                           {
                              this.left = "347";
                              this.top = "133.6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos1",
                           "stylesFactory":function():void
                           {
                              this.left = "282";
                              this.top = "187";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos0",
                           "stylesFactory":function():void
                           {
                              this.left = "225";
                              this.top = "245";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos2",
                           "stylesFactory":function():void
                           {
                              this.left = "168";
                              this.top = "302";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos4",
                           "stylesFactory":function():void
                           {
                              this.left = "111";
                              this.top = "359";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos8",
                           "stylesFactory":function():void
                           {
                              this.left = "431";
                              this.top = "166";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos6",
                           "stylesFactory":function():void
                           {
                              this.left = "364";
                              this.top = "225";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos5",
                           "stylesFactory":function():void
                           {
                              this.left = "306";
                              this.top = "283";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos100",
                           "stylesFactory":function():void
                           {
                              this.left = "382";
                              this.top = "332.9";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos13",
                           "stylesFactory":function():void
                           {
                              this.right = "333";
                              this.bottom = "42";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos19",
                           "stylesFactory":function():void
                           {
                              this.right = "172";
                              this.bottom = "301";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos15",
                           "stylesFactory":function():void
                           {
                              this.right = "298";
                              this.bottom = "190";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos14",
                           "stylesFactory":function():void
                           {
                              this.right = "90";
                              this.bottom = "268";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos12",
                           "stylesFactory":function():void
                           {
                              this.right = "156";
                              this.bottom = "213";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos10",
                           "stylesFactory":function():void
                           {
                              this.right = "215";
                              this.bottom = "154";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos11",
                           "stylesFactory":function():void
                           {
                              this.right = "272";
                              this.bottom = "102";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos16",
                           "stylesFactory":function():void
                           {
                              this.right = "354";
                              this.bottom = "136";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos18",
                           "stylesFactory":function():void
                           {
                              this.right = "409";
                              this.bottom = "86";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos17",
                           "stylesFactory":function():void
                           {
                              this.right = "237";
                              this.bottom = "247";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        }),new UIComponentDescriptor({
                           "type":Localizer,
                           "id":"battlePos110",
                           "stylesFactory":function():void
                           {
                              this.right = "369";
                              this.bottom = "213";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"height":10};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SkillCanvas,
                  "id":"skillCanvas",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"watchCmd",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "solid";
                     this.cornerRadius = 5;
                     this.backgroundColor = 16777215;
                     this.backgroundAlpha = 0.3;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":763,
                        "y":10,
                        "width":127,
                        "height":62,
                        "visible":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_BattleStage_Label1",
                           "stylesFactory":function():void
                           {
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
                           "type":BasicGlowButton,
                           "id":"_BattleStage_BasicGlowButton1",
                           "events":{"click":"___BattleStage_BasicGlowButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":42.2,
                                 "y":34,
                                 "styleName":"BtnNormalRed",
                                 "width":45,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"replayCmd",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "solid";
                     this.cornerRadius = 5;
                     this.backgroundColor = 16777215;
                     this.backgroundAlpha = 0.3;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":763,
                        "y":10,
                        "width":127,
                        "height":62,
                        "visible":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_BattleStage_Label2",
                           "stylesFactory":function():void
                           {
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
                           "type":BasicGlowButton,
                           "id":"_BattleStage_BasicGlowButton2",
                           "events":{"click":"___BattleStage_BasicGlowButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":42.2,
                                 "y":34,
                                 "styleName":"BtnNormalRed",
                                 "width":45,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BattleInfoCanvas,
                  "id":"infoPanel",
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               }),new UIComponentDescriptor({
                  "type":TimeCountCanvas,
                  "id":"cTime",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "15";
                     this.bottom = "318";
                  }
               })]};
            }
         });
         _core = Core.getInstance();
         _playList = [];
         timer = new Timer(1000);
         battleIdFromLeftToRight = {
            1:[{
               "c":13,
               "p":18
            },{
               "c":11,
               "p":16
            },{
               "c":10,
               "p":15
            },{
               "c":12,
               "p":17
            },{
               "c":14,
               "p":19
            }],
            0:[{
               "c":4,
               "p":9
            },{
               "c":2,
               "p":7
            },{
               "c":0,
               "p":5
            },{
               "c":1,
               "p":6
            },{
               "c":3,
               "p":8
            }]
         };
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
            this.backgroundAlpha = 0.5;
            this.disabledOverlayAlpha = 0;
         };
         this.percentWidth = 100;
         this.percentHeight = 100;
         _BattleStage_Fade3_i();
         _BattleStage_Fade4_i();
         _BattleStage_Fade1_i();
         _BattleStage_Fade2_i();
         this.addEventListener("creationComplete",___BattleStage_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BattleStage._watcherSetupUtil = param1;
      }
      
      public function callCreatureData(param1:Number, param2:String, param3:String, param4:Boolean) : void
      {
         var _loc5_:BattleCreatureView = cList[param1];
         if((Boolean(_loc5_)) && Boolean(_loc5_.gameObject))
         {
            if(param2)
            {
               _core.sysMsg("怪物 " + param2 + " :" + _loc5_.gameObject[param2]);
            }
            if(param3)
            {
               _core.sysMsg("怪物1 " + param3 + " :" + _loc5_[param3]);
            }
            _core.sysMsg("猜猜我在哪: " + _loc5_.visible);
            if(param4)
            {
               _loc5_.visible = true;
            }
         }
         else if(Boolean(_loc5_) && !_loc5_.gameObject)
         {
            _core.sysMsg("现象可能2 &&!");
         }
         else
         {
            _core.sysMsg("现象可能3 !&&!");
         }
      }
      
      public function set localizerContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._593980680localizerContainer;
         if(_loc2_ !== param1)
         {
            this._593980680localizerContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"localizerContainer",_loc2_,param1));
         }
      }
      
      private function setGuestGroupPos() : void
      {
         _posDict = {};
         _posDict[0] = battlePos10;
         _posDict[1] = battlePos11;
         _posDict[2] = battlePos12;
         _posDict[3] = battlePos13;
         _posDict[4] = battlePos14;
         _posDict[5] = battlePos15;
         _posDict[6] = battlePos16;
         _posDict[7] = battlePos17;
         _posDict[8] = battlePos18;
         _posDict[9] = battlePos19;
         _posDict[10] = battlePos0;
         _posDict[11] = battlePos1;
         _posDict[12] = battlePos2;
         _posDict[13] = battlePos3;
         _posDict[14] = battlePos4;
         _posDict[15] = battlePos5;
         _posDict[16] = battlePos6;
         _posDict[17] = battlePos7;
         _posDict[18] = battlePos8;
         _posDict[19] = battlePos9;
         _posDict[110] = battlePos110;
         _posDict[100] = battlePos100;
      }
      
      public function nextActionRound() : void
      {
         var _loc3_:Object = null;
         if(isRoundPlayFinish)
         {
            return;
         }
         if(_currentAction != null && _currentAction.delay > 0)
         {
            setTimeout(nextActionRound,_currentAction.delay);
            _currentAction = null;
            return;
         }
         if(--_actionCount > 0)
         {
            return;
         }
         if(!_battleSeq || _battleSeq.length <= 0)
         {
            if(visible)
            {
               isRoundPlayFinish = true;
               checkEnd();
            }
            return;
         }
         var _loc1_:Array = _battleSeq.shift();
         _actionCount = _loc1_.length;
         while(_actionCount <= 0)
         {
            if(_battleSeq.length <= 0)
            {
               if(visible)
               {
                  isRoundPlayFinish = true;
                  checkEnd();
               }
               return;
            }
            _loc1_ = _battleSeq.shift();
            _actionCount = _loc1_.length;
         }
         var _loc2_:* = true;
         for each(_loc3_ in _loc1_)
         {
            _currentAction = _loc3_;
            if(_loc3_)
            {
               _loc2_ = false;
               execBehavior(_loc3_);
            }
            else
            {
               --_actionCount;
            }
         }
         resetNormlPlay();
         if(_loc2_)
         {
            nextActionRound();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoPanel() : BattleInfoCanvas
      {
         return this._1217229302infoPanel;
      }
      
      private function execBehavior(param1:Object) : void
      {
         var sView:BattleCreatureView = null;
         var tView:BattleCreatureView = null;
         var closeHandler:Function = null;
         var viewSlef:Object = null;
         var viewBoss:Object = null;
         var selfCode:Number = NaN;
         var bossCode:Number = NaN;
         var arr:Array = null;
         var time:Number = NaN;
         var actionObj:Object = param1;
         if(actionObj.end)
         {
            if(_watch)
            {
               watchNewRound();
            }
            else if(Boolean(actionObj.type) && actionObj.result == 1)
            {
               closeHandler = function():void
               {
                  _core.state = GamePredef.ST_CORE_NORMAL;
                  _core.player.inBattle = false;
                  _core.battle.watchOnEnd();
               };
               _core.view.getUI(ViewManager.POP_STAR_BATTLE_REPORT).showResult(closeHandler);
            }
            else
            {
               _core.state = GamePredef.ST_CORE_NORMAL;
               _core.player.inBattle = false;
               if(_isReplay)
               {
                  _core.remote.call("battleReplayEnd",null);
                  _core.battle.watchOnEnd();
               }
               else
               {
                  _core.remote.call("battlePlayEnd",null);
                  _core.battle.battleOnEnd();
               }
            }
            return;
         }
         if(Boolean(actionObj.sid) && Number(actionObj.sid) == 9999999999)
         {
            this.battleInfo.visible = false;
            if(actionObj.title)
            {
               viewSlef = getView(10);
               viewBoss = getView(0);
               selfCode = viewSlef ? Number(viewSlef.gameObject.iconCode) : 3050070000001;
               bossCode = viewBoss ? Number(viewBoss.gameObject.iconCode) : 3060100000001;
               this.battleInfo.speak(actionObj.title,selfCode,bossCode);
            }
            if(actionObj.title)
            {
               arr = actionObj.title.split("|");
               time = 500;
               if(arr.length > 0)
               {
                  time = (arr.length - 1) * 1500;
               }
               if(time > 10000)
               {
                  time = 10000;
               }
               setTimeout(loadNewCre,time,actionObj.sSObj);
            }
            else
            {
               setTimeout(loadNewCre,500,actionObj.sSObj);
            }
            return;
         }
         sView = cList[actionObj.sid];
         tView = cList[actionObj.tid];
         if(sView != null)
         {
            sView.battleState(actionObj.sSObj,tView);
            sView.battleBehavior(actionObj.bid,tView);
         }
         else
         {
            if(Boolean(actionObj.sSObj) && Boolean(actionObj.sSObj["skill"]))
            {
               showSkill(actionObj.sSObj["skill"]);
            }
            nextActionRound();
         }
         if(tView != null)
         {
            tView.battleState(actionObj.tSObj,sView);
         }
         globalBehavior(actionObj,sView,tView);
      }
      
      [Bindable(event="propertyChange")]
      public function get bgLayer() : SimpleCanvas
      {
         return this._196953076bgLayer;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos110() : Localizer
      {
         return this._2107362836battlePos110;
      }
      
      private function setWaitIcon() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         for(_loc1_ in cList)
         {
            _loc2_ = cList[_loc1_];
            if(Boolean(_loc2_.gameObject) && _loc2_.gameObject.type == GamePredef.TBL_CHARACTOR)
            {
               _loc2_.showWaitIcon();
            }
         }
      }
      
      public function set bgLayer(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._196953076bgLayer;
         if(_loc2_ !== param1)
         {
            this._196953076bgLayer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgLayer",_loc2_,param1));
         }
      }
      
      private function _BattleStage_Fade4_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         fadeOut = _loc1_;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 0;
         _loc1_.duration = 500;
         return _loc1_;
      }
      
      public function set battlePos110(param1:Localizer) : void
      {
         var _loc2_:Object = this._2107362836battlePos110;
         if(_loc2_ !== param1)
         {
            this._2107362836battlePos110 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos110",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cloudLayer() : UIComponent
      {
         return this._333275108cloudLayer;
      }
      
      private function setBattleGroups(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for each(_loc2_ in param1.cList)
         {
            if(_loc2_.type == GamePredef.TBL_CHARACTOR)
            {
               setBattleChar(_loc2_);
            }
         }
         for each(_loc2_ in param1.cList)
         {
            if(_loc2_.type == GamePredef.TBL_CREATURE)
            {
               setBattleCre(_loc2_);
            }
            else if(_loc2_.type == GamePredef.TBL_PET)
            {
               setBattlePet(_loc2_);
            }
         }
         infoPanel.initList(param1);
      }
      
      private function setBattleChar(param1:Object) : void
      {
         var _loc2_:Localizer = Localizer(_posDict[param1.battleId]);
         var _loc3_:Charactor = _core.getCharactor(param1.id);
         var _loc4_:BattleCreatureView = new BattleCreatureView(isAirBattle,_watch);
         _loc4_.initBattleView(_loc3_,param1,toPoint(_loc2_),getDir(param1.battleId),_guestBattle,true);
         addView(param1.battleId,_loc4_);
      }
      
      public function set skillCanvas(param1:SkillCanvas) : void
      {
         var _loc2_:Object = this._1769958153skillCanvas;
         if(_loc2_ !== param1)
         {
            this._1769958153skillCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillCanvas",_loc2_,param1));
         }
      }
      
      public function set cloudLayer(param1:UIComponent) : void
      {
         var _loc2_:Object = this._333275108cloudLayer;
         if(_loc2_ !== param1)
         {
            this._333275108cloudLayer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cloudLayer",_loc2_,param1));
         }
      }
      
      public function startSequence(param1:Array) : void
      {
         var _loc2_:Array = null;
         isRoundPlayFinish = false;
         BattleCreatureView.cmdMode = false;
         cPetCmd.hide();
         cPlayerCmd.hide();
         cTime.hide();
         skillCanvas.hide();
         clearWaitIcon();
         battleTargetCanvas.hide();
         if(_watch)
         {
            if(_playEnd && _playList.length <= 0)
            {
               _playEnd = false;
               _battleSeq = param1;
               nextActionRound();
               _core.battle.newSeq();
            }
            else
            {
               _loc2_ = _playList.shift();
               _playList.push(param1);
               _battleSeq = _loc2_;
               nextActionRound();
               _core.battle.newSeq();
            }
         }
         else
         {
            _battleSeq = param1;
            nextActionRound();
            _core.battle.newSeq();
         }
      }
      
      private function setGuestGroupDir(param1:int) : void
      {
         if(param1 == 0)
         {
            _dirLower = 1;
            _dirUpper = 5;
         }
         else if(param1 > 0)
         {
            _dirLower = 1;
            _dirUpper = 1;
         }
         else
         {
            _dirLower = 5;
            _dirUpper = 5;
         }
      }
      
      public function traceState() : void
      {
         if(_battleSeq)
         {
            trace("seq len:",_battleSeq.length);
         }
         else
         {
            trace("seq len:",0);
         }
      }
      
      private function startNewRound() : void
      {
         _core.battle.battleClearCmd();
         setWaitIcon();
         skillCanvas.hide();
         var _loc1_:Object = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         _loc1_.visible = true;
         clearGlobalEff(frontEffectLayer);
         clearGlobalEff(backEffectLayer);
         if(_playerAlive)
         {
            cTime.show();
            cPlayerCmd.show();
            battleInfoBtn.visible = true;
            cPetCmd.hide();
            _loc1_.setAllSkill(2);
            BattleCreatureView.cmdMode = true;
         }
         else if(_petAlive)
         {
            _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_DEFENCE,-1);
            cPlayerCmd.hide();
            cTime.show();
            _loc1_.setAllSkill(3);
            BattleCreatureView.cmdMode = true;
         }
         else
         {
            _loc1_.setAllSkill(3);
            cPlayerCmd.hide();
            cPetCmd.hide();
            cTime.hide();
            BattleCreatureView.cmdMode = false;
         }
         cBuff.updateRound();
         showTargetCanvas();
         if(cPlayerCmd)
         {
            cPlayerCmd.isEscapeThisRound = false;
         }
      }
      
      public function endBattleHandler() : void
      {
         clearBattleStage();
         showResult();
      }
      
      [Bindable(event="propertyChange")]
      public function get frontEffectLayer() : UIComponent
      {
         return this._1859910569frontEffectLayer;
      }
      
      public function setReady(param1:Number) : void
      {
         var _loc2_:Object = cList[param1];
         if(Boolean(_loc2_) && Boolean(_loc2_.gameObject) && _loc2_.gameObject.type == GamePredef.TBL_CHARACTOR)
         {
            _loc2_.hideWaitIcon();
         }
      }
      
      private function showBattleInfo(param1:MouseEvent) : void
      {
         infoPanel.changeVisible();
      }
      
      public function set battlePos0(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587252battlePos0;
         if(_loc2_ !== param1)
         {
            this._2053587252battlePos0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos0",_loc2_,param1));
         }
      }
      
      private function _BattleStage_Fade3_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         fadeIn = _loc1_;
         _loc1_.alphaFrom = 0;
         _loc1_.alphaTo = 1;
         _loc1_.duration = 500;
         return _loc1_;
      }
      
      public function set battlePos3(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587255battlePos3;
         if(_loc2_ !== param1)
         {
            this._2053587255battlePos3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos3",_loc2_,param1));
         }
      }
      
      public function set battlePos4(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587256battlePos4;
         if(_loc2_ !== param1)
         {
            this._2053587256battlePos4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos4",_loc2_,param1));
         }
      }
      
      public function set battlePos1(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587253battlePos1;
         if(_loc2_ !== param1)
         {
            this._2053587253battlePos1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos1",_loc2_,param1));
         }
      }
      
      public function set battlePos5(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587257battlePos5;
         if(_loc2_ !== param1)
         {
            this._2053587257battlePos5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos5",_loc2_,param1));
         }
      }
      
      public function set battlePos2(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587254battlePos2;
         if(_loc2_ !== param1)
         {
            this._2053587254battlePos2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos2",_loc2_,param1));
         }
      }
      
      private function checkSelf() : void
      {
         if(_core.player)
         {
            if(_core.player.currentHp <= 0)
            {
               _playerAlive = false;
            }
            else
            {
               _playerAlive = true;
            }
         }
         else
         {
            _playerAlive = false;
         }
      }
      
      public function set battlePos7(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587259battlePos7;
         if(_loc2_ !== param1)
         {
            this._2053587259battlePos7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos7",_loc2_,param1));
         }
      }
      
      public function set battlePos8(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587260battlePos8;
         if(_loc2_ !== param1)
         {
            this._2053587260battlePos8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos8",_loc2_,param1));
         }
      }
      
      public function set battlePos9(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587261battlePos9;
         if(_loc2_ !== param1)
         {
            this._2053587261battlePos9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos9",_loc2_,param1));
         }
      }
      
      public function set battlePos6(param1:Localizer) : void
      {
         var _loc2_:Object = this._2053587258battlePos6;
         if(_loc2_ !== param1)
         {
            this._2053587258battlePos6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos6",_loc2_,param1));
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
      
      private function _BattleStage_Fade2_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         stageOut = _loc1_;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 0;
         _loc1_.duration = 500;
         return _loc1_;
      }
      
      private function cleanView() : void
      {
         var _loc1_:Object = null;
         var _loc2_:BattleCreatureView = null;
         for(_loc1_ in cList)
         {
            _loc2_ = cList[_loc1_];
            if(!_loc2_.gameObject)
            {
               delView(Number(_loc1_));
            }
         }
         cLayer.sortChildren();
      }
      
      private function clearBattleStage() : void
      {
         var i:Object = null;
         var v:Object = null;
         var p:Charactor = null;
         clearPanels();
         clearGlobalEff(frontEffectLayer);
         clearGlobalEff(backEffectLayer);
         AreaUtil.clearClouds(cloudLayer);
         cBuff.clearBuff();
         _playerAlive = true;
         _petAlive = true;
         for(i in cList)
         {
            v = cList[i];
            if(Boolean(v.gameObject) && v.gameObject.type == GamePredef.TBL_CHARACTOR)
            {
               p = Charactor(v.gameObject);
               p.inBattle = false;
               try
               {
                  p.view = p.normalView;
                  p.posX = p.normalView.posX;
                  p.posY = p.normalView.posY;
                  if(Boolean(p.view.doubleFly) && Boolean(p.view.weddingFlyer))
                  {
                     p.view.weddingFlyer.upFlyerPos();
                  }
               }
               catch(e:*)
               {
               }
               v.destroy();
            }
            else
            {
               v.destroy();
            }
            delete cList[i];
         }
         _playList = [];
         cList = {};
         bgLayer.removeAllChildren();
         cLayer.removeAllChildren();
         if(_core.player)
         {
            _core.player.inBattle = false;
         }
         _core.state = GamePredef.ST_CORE_NORMAL;
      }
      
      private function loadNewCre(param1:Object) : void
      {
         setAIBattleGroups(param1);
         startNewRound();
      }
      
      public function set magicCircleImg0(param1:Image) : void
      {
         var _loc2_:Object = this._1089356982magicCircleImg0;
         if(_loc2_ !== param1)
         {
            this._1089356982magicCircleImg0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicCircleImg0",_loc2_,param1));
         }
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var _loc2_:Sprite = null;
         if(timerTarget == 0)
         {
            if(resTime > 0)
            {
               --resTime;
               IUITextField(_alert.alertForm.textField).htmlText = _RELIVE_TEXT_ENUM[_reliveFlag] + "<font color=\'#FF0000\'>\n(" + Language.BATTLESTAGE_S[10].toString().replace("{resTime}",resTime) + "</font>";
            }
            else
            {
               timer.removeEventListener(TimerEvent.TIMER,onTimer);
               timer.stop();
               resTime = 20;
               _loc2_ = _alert.alertForm.buttons[1] as Sprite;
               _loc2_.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
            }
         }
         else if(timerTarget == 1)
         {
            if(resTime > 0)
            {
               --resTime;
               IUITextField(_alert.alertForm.textField).htmlText = Language.BATTLESTAGE_S[15] + "<font color=\'#FF0000\'>\n(" + Language.BATTLESTAGE_S[10].toString().replace("{resTime}",resTime) + "</font>";
            }
            else
            {
               timer.removeEventListener(TimerEvent.TIMER,onTimer);
               timer.stop();
               resTime = 20;
               _loc2_ = _alert.alertForm.buttons[1] as Sprite;
               _loc2_.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
            }
         }
      }
      
      public function set fadeOut(param1:Fade) : void
      {
         var _loc2_:Object = this._1091436750fadeOut;
         if(_loc2_ !== param1)
         {
            this._1091436750fadeOut = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeOut",_loc2_,param1));
         }
      }
      
      private function setHostGroupPos() : void
      {
         _posDict = {};
         var _loc1_:int = 0;
         while(_loc1_ < 20)
         {
            _posDict[_loc1_] = this["battlePos" + _loc1_];
            _loc1_++;
         }
         _posDict[100] = battlePos100;
         _posDict[110] = battlePos110;
      }
      
      private function endBattleStart() : void
      {
         var userBarCanvas:UserBarCanvas;
         var templateId:int = 0;
         var func:Function = null;
         var barNum:int = 0;
         if(!visible)
         {
            return;
         }
         visible = false;
         _core.playNormal();
         if(_watch)
         {
            UserBarCanvas(_core.view.getUI(ViewManager.MAIN_USER_BAR)).abc.visible = true;
            return;
         }
         if(Boolean(_core.player) && Boolean(_core.player.mapData) && Boolean(_core.player.mapData.templateId))
         {
            templateId = int(_core.player.mapData.templateId);
            if(templateId == 2007 || templateId == 2008 || templateId == 2009)
            {
               func = function(param1:CloseEvent):void
               {
                  var _loc2_:Object = {};
                  if(param1.detail == Alert.YES)
                  {
                     _loc2_.recover = true;
                     _core.remote.call("mazeRecover",null,_loc2_);
                  }
                  else
                  {
                     _loc2_.recover = false;
                     _core.remote.call("mazeRecover",null,_loc2_);
                  }
               };
               Alert.show(Language.MAZE_INFO_PANEL_U[12].toString(),"",Alert.YES | Alert.NO,null,func);
               return;
            }
         }
         if(Boolean(_core.player) && _core.player.currentHp <= 0)
         {
            _core.remote.call("reliveSwitch",new Responder(onReliveSwitch));
         }
         userBarCanvas = UserBarCanvas(_core.view.getUI(ViewManager.MAIN_USER_BAR));
         if(userBarCanvas)
         {
            userBarCanvas.abc.setAutoStyle();
            userBarCanvas.abc.visible = true;
            userBarCanvas.currentState = "normal";
            barNum = int(userBarCanvas.barNum.text);
            userBarCanvas["bar" + barNum].visible = true;
         }
         if(_core.bloodBag[1] > 0 || _core.bloodBag[2] > 0 || _core.bloodBag[3] > 0 || _core.bloodBag[4] > 0)
         {
            _core.remote.useBloodBag();
         }
      }
      
      public function checkEnd() : void
      {
         if(_watch)
         {
            watchNewRound();
            return;
         }
         newRound();
      }
      
      [Bindable(event="propertyChange")]
      public function get cLayer() : DynamicItemContainer
      {
         return this._1387484498cLayer;
      }
      
      private function initBattleInfo() : void
      {
         infoPanel.init();
      }
      
      public function set cBuff(param1:BuffCanvas) : void
      {
         var _loc2_:Object = this._93510486cBuff;
         if(_loc2_ !== param1)
         {
            this._93510486cBuff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cBuff",_loc2_,param1));
         }
      }
      
      public function setBattleSpeed(param1:uint) : void
      {
         var _loc2_:* = undefined;
         for each(_loc2_ in cList)
         {
            _loc2_.speed = int(9 * GamePredef.GLOBAL_FRAME_RATE_DEFAULT / param1);
         }
      }
      
      public function set frontEffectLayer(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1859910569frontEffectLayer;
         if(_loc2_ !== param1)
         {
            this._1859910569frontEffectLayer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frontEffectLayer",_loc2_,param1));
         }
      }
      
      private function firstRound() : void
      {
         cBuff.clearBuff();
         checkPet();
         startNewRound();
         setSneak();
         resetNormlPlay();
      }
      
      [Bindable(event="propertyChange")]
      public function get stageIn() : Fade
      {
         return this._1897528125stageIn;
      }
      
      private function _BattleStage_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         stageIn = _loc1_;
         _loc1_.alphaFrom = 0;
         _loc1_.alphaTo = 1;
         _loc1_.duration = 500;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeIn() : Fade
      {
         return this._1282133823fadeIn;
      }
      
      public function quickPlayLastRound() : void
      {
         BattleCreatureView.moveSpeedBattle = int(60 * GamePredef.GLOBAL_FRAME_RATE_DEFAULT / GamePredef.GLOBAL_FRAME_RATE);
         nextActionRound();
      }
      
      [Bindable(event="propertyChange")]
      public function get backEffectLayer() : UIComponent
      {
         return this._877517529backEffectLayer;
      }
      
      public function set stageOut(param1:Fade) : void
      {
         var _loc2_:Object = this._1306176368stageOut;
         if(_loc2_ !== param1)
         {
            this._1306176368stageOut = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stageOut",_loc2_,param1));
         }
      }
      
      private function addView(param1:Number, param2:BattleCreatureView) : void
      {
         cList[param1] = param2;
         cLayer.addChild(param2);
      }
      
      private function setHostGroupDir(param1:int) : void
      {
         if(param1 == 0)
         {
            _dirLower = 5;
            _dirUpper = 1;
         }
         else if(param1 > 0)
         {
            _dirLower = 5;
            _dirUpper = 5;
         }
         else
         {
            _dirLower = 1;
            _dirUpper = 1;
         }
      }
      
      public function ___BattleStage_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         quitReplay();
      }
      
      public function ___BattleStage_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      private function swapView(param1:BattleCreatureView, param2:BattleCreatureView) : void
      {
         addView(param1.gameObject.battleId,param2);
         addView(param2.gameObject.battleId,param1);
         var _loc3_:int = int(param1.gameObject.battleId);
         param1.gameObject.battleId = param2.gameObject.battleId;
         param2.gameObject.battleId = _loc3_;
      }
      
      private function checkClient() : void
      {
         var _loc2_:Object = null;
         var _loc3_:BattleCreatureView = null;
         var _loc1_:Boolean = true;
         for(_loc2_ in cList)
         {
            _loc3_ = BattleCreatureView(cList[_loc2_]);
            if(_loc3_.leftSide && _loc3_.visible && _loc3_.hp > 0)
            {
               _loc1_ = false;
               break;
            }
         }
         if(_loc1_)
         {
            endBattle();
         }
      }
      
      private function resetNormlPlay() : void
      {
         BattleCreatureView.moveSpeedBattle = int(50 * GamePredef.GLOBAL_FRAME_RATE_DEFAULT / GamePredef.GLOBAL_FRAME_RATE);
      }
      
      private function checkPet() : void
      {
         _petAlive = false;
         var _loc1_:BattleCreatureView = BattleCreatureView(_core.battle.battleGetPlayerPet(cList));
         if(_loc1_)
         {
            if(_loc1_.isDead())
            {
               _petAlive = false;
            }
            else
            {
               _petAlive = true;
            }
         }
         else
         {
            _petAlive = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get localizerContainer() : Canvas
      {
         return this._593980680localizerContainer;
      }
      
      public function set cLayerContainer(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._1238309517cLayerContainer;
         if(_loc2_ !== param1)
         {
            this._1238309517cLayerContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cLayerContainer",_loc2_,param1));
         }
      }
      
      private function setBattlePet(param1:Object) : void
      {
         var _loc5_:int = 0;
         var _loc2_:Localizer = Localizer(_posDict[param1.battleId]);
         var _loc3_:Pet = _core.createPet(param1);
         if(isAirBattle)
         {
            if(param1.battleId % 10 < 5)
            {
               _loc5_ = param1.battleId + 5;
            }
            else
            {
               _loc5_ = param1.battleId - 5;
            }
            if(!cList[_loc5_])
            {
            }
         }
         var _loc4_:BattleCreatureView = new BattleCreatureView(isAirBattle,_watch);
         _loc4_.initBattleView(_loc3_,param1,toPoint(_loc2_),getDir(param1.battleId),_guestBattle,true);
         addView(param1.battleId,_loc4_);
      }
      
      [Bindable(event="propertyChange")]
      public function get skillCanvas() : SkillCanvas
      {
         return this._1769958153skillCanvas;
      }
      
      private function clearWaitIcon() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         for(_loc1_ in cList)
         {
            _loc2_ = cList[_loc1_];
            if(Boolean(_loc2_.gameObject) && _loc2_.gameObject.type == GamePredef.TBL_CHARACTOR)
            {
               _loc2_.hideWaitIcon();
            }
         }
      }
      
      private function turnBack() : void
      {
         var _loc1_:Object = null;
         var _loc2_:BattleCreatureView = null;
         for(_loc1_ in cList)
         {
            _loc2_ = cList[_loc1_];
            if(_loc2_)
            {
               _loc2_.turnBack();
            }
         }
      }
      
      public function get watchMode() : Boolean
      {
         return _watch;
      }
      
      public function set battleInfo(param1:SpeakText) : void
      {
         var _loc2_:Object = this._2053377414battleInfo;
         if(_loc2_ !== param1)
         {
            this._2053377414battleInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleInfo",_loc2_,param1));
         }
      }
      
      public function frontEffect(param1:Number) : void
      {
         globalEffect(param1,frontEffectLayer);
      }
      
      private function setAIBattleCre(param1:Object) : void
      {
         delView(param1.battleId);
         var _loc2_:Localizer = Localizer(_posDict[param1.battleId]);
         var _loc3_:Creature = _core.createCreature(param1);
         var _loc4_:BattleCreatureView = new BattleCreatureView(isAirBattle,_watch);
         _loc4_.initBattleView(_loc3_,param1,toPoint(_loc2_),getDir(param1.battleId),_guestBattle,true);
         addView(param1.battleId,_loc4_);
      }
      
      public function quitReplay() : void
      {
         trace("退出观看战斗录像-------------------------------");
         _core.remote.battleReplayEnd();
         _core.battle.watchOnEnd();
      }
      
      private function checkEndHandler(param1:Object) : void
      {
         if(!visible)
         {
            return;
         }
         _checkRemote = false;
         switch(param1)
         {
            case GamePredef.BATTLE_WIN:
               _core.state = GamePredef.ST_CORE_NORMAL;
               _core.player.inBattle = false;
               _core.battle.battleOnEnd();
               break;
            case GamePredef.BATTLE_LOSE:
               _core.state = GamePredef.ST_CORE_NORMAL;
               _core.player.inBattle = false;
               _core.battle.battleOnEnd();
               break;
            case GamePredef.BATTLE_NOT_END:
               newRound();
         }
      }
      
      private function getView(param1:Number) : BattleCreatureView
      {
         return cList[param1];
      }
      
      private function globalEffect(param1:Number, param2:UIComponent) : void
      {
         var _loc3_:Loader = null;
         clearGlobalEff(param2);
         if(param1 > 0 && CreatureView.LOAD_EFFECT)
         {
            _loc3_ = new Loader();
            _loc3_.load(new URLRequest(ResManager.getResUrl(param1)));
            if(isAirBattle)
            {
               _loc3_.y = -GamePredef.FLIGHT_HEIGHT;
            }
            param2.addChild(_loc3_);
         }
      }
      
      public function get petActive() : Boolean
      {
         return _petAlive;
      }
      
      public function startAuto() : void
      {
         _auto.startAuto();
      }
      
      private function onReliveSwitch(param1:int) : void
      {
         var func:Function = null;
         var bbAlert:Alert = null;
         var bbTime:int = 0;
         var bbGold:int = 0;
         var goldBBRelive:Function = null;
         var onBBTimerHandler:Function = null;
         var onBBTimerComplete:Function = null;
         var bbTimer:Timer = null;
         var result:int = param1;
         if(Boolean(_core.player) && _core.player.posMapId == 78)
         {
            return;
         }
         if(result)
         {
            if(result == 3)
            {
               bbTime = 30;
               bbGold = 6;
               goldBBRelive = function(param1:CloseEvent):*
               {
                  if(param1.detail == Alert.YES)
                  {
                     if(_core.player.gold < bbGold)
                     {
                        Alert.show("金子不足");
                     }
                     else
                     {
                        bbTimer.stop();
                        bbAlert = null;
                        _core.remote.call("bbGoldRelive",null,bbGold);
                     }
                  }
                  else if(param1.detail == Alert.CANCEL)
                  {
                  }
               };
               onBBTimerHandler = function(param1:TimerEvent):*
               {
                  --bbTime;
                  bbGold = bbTime / 5 + 1;
                  IUITextField(bbAlert.alertForm.textField).htmlText = Language.BATTLESTAGE_S[23].toString().replace("{time}",bbTime).replace("{gold}",bbGold);
               };
               onBBTimerComplete = function(param1:TimerEvent):*
               {
                  bbTimer.stop();
                  bbAlert.visible = false;
                  bbAlert = null;
                  _core.remote.call("bbNormalRelive",null);
               };
               bbTimer = new Timer(1000,30);
               bbTimer.addEventListener(TimerEvent.TIMER,onBBTimerHandler);
               bbTimer.addEventListener(TimerEvent.TIMER_COMPLETE,onBBTimerComplete);
               bbTimer.start();
               bbAlert = Alert.show("您已经死亡\n点击确定使用6金子立即复活.\n点击\'取消\'将在30秒后传送到安全区","",Alert.YES | Alert.CANCEL,null,goldBBRelive);
               IUITextField(bbAlert.alertForm.textField).htmlText = Language.BATTLESTAGE_S[23].toString().replace("{time}",bbTime).replace("{gold}",bbGold);
               return;
            }
            if(result == 2)
            {
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && Number(_core.player.posMapId) == 73)
               {
                  return;
               }
            }
            _reliveFlag = result;
            func = function(param1:CloseEvent):void
            {
               var func1:Function = null;
               var event:CloseEvent = param1;
               Alert.cancelLabel = Language.GAMEPREDEF_S[2];
               timer.stop();
               resTime = 20;
               timer.removeEventListener(TimerEvent.TIMER,onTimer);
               if(_core.player.currentHp > 0 && (!_core.player.inGroup || _core.player.isLeader || _core.player.groupAfk))
               {
                  _core.player.walkable = true;
                  return;
               }
               if(event.detail == Alert.CANCEL)
               {
                  if(_RELIVE_FREE == _reliveFlag || _RELIVE_WB == _reliveFlag)
                  {
                     _core.remote.freeRelive(2);
                  }
                  else
                  {
                     _core.remote.toSafe();
                  }
               }
               else if(_RELIVE_FREE == _reliveFlag || _RELIVE_WB == _reliveFlag)
               {
                  _core.remote.freeRelive(1);
               }
               else if(_core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_STAND_IN_BABY) < 1)
               {
                  func1 = function(param1:CloseEvent):void
                  {
                     timer.stop();
                     resTime = 20;
                     timer.removeEventListener(TimerEvent.TIMER,onTimer);
                     if(param1.detail == Alert.NO)
                     {
                        _core.remote.toSafe();
                     }
                     else
                     {
                        _core.remote.reliveUseItem();
                     }
                  };
                  timer.addEventListener(TimerEvent.TIMER,onTimer);
                  timerTarget = 1;
                  timer.start();
                  _alert = Alert.show(Language.BATTLESTAGE_S[15] + "\n(" + Language.BATTLESTAGE_S[10].toString().replace("{resTime}",resTime),"",Alert.YES | Alert.NO,null,func1);
                  IUITextField(_alert.alertForm.textField).htmlText = Language.BATTLESTAGE_S[15] + "<font color=\'#FF0000\'>\n(" + Language.BATTLESTAGE_S[10].toString().replace("{resTime}",resTime) + "</font>";
               }
               else
               {
                  _core.remote.reliveUseItem();
               }
            };
            Alert.cancelLabel = Language.BATTLESTAGE_S[9].toString();
            timer.addEventListener(TimerEvent.TIMER,onTimer);
            timerTarget = 0;
            timer.start();
            _alert = Alert.show(_RELIVE_TEXT_ENUM[_reliveFlag] + "\n(" + Language.BATTLESTAGE_S[10].toString().replace("{resTime}",resTime),"",Alert.OK | Alert.CANCEL,null,func,null,Alert.CANCEL);
            IUITextField(_alert.alertForm.textField).htmlText = _RELIVE_TEXT_ENUM[_reliveFlag] + "<font color=\'#FF0000\'>\n(" + Language.BATTLESTAGE_S[10].toString().replace("{resTime}",resTime) + "</font>";
            Alert.cancelLabel = Language.GAMEPREDEF_S[2];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos0() : Localizer
      {
         return this._2053587252battlePos0;
      }
      
      private function globalBehavior(param1:Object, param2:BattleCreatureView, param3:BattleCreatureView) : void
      {
         var isArray:*;
         var i:String = null;
         var buffId:* = undefined;
         var actionObj:Object = param1;
         var sv:BattleCreatureView = param2;
         var tv:BattleCreatureView = param3;
         switch(actionObj.bid)
         {
            case BattleCreatureView.BH_POSITION:
               swapView(sv,tv);
               break;
            case BattleCreatureView.BH_SUMMON:
               switch(actionObj.type)
               {
                  case 0:
                     setBattlePet(actionObj.pet);
                     break;
                  case 1:
                     setBattleCre(actionObj.pet);
                     break;
                  case 2:
                     for(i in actionObj.creList)
                     {
                        setBattleCre(actionObj.creList[i]);
                     }
               }
         }
         isArray = function(param1:*):Boolean
         {
            var _loc3_:* = undefined;
            var _loc2_:int = 0;
            for(_loc3_ in param1)
            {
               _loc2_++;
            }
            if(0 == _loc2_)
            {
               return false;
            }
            return true;
         };
         if(actionObj.sid == _core.player.battleId && Boolean(actionObj.sSObj))
         {
            if(actionObj.sSObj[GamePredef.BS_BUFF_DEL])
            {
               if(isArray(actionObj.sSObj.buffDel))
               {
                  for(buffId in actionObj.sSObj.buffDel)
                  {
                     cBuff.delBuff(actionObj.sSObj.buffDel[buffId]);
                  }
               }
               else
               {
                  cBuff.delBuff(actionObj.sSObj.buffDel);
               }
            }
            if(actionObj.sSObj[GamePredef.BS_BUFF_COL_DEL])
            {
               for(buffId in actionObj.sSObj[GamePredef.BS_BUFF_COL_DEL])
               {
                  cBuff.delBuff(actionObj.sSObj[GamePredef.BS_BUFF_COL_DEL][buffId]);
               }
            }
            if(actionObj.sSObj[GamePredef.BS_BUFF_ADD])
            {
               cBuff.addBuff(actionObj.sSObj.buffAdd);
            }
            if(actionObj.sSObj[GamePredef.BS_BUFF_CLEAR])
            {
               cBuff.clearBuff();
            }
         }
      }
      
      public function set battlePos11(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304548battlePos11;
         if(_loc2_ !== param1)
         {
            this._763304548battlePos11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos5() : Localizer
      {
         return this._2053587257battlePos5;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos7() : Localizer
      {
         return this._2053587259battlePos7;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos1() : Localizer
      {
         return this._2053587253battlePos1;
      }
      
      public function set battlePos10(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304549battlePos10;
         if(_loc2_ !== param1)
         {
            this._763304549battlePos10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos10",_loc2_,param1));
         }
      }
      
      public function set battlePos14(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304545battlePos14;
         if(_loc2_ !== param1)
         {
            this._763304545battlePos14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos4() : Localizer
      {
         return this._2053587256battlePos4;
      }
      
      public function set battlePos15(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304544battlePos15;
         if(_loc2_ !== param1)
         {
            this._763304544battlePos15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos15",_loc2_,param1));
         }
      }
      
      public function set battlePos12(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304547battlePos12;
         if(_loc2_ !== param1)
         {
            this._763304547battlePos12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos12",_loc2_,param1));
         }
      }
      
      public function set battlePos17(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304542battlePos17;
         if(_loc2_ !== param1)
         {
            this._763304542battlePos17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos17",_loc2_,param1));
         }
      }
      
      public function set battlePos18(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304541battlePos18;
         if(_loc2_ !== param1)
         {
            this._763304541battlePos18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos18",_loc2_,param1));
         }
      }
      
      private function set resTime(param1:int) : void
      {
         var _loc2_:Object = this._1096560525resTime;
         if(_loc2_ !== param1)
         {
            this._1096560525resTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resTime",_loc2_,param1));
         }
      }
      
      public function set battlePos19(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304540battlePos19;
         if(_loc2_ !== param1)
         {
            this._763304540battlePos19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos19",_loc2_,param1));
         }
      }
      
      public function set battlePos16(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304543battlePos16;
         if(_loc2_ !== param1)
         {
            this._763304543battlePos16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos16",_loc2_,param1));
         }
      }
      
      public function set battlePos13(param1:Localizer) : void
      {
         var _loc2_:Object = this._763304546battlePos13;
         if(_loc2_ !== param1)
         {
            this._763304546battlePos13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgImg() : Image
      {
         return this._93647166bgImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos2() : Localizer
      {
         return this._2053587254battlePos2;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos3() : Localizer
      {
         return this._2053587255battlePos3;
      }
      
      private function delView(param1:Number) : void
      {
         delete cList[param1];
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos9() : Localizer
      {
         return this._2053587261battlePos9;
      }
      
      [Bindable(event="propertyChange")]
      public function get cBuff() : BuffCanvas
      {
         return this._93510486cBuff;
      }
      
      private function getDir(param1:int) : int
      {
         if(param1 > 9)
         {
            return _dirLower;
         }
         return _dirUpper;
      }
      
      public function showSkill(param1:String) : void
      {
         if(skillCanvas)
         {
            skillCanvas.flash(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos6() : Localizer
      {
         return this._2053587258battlePos6;
      }
      
      public function backEffect(param1:Number) : void
      {
         globalEffect(param1,backEffectLayer);
      }
      
      public function set cLayer(param1:DynamicItemContainer) : void
      {
         var _loc2_:Object = this._1387484498cLayer;
         if(_loc2_ !== param1)
         {
            this._1387484498cLayer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cLayer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos8() : Localizer
      {
         return this._2053587260battlePos8;
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeOut() : Fade
      {
         return this._1091436750fadeOut;
      }
      
      [Bindable(event="propertyChange")]
      public function get magicCircleImg0() : Image
      {
         return this._1089356982magicCircleImg0;
      }
      
      [Bindable(event="propertyChange")]
      public function get stageOut() : Fade
      {
         return this._1306176368stageOut;
      }
      
      public function endBattle() : void
      {
         endBattleStart();
         endBattleHandler();
      }
      
      private function clearGlobalEff(param1:UIComponent) : void
      {
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
      }
      
      public function showResult() : void
      {
         var _loc1_:String = "";
         if(expBattle > 0)
         {
            _loc1_ = Language.BATTLESTAGE_S[5].toString().replace("{expBattle}",expBattle);
            _core.sysBlueMsg(_loc1_);
         }
         else if(expBattle < 0)
         {
            _loc1_ = Language.BATTLESTAGE_S[6].toString().replace("{expBattle}",Math.abs(expBattle));
            _core.sysBlueMsg(_loc1_);
         }
         var _loc2_:String = "";
         if(rep > 0)
         {
            _loc2_ = Language.BATTLESTAGE_S[7].toString().replace("{rep}",rep);
            _core.sysBlueMsg(_loc2_);
         }
         else if(rep < 0)
         {
            _loc2_ = Language.BATTLESTAGE_S[8].toString().replace("{rep}",Math.abs(rep));
            _core.sysBlueMsg(_loc2_);
         }
         exp = 0;
         expBattle = 0;
         rep = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get cLayerContainer() : SimpleCanvas
      {
         return this._1238309517cLayerContainer;
      }
      
      public function set fadeIn(param1:Fade) : void
      {
         var _loc2_:Object = this._1282133823fadeIn;
         if(_loc2_ !== param1)
         {
            this._1282133823fadeIn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeIn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battleInfo() : SpeakText
      {
         return this._2053377414battleInfo;
      }
      
      private function _BattleStage_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BATTLESTAGE_S[0];
         _loc1_ = Language.BATTLESTAGE_U[0];
         _loc1_ = Language.BATTLESTAGE_S[0];
         _loc1_ = Language.BATTLESTAGE_U[0];
      }
      
      [Bindable(event="propertyChange")]
      private function get resTime() : int
      {
         return this._1096560525resTime;
      }
      
      public function set stageIn(param1:Fade) : void
      {
         var _loc2_:Object = this._1897528125stageIn;
         if(_loc2_ !== param1)
         {
            this._1897528125stageIn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stageIn",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BattleStage = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BattleStage_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_BattleStageWatcherSetupUtil");
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
      public function get battlePos10() : Localizer
      {
         return this._763304549battlePos10;
      }
      
      private function clearPanels() : void
      {
         if(cPetCmd)
         {
            cPetCmd.hide();
         }
         if(cPlayerCmd)
         {
            cPlayerCmd.hide();
         }
         if(battleInfoBtn)
         {
            battleInfoBtn.visible = false;
         }
         if(infoPanel)
         {
            infoPanel.visible = false;
         }
         initBattleInfo();
         if(cTime)
         {
            cTime.hide();
         }
         if(skillCanvas)
         {
            skillCanvas.hide();
         }
         if(battleTargetCanvas)
         {
            battleTargetCanvas.clearView();
            battleTargetCanvas.hide();
         }
      }
      
      private function _BattleStage_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESTAGE_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleStage_Label1.text = param1;
         },"_BattleStage_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESTAGE_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleStage_BasicGlowButton1.label = param1;
         },"_BattleStage_BasicGlowButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESTAGE_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleStage_Label2.text = param1;
         },"_BattleStage_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESTAGE_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleStage_BasicGlowButton2.label = param1;
         },"_BattleStage_BasicGlowButton2.label");
         result[3] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos17() : Localizer
      {
         return this._763304542battlePos17;
      }
      
      public function getCharactorBuff() : ArrayCollection
      {
         return cBuff.getCharactorBuff();
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos12() : Localizer
      {
         return this._763304547battlePos12;
      }
      
      public function ___BattleStage_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         quitWatch();
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos11() : Localizer
      {
         return this._763304548battlePos11;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos14() : Localizer
      {
         return this._763304545battlePos14;
      }
      
      private function drawBackGround(param1:Boolean) : void
      {
         var ctf:ColorTransform = null;
         var map:StageMain = null;
         var bd:BitmapData = null;
         var img:Bitmap = null;
         var uic:UIComponent = null;
         var boss:Boolean = param1;
         try
         {
            if(boss)
            {
               ctf = GamePredef.BATTLE_STAGE_COLOR_BOSS;
            }
            else
            {
               ctf = GamePredef.BATTLE_STAGE_COLOR_NORMAL;
            }
            map = StageMain(_core.view.getUI(ViewManager.STAGE_MAIN));
            bd = new BitmapData(stage.stageWidth,stage.stageHeight);
            img = new Bitmap(bd);
            uic = new UIComponent();
            bd.draw(map.mapCanvas,new Matrix(1,0,0,1,map.x,map.y),ctf,null,new Rectangle(0,0,bd.width,bd.height));
            uic.addChild(img);
            bgLayer.addChild(uic);
         }
         catch(e:*)
         {
            trace("battle draw bmp error");
         }
         _core.view.hide(ViewManager.STAGE_MAIN);
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos19() : Localizer
      {
         return this._763304540battlePos19;
      }
      
      public function set replayCmd(param1:Canvas) : void
      {
         var _loc2_:Object = this._454794285replayCmd;
         if(_loc2_ !== param1)
         {
            this._454794285replayCmd = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"replayCmd",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos13() : Localizer
      {
         return this._763304546battlePos13;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos15() : Localizer
      {
         return this._763304544battlePos15;
      }
      
      public function set backEffectLayer(param1:UIComponent) : void
      {
         var _loc2_:Object = this._877517529backEffectLayer;
         if(_loc2_ !== param1)
         {
            this._877517529backEffectLayer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backEffectLayer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos18() : Localizer
      {
         return this._763304541battlePos18;
      }
      
      private function watchNewRound() : void
      {
         var _loc1_:Array = null;
         if(_playList.length <= 0)
         {
            _playEnd = true;
         }
         else
         {
            _loc1_ = _playList.shift();
            _battleSeq = _loc1_;
            nextActionRound();
            _core.battle.newSeq();
         }
      }
      
      public function quitWatch() : void
      {
         _core.remote.quitWatch();
         _core.battle.watchOnEnd();
      }
      
      public function startBattle(param1:Object, param2:Boolean = false, param3:Boolean = false) : void
      {
         _watch = param2;
         _isReplay = param3;
         BattleCreatureView.cmdMode = false;
         UserBarCanvas(_core.view.getUI(ViewManager.MAIN_USER_BAR)).abc.visible = false;
         cPlayerCmd = PlayerCmdCanvas(_core.view.getUI(ViewManager.MAIN_BATTLE_PLAYER));
         if(cPlayerCmd)
         {
            cPlayerCmd.isEscapeThisRound = false;
         }
         cPetCmd = PetCmdCanvas(_core.view.getUI(ViewManager.MAIN_BATTLE_PET));
         if(!battleInfoBtn)
         {
            battleInfoBtn = new BasicGlowButton();
            battleInfoBtn.label = Language.BATTLESTAGE_S[17];
            battleInfoBtn.addEventListener(MouseEvent.CLICK,showBattleInfo);
            battleInfoBtn.styleName = "CrystalBlueButton";
            battleInfoBtn.visible = false;
            battleInfoBtn.width = 73;
            cTime.parent.addChildAt(battleInfoBtn,cTime.parent.getChildIndex(cTime) - 1);
            battleInfoBtn.y = cPetCmd.y + cPetCmd.height + 5;
            battleInfoBtn.x = cPetCmd.x + 5;
         }
         battleInfoBtn.visible = true;
         if(param2 || param3)
         {
            battleInfoBtn.enabled = false;
         }
         else
         {
            battleInfoBtn.enabled = true;
         }
         battleTargetCanvas = BattleTargetCanvas(_core.view.getUI(ViewManager.MAIN_TARGET_SELECT).targetCanvas);
         battleTargetCanvas.clearView();
         stageOut.stop();
         stageIn.stop();
         var _loc4_:* = _core.view.getUI(ViewManager.PANEL_MAZE_INFO);
         if((Boolean(_loc4_)) && Boolean(_loc4_.visible))
         {
            _loc4_.visible = false;
         }
         var _loc5_:* = _core.view.getUI(ViewManager.PANEL_BLOODY_BATTLE_INFO);
         if((Boolean(_loc5_)) && Boolean(_loc5_.visible))
         {
            _loc5_.visible = false;
         }
         var _loc6_:* = _core.view.getUI(ViewManager.PANEL_TRIPLE_TURN);
         if((Boolean(_loc6_)) && Boolean(_loc6_.visible))
         {
            _loc6_.visible = false;
         }
         if(visible)
         {
            clearBattleStage();
         }
         else
         {
            clearPanels();
            visible = true;
         }
         if(param1.warMap)
         {
            bgImg.source = ResManager.hash(GamePredef.RES_STARRY_SKY);
            bgImg.alpha = 1;
         }
         else
         {
            bgImg.alpha = 0.6;
            bgImg.source = ResManager.hash(GamePredef.DEFAULT_IMG_BATTLE);
         }
         if(param1.magicCircle)
         {
            if(param1.magicCircle[0])
            {
               magicCircleImg0.x = this.x + (Number(this.width) - Number(900)) / 2;
               magicCircleImg0.y = this.y + (Number(this.height) - Number(570)) / 2;
               magicCircleImg0.source = ResManager.getIconUrl(parseInt(param1.magicCircle[0]));
            }
         }
         else
         {
            magicCircleImg0.source = null;
         }
         boss = param1.bossFlag;
         isAirBattle = param1.airBattle;
         drawBackGround(param1.bossFlag);
         if(isAirBattle)
         {
            AreaUtil.drawClouds(cloudLayer,100000,this.width,this.height,-150,-100,-300,-150);
         }
         if(Boolean(_alert) && Boolean(_alert.parent))
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         _guestBattle = param1.guest;
         _auto = _core.view.getUI(ViewManager.PANEL_BATTLEAUTO);
         if(_guestBattle)
         {
            setGuestGroupPos();
            setGuestGroupDir(param1.sneakFlag);
         }
         else
         {
            setHostGroupPos();
            setHostGroupDir(param1.sneakFlag);
         }
         cList = {};
         exp = 0;
         expBattle = 0;
         rep = 0;
         cLayer.addEventListener(Creature.EVENT_BAHAVIOR_END,nextActionRound);
         setBattleGroups(param1);
         cBuff.clearBuff();
         cLayer.sortChildren();
         _checkRemote = false;
         showTargetCanvas();
         _core.playBattle();
         _sneak = param1.sneakFlag;
         if(_watch)
         {
            watchCmd.visible = true;
         }
         else
         {
            if(GamePredef.GLOBAL_SETTING.battleStExpan)
            {
               UserBarCanvas(_core.view.getUI(ViewManager.MAIN_USER_BAR)).currentState = "battle";
            }
            watchCmd.visible = false;
            _core.player.inBattle = true;
            _core.state = GamePredef.ST_CORE_BATTLE;
            skillCanvas.flash(Language.BATTLESTAGE_S[2]);
            setTimeout(firstRound,START_DELAY);
            if(Boolean(_auto.auto) && !param3)
            {
               _auto.visible = true;
            }
            else
            {
               _auto.visible = false;
            }
         }
         if(param3)
         {
            replayCmd.visible = true;
         }
         else
         {
            replayCmd.visible = false;
         }
         _core.gc();
      }
      
      public function set cTime(param1:TimeCountCanvas) : void
      {
         var _loc2_:Object = this._94035408cTime;
         if(_loc2_ !== param1)
         {
            this._94035408cTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cTime",_loc2_,param1));
         }
      }
      
      private function setBattleCre(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.battleId) && checkView(param1.battleId))
         {
            delView(param1.battleId);
         }
         var _loc2_:Localizer = Localizer(_posDict[param1.battleId]);
         var _loc3_:Creature = _core.createCreature(param1);
         var _loc4_:BattleCreatureView = new BattleCreatureView(isAirBattle,_watch);
         _loc4_.initBattleView(_loc3_,param1,toPoint(_loc2_),getDir(param1.battleId),_guestBattle,true);
         addView(param1.battleId,_loc4_);
      }
      
      public function set useModel(param1:Boolean) : void
      {
         CreatureView.LOAD_MODEL = param1;
      }
      
      private function checkView(param1:Number) : Boolean
      {
         if(Boolean(cList) && Boolean(cList[param1]))
         {
            return true;
         }
         return false;
      }
      
      private function newRound() : void
      {
         cleanView();
         checkSelf();
         checkPet();
         startNewRound();
         turnBack();
         _core.battle.newRound();
      }
      
      private function setSneak() : void
      {
         if(_sneak == -1)
         {
            BattleCreatureView.cmdMode = false;
            cTime.visible = false;
            cPlayerCmd.visible = false;
            cTime.timeLeft = 2;
            skillCanvas.text = Language.BATTLESTAGE_S[3];
         }
         else if(_sneak == 1)
         {
            skillCanvas.text = Language.BATTLESTAGE_S[4];
         }
      }
      
      private function initView() : void
      {
         removeChild(localizerContainer);
         bgImg.source = ResManager.hash(GamePredef.DEFAULT_IMG_BATTLE);
         addEventListener(MouseEvent.MOUSE_DOWN,linkHandler);
         backEffectLayer.x = (GamePredef.APP_WIDTH - GamePredef.APP_WIDTH_OLD) / 2;
         backEffectLayer.y = (GamePredef.APP_HEIGHT - GamePredef.APP_HEIGHT_OLD) / 2;
         frontEffectLayer.x = (GamePredef.APP_WIDTH - GamePredef.APP_WIDTH_OLD) / 2;
         frontEffectLayer.y = (GamePredef.APP_HEIGHT - GamePredef.APP_HEIGHT_OLD) / 2;
         infoPanel.x = infoPanel.stage.width - infoPanel.width >> 1;
         infoPanel.y = infoPanel.stage.height - infoPanel.height >> 1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cTime() : TimeCountCanvas
      {
         return this._94035408cTime;
      }
      
      public function setAIBattleGroups(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for each(_loc2_ in param1)
         {
            if(_loc2_.type == GamePredef.TBL_CREATURE)
            {
               setAIBattleCre(_loc2_);
            }
         }
      }
      
      private function showTargetCanvas() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc1_:Object = {};
         var _loc2_:int = 0;
         while(_loc2_ <= 1)
         {
            _loc3_ = _guestBattle ? _loc2_ ^ 1 : _loc2_;
            for(_loc4_ in battleIdFromLeftToRight[_loc2_])
            {
               _loc5_ = battleIdFromLeftToRight[_loc2_][_loc4_];
               _loc6_ = {};
               for(_loc7_ in _loc5_)
               {
                  if(cList[_loc5_[_loc7_]])
                  {
                     _loc6_[_loc7_] = cList[_loc5_[_loc7_]];
                  }
               }
               _loc1_[_loc3_ * 10 + Number(_loc4_)] = _loc6_;
            }
            _loc2_++;
         }
         battleTargetCanvas.showData = _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos16() : Localizer
      {
         return this._763304543battlePos16;
      }
      
      [Bindable(event="propertyChange")]
      public function get replayCmd() : Canvas
      {
         return this._454794285replayCmd;
      }
      
      private function toPoint(param1:Object) : Point
      {
         if(isAirBattle)
         {
            return new Point(param1.x,param1.y + GamePredef.FLIGHT_HEIGHT);
         }
         return new Point(param1.x,param1.y);
      }
      
      public function set watchCmd(param1:Canvas) : void
      {
         var _loc2_:Object = this._545119723watchCmd;
         if(_loc2_ !== param1)
         {
            this._545119723watchCmd = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"watchCmd",_loc2_,param1));
         }
      }
      
      private function linkHandler(param1:MouseEvent) : void
      {
         var _loc2_:ChatCanvas = _core.view.getUI(ViewManager.MAIN_CHAT) as ChatCanvas;
         if(_loc2_.checkPoint(param1.stageX,param1.stageY))
         {
            param1.stopImmediatePropagation();
         }
      }
      
      public function set battlePos100(param1:Localizer) : void
      {
         var _loc2_:Object = this._2107362805battlePos100;
         if(_loc2_ !== param1)
         {
            this._2107362805battlePos100 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battlePos100",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get watchCmd() : Canvas
      {
         return this._545119723watchCmd;
      }
      
      [Bindable(event="propertyChange")]
      public function get battlePos100() : Localizer
      {
         return this._2107362805battlePos100;
      }
      
      private function forceEnd() : void
      {
         if(_checkRemote)
         {
            endBattle();
         }
      }
      
      public function set infoPanel(param1:BattleInfoCanvas) : void
      {
         var _loc2_:Object = this._1217229302infoPanel;
         if(_loc2_ !== param1)
         {
            this._1217229302infoPanel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoPanel",_loc2_,param1));
         }
      }
      
      public function set useEffect(param1:Boolean) : void
      {
         CreatureView.LOAD_EFFECT = param1;
      }
   }
}

