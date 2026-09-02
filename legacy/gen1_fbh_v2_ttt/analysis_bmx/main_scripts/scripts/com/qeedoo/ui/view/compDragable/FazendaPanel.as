package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ArrayQueue;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FazendaFarm;
   import com.qeedoo.ui.view.comp.FazendaPorTraitCanvas;
   import com.qeedoo.ui.view.comp.FriendCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Fade;
   import mx.effects.Move;
   import mx.effects.Parallel;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.CursorManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FazendaPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _779863925btnFazendaSelf:Button;
      
      private var _1825424707charProCanv:FazendaPorTraitCanvas;
      
      public var _FazendaPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _97201859farm9:FazendaFarm;
      
      private var _529048897btnFazendaBag:Button;
      
      private var _128572838palEff_move:Move;
      
      private var _timer:Timer;
      
      private var _1281709865farm12:FazendaFarm;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _97201856farm6:FazendaFarm;
      
      private var _farmData:Object;
      
      private var _1022448295eff_mvoe:Move;
      
      private var _97201853farm3:FazendaFarm;
      
      private var _core:Core = Core.getInstance();
      
      private var _1281709862farm15:FazendaFarm;
      
      private const MIN_LIMIT_INTERVAL:Number = 60000;
      
      private var _107332log:LinkTextArea;
      
      private var _795753972fridProCanv:FazendaPorTraitCanvas;
      
      private var _1281709867farm10:FazendaFarm;
      
      private var _1264843059btnGetMine:Button;
      
      private var _1042049322moveCanva:Canvas;
      
      private var _128350289palEff_fade:Fade;
      
      private var _820043980imgEffect:Image;
      
      private var _97201857farm7:FazendaFarm;
      
      private var _1281709864farm13:FazendaFarm;
      
      private var _779866911btnFazendaShop:Button;
      
      private var _97201854farm4:FazendaFarm;
      
      private var _1191416940btnGetMineAll:Button;
      
      private var _2082333005btnClean:Button;
      
      private var _1757185436friendCanv:FriendCanvas;
      
      private var _97201851farm1:FazendaFarm;
      
      private var _1281709861farm16:FazendaFarm;
      
      private var _194320021btnEvents:Button;
      
      private var _1243540683moveBtn:Button;
      
      private var _1916398857imgCanv:SimpleCanvas;
      
      private var _fids:Array = [];
      
      private var _updateFlag:Boolean = false;
      
      private var _fazendaDataSelf:Object;
      
      private var _995633846palEff:Parallel;
      
      private var _1281709866farm11:FazendaFarm;
      
      mx_internal var _watchers:Array = [];
      
      private var _97201858farm8:FazendaFarm;
      
      private var _1460358754btnPlantMine:Button;
      
      private var _97201855farm5:FazendaFarm;
      
      private var _1281709863farm14:FazendaFarm;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _97201852farm2:FazendaFarm;
      
      private var _1185079743img_bg:Image;
      
      private var _lastTime:Number = 0;
      
      mx_internal var _bindings:Array = [];
      
      private var _farmLog:ArrayQueue = new ArrayQueue(20);
      
      private var _529035306btnFazendaPet:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":770,
               "height":510,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FazendaPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "id":"imgCanv",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":750,
                        "height":460,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"img_bg",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":99,
                                 "percentHeight":99
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":303,
                                 "height":65,
                                 "label":"操作区",
                                 "styleName":"fazendaMenuCanva",
                                 "x":307,
                                 "y":395,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnPlantMine",
                                    "events":{"click":"__btnPlantMine_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.left = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"plantMine",
                                          "width":58,
                                          "height":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnGetMine",
                                    "events":{"click":"__btnGetMine_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.left = "66";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"getMine",
                                          "width":58,
                                          "height":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnGetMineAll",
                                    "events":{"click":"__btnGetMineAll_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.left = "123";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"getMineAll",
                                          "width":58,
                                          "height":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnClean",
                                    "events":{"click":"__btnClean_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.left = "181";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"plantClean",
                                          "width":58,
                                          "height":59
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnEvents",
                                    "events":{"click":"__btnEvents_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.left = "239";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"fazendaEvents",
                                          "width":58,
                                          "height":59,
                                          "enabled":true
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm1",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":1};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm2",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":2};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm3",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":3};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm4",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":4};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm5",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":5};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm6",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":6};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm7",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":7};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm8",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":8};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm9",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":9};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm10",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":10};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm11",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":11};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm12",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":12};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm13",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":13};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm14",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":14};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm15",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":15};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaFarm,
                  "id":"farm16",
                  "propertiesFactory":function():Object
                  {
                     return {"idx":16};
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaPorTraitCanvas,
                  "id":"charProCanv",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":39
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":FazendaPorTraitCanvas,
                  "id":"fridProCanv",
                  "stylesFactory":function():void
                  {
                     this.top = "100";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":15};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.top = "39";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":300,
                        "height":60,
                        "label":"商店区",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnFazendaSelf",
                           "events":{"click":"__btnFazendaSelf_click"},
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                              this.right = "210";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"fazendaSelf",
                                 "width":58,
                                 "height":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnFazendaShop",
                           "events":{"click":"__btnFazendaShop_click"},
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                              this.right = "144";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"fazendaShop",
                                 "width":58,
                                 "height":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnFazendaBag",
                           "events":{"click":"__btnFazendaBag_click"},
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                              this.right = "78";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"fazendaBag",
                                 "width":58,
                                 "height":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btnFazendaPet",
                           "events":{"click":"__btnFazendaPet_click"},
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"fazendaPet",
                                 "width":58,
                                 "height":59
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"moveCanva",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":147,
                        "width":170,
                        "height":270,
                        "x":590,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"moveBtn",
                           "events":{"click":"__moveBtn_click"},
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"fazendaFrientsHide",
                                 "x":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FriendCanvas,
                           "id":"friendCanv",
                           "stylesFactory":function():void
                           {
                              this.right = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"fazendaMenuCanva"};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgEffect",
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               }),new UIComponentDescriptor({
                  "type":LinkTextArea,
                  "id":"log",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0.3;
                     this.backgroundColor = 0;
                     this.borderStyle = "none";
                     this.color = 16774324;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":13,
                        "y":350,
                        "width":300,
                        "height":140,
                        "mouseEnabled":false,
                        "editable":false,
                        "enabled":true,
                        "selectable":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _mineData:Object;
      
      public var _ownerId:int;
      
      public function FazendaPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 770;
         this.height = 510;
         this.styleName = "StandardContent";
         _FazendaPanel_Move1_i();
         _FazendaPanel_Parallel1_i();
         this.addEventListener("creationComplete",___FazendaPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FazendaPanel._watcherSetupUtil = param1;
      }
      
      public function __eff_mvoe_effectEnd(param1:EffectEvent) : void
      {
         moveEnd();
      }
      
      public function onMineTimeOut(param1:int) : void
      {
         if(this["farm" + param1].getHavestFlag())
         {
            this["farm" + param1].onMineTimeOut();
            if(_ownerId == _core.player.id)
            {
               this["farm" + param1].updateView();
            }
         }
      }
      
      public function set imgCanv(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._1916398857imgCanv;
         if(_loc2_ !== param1)
         {
            this._1916398857imgCanv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgCanv",_loc2_,param1));
         }
      }
      
      private function _FazendaPanel_Parallel1_i() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         palEff = _loc1_;
         _loc1_.duration = 2000;
         _loc1_.children = [_FazendaPanel_Move2_i(),_FazendaPanel_Fade1_i()];
         _loc1_.addEventListener("effectEnd",__palEff_effectEnd);
         return _loc1_;
      }
      
      public function onFarmLvUp(param1:Number) : void
      {
         _fazendaDataSelf.farm.exp = param1;
         charProCanv.onFarmLvUp(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get fridProCanv() : FazendaPorTraitCanvas
      {
         return this._795753972fridProCanv;
      }
      
      public function __btnFazendaSelf_click(param1:MouseEvent) : void
      {
         enterSelfFazenda();
      }
      
      public function set fridProCanv(param1:FazendaPorTraitCanvas) : void
      {
         var _loc2_:Object = this._795753972fridProCanv;
         if(_loc2_ !== param1)
         {
            this._795753972fridProCanv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fridProCanv",_loc2_,param1));
         }
      }
      
      public function __btnClean_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_CLEAR_PLANT);
      }
      
      public function updateActpoint() : void
      {
         if(initialized)
         {
            charProCanv.changeActpntAndMovePntVisible();
         }
      }
      
      public function __btnFazendaBag_click(param1:MouseEvent) : void
      {
         openFazendaBag();
      }
      
      private function openPetFightPanel() : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc1_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:* = _core.player.petList;
         for(_loc2_ in _loc5_)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _core.nextGuide(ViewManager.PANEL_PETFIGHT_CONF,"",-1);
            _loc3_ = _core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF);
            _loc3_.visible = !_loc3_.visible;
            _loc3_.petCrossConf = {
               "f":false,
               "t":false
            };
         }
         else
         {
            Alert.show(Language.FAZENDAPANEL_S[12]);
         }
      }
      
      public function set btnFazendaShop(param1:Button) : void
      {
         var _loc2_:Object = this._779866911btnFazendaShop;
         if(_loc2_ !== param1)
         {
            this._779866911btnFazendaShop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFazendaShop",_loc2_,param1));
         }
      }
      
      public function onAddMineral(param1:Object) : void
      {
         var _loc4_:String = null;
         if(!param1.f)
         {
            return;
         }
         var _loc2_:Object = {};
         _loc2_.id = param1.mid;
         _loc2_.maxNum = GameData.d[GamePredef.TBL_MINERAL_TEMPLATE][param1.mid].num;
         _loc2_.num = GameData.d[GamePredef.TBL_MINERAL_TEMPLATE][param1.mid].num;
         _loc2_.time = param1.time;
         _fazendaDataSelf.mine[param1.fid] = _loc2_;
         var _loc3_:int = param1.exp - _fazendaDataSelf.farm.exp;
         if(_loc3_ < 1)
         {
            addFarmLog(Language.FAZENDAPANEL_S[19] + "\n");
         }
         else
         {
            _loc4_ = Language.FAZENDAPANEL_S[14].toString().replace("{num}",_loc3_);
            addFarmLog(_loc4_);
         }
         charProCanv.onFarmLvUp(param1.exp);
         _fazendaDataSelf.farm.exp = param1.exp;
         this["farm" + param1.fid].setMid(param1.mid);
         this["farm" + param1.fid].setMineState(GamePredef.MINE_GROW_UP);
         this["farm" + param1.fid].setNum(_loc2_.num);
         this["farm" + param1.fid].setTime(_loc2_.time);
         this["farm" + param1.fid].updateView();
      }
      
      public function handleClick(param1:MouseEvent) : void
      {
         _core.view.resoreMouse();
         CursorManager.removeAllCursors();
      }
      
      [Bindable(event="propertyChange")]
      public function get img_bg() : Image
      {
         return this._1185079743img_bg;
      }
      
      [Bindable(event="propertyChange")]
      public function get palEff_fade() : Fade
      {
         return this._128350289palEff_fade;
      }
      
      public function set moveCanva(param1:Canvas) : void
      {
         var _loc2_:Object = this._1042049322moveCanva;
         if(_loc2_ !== param1)
         {
            this._1042049322moveCanva = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCanva",_loc2_,param1));
         }
      }
      
      public function updateFriendsData(param1:Object) : void
      {
         friendCanv.initFriendsData(param1);
      }
      
      public function __btnFazendaShop_click(param1:MouseEvent) : void
      {
         openFazendaShop();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPlantMine() : Button
      {
         return this._1460358754btnPlantMine;
      }
      
      [Bindable(event="propertyChange")]
      public function get friendCanv() : FriendCanvas
      {
         return this._1757185436friendCanv;
      }
      
      public function set imgEffect(param1:Image) : void
      {
         var _loc2_:Object = this._820043980imgEffect;
         if(_loc2_ !== param1)
         {
            this._820043980imgEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgEffect",_loc2_,param1));
         }
      }
      
      private function openFazendaShop() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_FAZENDA_SHOP);
      }
      
      public function playerAction(param1:int, param2:Object, param3:Array) : void
      {
         palEff.end();
         imgEffect.source = param2;
         imgEffect.filters = param3;
         imgEffect.visible = true;
         var _loc4_:uint = this["farm" + 2].x + this["farm" + 2].width / 2;
         var _loc5_:uint = this["farm" + 2].y + this["farm" + 2].height / 2;
         palEff.target = imgEffect;
         palEff_move.xFrom = this["farm" + param1].x + this["farm" + param1].width / 2 - _loc4_;
         palEff_move.yFrom = this["farm" + param1].y + this["farm" + param1].height / 2 - _loc5_;
         palEff_move.yBy = -_loc5_;
         palEff_move.xBy = 0;
         palEff.play();
      }
      
      public function set log(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._107332log;
         if(_loc2_ !== param1)
         {
            this._107332log = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"log",_loc2_,param1));
         }
      }
      
      public function set img_bg(param1:Image) : void
      {
         var _loc2_:Object = this._1185079743img_bg;
         if(_loc2_ !== param1)
         {
            this._1185079743img_bg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_bg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnEvents() : Button
      {
         return this._194320021btnEvents;
      }
      
      public function set btnClean(param1:Button) : void
      {
         var _loc2_:Object = this._2082333005btnClean;
         if(_loc2_ !== param1)
         {
            this._2082333005btnClean = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnClean",_loc2_,param1));
         }
      }
      
      public function set palEff_fade(param1:Fade) : void
      {
         var _loc2_:Object = this._128350289palEff_fade;
         if(_loc2_ !== param1)
         {
            this._128350289palEff_fade = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"palEff_fade",_loc2_,param1));
         }
      }
      
      public function set palEff(param1:Parallel) : void
      {
         var _loc2_:Object = this._995633846palEff;
         if(_loc2_ !== param1)
         {
            this._995633846palEff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"palEff",_loc2_,param1));
         }
      }
      
      private function _FazendaPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDAPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FazendaPanel_BasicTitleCanvas1.text = param1;
         },"_FazendaPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDAPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnGetMineAll.toolTip = param1;
         },"btnGetMineAll.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 192;
         },function(param1:Number):void
         {
            farm1.x = param1;
         },"farm1.x");
         result[2] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 0;
         },function(param1:Number):void
         {
            farm1.y = param1;
         },"farm1.y");
         result[3] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 135;
         },function(param1:Number):void
         {
            farm2.x = param1;
         },"farm2.x");
         result[4] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 32;
         },function(param1:Number):void
         {
            farm2.y = param1;
         },"farm2.y");
         result[5] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 82;
         },function(param1:Number):void
         {
            farm3.x = param1;
         },"farm3.x");
         result[6] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 65;
         },function(param1:Number):void
         {
            farm3.y = param1;
         },"farm3.y");
         result[7] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 30;
         },function(param1:Number):void
         {
            farm4.x = param1;
         },"farm4.x");
         result[8] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 96;
         },function(param1:Number):void
         {
            farm4.y = param1;
         },"farm4.y");
         result[9] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 247;
         },function(param1:Number):void
         {
            farm5.x = param1;
         },"farm5.x");
         result[10] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 36;
         },function(param1:Number):void
         {
            farm5.y = param1;
         },"farm5.y");
         result[11] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 192;
         },function(param1:Number):void
         {
            farm6.x = param1;
         },"farm6.x");
         result[12] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 68;
         },function(param1:Number):void
         {
            farm6.y = param1;
         },"farm6.y");
         result[13] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 139;
         },function(param1:Number):void
         {
            farm7.x = param1;
         },"farm7.x");
         result[14] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 101;
         },function(param1:Number):void
         {
            farm7.y = param1;
         },"farm7.y");
         result[15] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 85;
         },function(param1:Number):void
         {
            farm8.x = param1;
         },"farm8.x");
         result[16] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 131;
         },function(param1:Number):void
         {
            farm8.y = param1;
         },"farm8.y");
         result[17] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 304;
         },function(param1:Number):void
         {
            farm9.x = param1;
         },"farm9.x");
         result[18] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 72;
         },function(param1:Number):void
         {
            farm9.y = param1;
         },"farm9.y");
         result[19] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 249;
         },function(param1:Number):void
         {
            farm10.x = param1;
         },"farm10.x");
         result[20] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 104;
         },function(param1:Number):void
         {
            farm10.y = param1;
         },"farm10.y");
         result[21] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 196;
         },function(param1:Number):void
         {
            farm11.x = param1;
         },"farm11.x");
         result[22] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 137;
         },function(param1:Number):void
         {
            farm11.y = param1;
         },"farm11.y");
         result[23] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 142;
         },function(param1:Number):void
         {
            farm12.x = param1;
         },"farm12.x");
         result[24] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 168;
         },function(param1:Number):void
         {
            farm12.y = param1;
         },"farm12.y");
         result[25] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 360;
         },function(param1:Number):void
         {
            farm13.x = param1;
         },"farm13.x");
         result[26] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 108;
         },function(param1:Number):void
         {
            farm13.y = param1;
         },"farm13.y");
         result[27] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 305;
         },function(param1:Number):void
         {
            farm14.x = param1;
         },"farm14.x");
         result[28] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 140;
         },function(param1:Number):void
         {
            farm14.y = param1;
         },"farm14.y");
         result[29] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 252;
         },function(param1:Number):void
         {
            farm15.x = param1;
         },"farm15.x");
         result[30] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 173;
         },function(param1:Number):void
         {
            farm15.y = param1;
         },"farm15.y");
         result[31] = binding;
         binding = new Binding(this,function():Number
         {
            return 91 + 198;
         },function(param1:Number):void
         {
            farm16.x = param1;
         },"farm16.x");
         result[32] = binding;
         binding = new Binding(this,function():Number
         {
            return 140 + 203;
         },function(param1:Number):void
         {
            farm16.y = param1;
         },"farm16.y");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return moveCanva;
         },function(param1:Object):void
         {
            eff_mvoe.target = param1;
         },"eff_mvoe.target");
         result[34] = binding;
         return result;
      }
      
      private function onValueCommit(param1:Event) : void
      {
         var _loc2_:LinkTextArea = param1.target as LinkTextArea;
         _loc2_.verticalScrollPosition = _loc2_.maxVerticalScrollPosition;
      }
      
      public function set eff_mvoe(param1:Move) : void
      {
         var _loc2_:Object = this._1022448295eff_mvoe;
         if(_loc2_ !== param1)
         {
            this._1022448295eff_mvoe = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eff_mvoe",_loc2_,param1));
         }
      }
      
      public function __palEff_effectEnd(param1:EffectEvent) : void
      {
         palEffectEnd();
      }
      
      [Bindable(event="propertyChange")]
      public function get farm1() : FazendaFarm
      {
         return this._97201851farm1;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm2() : FazendaFarm
      {
         return this._97201852farm2;
      }
      
      [Bindable(event="propertyChange")]
      public function get charProCanv() : FazendaPorTraitCanvas
      {
         return this._1825424707charProCanv;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFazendaBag() : Button
      {
         return this._529048897btnFazendaBag;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm6() : FazendaFarm
      {
         return this._97201856farm6;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm7() : FazendaFarm
      {
         return this._97201857farm7;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm8() : FazendaFarm
      {
         return this._97201858farm8;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm9() : FazendaFarm
      {
         return this._97201859farm9;
      }
      
      public function set btnPlantMine(param1:Button) : void
      {
         var _loc2_:Object = this._1460358754btnPlantMine;
         if(_loc2_ !== param1)
         {
            this._1460358754btnPlantMine = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPlantMine",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get farm4() : FazendaFarm
      {
         return this._97201854farm4;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm5() : FazendaFarm
      {
         return this._97201855farm5;
      }
      
      [Bindable(event="propertyChange")]
      public function get moveBtn() : Button
      {
         return this._1243540683moveBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm3() : FazendaFarm
      {
         return this._97201853farm3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnGetMine() : Button
      {
         return this._1264843059btnGetMine;
      }
      
      public function onAddFarmNum(param1:int) : void
      {
         _farmData.farmNum = param1;
         updateView();
      }
      
      public function set friendCanv(param1:FriendCanvas) : void
      {
         var _loc2_:Object = this._1757185436friendCanv;
         if(_loc2_ !== param1)
         {
            this._1757185436friendCanv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendCanv",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get farm10() : FazendaFarm
      {
         return this._1281709867farm10;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm11() : FazendaFarm
      {
         return this._1281709866farm11;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm12() : FazendaFarm
      {
         return this._1281709865farm12;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm13() : FazendaFarm
      {
         return this._1281709864farm13;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm14() : FazendaFarm
      {
         return this._1281709863farm14;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm15() : FazendaFarm
      {
         return this._1281709862farm15;
      }
      
      [Bindable(event="propertyChange")]
      public function get farm16() : FazendaFarm
      {
         return this._1281709861farm16;
      }
      
      public function set btnFazendaSelf(param1:Button) : void
      {
         var _loc2_:Object = this._779863925btnFazendaSelf;
         if(_loc2_ !== param1)
         {
            this._779863925btnFazendaSelf = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFazendaSelf",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         super.visible = param1;
         if(param1)
         {
            if(_updateFlag)
            {
               _ownerId = _core.player.id;
               updateView();
            }
            _loc2_ = new Date().getTime();
            if(_loc2_ - _lastTime >= MIN_LIMIT_INTERVAL)
            {
               _core.remote.getFarmByCid(_core.player.id);
               _core.remote.getFriendFarm();
               _lastTime = _loc2_;
            }
         }
         else
         {
            _core.view.resoreMouse();
            CursorManager.removeAllCursors();
         }
      }
      
      private function _FazendaPanel_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         palEff_fade = _loc1_;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 0;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgCanv() : SimpleCanvas
      {
         return this._1916398857imgCanv;
      }
      
      public function init() : void
      {
         img_bg.source = ResManager.hash(GamePredef.RES_FARM_BG);
         log.addEventListener(FlexEvent.VALUE_COMMIT,onValueCommit);
         log.field.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         imgCanv.addEventListener(MouseEvent.CLICK,handleClick);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFazendaShop() : Button
      {
         return this._779866911btnFazendaShop;
      }
      
      public function reapAllMines() : void
      {
         var _loc2_:* = undefined;
         if(_ownerId != _core.player.id)
         {
            return;
         }
         _fids = [];
         var _loc1_:int = 1;
         while(_loc1_ <= 16)
         {
            _loc2_ = this["farm" + _loc1_].getMineState();
            if(_loc2_ == GamePredef.MINE_GROW_UP)
            {
               _fids.push(_loc1_);
            }
            _loc1_++;
         }
         if(_fids.length > 0)
         {
            _timer = new Timer(500,_fids.length);
            _timer.addEventListener(TimerEvent.TIMER,handleReapTimer);
            _timer.addEventListener(TimerEvent.TIMER_COMPLETE,handleReapComplete);
            _timer.start();
         }
      }
      
      public function set btnEvents(param1:Button) : void
      {
         var _loc2_:Object = this._194320021btnEvents;
         if(_loc2_ !== param1)
         {
            this._194320021btnEvents = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnEvents",_loc2_,param1));
         }
      }
      
      private function openFazendaBag() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_FAZENDA_BAG);
      }
      
      public function palEffectEnd() : void
      {
         imgEffect.visible = false;
      }
      
      public function updateView() : void
      {
         var _loc2_:Number = NaN;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         var _loc1_:int = 1;
         while(_loc1_ <= GamePredef.MAX_FARM_NUM)
         {
            this["farm" + _loc1_].reset();
            if(_loc1_ <= _farmData.farmNum)
            {
               this["farm" + _loc1_].setState(GamePredef.FARM_STATE_OPEN);
               if(Boolean(_mineData) && Boolean(_mineData[_loc1_]))
               {
                  this["farm" + _loc1_].setState(GamePredef.FARM_STATE_OPEN);
               }
            }
            else if(_loc1_ == Number(_farmData.farmNum) + 1)
            {
               this["farm" + _loc1_].setState(GamePredef.FARM_STATE_CAN_OPEN);
            }
            else
            {
               this["farm" + _loc1_].setState(GamePredef.FARM_STATE_CLOSE);
            }
            if(Boolean(_mineData) && Boolean(_mineData[_loc1_]))
            {
               if(!_mineData[_loc1_]["havestFlag"])
               {
                  this["farm" + _loc1_].setNum(_mineData[_loc1_].num);
                  this["farm" + _loc1_].setMid(_mineData[_loc1_].id);
                  this["farm" + _loc1_].setMineState(GamePredef.MINE_GROW_UP);
               }
               else
               {
                  _loc2_ = new Date().getTime();
                  if(_loc2_ + _core.timeLag < _mineData[_loc1_].time)
                  {
                     this["farm" + _loc1_].setState(GamePredef.FARM_STATE_WAIT);
                  }
                  else
                  {
                     this["farm" + _loc1_].onMineTimeOut();
                  }
               }
               this["farm" + _loc1_].setTime(_mineData[_loc1_].time);
            }
            this["farm" + _loc1_].setOwnerId(_farmData.cid);
            this["farm" + _loc1_].updateView();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCanva() : Canvas
      {
         return this._1042049322moveCanva;
      }
      
      public function set btnGetMineAll(param1:Button) : void
      {
         var _loc2_:Object = this._1191416940btnGetMineAll;
         if(_loc2_ !== param1)
         {
            this._1191416940btnGetMineAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnGetMineAll",_loc2_,param1));
         }
      }
      
      public function __moveBtn_click(param1:MouseEvent) : void
      {
         moveFriendCanva();
      }
      
      public function getFarmNum() : int
      {
         return _fazendaDataSelf.farm.farmNum;
      }
      
      private function mouseAction(param1:MouseEvent, param2:int) : void
      {
         param1.stopImmediatePropagation();
         _core.view.mouseState = param2;
         CursorManager.setCursor(ResManager.MOUSE_ACTION_IMG[param2]);
      }
      
      private function handleReapComplete(param1:TimerEvent) : void
      {
         _timer.removeEventListener(TimerEvent.TIMER,handleReapTimer);
         _timer = null;
      }
      
      public function __btnGetMineAll_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_REAP_ALL);
      }
      
      public function ___FazendaPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function updateFazendaData(param1:Object, param2:Boolean) : void
      {
         _updateFlag = false;
         if(param1.farm.cid == _core.player.id)
         {
            if(!param1.mine)
            {
               param1.mine = {};
            }
            _fazendaDataSelf = param1;
         }
         _farmData = param1.farm;
         _mineData = param1.mine;
         _ownerId = _farmData.cid;
         var _loc3_:Object = {};
         _loc3_.exp = _farmData.exp;
         _loc3_.name = _farmData.name;
         if(_ownerId == _core.player.id)
         {
            _loc3_.level = _core.player.level;
            _loc3_.movePnt = _core.player.movePnt;
            _loc3_.maxMovePnt = _core.player.maxMovePnt;
            charProCanv.updateCharProp(_loc3_);
            fridProCanv.visible = false;
            btnClean.enabled = true;
            btnPlantMine.enabled = true;
            btnFazendaShop.enabled = true;
            btnGetMineAll.enabled = true;
         }
         else
         {
            btnClean.enabled = false;
            btnPlantMine.enabled = false;
            btnFazendaShop.enabled = false;
            btnGetMineAll.enabled = false;
            if(param1.icon)
            {
               fridProCanv.updateCharHeadImage(param1.icon);
            }
            else
            {
               fridProCanv.hideHeadImage();
            }
            if(param1.lv)
            {
               _loc3_.level = param1.lv;
            }
            else
            {
               _loc3_.level = "--";
            }
            _loc3_.movePnt = "--";
            _loc3_.maxMovePnt = "--";
            fridProCanv.updateCharProp(_loc3_);
            fridProCanv.visible = true;
            if(param2)
            {
               updateFriendFazenda(param1);
            }
         }
         charProCanv.changeActpntAndMovePntVisible();
         updateView();
      }
      
      public function __btnPlantMine_click(param1:MouseEvent) : void
      {
         gotoPlantMine();
      }
      
      public function addFarmLog(param1:String) : void
      {
         _farmLog.push(param1);
         log.htmlText = _farmLog.join();
      }
      
      public function reset() : void
      {
         if(initialized)
         {
            friendCanv.reset();
            log.htmlText = "";
            fridProCanv.visible = false;
         }
         _farmLog.clear();
         _lastTime = 0;
         _updateFlag = true;
         _mineData = {};
         if(_farmData)
         {
            _farmData.farmNum = 2;
         }
      }
      
      private function moveEnd() : void
      {
         if(moveCanva.x > 700)
         {
            friendCanv.visible = false;
         }
      }
      
      private function gotoPlantMine() : void
      {
         _core.view.getUI(ViewManager.PANEL_FAZENDA_SHOP).visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnClean() : Button
      {
         return this._2082333005btnClean;
      }
      
      private function _FazendaPanel_Move2_i() : Move
      {
         var _loc1_:Move = new Move();
         palEff_move = _loc1_;
         return _loc1_;
      }
      
      public function set palEff_move(param1:Move) : void
      {
         var _loc2_:Object = this._128572838palEff_move;
         if(_loc2_ !== param1)
         {
            this._128572838palEff_move = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"palEff_move",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get log() : LinkTextArea
      {
         return this._107332log;
      }
      
      [Bindable(event="propertyChange")]
      public function get eff_mvoe() : Move
      {
         return this._1022448295eff_mvoe;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgEffect() : Image
      {
         return this._820043980imgEffect;
      }
      
      [Bindable(event="propertyChange")]
      public function get palEff() : Parallel
      {
         return this._995633846palEff;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFazendaSelf() : Button
      {
         return this._779863925btnFazendaSelf;
      }
      
      public function updateMovePoint() : void
      {
         if(initialized)
         {
            charProCanv.updateMovePoint();
         }
      }
      
      public function set farm2(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201852farm2;
         if(_loc2_ !== param1)
         {
            this._97201852farm2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm2",_loc2_,param1));
         }
      }
      
      private function handleReapTimer(param1:TimerEvent) : void
      {
         var _loc2_:int = _fids.shift();
         _core.remote.harvestMine(_loc2_);
         trace(" ==> 收获 农田_" + _loc2_);
      }
      
      public function __btnGetMine_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_REAP_MINE);
      }
      
      public function __btnEvents_click(param1:MouseEvent) : void
      {
         gotoLogPanel();
      }
      
      public function set farm6(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201856farm6;
         if(_loc2_ !== param1)
         {
            this._97201856farm6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm6",_loc2_,param1));
         }
      }
      
      public function set charProCanv(param1:FazendaPorTraitCanvas) : void
      {
         var _loc2_:Object = this._1825424707charProCanv;
         if(_loc2_ !== param1)
         {
            this._1825424707charProCanv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charProCanv",_loc2_,param1));
         }
      }
      
      public function set farm7(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201857farm7;
         if(_loc2_ !== param1)
         {
            this._97201857farm7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm7",_loc2_,param1));
         }
      }
      
      public function set farm4(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201854farm4;
         if(_loc2_ !== param1)
         {
            this._97201854farm4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm4",_loc2_,param1));
         }
      }
      
      public function set farm1(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201851farm1;
         if(_loc2_ !== param1)
         {
            this._97201851farm1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm1",_loc2_,param1));
         }
      }
      
      public function set farm9(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201859farm9;
         if(_loc2_ !== param1)
         {
            this._97201859farm9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm9",_loc2_,param1));
         }
      }
      
      private function _FazendaPanel_Move1_i() : Move
      {
         var _loc1_:Move = new Move();
         eff_mvoe = _loc1_;
         _loc1_.duration = 600;
         _loc1_.addEventListener("effectEnd",__eff_mvoe_effectEnd);
         BindingManager.executeBindings(this,"eff_mvoe",eff_mvoe);
         return _loc1_;
      }
      
      public function set farm8(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201858farm8;
         if(_loc2_ !== param1)
         {
            this._97201858farm8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm8",_loc2_,param1));
         }
      }
      
      public function set btnFazendaBag(param1:Button) : void
      {
         var _loc2_:Object = this._529048897btnFazendaBag;
         if(_loc2_ !== param1)
         {
            this._529048897btnFazendaBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFazendaBag",_loc2_,param1));
         }
      }
      
      public function set farm3(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201853farm3;
         if(_loc2_ !== param1)
         {
            this._97201853farm3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnGetMineAll() : Button
      {
         return this._1191416940btnGetMineAll;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FazendaPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FazendaPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FazendaPanelWatcherSetupUtil");
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
      
      public function set btnGetMine(param1:Button) : void
      {
         var _loc2_:Object = this._1264843059btnGetMine;
         if(_loc2_ !== param1)
         {
            this._1264843059btnGetMine = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnGetMine",_loc2_,param1));
         }
      }
      
      private function enterSelfFazenda() : void
      {
         fridProCanv.visible = false;
         updateFazendaData(_fazendaDataSelf,false);
      }
      
      private function gotoLogPanel() : void
      {
         _core.view.getUI(ViewManager.POP_FAZENDA_LOG).show();
      }
      
      public function onDelMineral(param1:int) : void
      {
         var _loc2_:* = undefined;
         this["farm" + param1].resetMine();
         for(_loc2_ in _mineData)
         {
            if(_loc2_ == param1)
            {
               delete _mineData[_loc2_];
               break;
            }
         }
      }
      
      public function onSteelMine(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = undefined;
         friendCanv.onSteelMine(param1,param2,param3);
         if(param2 == _ownerId)
         {
            this["farm" + param1].onSteelMine(param3);
            for(_loc4_ in _mineData)
            {
               if(_loc4_ == param1)
               {
                  _mineData[_loc4_].num = this["farm" + param1]["_num"];
                  break;
               }
            }
         }
      }
      
      public function set farm10(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._1281709867farm10;
         if(_loc2_ !== param1)
         {
            this._1281709867farm10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm10",_loc2_,param1));
         }
      }
      
      public function set farm5(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._97201855farm5;
         if(_loc2_ !== param1)
         {
            this._97201855farm5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm5",_loc2_,param1));
         }
      }
      
      public function set btnFazendaPet(param1:Button) : void
      {
         var _loc2_:Object = this._529035306btnFazendaPet;
         if(_loc2_ !== param1)
         {
            this._529035306btnFazendaPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnFazendaPet",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get palEff_move() : Move
      {
         return this._128572838palEff_move;
      }
      
      public function set farm12(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._1281709865farm12;
         if(_loc2_ !== param1)
         {
            this._1281709865farm12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm12",_loc2_,param1));
         }
      }
      
      public function set farm13(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._1281709864farm13;
         if(_loc2_ !== param1)
         {
            this._1281709864farm13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm13",_loc2_,param1));
         }
      }
      
      public function set farm14(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._1281709863farm14;
         if(_loc2_ !== param1)
         {
            this._1281709863farm14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm14",_loc2_,param1));
         }
      }
      
      public function set farm11(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._1281709866farm11;
         if(_loc2_ !== param1)
         {
            this._1281709866farm11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm11",_loc2_,param1));
         }
      }
      
      public function set farm15(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._1281709862farm15;
         if(_loc2_ !== param1)
         {
            this._1281709862farm15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm15",_loc2_,param1));
         }
      }
      
      public function set farm16(param1:FazendaFarm) : void
      {
         var _loc2_:Object = this._1281709861farm16;
         if(_loc2_ !== param1)
         {
            this._1281709861farm16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"farm16",_loc2_,param1));
         }
      }
      
      public function set moveBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1243540683moveBtn;
         if(_loc2_ !== param1)
         {
            this._1243540683moveBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveBtn",_loc2_,param1));
         }
      }
      
      private function updateFriendFazenda(param1:Object) : void
      {
         friendCanv.updateSingleFriendData(param1);
      }
      
      private function _FazendaPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAZENDAPANEL_U[0];
         _loc1_ = Language.FAZENDAPANEL_S[21];
         _loc1_ = 91 + 192;
         _loc1_ = 140 + 0;
         _loc1_ = 91 + 135;
         _loc1_ = 140 + 32;
         _loc1_ = 91 + 82;
         _loc1_ = 140 + 65;
         _loc1_ = 91 + 30;
         _loc1_ = 140 + 96;
         _loc1_ = 91 + 247;
         _loc1_ = 140 + 36;
         _loc1_ = 91 + 192;
         _loc1_ = 140 + 68;
         _loc1_ = 91 + 139;
         _loc1_ = 140 + 101;
         _loc1_ = 91 + 85;
         _loc1_ = 140 + 131;
         _loc1_ = 91 + 304;
         _loc1_ = 140 + 72;
         _loc1_ = 91 + 249;
         _loc1_ = 140 + 104;
         _loc1_ = 91 + 196;
         _loc1_ = 140 + 137;
         _loc1_ = 91 + 142;
         _loc1_ = 140 + 168;
         _loc1_ = 91 + 360;
         _loc1_ = 140 + 108;
         _loc1_ = 91 + 305;
         _loc1_ = 140 + 140;
         _loc1_ = 91 + 252;
         _loc1_ = 140 + 173;
         _loc1_ = 91 + 198;
         _loc1_ = 140 + 203;
         _loc1_ = moveCanva;
      }
      
      public function canBuildFarm() : Boolean
      {
         var _loc1_:int = _core.getFazendaLevelByExp(_fazendaDataSelf.farm.exp);
         if(_fazendaDataSelf.farm.farmNum >= GamePredef.FARM_LVUP_CONFIG[_loc1_].maxFarm)
         {
            return false;
         }
         return true;
      }
      
      override public function initView() : void
      {
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnFazendaPet() : Button
      {
         return this._529035306btnFazendaPet;
      }
      
      private function moveFriendCanva() : void
      {
         eff_mvoe.end();
         if(moveCanva.x > 700)
         {
            friendCanv.visible = true;
            moveBtn.styleName = "fazendaFrientsHide";
            eff_mvoe.xTo = moveCanva.x - (moveCanva.width - 10);
         }
         else
         {
            moveBtn.styleName = "fazendaFrientsShow";
            eff_mvoe.xTo = moveCanva.x + (moveCanva.width - 10);
         }
         eff_mvoe.play();
      }
      
      public function onHarvestMine(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(_ownerId == _core.player.id)
         {
            this["farm" + param1.fid].playerAction();
            for(_loc2_ in _mineData)
            {
               if(_loc2_ == param1.fid)
               {
                  this["farm" + param1.fid].setHavestFlag(true);
                  _mineData[_loc2_].havestFlag = true;
                  _fazendaDataSelf.mine[_loc2_].havestFlag = true;
                  _mineData[_loc2_].time = param1.coldTime;
                  _fazendaDataSelf.mine[_loc2_].time = param1.coldTime;
                  break;
               }
            }
            this["farm" + param1.fid].setState(GamePredef.FARM_STATE_WAIT);
            this["farm" + param1.fid]._time = param1.coldTime;
            this["farm" + param1.fid].updateView();
         }
         else
         {
            for(_loc3_ in _fazendaDataSelf.mine)
            {
               if(_loc3_ == param1.fid)
               {
                  delete _fazendaDataSelf.mine[_loc3_];
                  break;
               }
            }
         }
      }
      
      public function __btnFazendaPet_click(param1:MouseEvent) : void
      {
         openPetFightPanel();
      }
   }
}

