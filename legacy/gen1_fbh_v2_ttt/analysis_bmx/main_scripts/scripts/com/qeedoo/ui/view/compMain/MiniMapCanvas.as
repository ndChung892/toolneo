package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.compDragable.MoneyItemPanel;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Glow;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MiniMapCanvas extends SimpleCanvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _897323049liveTrials:Label;
      
      private var _2119526485btn_petArena:BasicGlowButton;
      
      private var _1714155007btn_changeVisible:Button;
      
      private var _819791178timeTrials:Label;
      
      private var _705624208quitTrialsBtn:Button;
      
      private var _1074097225funCanvas:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":220,
               "height":347,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":161,
                        "height":24,
                        "styleName":"MiniMapTitle",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"titleLabel",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "y":4
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"delayCanv",
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "width":161,
                        "height":26,
                        "styleName":"MiniMapTitle",
                        "y":24,
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":TextArea,
                           "id":"LB_delay",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.backgroundAlpha = 0;
                              this.color = 16777215;
                              this.fontSize = 12;
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":161,
                                 "mouseEnabled":false,
                                 "editable":false,
                                 "height":24,
                                 "y":5
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cav_mini",
                  "stylesFactory":function():void
                  {
                     this.right = "57";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":53,
                        "width":126.9,
                        "height":72,
                        "styleName":"CanvasSystemShopBack",
                        "clipContent":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"miMap",
                           "events":{"click":"__miMap_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":38.6,
                                 "y":38.5,
                                 "styleName":"BtnMap"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MiniMapCanvas_Button2",
                           "events":{"click":"___MiniMapCanvas_Button2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":89.4,
                                 "y":2,
                                 "styleName":"BtnSys"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_MiniMapCanvas_Button3",
                           "events":{"click":"___MiniMapCanvas_Button3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":76.8,
                                 "y":39.5,
                                 "styleName":"BtnHelp"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnPK",
                           "events":{"click":"__btnPK_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":57.7,
                                 "y":10,
                                 "styleName":"BtnPK"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnRank",
                           "events":{"click":"__btnRank_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":2,
                                 "styleName":"BtnRank"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnMsg",
                           "events":{"click":"__btnMsg_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":21,
                                 "styleName":"BtnMsg"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":62,
                        "height":72,
                        "styleName":"CanvasSystemShopBack2",
                        "clipContent":false,
                        "y":53,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn_sys_shop",
                           "events":{"click":"__btn_sys_shop_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":4,
                                 "y":10,
                                 "styleName":"BtnSystemShop"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn_changeVisible",
                  "events":{"click":"__btn_changeVisible_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"MiniCanvaHideBtn",
                        "x":148,
                        "y":78,
                        "width":12.9,
                        "height":27.9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"serverClock",
                  "events":{"mouseOver":"__serverClock_mouseOver"},
                  "stylesFactory":function():void
                  {
                     this.right = "161";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnServerClock",
                        "y":24
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnLine",
                  "events":{"click":"__btnLine_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "161";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnChangeLine",
                        "width":26,
                        "height":24,
                        "y":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"funCanvas",
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":135,
                        "width":85,
                        "height":262,
                        "styleName":"RightButtonBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_exchange",
                           "events":{"click":"__btn_exchange_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":6,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_product",
                           "events":{"click":"__btn_product_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":34,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_pet",
                           "events":{"click":"__btn_pet_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":62,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_life",
                           "events":{"click":"__btn_life_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":90,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_battle",
                           "events":{"click":"__btn_battle_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":118,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_autoExp",
                           "events":{"click":"__btn_autoExp_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":146,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_fazenda",
                           "events":{"click":"__btn_fazenda_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":174,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_petArena",
                           "events":{"click":"__btn_petArena_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":202,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"flyBtn",
                           "events":{"click":"__flyBtn_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "6";
                              this.right = "6";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":230,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnChange",
                  "events":{"click":"__btnChange_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":124,
                        "y":260,
                        "width":12,
                        "height":25,
                        "styleName":"BtnHideButtons",
                        "visible":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"quitBtn",
                  "events":{"click":"__quitBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":150,
                        "y":423,
                        "styleName":"BtnWbQuit",
                        "height":50,
                        "width":50,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"quitTrialsBtn",
                  "events":{"click":"__quitTrialsBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":150,
                        "y":423,
                        "styleName":"BtnWbQuit",
                        "height":50,
                        "width":50,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"timeTrials",
                  "stylesFactory":function():void
                  {
                     this.fontWeight = "bold";
                     this.color = 16777215;
                     this.fontSize = 15;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":423,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"liveTrials",
                  "stylesFactory":function():void
                  {
                     this.fontWeight = "bold";
                     this.color = 16777215;
                     this.fontSize = 15;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":443,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"randomBattleBtn",
                  "events":{"click":"__randomBattleBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":150,
                        "y":423,
                        "width":60,
                        "styleName":"BtnStdRed",
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn_battle_copy",
                  "events":{"click":"__btn_battle_copy_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":93,
                        "y":440,
                        "styleName":"BtnStdRed",
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _serverTime:Number;
      
      private var _124012844btnChange:Button;
      
      private var _102401118cav_mini:Canvas;
      
      internal var startTime:Number;
      
      private var _oldTime:int = 0;
      
      private var _207684226glowEffect:Glow;
      
      private var _1722718208_player:Player;
      
      private var _385483463btn_battle_copy:Button;
      
      private var _1271381783flyBtn:BasicGlowButton;
      
      private var _90794110_core:Core = Core.getInstance();
      
      private var _2108195583btn_life:BasicGlowButton;
      
      private var _784675189serverClock:Button;
      
      private var _leftTime:Number = 0;
      
      private var _469618999delayCanv:Canvas;
      
      private var _1378827387btnMsg:Button;
      
      public var _MiniMapCanvas_Button2:Button;
      
      public var _MiniMapCanvas_Button3:Button;
      
      private var _206155944btnRank:Button;
      
      private var _1292664926btn_fazenda:BasicGlowButton;
      
      private var _584079194btn_exchange:BasicGlowButton;
      
      private var _531048948btn_product:BasicGlowButton;
      
      private var INST_MAP_ID:int = 1999999;
      
      private var _570537338LB_delay:TextArea;
      
      private var _206557372btn_pet:BasicGlowButton;
      
      private var _658804109quitBtn:Button;
      
      private var _vm:ViewManager = ViewManager.getInstance();
      
      private var _1791483012titleLabel:RoundedLabel;
      
      private var _trialsTimer:Timer = new Timer(1000);
      
      private var _94069079btnPK:Button;
      
      private var _trialsAlert:Alert;
      
      private var teaAble:Boolean = false;
      
      mx_internal var _watchers:Array = [];
      
      private var _54214913randomBattleBtn:BasicGlowButton;
      
      private var _867914997btn_autoExp:BasicGlowButton;
      
      private var _616749141btn_sys_shop:Button;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1541853189btn_battle:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _103868960miMap:Button;
      
      private var _205984880btnLine:Button;
      
      public function MiniMapCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 220;
         this.height = 347;
         this.cacheAsBitmap = true;
         this.x = 139.35;
         this.y = 261;
         _MiniMapCanvas_Glow1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MiniMapCanvas._watcherSetupUtil = param1;
      }
      
      public function set btn_changeVisible(param1:Button) : void
      {
         var _loc2_:Object = this._1714155007btn_changeVisible;
         if(_loc2_ !== param1)
         {
            this._1714155007btn_changeVisible = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_changeVisible",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_product() : BasicGlowButton
      {
         return this._531048948btn_product;
      }
      
      public function set btn_life(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2108195583btn_life;
         if(_loc2_ !== param1)
         {
            this._2108195583btn_life = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_life",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _player() : Player
      {
         return this._1722718208_player;
      }
      
      public function onTrialsTimerAward(param1:Object) : void
      {
         if(Boolean(quitTrialsBtn) && quitTrialsBtn.visible)
         {
            setTrialsInfoVisible(param1.num,param1.life,true);
         }
      }
      
      public function set btn_autoExp(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._867914997btn_autoExp;
         if(_loc2_ !== param1)
         {
            this._867914997btn_autoExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_autoExp",_loc2_,param1));
         }
      }
      
      public function __quitTrialsBtn_click(param1:MouseEvent) : void
      {
         quitTrials();
      }
      
      public function trialsTimerStart(param1:Number) : void
      {
         if(_trialsTimer.running)
         {
            _trialsTimer.stop();
            _trialsTimer.removeEventListener(TimerEvent.TIMER,_trialsTimerStart);
         }
         if(param1 > 0)
         {
            _leftTime = param1;
            _trialsTimer.addEventListener(TimerEvent.TIMER,_trialsTimerStart);
            _trialsTimer.start();
         }
      }
      
      public function set btn_product(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._531048948btn_product;
         if(_loc2_ !== param1)
         {
            this._531048948btn_product = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_product",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get miMap() : Button
      {
         return this._103868960miMap;
      }
      
      private function showFazendaPanel() : void
      {
         if(_core.player.level < 20)
         {
            Alert.show(Language.FAZENDAPANEL_S[11]);
         }
         else
         {
            _core.view.changeVisible(ViewManager.PANEL_FAZENDA);
            _core.nextGuide(ViewManager.PANEL_FAZENDA,"",-1);
         }
         glowEffect.end();
         btn_fazenda.filters = [];
      }
      
      public function ___MiniMapCanvas_Button2_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_SYSTEM);
      }
      
      public function __btn_battle_click(param1:MouseEvent) : void
      {
         showBattle();
      }
      
      private function changePKStateNormal() : void
      {
         btnPK.selected = !btnPK.selected;
         setPKTooltip();
         _core.updateSettingNow("apvp",!btnPK.selected);
      }
      
      public function __btn_life_click(param1:MouseEvent) : void
      {
         showLife();
      }
      
      [Bindable(event="propertyChange")]
      public function get liveTrials() : Label
      {
         return this._897323049liveTrials;
      }
      
      private function showBattle() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_BATTLESET);
         _core.view.getUI(ViewManager.PANEL_BATTLESET).updateView();
      }
      
      private function set _player(param1:Player) : void
      {
         var _loc2_:Object = this._1722718208_player;
         if(_loc2_ !== param1)
         {
            this._1722718208_player = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_player",_loc2_,param1));
         }
      }
      
      public function set randomBattleBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._54214913randomBattleBtn;
         if(_loc2_ !== param1)
         {
            this._54214913randomBattleBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"randomBattleBtn",_loc2_,param1));
         }
      }
      
      public function __btnMsg_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_GAMEINTRO);
      }
      
      public function set miMap(param1:Button) : void
      {
         var _loc2_:Object = this._103868960miMap;
         if(_loc2_ !== param1)
         {
            this._103868960miMap = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miMap",_loc2_,param1));
         }
      }
      
      public function clear() : void
      {
      }
      
      public function set liveTrials(param1:Label) : void
      {
         var _loc2_:Object = this._897323049liveTrials;
         if(_loc2_ !== param1)
         {
            this._897323049liveTrials = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"liveTrials",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cav_mini() : Canvas
      {
         return this._102401118cav_mini;
      }
      
      public function set btnChange(param1:Button) : void
      {
         var _loc2_:Object = this._124012844btnChange;
         if(_loc2_ !== param1)
         {
            this._124012844btnChange = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnChange",_loc2_,param1));
         }
      }
      
      public function __btn_pet_click(param1:MouseEvent) : void
      {
         showPet();
      }
      
      private function showMove() : void
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Object = new Object();
         _loc2_.itemData = {
            "type":29,
            "id":1036
         };
         _loc2_.tips = Language.MINIMAPCANVAS_S[13];
         _loc1_.addItem(_loc2_);
         var _loc3_:Object = new Object();
         _loc3_.itemData = {
            "type":29,
            "id":1033
         };
         _loc3_.tips = Language.MINIMAPCANVAS_S[14];
         _loc1_.addItem(_loc3_);
         var _loc4_:Object = new Object();
         _loc4_.itemData = {
            "type":29,
            "id":1034
         };
         _loc4_.tips = Language.MINIMAPCANVAS_S[15];
         _loc1_.addItem(_loc4_);
         var _loc5_:MoneyItemPanel = MoneyItemPanel(_core.view.getUI(ViewManager.POPU_MONEYITEM));
         _loc5_.title = Language.MINIMAPCANVAS_S[16];
         _loc5_.arr = _loc1_;
         _loc5_.show();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLine() : Button
      {
         return this._205984880btnLine;
      }
      
      public function set btn_battle_copy(param1:Button) : void
      {
         var _loc2_:Object = this._385483463btn_battle_copy;
         if(_loc2_ !== param1)
         {
            this._385483463btn_battle_copy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_battle_copy",_loc2_,param1));
         }
      }
      
      public function setMsgStyleBig() : void
      {
         btnMsg.styleName = "BtnMsg";
         btnMsg.height = 72;
         btnMsg.width = 75;
         btnMsg.x = -16;
         btnMsg.y = -13;
      }
      
      public function __quitBtn_click(param1:MouseEvent) : void
      {
         quitWb();
      }
      
      public function changeFlyingButton() : void
      {
         if(!_player)
         {
            return;
         }
         if(_player.flyingState == GamePredef.FLYING_STATE_ON_GROUND || _player.flyingState == GamePredef.FLYING_STATE_LANDING)
         {
            flyBtn.label = Language.MINIMAPCANVAS_U[7];
         }
         else
         {
            flyBtn.label = Language.MINIMAPCANVAS_U[8];
         }
      }
      
      private function getLocationInfo(param1:int, param2:int) : String
      {
         if(_core.lineInfo)
         {
            return Number(_core.lineInfo.id + 1) + Language.MINIMAPCANVAS_S[5] + _core.data.gameData[GamePredef.TBL_MAP][_player.posMapId].name + " " + param1 + "," + param2;
         }
         return _core.data.gameData[GamePredef.TBL_MAP][_player.posMapId].name + " " + param1 + "," + param2;
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      private function _trialsTimerStart(param1:Event) : void
      {
         if(_leftTime < 0)
         {
            _trialsTimer.stop();
            _trialsTimer.removeEventListener(TimerEvent.TIMER,_trialsTimerStart);
            setTrialsInfoVisible(0,-1,false);
         }
         timeTrials.text = Language.MINIMAPCANVAS_S[41].replace("{num}",TimeUtil.secToTime(_leftTime));
         --_leftTime;
      }
      
      public function __serverClock_mouseOver(param1:MouseEvent) : void
      {
         updateTooltip();
      }
      
      [Bindable(event="propertyChange")]
      public function get serverClock() : Button
      {
         return this._784675189serverClock;
      }
      
      public function __btn_exchange_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_EXCHANGE);
      }
      
      public function __flyBtn_click(param1:MouseEvent) : void
      {
         changeFlyingState();
      }
      
      public function set timeTrials(param1:Label) : void
      {
         var _loc2_:Object = this._819791178timeTrials;
         if(_loc2_ !== param1)
         {
            this._819791178timeTrials = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeTrials",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_exchange() : BasicGlowButton
      {
         return this._584079194btn_exchange;
      }
      
      public function set btnPK(param1:Button) : void
      {
         var _loc2_:Object = this._94069079btnPK;
         if(_loc2_ !== param1)
         {
            this._94069079btnPK = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPK",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnRank() : Button
      {
         return this._206155944btnRank;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_pet() : BasicGlowButton
      {
         return this._206557372btn_pet;
      }
      
      public function enablePK() : void
      {
         btnPK.enabled = true;
         btnPK.selected = !getPVPState();
         setPKTooltip();
      }
      
      public function __btnPK_click(param1:MouseEvent) : void
      {
         changePKState();
      }
      
      public function set cav_mini(param1:Canvas) : void
      {
         var _loc2_:Object = this._102401118cav_mini;
         if(_loc2_ !== param1)
         {
            this._102401118cav_mini = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav_mini",_loc2_,param1));
         }
      }
      
      public function setMsgStyleNormal() : void
      {
         btnMsg.styleName = "BtnMsg2";
         btnMsg.height = 32;
         btnMsg.width = 33;
         btnMsg.x = 7;
         btnMsg.y = 9;
      }
      
      public function update() : void
      {
      }
      
      public function __btn_fazenda_click(param1:MouseEvent) : void
      {
         showFazendaPanel();
      }
      
      public function __btnChange_click(param1:MouseEvent) : void
      {
         change_canFun();
      }
      
      public function __miMap_click(param1:MouseEvent) : void
      {
         onMapCli(param1);
      }
      
      public function set btnLine(param1:Button) : void
      {
         var _loc2_:Object = this._205984880btnLine;
         if(_loc2_ !== param1)
         {
            this._205984880btnLine = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLine",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delayCanv() : Canvas
      {
         return this._469618999delayCanv;
      }
      
      private function showPet() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_PETFUNC);
         if(!_loc1_.visible)
         {
            _loc1_.show();
         }
         else
         {
            _loc1_.hide();
         }
      }
      
      public function disablePK() : void
      {
         btnPK.selected = false;
         btnPK.enabled = false;
         setPKTooltip();
      }
      
      public function set quitTrialsBtn(param1:Button) : void
      {
         var _loc2_:Object = this._705624208quitTrialsBtn;
         if(_loc2_ !== param1)
         {
            this._705624208quitTrialsBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quitTrialsBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flyBtn() : BasicGlowButton
      {
         return this._1271381783flyBtn;
      }
      
      public function __randomBattleBtn_click(param1:MouseEvent) : void
      {
         randomBattle();
      }
      
      private function _MiniMapCanvas_Glow1_i() : Glow
      {
         var _loc1_:Glow = new Glow();
         glowEffect = _loc1_;
         _loc1_.repeatCount = 10000;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 1;
         _loc1_.blurXFrom = 0;
         _loc1_.blurXTo = 10;
         _loc1_.blurYFrom = 0;
         _loc1_.blurYTo = 10;
         _loc1_.color = 16135947;
         return _loc1_;
      }
      
      private function showBuff() : void
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Object = new Object();
         _loc2_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":375
         };
         _loc2_.tips = Language.MINIMAPCANVAS_S[6];
         _loc1_.addItem(_loc2_);
         var _loc3_:Object = new Object();
         _loc3_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":379
         };
         _loc3_.tips = Language.MINIMAPCANVAS_S[7];
         _loc1_.addItem(_loc3_);
         var _loc4_:Object = new Object();
         _loc4_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":384
         };
         _loc4_.tips = Language.MINIMAPCANVAS_S[8];
         _loc1_.addItem(_loc4_);
         var _loc5_:Object = new Object();
         _loc5_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":383
         };
         _loc5_.tips = Language.MINIMAPCANVAS_S[9];
         _loc1_.addItem(_loc5_);
         var _loc6_:Object = new Object();
         _loc6_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":382
         };
         _loc6_.tips = Language.MINIMAPCANVAS_S[10];
         _loc1_.addItem(_loc6_);
         var _loc7_:MoneyItemPanel = MoneyItemPanel(_core.view.getUI(ViewManager.POPU_MONEYITEM));
         if(_loc7_.visible && _loc7_.title == Language.MINIMAPCANVAS_S[11])
         {
            _loc7_.hide();
         }
         else
         {
            _loc7_.title = Language.MINIMAPCANVAS_S[12];
            _loc7_.arr = _loc1_;
            _loc7_.show();
         }
      }
      
      private function onMapCli(param1:MouseEvent) : void
      {
         if(param1.ctrlKey)
         {
            _core.view.changeVisible(ViewManager.POPU_WORLDMAP);
         }
         else
         {
            _vm.changeVisible(ViewManager.PANEL_MAP);
         }
      }
      
      public function set LB_delay(param1:TextArea) : void
      {
         var _loc2_:Object = this._570537338LB_delay;
         if(_loc2_ !== param1)
         {
            this._570537338LB_delay = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"LB_delay",_loc2_,param1));
         }
      }
      
      private function updateTooltip() : void
      {
         var _loc1_:Date = new Date();
         var _loc2_:String = TimeUtil.dateFormatter.format(_loc1_);
         _loc1_.setTime(new Date().getTime() + _core.timeLag + TimeUtil.timeOSOffSet);
         var _loc3_:String = TimeUtil.dateFormatter.format(_loc1_);
         var _loc4_:String = Language.MINIMAPCANVAS_S[40].toString().replace("{ltime}",_loc2_).replace("{stime}",_loc3_);
         serverClock.toolTip = _loc4_;
      }
      
      private function getPVPState() : Boolean
      {
         return GamePredef.GLOBAL_SETTING.apvp;
      }
      
      public function change_canFun() : *
      {
         if(funCanvas.visible)
         {
            funCanvas.visible = false;
            btnChange.x = 208;
            btnChange.styleName = "BtnShowButtons";
         }
         else
         {
            funCanvas.visible = true;
            btnChange.x = 124;
            btnChange.styleName = "BtnHideButtons";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get randomBattleBtn() : BasicGlowButton
      {
         return this._54214913randomBattleBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_life() : BasicGlowButton
      {
         return this._2108195583btn_life;
      }
      
      public function set btnMsg(param1:Button) : void
      {
         var _loc2_:Object = this._1378827387btnMsg;
         if(_loc2_ !== param1)
         {
            this._1378827387btnMsg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnMsg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_autoExp() : BasicGlowButton
      {
         return this._867914997btn_autoExp;
      }
      
      private function checkNetDelay() : void
      {
         if(_core.remote.nc.connected)
         {
            startTime = new Date().getTime();
            _core.remote.call("checkNetDelay",new Responder(onCheckNetDelay));
         }
      }
      
      private function selectLine(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.view.changeVisible(ViewManager.MAIN_LINE);
         }
      }
      
      private function _MiniMapCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = getLocationInfo(_player.posX / 10,_player.posY / 10);
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = _core.by_session != "renren" ? Language.MINIMAPCANVAS_S[25] : Language.MINIMAPCANVAS_S[30];
         _loc1_ = Language.MINIMAPCANVAS_S[26];
         _loc1_ = Language.MINIMAPCANVAS_S[27];
         _loc1_ = Language.MINIMAPCANVAS_S[29];
         _loc1_ = Language.MINIMAPCANVAS_S[37];
         _loc1_ = Language.MINIMAPCANVAS_S[28];
         _loc1_ = Language.MINIMAPCANVAS_S[24];
         _loc1_ = Language.MINIMAPCANVAS_U[1];
         _loc1_ = Language.MINIMAPCANVAS_U[0];
         _loc1_ = Language.MINIMAPCANVAS_U[2];
         _loc1_ = Language.MINIMAPCANVAS_U[10];
         _loc1_ = Language.MINIMAPCANVAS_U[3];
         _loc1_ = Language.MINIMAPCANVAS_U[5];
         _loc1_ = Language.MINIMAPCANVAS_U[16];
         _loc1_ = Language.MINIMAPCANVAS_U[30];
         _loc1_ = Language.MINIMAPCANVAS_U[7];
         _loc1_ = Language.MINIMAPCANVAS_U[17];
         _loc1_ = Language.MINIMAPCANVAS_U[20];
         _loc1_ = Language.MINIMAPCANVAS_U[18];
      }
      
      public function set serverClock(param1:Button) : void
      {
         var _loc2_:Object = this._784675189serverClock;
         if(_loc2_ !== param1)
         {
            this._784675189serverClock = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serverClock",_loc2_,param1));
         }
      }
      
      public function set glowEffect(param1:Glow) : void
      {
         var _loc2_:Object = this._207684226glowEffect;
         if(_loc2_ !== param1)
         {
            this._207684226glowEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"glowEffect",_loc2_,param1));
         }
      }
      
      public function __btnLine_click(param1:MouseEvent) : void
      {
         switchLine();
      }
      
      public function set quitBtn(param1:Button) : void
      {
         var _loc2_:Object = this._658804109quitBtn;
         if(_loc2_ !== param1)
         {
            this._658804109quitBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quitBtn",_loc2_,param1));
         }
      }
      
      public function __btn_battle_copy_click(param1:MouseEvent) : void
      {
         showBattle();
      }
      
      public function set titleLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1791483012titleLabel;
         if(_loc2_ !== param1)
         {
            this._1791483012titleLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleLabel",_loc2_,param1));
         }
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      private function _MiniMapCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = getLocationInfo(_player.posX / 10,_player.posY / 10);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            titleLabel.text = param1;
         },"titleLabel.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            LB_delay.filters = param1;
         },"LB_delay.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.by_session != "renren" ? Language.MINIMAPCANVAS_S[25] : Language.MINIMAPCANVAS_S[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            miMap.toolTip = param1;
         },"miMap.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MiniMapCanvas_Button2.toolTip = param1;
         },"_MiniMapCanvas_Button2.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MiniMapCanvas_Button3.toolTip = param1;
         },"_MiniMapCanvas_Button3.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_S[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPK.toolTip = param1;
         },"btnPK.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_S[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnRank.toolTip = param1;
         },"btnRank.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnMsg.toolTip = param1;
         },"btnMsg.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_sys_shop.toolTip = param1;
         },"btn_sys_shop.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_exchange.label = param1;
         },"btn_exchange.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_product.label = param1;
         },"btn_product.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_pet.label = param1;
         },"btn_pet.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_life.label = param1;
         },"btn_life.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_battle.label = param1;
         },"btn_battle.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_autoExp.label = param1;
         },"btn_autoExp.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_fazenda.label = param1;
         },"btn_fazenda.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_petArena.label = param1;
         },"btn_petArena.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            flyBtn.label = param1;
         },"flyBtn.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            flyBtn.toolTip = param1;
         },"flyBtn.toolTip");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            randomBattleBtn.label = param1;
         },"randomBattleBtn.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_battle_copy.label = param1;
         },"btn_battle_copy.label");
         result[20] = binding;
         return result;
      }
      
      private function showProduct() : void
      {
         if(!_core.productFlag)
         {
            return;
         }
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         if(_loc1_.isFirst.indexOf(_core.player.id) <= 0 || _loc1_.lastLineId != _core.lineInfo.id)
         {
            _core.remote.call("checkEquipEdit",null,1);
            _core.remote.call("checkEquipEdit",null,3);
            _loc1_.lastLineId = _core.lineInfo.id;
            if(_loc1_.isFirst.indexOf(_core.player.id) <= 0)
            {
               _loc1_.isFirst = _loc1_.isFirst + _core.player.id + "|";
            }
         }
         if(!_loc1_.visible)
         {
            _loc1_.show();
            _loc1_.unselectAutoBuy();
         }
         else
         {
            _loc1_.hide();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_battle_copy() : Button
      {
         return this._385483463btn_battle_copy;
      }
      
      public function showFuncBtn(param1:Boolean) : void
      {
         this.funCanvas.visible = param1;
      }
      
      private function changeMiniCanvaVisible() : void
      {
         cav_mini.visible = !cav_mini.visible;
         if(cav_mini.visible)
         {
            btn_changeVisible.styleName = "MiniCanvaHideBtn";
         }
         else
         {
            btn_changeVisible.styleName = "MiniCanvaShowBtn";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnChange() : Button
      {
         return this._124012844btnChange;
      }
      
      private function showPetArena() : void
      {
         var _loc1_:Object = null;
         if(Boolean(_core.player) && _core.player.level >= 35)
         {
            _loc1_ = _core.view.getUI(ViewManager.PANEL_PET_ARENA);
            if(Boolean(_loc1_.initialized) && !_loc1_.first)
            {
               if(!_loc1_.visible)
               {
                  _loc1_.show();
               }
               else
               {
                  _loc1_.hide();
               }
            }
            else
            {
               _core.remote.call("getPetArenaData",null,true);
            }
         }
         else
         {
            Alert.show(Language.MINIMAPCANVAS_S[39]);
         }
      }
      
      private function switchLine() : void
      {
         if(_core.player.posMapId > INST_MAP_ID && _core.player.mapData.templateId !== 49)
         {
            if(_core.view.getUI(ViewManager.MAIN_TEMP_BAG_WARN).warnState)
            {
               Alert.show(Language.MINIMAPCANVAS_U[15],"",Alert.YES | Alert.NO,null,doSelect);
            }
            else
            {
               Alert.show(Language.MINIMAPCANVAS_U[12],"",Alert.YES | Alert.NO,null,doSelect);
            }
         }
         else if(_core.player.posMapId > 535 && _core.player.posMapId <= 557)
         {
            if(_core.view.getUI(ViewManager.MAIN_TEMP_BAG_WARN).warnState)
            {
               Alert.show(Language.MINIMAPCANVAS_U[15],"",Alert.YES | Alert.NO,null,doSelect);
            }
            else
            {
               Alert.show(Language.MINIMAPCANVAS_U[12],"",Alert.YES | Alert.NO,null,doSelect);
            }
         }
         else if(_core.view.getUI(ViewManager.MAIN_TEMP_BAG_WARN).warnState)
         {
            Alert.show(Language.TEMPORARYBAGWARNCANVAS_U[1],"",Alert.YES | Alert.NO,null,doSelect);
         }
         else
         {
            _core.view.changeVisible(ViewManager.MAIN_LINE);
         }
      }
      
      private function delayFlyButton() : Boolean
      {
         var _loc1_:* = undefined;
         if(_oldTime == 0)
         {
            _loc1_ = new Date();
            _oldTime = _loc1_.time;
            return true;
         }
         _loc1_ = new Date();
         if(_loc1_.time - _oldTime > 3000)
         {
            _oldTime = _loc1_.time;
            return true;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get timeTrials() : Label
      {
         return this._819791178timeTrials;
      }
      
      public function set btn_fazenda(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1292664926btn_fazenda;
         if(_loc2_ !== param1)
         {
            this._1292664926btn_fazenda = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_fazenda",_loc2_,param1));
         }
      }
      
      public function setTrialsInfoVisible(param1:Number, param2:Number, param3:Boolean) : void
      {
         if(_trialsTimer.running)
         {
            _trialsTimer.stop();
            _trialsTimer.removeEventListener(TimerEvent.TIMER,_trialsTimerStart);
         }
         if(param3)
         {
            trialsTimerStart(Math.floor(param1 / 1000));
         }
         if(param2 >= 0)
         {
            liveTrials.text = Language.MINIMAPCANVAS_S[42].replace("{num}",param2);
         }
         quitTrialsBtn.visible = param3;
         timeTrials.visible = param3;
         liveTrials.visible = param3;
      }
      
      public function reset() : void
      {
         _player = null;
      }
      
      public function __btnRank_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_ACTIVE);
      }
      
      private function quitTrials() : void
      {
         var str:String;
         var handler:Function = null;
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("trialsOut",null);
            }
         };
         if(_trialsAlert)
         {
            PopUpManager.removePopUp(_trialsAlert);
            _trialsAlert = null;
         }
         str = Language.TRIALS_MAIN_PANEL[8];
         _trialsAlert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
      }
      
      public function enableUI() : void
      {
         this.btn_sys_shop.enabled = true;
         this.btn_exchange.enabled = true;
         this.btn_product.enabled = true;
         this.btn_pet.enabled = true;
         this.btn_life.enabled = true;
         this.btn_autoExp.enabled = true;
         this.btnLine.enabled = true;
         this.flyBtn.enabled = true;
         this.btnRank.enabled = true;
         this.btn_fazenda.enabled = true;
         this.btn_petArena.enabled = true;
      }
      
      public function showNewGuide() : void
      {
         navigateToURL(new URLRequest(GamePredef.SERVER_ADD_ACTIVE),"_blank");
      }
      
      public function set btn_petArena(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2119526485btn_petArena;
         if(_loc2_ !== param1)
         {
            this._2119526485btn_petArena = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_petArena",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPK() : Button
      {
         return this._94069079btnPK;
      }
      
      public function set btnRank(param1:Button) : void
      {
         var _loc2_:Object = this._206155944btnRank;
         if(_loc2_ !== param1)
         {
            this._206155944btnRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnRank",_loc2_,param1));
         }
      }
      
      private function showAward() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_AWARD_ALL);
         if(!_loc1_.visible)
         {
            _loc1_.show();
         }
         else
         {
            _loc1_.hide();
         }
      }
      
      public function randomBattle() : void
      {
         _core.remote.call("autoBattleByRandom",null,_core.player.id);
      }
      
      public function set btn_exchange(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._584079194btn_exchange;
         if(_loc2_ !== param1)
         {
            this._584079194btn_exchange = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_exchange",_loc2_,param1));
         }
      }
      
      public function set btn_sys_shop(param1:Button) : void
      {
         var _loc2_:Object = this._616749141btn_sys_shop;
         if(_loc2_ !== param1)
         {
            this._616749141btn_sys_shop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_sys_shop",_loc2_,param1));
         }
      }
      
      private function setPKTooltip() : void
      {
         if(btnPK.selected)
         {
            btnPK.toolTip = Language.MINIMAPCANVAS_S[35];
         }
         else
         {
            btnPK.toolTip = Language.MINIMAPCANVAS_S[34];
         }
      }
      
      private function doSelect(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.view.changeVisible(ViewManager.MAIN_LINE);
            return;
         }
      }
      
      public function __btn_changeVisible_click(param1:MouseEvent) : void
      {
         changeMiniCanvaVisible();
      }
      
      public function set funCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1074097225funCanvas;
         if(_loc2_ !== param1)
         {
            this._1074097225funCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funCanvas",_loc2_,param1));
         }
      }
      
      private function onCheckNetDelay(param1:Number) : void
      {
         _serverTime = param1;
         _core.timeLag = param1 - new Date().getTime();
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = Math.round((_loc2_ - startTime) / 2);
         var _loc4_:int = _core.getNetDelayState(_loc3_);
         var _loc5_:String = Language.NET_DELAY_STATE_S[_loc4_];
         var _loc6_:String = GamePredef.NET_DELAY_COLOR[_loc4_];
         var _loc7_:String = Language.MINIMAPCANVAS_S[38].toString().replace("{state}",_loc5_).replace("{delay}",_loc3_).replace("{color}",_loc6_);
         LB_delay.htmlText = _loc7_;
         !delayCanv.visible && (delayCanv.visible = true);
      }
      
      public function ___MiniMapCanvas_Button3_click(param1:MouseEvent) : void
      {
         _vm.changeVisible(ViewManager.PANEL_HELP);
      }
      
      public function __btn_autoExp_click(param1:MouseEvent) : void
      {
         autoExp();
      }
      
      [Bindable(event="propertyChange")]
      public function get quitTrialsBtn() : Button
      {
         return this._705624208quitTrialsBtn;
      }
      
      public function set btn_pet(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._206557372btn_pet;
         if(_loc2_ !== param1)
         {
            this._206557372btn_pet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_pet",_loc2_,param1));
         }
      }
      
      public function quitWb() : void
      {
         _core.remote.call("wbLeaveMap",null,_core.player.id);
      }
      
      public function disableUI() : void
      {
         this.btn_sys_shop.enabled = false;
         this.btn_exchange.enabled = false;
         this.btn_product.enabled = false;
         this.btn_pet.enabled = false;
         this.btn_life.enabled = false;
         this.btn_autoExp.enabled = false;
         this.btnLine.enabled = false;
         this.flyBtn.enabled = false;
         this.btnRank.enabled = false;
         this.btn_fazenda.enabled = false;
         this.btn_petArena.enabled = false;
      }
      
      public function changeFlyingState() : void
      {
         if(delayFlyButton())
         {
            if(_core.player.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
            {
               _core.player.beginFlying();
            }
            else if(_player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
            {
               _core.player.stopFlying();
            }
            changeFlyingButton();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleLabel() : RoundedLabel
      {
         return this._1791483012titleLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnMsg() : Button
      {
         return this._1378827387btnMsg;
      }
      
      [Bindable(event="propertyChange")]
      public function get LB_delay() : TextArea
      {
         return this._570537338LB_delay;
      }
      
      [Bindable(event="propertyChange")]
      public function get glowEffect() : Glow
      {
         return this._207684226glowEffect;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MiniMapCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MiniMapCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_MiniMapCanvasWatcherSetupUtil");
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
      
      public function set delayCanv(param1:Canvas) : void
      {
         var _loc2_:Object = this._469618999delayCanv;
         if(_loc2_ !== param1)
         {
            this._469618999delayCanv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delayCanv",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get quitBtn() : Button
      {
         return this._658804109quitBtn;
      }
      
      private function showLife() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_LIFESKILL);
         if(!_loc1_.visible)
         {
            _loc1_.show();
         }
         else
         {
            _loc1_.hide();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_fazenda() : BasicGlowButton
      {
         return this._1292664926btn_fazenda;
      }
      
      private function changePKState() : void
      {
         btnPK.selected = !btnPK.selected;
         setPKTooltip();
         _core.updateSettingNow("apvp",!btnPK.selected);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_petArena() : BasicGlowButton
      {
         return this._2119526485btn_petArena;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_sys_shop() : Button
      {
         return this._616749141btn_sys_shop;
      }
      
      public function __btn_product_click(param1:MouseEvent) : void
      {
         showProduct();
      }
      
      [Bindable(event="propertyChange")]
      public function get funCanvas() : Canvas
      {
         return this._1074097225funCanvas;
      }
      
      public function showExit() : void
      {
         teaAble = true;
      }
      
      public function changeWbBtn(param1:int) : void
      {
         if(param1 == 1)
         {
            this.quitBtn.visible = false;
            this.btn_battle_copy.visible = false;
            this.btnChange.visible = true;
            showFuncBtn(true);
         }
         else if(param1 == 2)
         {
            this.quitBtn.visible = true;
            this.btn_battle_copy.visible = true;
            this.btnChange.visible = false;
            showFuncBtn(false);
         }
         else if(param1 == 4)
         {
            this.randomBattleBtn.visible = true;
         }
         else if(param1 == 5)
         {
            this.randomBattleBtn.visible = false;
         }
         else
         {
            this.quitBtn.visible = false;
            this.btn_battle_copy.visible = false;
            this.btnChange.visible = true;
            showFuncBtn(true);
         }
      }
      
      public function enterWb() : void
      {
         _core.remote.call("canEnterWbMap",null,_core.player.id);
      }
      
      private function changeLine() : void
      {
         var _loc1_:Player = _core.player;
         var _loc2_:int = 0;
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.posMapId;
         }
         _core.remote.call("inInstanceMap",new Responder(lineSelectResponder),_loc2_);
      }
      
      public function handleDelayTimer(param1:TimerEvent) : void
      {
         checkNetDelay();
      }
      
      private function lineSelectResponder(param1:Object) : void
      {
         if(param1 == true)
         {
            Alert.show(Language.MINIMAPCANVAS_U[6],"",Alert.YES | Alert.NO,null,selectLine);
         }
         else
         {
            _core.view.changeVisible(ViewManager.MAIN_LINE);
         }
      }
      
      public function __btn_sys_shop_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_SYSTEM_SHOP);
      }
      
      public function initView() : void
      {
         _player = _core.player;
         btnPK.selected = !getPVPState();
         setPKTooltip();
         if(_core.lineInfo)
         {
            btnLine.toolTip = Language.MINIMAPCANVAS_S[0] + _core.lineInfo.name + "\n" + Language.MINIMAPCANVAS_S[1] + Language.MINIMAPCANVAS_S[2];
         }
         else
         {
            btnLine.toolTip = Language.MINIMAPCANVAS_S[3] + Language.MINIMAPCANVAS_S[4];
         }
         changeFlyingButton();
      }
      
      public function playGlowEffect() : void
      {
         if(!glowEffect.isPlaying)
         {
            glowEffect.play([btn_fazenda]);
         }
      }
      
      public function __btn_petArena_click(param1:MouseEvent) : void
      {
         showPetArena();
      }
      
      private function showExp() : void
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Object = new Object();
         _loc2_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":1141
         };
         _loc2_.tips = Language.MINIMAPCANVAS_S[17];
         var _loc3_:Object = new Object();
         _loc3_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":368
         };
         _loc3_.tips = Language.MINIMAPCANVAS_S[18];
         var _loc4_:Object = new Object();
         _loc4_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":369
         };
         _loc4_.tips = Language.MINIMAPCANVAS_S[19];
         var _loc5_:Object = new Object();
         _loc5_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":1140
         };
         _loc5_.tips = Language.MINIMAPCANVAS_S[20];
         var _loc6_:Object = new Object();
         _loc6_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":298
         };
         _loc6_.tips = Language.MINIMAPCANVAS_S[21];
         var _loc7_:Object = new Object();
         _loc7_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":1857
         };
         _loc7_.tips = Language.MINIMAPCANVAS_S[31];
         var _loc8_:Object = new Object();
         _loc8_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":328
         };
         _loc8_.tips = Language.MINIMAPCANVAS_S[32];
         var _loc9_:Object = new Object();
         _loc9_.itemData = {
            "type":GamePredef.TBL_ITEM_TEMPLATE,
            "id":2056
         };
         _loc9_.tips = Language.MINIMAPCANVAS_S[33];
         _loc1_.addItem(_loc4_);
         _loc1_.addItem(_loc5_);
         _loc1_.addItem(_loc2_);
         _loc1_.addItem(_loc7_);
         _loc1_.addItem(_loc8_);
         _loc1_.addItem(_loc9_);
         var _loc10_:MoneyItemPanel = MoneyItemPanel(_core.view.getUI(ViewManager.POPU_MONEYITEM));
         if(_loc10_.visible && _loc10_.title == Language.MINIMAPCANVAS_S[22])
         {
            _loc10_.hide();
         }
         else
         {
            _loc10_.title = Language.MINIMAPCANVAS_S[23];
            _loc10_.arr = _loc1_;
            _loc10_.show();
         }
      }
      
      public function set flyBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1271381783flyBtn;
         if(_loc2_ !== param1)
         {
            this._1271381783flyBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flyBtn",_loc2_,param1));
         }
      }
      
      private function autoExp() : void
      {
         _core.view.changeVisible(ViewManager.MAIN_AUTO_EXP);
      }
      
      public function set btn_battle(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1541853189btn_battle;
         if(_loc2_ !== param1)
         {
            this._1541853189btn_battle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_battle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_battle() : BasicGlowButton
      {
         return this._1541853189btn_battle;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_changeVisible() : Button
      {
         return this._1714155007btn_changeVisible;
      }
   }
}

