package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.logic.FairyLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairySkillCanvas extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1574166904learnBtn:DelayButton;
      
      private var _112005436vbox1:VBox;
      
      private var _102449glv:Label;
      
      private var _647326148fairySkillTitle:BasicTitleCanvas;
      
      private var _1554141555tabBtn4:BasicMultiLineButton;
      
      private var _2142164612fairySkill:ItemSlot;
      
      private var _900562943skill2:SkillUseSlot;
      
      public var _FairySkillCanvas_Label1:Label;
      
      private var _839841136upBtn1:BasicGlowButton;
      
      private var _550778330canvas2:Canvas;
      
      private var _3466lv:Label;
      
      private var _112005438vbox3:VBox;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicMultiLineButton;
      
      private var _3519nm:Label;
      
      private var _839841133upBtn4:BasicGlowButton;
      
      private var _900562944skill1:SkillUseSlot;
      
      private var _1554141558tabBtn1:BasicMultiLineButton;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _1554141557tabBtn2:BasicMultiLineButton;
      
      private var _900562941skill4:SkillUseSlot;
      
      private var _112005437vbox2:VBox;
      
      private var _839841134upBtn3:BasicGlowButton;
      
      public var introText:IntroText = new IntroText();
      
      private var _first:Boolean = true;
      
      private var _804478022configBtn:DelayButton;
      
      private var _1554141556tabBtn3:BasicMultiLineButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _fairy:Object;
      
      private var _900562942skill3:SkillUseSlot;
      
      private var _btnEnabled:Boolean = true;
      
      private var _112005439vbox4:VBox;
      
      mx_internal var _bindings:Array = [];
      
      private var _839841135upBtn2:BasicGlowButton;
      
      private var _p:DragableCanvas;
      
      private var _1002706921simplecanvas3:SimpleCanvas;
      
      private var selectedTabIndex:int = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"fairySkillTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":17,
                        "y":220,
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
                                 "x":6,
                                 "y":3,
                                 "styleName":"VerticalTab",
                                 "selected":true,
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":6,
                                 "y":25,
                                 "styleName":"VerticalTab",
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":6,
                                 "y":47,
                                 "styleName":"VerticalTab",
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn3",
                           "events":{"click":"__tabBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":6,
                                 "y":69,
                                 "styleName":"VerticalTab",
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicMultiLineButton,
                           "id":"tabBtn4",
                           "events":{"click":"__tabBtn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":6,
                                 "y":91,
                                 "styleName":"VerticalTab",
                                 "height":22
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"simplecanvas3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":25,
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
                                          "x":4.5,
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
                                          "x":4.5,
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
                                          "x":4.5,
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
                                          "x":4.5,
                                          "y":128,
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
                                          "x":142,
                                          "y":3,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn1",
                                             "events":{"click":"__upBtn1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
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
                                          "x":142,
                                          "y":45,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn2",
                                             "events":{"click":"__upBtn2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
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
                                          "x":142,
                                          "y":87,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn3",
                                             "events":{"click":"__upBtn3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
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
                                          "x":142,
                                          "y":129,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"upBtn4",
                                             "events":{"click":"__upBtn4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalBlue",
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
                  "type":Label,
                  "id":"_FairySkillCanvas_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":130,
                        "y":153,
                        "width":94,
                        "height":23
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nm",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":26,
                        "y":149,
                        "width":89
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lv",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":26,
                        "y":171,
                        "width":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"glv",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":26,
                        "y":199,
                        "width":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"fairySkill",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":178,
                        "x":139
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"configBtn",
                  "events":{"click":"__configBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":61,
                        "height":20,
                        "x":204,
                        "y":150,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"learnBtn",
                  "events":{"click":"__learnBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":51,
                        "height":23,
                        "x":214,
                        "y":180,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      public function FairySkillCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 400;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairySkillCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill1() : SkillUseSlot
      {
         return this._900562944skill1;
      }
      
      [Bindable(event="propertyChange")]
      public function get simplecanvas3() : SimpleCanvas
      {
         return this._1002706921simplecanvas3;
      }
      
      public function set skill2(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._900562943skill2;
         if(_loc2_ !== param1)
         {
            this._900562943skill2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill2",_loc2_,param1));
         }
      }
      
      private function delSkill(param1:int) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get skill3() : SkillUseSlot
      {
         return this._900562942skill3;
      }
      
      private function useSkill(param1:Event) : void
      {
      }
      
      public function set skill3(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._900562942skill3;
         if(_loc2_ !== param1)
         {
            this._900562942skill3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill3",_loc2_,param1));
         }
      }
      
      public function __skill3_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      public function addEL(param1:Event) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get skill2() : SkillUseSlot
      {
         return this._900562943skill2;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill4() : SkillUseSlot
      {
         return this._900562941skill4;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas2() : Canvas
      {
         return this._550778330canvas2;
      }
      
      public function __skill4_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      public function set skill4(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._900562941skill4;
         if(_loc2_ !== param1)
         {
            this._900562941skill4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill4",_loc2_,param1));
         }
      }
      
      public function set tabBtn2(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function set tabBtn0(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set tabBtn4(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141555tabBtn4;
         if(_loc2_ !== param1)
         {
            this._1554141555tabBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn4",_loc2_,param1));
         }
      }
      
      public function set lv(param1:Label) : void
      {
         var _loc2_:Object = this._3466lv;
         if(_loc2_ !== param1)
         {
            this._3466lv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv",_loc2_,param1));
         }
      }
      
      public function set tabBtn3(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set upBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._839841134upBtn3;
         if(_loc2_ !== param1)
         {
            this._839841134upBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn3",_loc2_,param1));
         }
      }
      
      public function set upBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._839841133upBtn4;
         if(_loc2_ !== param1)
         {
            this._839841133upBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn4",_loc2_,param1));
         }
      }
      
      private function openSkill(param1:int) : void
      {
      }
      
      public function __skill4_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function set skill1(param1:SkillUseSlot) : void
      {
         var _loc2_:Object = this._900562944skill1;
         if(_loc2_ !== param1)
         {
            this._900562944skill1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill1",_loc2_,param1));
         }
      }
      
      private function configSkill() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_FAIRY_SKILL_CONFIG);
         if(_loc1_)
         {
            _loc1_.open(_fairy);
         }
      }
      
      private function skillTabBtnClick(param1:int) : void
      {
         drawSkillSlots(param1);
         selectedTabIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= 4)
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
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get glv() : Label
      {
         return this._102449glv;
      }
      
      public function __upBtn2_click(param1:MouseEvent) : void
      {
         upSkill(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get fairySkillTitle() : BasicTitleCanvas
      {
         return this._647326148fairySkillTitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox2() : VBox
      {
         return this._112005437vbox2;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox3() : VBox
      {
         return this._112005438vbox3;
      }
      
      public function fairySkillItemChange(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Object = null;
         if(fairySkill.slotData)
         {
            _loc2_ = false;
            if(fairySkill.slotData.type == GamePredef.TBL_ITEM_INSTANCE)
            {
               if(fairySkill.slotData.tid)
               {
                  _loc3_ = _core.data.getGameData(GamePredef.TBL_ITEM_TEMPLATE,fairySkill.slotData.tid);
                  if(Boolean(_loc3_) && _loc3_.type == GamePredef.ITEM_TYPE_FAIRY_SKILL_ITEM)
                  {
                     _loc2_ = true;
                  }
               }
            }
            if(!_loc2_)
            {
               fairySkill.clean();
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[83]);
            }
         }
      }
      
      public function set upBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._839841136upBtn1;
         if(_loc2_ !== param1)
         {
            this._839841136upBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox1() : VBox
      {
         return this._112005436vbox1;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox4() : VBox
      {
         return this._112005439vbox4;
      }
      
      public function set upBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._839841135upBtn2;
         if(_loc2_ !== param1)
         {
            this._839841135upBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upBtn2",_loc2_,param1));
         }
      }
      
      private function onMove(param1:Event) : void
      {
         this.x = _p.x + _p.width;
         this.y = _p.y;
      }
      
      public function enableUI() : void
      {
         this._btnEnabled = true;
      }
      
      public function __skill1_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      private function learnSkill() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = undefined;
         if(Boolean(fairySkill.slotData) && Boolean(_fairy))
         {
            _loc1_ = _core.data.getGameData(fairySkill.slotData.type,fairySkill.slotData.itemId);
            if(!_loc1_ || !_loc1_.tid)
            {
               return;
            }
            _loc2_ = _core.data.getGameData(GamePredef.TBL_ITEM_TEMPLATE,_loc1_.tid);
            if(Boolean(_loc2_) && Boolean(_loc2_.reqLevel) && Number(FairyLogic.gexpToLv(_fairy.gexp)) < Number(_loc2_.reqLevel))
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[82]);
               return;
            }
            _loc3_ = 0;
            if(_fairy["skillFlag"])
            {
               for(_loc4_ in _fairy["skillFlag"])
               {
                  if(Boolean(_fairy["skillFlag"][_loc4_]) && ToolKit.isBigThan(_fairy["skillFlag"][_loc4_],0))
                  {
                     _loc3_++;
                  }
               }
            }
            if(_loc3_ >= 20)
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[84]);
               return;
            }
            _core.remote.call("onSkill",new Responder(onSkill),_fairy.id,fairySkill.slotData.id);
            return;
         }
      }
      
      public function set configBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._804478022configBtn;
         if(_loc2_ !== param1)
         {
            this._804478022configBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"configBtn",_loc2_,param1));
         }
      }
      
      private function upSkill(param1:int) : void
      {
         var skillIndex:* = undefined;
         var skillData:Object = null;
         var func:Function = null;
         var func2:Function = null;
         var index:int = param1;
         skillIndex = selectedTabIndex * 4 + index;
         var str:String = "";
         if(Boolean(_fairy) && Boolean(_fairy["skillFlag"]) && ToolKit.isBigThan(_fairy["skillFlag"]["s" + skillIndex],0))
         {
            skillData = _core.data.getGameData(GamePredef.TBL_SKILL,_fairy["skillFlag"]["s" + skillIndex]);
            if(skillData)
            {
               if(ToolKit.isBigOrEqual(skillData.level,3))
               {
                  _core.sysMsg(Language.PETPANEL_S[3]);
               }
               else if(ToolKit.isEqual(skillData.level,1))
               {
                  if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_FAIRY_SKILL_UP_ITEM,1))
                  {
                     func = function(param1:CloseEvent):void
                     {
                        if(param1.detail == Alert.YES)
                        {
                           _core.remote.call("upFairySkill",new Responder(onUpFairySkill),_fairy.id,skillIndex);
                        }
                     };
                     str = Language.PETPANEL_S[4];
                     str = str.replace("{skillData.name}",skillData.name);
                     Alert.show(str,"",3,this,func);
                  }
                  else
                  {
                     str = Language.PETPANEL_S[5];
                     str = str.replace("{petSkillUpItem}",TextUtil.getCodeByTypeId(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_FAIRY_SKILL_UP_ITEM));
                     _core.sysMsg(str);
                  }
               }
               else if(ToolKit.isEqual(skillData.level,2))
               {
                  if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_FAIRY_SKILL_UP_ITEM,3))
                  {
                     func2 = function(param1:CloseEvent):void
                     {
                        if(param1.detail == Alert.YES)
                        {
                           _core.remote.call("upFairySkill",new Responder(onUpFairySkill),_fairy.id,skillIndex);
                        }
                     };
                     str = Language.PETPANEL_S[6];
                     str = str.replace("{skillData.name}",skillData.name);
                     Alert.show(str,"",3,this,func2);
                  }
                  else
                  {
                     str = Language.PETPANEL_S[7];
                     str = str.replace("{petSkillUpItem}",TextUtil.getCodeByTypeId(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_FAIRY_SKILL_UP_ITEM));
                     _core.sysMsg(str);
                  }
               }
            }
         }
      }
      
      public function set fairySkillTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._647326148fairySkillTitle;
         if(_loc2_ !== param1)
         {
            this._647326148fairySkillTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairySkillTitle",_loc2_,param1));
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(0);
      }
      
      public function __upBtn3_click(param1:MouseEvent) : void
      {
         upSkill(3);
      }
      
      public function disableUI() : void
      {
         this._btnEnabled = false;
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get learnBtn() : DelayButton
      {
         return this._1574166904learnBtn;
      }
      
      public function set vbox2(param1:VBox) : void
      {
         var _loc2_:Object = this._112005437vbox2;
         if(_loc2_ !== param1)
         {
            this._112005437vbox2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fairySkill() : ItemSlot
      {
         return this._2142164612fairySkill;
      }
      
      public function set vbox1(param1:VBox) : void
      {
         var _loc2_:Object = this._112005436vbox1;
         if(_loc2_ !== param1)
         {
            this._112005436vbox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicMultiLineButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv() : Label
      {
         return this._3466lv;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicMultiLineButton
      {
         return this._1554141556tabBtn3;
      }
      
      public function set nm(param1:Label) : void
      {
         var _loc2_:Object = this._3519nm;
         if(_loc2_ !== param1)
         {
            this._3519nm = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nm",_loc2_,param1));
         }
      }
      
      public function set glv(param1:Label) : void
      {
         var _loc2_:Object = this._102449glv;
         if(_loc2_ !== param1)
         {
            this._102449glv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"glv",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FairySkillCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairySkillCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FairySkillCanvasWatcherSetupUtil");
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
      public function get tabBtn1() : BasicMultiLineButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicMultiLineButton
      {
         return this._1554141557tabBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn4() : BasicGlowButton
      {
         return this._839841133upBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn3() : BasicGlowButton
      {
         return this._839841134upBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicMultiLineButton
      {
         return this._1554141555tabBtn4;
      }
      
      public function set vbox3(param1:VBox) : void
      {
         var _loc2_:Object = this._112005438vbox3;
         if(_loc2_ !== param1)
         {
            this._112005438vbox3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn1() : BasicGlowButton
      {
         return this._839841136upBtn1;
      }
      
      public function initSkillPanelView() : void
      {
         fairySkill.addEventListener(GameEvent.SLOT_GIID_CHANGE,fairySkillItemChange);
      }
      
      [Bindable(event="propertyChange")]
      public function get upBtn2() : BasicGlowButton
      {
         return this._839841135upBtn2;
      }
      
      public function set fairy(param1:Object) : void
      {
         if(!(Boolean(_fairy && _fairy.id) && Boolean(param1) && Boolean(param1.id) && param1.id == _fairy.id))
         {
            if(this.fairySkill)
            {
               fairySkill.clean();
            }
         }
         _fairy = param1;
         nm.text = _fairy.name;
         lv.text = Language.FAIRY_MANAGER_PANEL_U[30] + ":" + FairyLogic.expToLv(_fairy.exp).toString();
         glv.text = Language.FAIRY_MANAGER_PANEL_U[40] + ":" + FairyLogic.gexpToLv(_fairy.gexp).toString();
         skillTabBtnClick(selectedTabIndex);
      }
      
      public function set vbox4(param1:VBox) : void
      {
         var _loc2_:Object = this._112005439vbox4;
         if(_loc2_ !== param1)
         {
            this._112005439vbox4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox4",_loc2_,param1));
         }
      }
      
      public function __skill2_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function onSkill(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         if(Boolean(param1) && Boolean(param1.flag))
         {
            if(!_core.player.fairyList[param1.id]["skillFlag"])
            {
               _core.player.fairyList[param1.id]["skillFlag"] = {};
            }
            if(!param1["upSkill"])
            {
               --fairySkill.stackNum;
               if(fairySkill.stackNum <= 0)
               {
                  fairySkill.clean();
               }
            }
            _core.player.fairyList[param1.id]["skillFlag"][param1.sindex] = param1.skill;
            _loc2_ = param1.sindex;
            _loc3_ = _loc2_.replace("s","");
            _loc4_ = Math.floor((Number(_loc3_) - 1) / 4);
            skillTabBtnClick(_loc4_);
            _loc5_ = _core.view.getUI(ViewManager.PANEL_FAIRY_SKILL_CONFIG);
            if(_loc5_)
            {
               _loc5_.learnSkill(param1.id);
            }
         }
         else if(Boolean(param1) && Boolean(!param1.flag) && param1.sindex == 1)
         {
            _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[85]);
         }
         else if(Boolean(param1) && Boolean(!param1.flag) && param1.sindex == 2)
         {
            _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[86]);
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(1);
      }
      
      public function set canvas2(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778330canvas2;
         if(_loc2_ !== param1)
         {
            this._550778330canvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas2",_loc2_,param1));
         }
      }
      
      public function __skill1_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get configBtn() : DelayButton
      {
         return this._804478022configBtn;
      }
      
      public function __upBtn4_click(param1:MouseEvent) : void
      {
         upSkill(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get nm() : Label
      {
         return this._3519nm;
      }
      
      private function _FairySkillCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[79];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairySkillTitle.text = param1;
         },"fairySkillTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            simplecanvas3.label = param1;
         },"simplecanvas3.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn1.label = param1;
         },"upBtn1.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn1.enabled = param1;
         },"upBtn1.enabled");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn2.label = param1;
         },"upBtn2.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn2.enabled = param1;
         },"upBtn2.enabled");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn3.label = param1;
         },"upBtn3.label");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn3.enabled = param1;
         },"upBtn3.enabled");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upBtn4.label = param1;
         },"upBtn4.label");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            upBtn4.enabled = param1;
         },"upBtn4.enabled");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEPREDEF_S[522];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairySkillCanvas_Label1.text = param1;
         },"_FairySkillCanvas_Label1.text");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _FairySkillCanvas_Label1.filters = param1;
         },"_FairySkillCanvas_Label1.filters");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            nm.filters = param1;
         },"nm.filters");
         result[17] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            lv.filters = param1;
         },"lv.filters");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            glv.filters = param1;
         },"glv.filters");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            fairySkill.slotType = param1;
         },"fairySkill.slotType");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[95];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            configBtn.label = param1;
         },"configBtn.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[80];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            learnBtn.label = param1;
         },"learnBtn.label");
         result[22] = binding;
         return result;
      }
      
      public function set simplecanvas3(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._1002706921simplecanvas3;
         if(_loc2_ !== param1)
         {
            this._1002706921simplecanvas3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simplecanvas3",_loc2_,param1));
         }
      }
      
      public function follow(param1:DragableCanvas) : void
      {
         _p = param1;
         this.x = param1.x + param1.width;
         this.y = param1.y;
         if(this.visible)
         {
            param1.addEventListener(DragableCanvas.EVENT_MOVE,onMove);
         }
      }
      
      public function __skill2_creationComplete(param1:FlexEvent) : void
      {
         addEL(param1);
      }
      
      private function drawSkillSlots(param1:int) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc2_:int = 1;
         while(_loc2_ <= 4)
         {
            this["skill" + _loc2_].clean();
            _loc3_ = param1 * 4 + _loc2_;
            if(Boolean(_fairy) && Boolean(_fairy["skillFlag"]) && ToolKit.isBigThan(_fairy["skillFlag"]["s" + _loc3_],0))
            {
               _loc4_ = _core.data.getGameData(GamePredef.TBL_SKILL,_fairy["skillFlag"]["s" + _loc3_]);
               this["skill" + _loc2_].giid = _fairy["skillFlag"]["s" + _loc3_];
               this["upBtn" + _loc2_].visible = true;
               if(ToolKit.isBigOrEqual(_loc4_.level,3))
               {
                  this["upBtn" + _loc2_].enabled = false;
               }
               else
               {
                  this["upBtn" + _loc2_].enabled = true;
               }
               this["upBtn" + _loc2_].includeInLayout = true;
            }
            else
            {
               this["skill" + _loc2_].enabled = true;
               this["upBtn" + _loc2_].visible = false;
            }
            _loc2_++;
         }
      }
      
      public function __learnBtn_click(param1:MouseEvent) : void
      {
         learnSkill();
      }
      
      private function _FairySkillCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[79];
         _loc1_ = Language.PETPANEL_U[26];
         _loc1_ = Language.PETPANEL_U[27];
         _loc1_ = Language.PETPANEL_U[28];
         _loc1_ = Language.PETPANEL_U[29];
         _loc1_ = Language.PETPANEL_U[30];
         _loc1_ = Language.PETPANEL_U[19];
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.PETPANEL_U[5];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.GAMEPREDEF_S[522];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[95];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[80];
      }
      
      public function __configBtn_click(param1:MouseEvent) : void
      {
         configSkill();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(_p)
         {
            super.visible = param1;
            if(param1)
            {
               follow(_p);
               initSkillPanelView();
               if(_first)
               {
                  skillTabBtnClick(0);
                  _first = false;
               }
               if(this.parent)
               {
                  this.parent.setChildIndex(this,this.parent.numChildren - 1);
               }
               if(Boolean(this) && (!introText.parent || introText.parent != this))
               {
                  this.addChild(introText);
                  introText.width = 260;
                  introText.height = 110;
                  introText.x = 20;
                  introText.y = 33;
                  introText.htmlText = Language.FAIRY_MANAGER_PANEL_U[88];
                  introText.visible = true;
               }
            }
            else
            {
               _p.removeEventListener(DragableCanvas.EVENT_MOVE,onMove);
            }
         }
         else
         {
            super.visible = false;
         }
      }
      
      public function __skill3_click(param1:MouseEvent) : void
      {
         useSkill(param1);
      }
      
      public function onUpFairySkill(param1:Object) : void
      {
         if(param1)
         {
            param1["upSkill"] = true;
         }
         onSkill(param1);
      }
      
      public function set learnBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1574166904learnBtn;
         if(_loc2_ !== param1)
         {
            this._1574166904learnBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"learnBtn",_loc2_,param1));
         }
      }
      
      public function __upBtn1_click(param1:MouseEvent) : void
      {
         upSkill(1);
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(2);
      }
      
      public function set fairySkill(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2142164612fairySkill;
         if(_loc2_ !== param1)
         {
            this._2142164612fairySkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairySkill",_loc2_,param1));
         }
      }
   }
}

