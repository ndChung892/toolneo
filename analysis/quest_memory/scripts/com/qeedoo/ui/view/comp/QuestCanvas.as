package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.containers.ViewStack;
   import mx.controls.CheckBox;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class QuestCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var qd:Object;
      
      public var _QuestCanvas_BasicTxtButton1:BasicTxtButton;
      
      public var _QuestCanvas_BasicTxtButton2:BasicTxtButton;
      
      public var _QuestCanvas_BasicTxtButton3:BasicTxtButton;
      
      public var _QuestCanvas_BasicTxtButton4:BasicTxtButton;
      
      public var selectId:Number = -1;
      
      private var _358313763awardItem3:ItemSlot;
      
      private var _1783052659questName:LinkTextArea;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _358313762awardItem2:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _358313766awardItem6:ItemSlot;
      
      private var _1621975424awardExp:Currency;
      
      private var lastTime:Number;
      
      private var _339060508cb_guide:CheckBox;
      
      private var questTimer:Timer;
      
      mx_internal var _watchers:Array = [];
      
      private var _3237038info:LinkTextArea;
      
      private var _361867363awardMoney:Currency;
      
      private var _358313761awardItem1:ItemSlot;
      
      private var _1775826383lastTimeLabel:Label;
      
      private var _358313765awardItem5:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var quest:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var _embeded:Boolean = false;
      
      private var _358313764awardItem4:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":303,
               "height":305,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "70";
                     this.right = "0";
                     this.top = "0";
                     this.bottom = "90";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "styleName":"CSSBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":VBox,
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.right = "8";
                              this.top = "8";
                              this.bottom = "8";
                              this.verticalGap = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":LinkTextArea,
                                 "id":"questName",
                                 "stylesFactory":function():void
                                 {
                                    this.fontWeight = "bold";
                                    this.backgroundAlpha = 0;
                                    this.borderStyle = "none";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":3,
                                       "percentWidth":100,
                                       "height":25,
                                       "verticalScrollPolicy":"off",
                                       "horizontalScrollPolicy":"off",
                                       "editable":false
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"lastTimeLabel",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16711680;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"percentWidth":100};
                                 }
                              }),new UIComponentDescriptor({
                                 "type":LinkTextArea,
                                 "id":"info",
                                 "events":{"mouseMove":"__info_mouseMove"},
                                 "stylesFactory":function():void
                                 {
                                    this.backgroundAlpha = 0;
                                    this.color = 16777215;
                                    this.borderStyle = "none";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "horizontalScrollPolicy":"off",
                                       "editable":false,
                                       "height":175,
                                       "percentWidth":100
                                    };
                                 }
                              })]};
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"cb_guide",
                           "events":{"change":"__cb_guide_change"},
                           "stylesFactory":function():void
                           {
                              this.right = "3";
                              this.top = "7";
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"awardExp",
                  "stylesFactory":function():void
                  {
                     this.left = "75";
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":248,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"awardMoney",
                  "stylesFactory":function():void
                  {
                     this.left = "75";
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":226,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"awardItem1",
                  "events":{"click":"__awardItem1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "x":71,
                        "y":270
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"awardItem2",
                  "events":{"click":"__awardItem2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "x":111,
                        "y":270
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"awardItem3",
                  "events":{"click":"__awardItem3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "x":150,
                        "y":270
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"awardItem4",
                  "events":{"click":"__awardItem4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "x":190,
                        "y":270
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"awardItem5",
                  "events":{"click":"__awardItem5_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "x":229,
                        "y":270
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"awardItem6",
                  "events":{"click":"__awardItem6_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "x":269,
                        "y":270
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_QuestCanvas_BasicTxtButton1",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":2,
                        "width":65,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_QuestCanvas_BasicTxtButton2",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":223,
                        "width":65,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_QuestCanvas_BasicTxtButton3",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":246,
                        "width":65,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_QuestCanvas_BasicTxtButton4",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":277,
                        "width":65,
                        "height":18
                     };
                  }
               })]
            };
         }
      });
      
      private var _1062904757_guideVisible:Boolean;
      
      public function QuestCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 303;
         this.height = 305;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         QuestCanvas._watcherSetupUtil = param1;
      }
      
      public function set awardExp(param1:Currency) : void
      {
         var _loc2_:Object = this._1621975424awardExp;
         if(_loc2_ !== param1)
         {
            this._1621975424awardExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardExp",_loc2_,param1));
         }
      }
      
      public function __awardItem2_click(param1:MouseEvent) : void
      {
         awardItemClick(param1);
      }
      
      public function __awardItem6_click(param1:MouseEvent) : void
      {
         awardItemClick(param1);
      }
      
      private function removeTimer() : void
      {
         if(questTimer)
         {
            questTimer.removeEventListener(TimerEvent.TIMER,timerRepeat);
            questTimer.stop();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awardItem2() : ItemSlot
      {
         return this._358313762awardItem2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cb_guide() : CheckBox
      {
         return this._339060508cb_guide;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardItem4() : ItemSlot
      {
         return this._358313764awardItem4;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardItem5() : ItemSlot
      {
         return this._358313765awardItem5;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardItem1() : ItemSlot
      {
         return this._358313761awardItem1;
      }
      
      public function set questName(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1783052659questName;
         if(_loc2_ !== param1)
         {
            this._1783052659questName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awardItem3() : ItemSlot
      {
         return this._358313763awardItem3;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardItem6() : ItemSlot
      {
         return this._358313766awardItem6;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastTimeLabel() : Label
      {
         return this._1775826383lastTimeLabel;
      }
      
      public function set cb_guide(param1:CheckBox) : void
      {
         var _loc2_:Object = this._339060508cb_guide;
         if(_loc2_ !== param1)
         {
            this._339060508cb_guide = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb_guide",_loc2_,param1));
         }
      }
      
      public function set awardItem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._358313762awardItem2;
         if(_loc2_ !== param1)
         {
            this._358313762awardItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardItem2",_loc2_,param1));
         }
      }
      
      public function set awardItem3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._358313763awardItem3;
         if(_loc2_ !== param1)
         {
            this._358313763awardItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardItem3",_loc2_,param1));
         }
      }
      
      private function timerRepeat(param1:TimerEvent) : void
      {
         var _loc3_:Date = null;
         var _loc2_:String = "";
         if(ToolKit.isBigThan(lastTime,0))
         {
            lastTime = int(lastTime);
            --lastTime;
            if(lastTime >= 86400)
            {
               _loc2_ = Language.QUESTCANVAS_S[9].toString();
               lastTimeLabel.text = _loc2_.replace("{day}",int(lastTime / 86400));
            }
            else
            {
               _loc3_ = new Date(2000,1,1,0,0,0,0);
               _loc3_.setTime(_loc3_.getTime() + Number(lastTime * 1000));
               _loc2_ = Language.QUESTCANVAS_S[11].toString();
               _loc2_ = _loc2_.replace("{hour}",_loc3_.getHours());
               _loc2_ = _loc2_.replace("{minute}",_loc3_.getMinutes());
               lastTimeLabel.text = _loc2_.replace("{second}",_loc3_.getSeconds());
            }
         }
      }
      
      public function set awardItem4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._358313764awardItem4;
         if(_loc2_ !== param1)
         {
            this._358313764awardItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardItem4",_loc2_,param1));
         }
      }
      
      private function getQuestNamePrefix(param1:Object) : String
      {
         var _loc5_:uint = 0;
         var _loc6_:Array = null;
         var _loc7_:uint = 0;
         var _loc2_:String = GamePredef.QUEST_TYPE_APPR[param1.type] || "";
         if(ToolKit.isEqual(param1.type,GamePredef.QUEST_TYPE_ACTIVITY))
         {
            if(ToolKit.isBigThan(param1.lm,0) && !ToolKit.isEqual(param1.id,2766))
            {
               _loc2_ = Language.QUESTGUIDE_S[19];
            }
            _loc5_ = parseInt(param1.id);
            if(GamePredef.DUPLICATE_TASK_IDS[_loc5_])
            {
               _loc2_ = Language.QUESTGUIDE_S[20];
            }
         }
         else if(ToolKit.isEqual(param1.type,GamePredef.QUEST_TYPE_LOOP))
         {
            _loc6_ = param1.subType.split("-");
            _loc7_ = parseInt(_loc6_[1]);
            if(GamePredef.QUEST_SUB_TYPE_APPR[_loc7_])
            {
               _loc2_ = GamePredef.QUEST_SUB_TYPE_APPR[_loc7_];
            }
         }
         var _loc3_:uint = 13;
         return "<font color=\'#1E90FF\' size=\'" + _loc3_ + "\'>" + _loc2_ + "</font>";
      }
      
      public function set awardItem5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._358313765awardItem5;
         if(_loc2_ !== param1)
         {
            this._358313765awardItem5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardItem5",_loc2_,param1));
         }
      }
      
      private function _QuestCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTCANVAS_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cb_guide.label = param1;
         },"cb_guide.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _guideVisible;
         },function(param1:Boolean):void
         {
            cb_guide.visible = param1;
         },"cb_guide.visible");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_EXP;
         },function(param1:uint):void
         {
            awardExp.type = param1;
         },"awardExp.type");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            awardItem1.slotType = param1;
         },"awardItem1.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            awardItem2.slotType = param1;
         },"awardItem2.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            awardItem3.slotType = param1;
         },"awardItem3.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            awardItem4.slotType = param1;
         },"awardItem4.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            awardItem5.slotType = param1;
         },"awardItem5.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            awardItem6.slotType = param1;
         },"awardItem6.slotType");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestCanvas_BasicTxtButton1.label = param1;
         },"_QuestCanvas_BasicTxtButton1.label");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !_embeded;
         },function(param1:Boolean):void
         {
            _QuestCanvas_BasicTxtButton1.visible = param1;
         },"_QuestCanvas_BasicTxtButton1.visible");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestCanvas_BasicTxtButton2.label = param1;
         },"_QuestCanvas_BasicTxtButton2.label");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !_embeded;
         },function(param1:Boolean):void
         {
            _QuestCanvas_BasicTxtButton2.visible = param1;
         },"_QuestCanvas_BasicTxtButton2.visible");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTCANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestCanvas_BasicTxtButton3.label = param1;
         },"_QuestCanvas_BasicTxtButton3.label");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !_embeded;
         },function(param1:Boolean):void
         {
            _QuestCanvas_BasicTxtButton3.visible = param1;
         },"_QuestCanvas_BasicTxtButton3.visible");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTCANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestCanvas_BasicTxtButton4.label = param1;
         },"_QuestCanvas_BasicTxtButton4.label");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !_embeded;
         },function(param1:Boolean):void
         {
            _QuestCanvas_BasicTxtButton4.visible = param1;
         },"_QuestCanvas_BasicTxtButton4.visible");
         result[16] = binding;
         return result;
      }
      
      public function set awardItem6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._358313766awardItem6;
         if(_loc2_ !== param1)
         {
            this._358313766awardItem6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardItem6",_loc2_,param1));
         }
      }
      
      public function __awardItem3_click(param1:MouseEvent) : void
      {
         awardItemClick(param1);
      }
      
      public function set questData(param1:Object) : void
      {
         initQuest(param1);
      }
      
      public function __cb_guide_change(param1:Event) : void
      {
         changeGuideAble();
      }
      
      public function set info(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      private function _QuestCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.QUESTCANVAS_U[4];
         _loc1_ = _guideVisible;
         _loc1_ = Currency.TYPE_EXP;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Language.QUESTCANVAS_U[0];
         _loc1_ = !_embeded;
         _loc1_ = Language.QUESTCANVAS_U[1];
         _loc1_ = !_embeded;
         _loc1_ = Language.QUESTCANVAS_U[2];
         _loc1_ = !_embeded;
         _loc1_ = Language.QUESTCANVAS_U[3];
         _loc1_ = !_embeded;
      }
      
      private function awardItemClick(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(Boolean(quest) && Boolean(ToolKit.isEqual(quest.at,2)) && Boolean(param1.currentTarget.slotData) && ToolKit.isEqual(qd.state,GamePredef.ST_QUEST_CANFINISH))
         {
            _loc2_ = 1;
            while(_loc2_ <= 6)
            {
               this["awardItem" + _loc2_].setStyleName(0);
               _loc2_++;
            }
            param1.currentTarget.setStyleName(1);
            selectId = param1.currentTarget.slotData.id;
         }
      }
      
      public function set lastTimeLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1775826383lastTimeLabel;
         if(_loc2_ !== param1)
         {
            this._1775826383lastTimeLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastTimeLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awardMoney() : Currency
      {
         return this._361867363awardMoney;
      }
      
      public function set awardItem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._358313761awardItem1;
         if(_loc2_ !== param1)
         {
            this._358313761awardItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardItem1",_loc2_,param1));
         }
      }
      
      public function set embeded(param1:Boolean) : void
      {
         _embeded = param1;
      }
      
      private function set _guideVisible(param1:Boolean) : void
      {
         var _loc2_:Object = this._1062904757_guideVisible;
         if(_loc2_ !== param1)
         {
            this._1062904757_guideVisible = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_guideVisible",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awardExp() : Currency
      {
         return this._1621975424awardExp;
      }
      
      public function __awardItem4_click(param1:MouseEvent) : void
      {
         awardItemClick(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:QuestCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _QuestCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_QuestCanvasWatcherSetupUtil");
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
      
      private function clearView() : void
      {
         removeTimer();
         questName.htmlText = "";
         lastTime = 0;
         lastTimeLabel.text = "";
         lastTimeLabel.visible = false;
         lastTimeLabel.includeInLayout = false;
         info.text = "";
         info.htmlText = "";
         var _loc1_:int = 1;
         while(_loc1_ <= 6)
         {
            this["awardItem" + _loc1_].reset();
            this["awardItem" + _loc1_].setStyle("borderColor",0);
            _loc1_++;
         }
         awardExp.value = 0;
         awardMoney.value = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get questName() : LinkTextArea
      {
         return this._1783052659questName;
      }
      
      public function __info_mouseMove(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      private function changeGuideAble() : void
      {
         var _loc1_:Object = null;
         if(_core.questGuideList[qd.qid])
         {
            _core.questGuideList[qd.qid].guideAble = cb_guide.selected;
            _core.questGuideList[qd.qid].taketime = _core.lastQuestTime + 1;
         }
         else
         {
            _loc1_ = new Object();
            _loc1_.guideAble = cb_guide.selected;
            _loc1_.taketime = _core.lastQuestTime + 1;
            _loc1_.qid = qd.qid;
            _core.questGuideList[qd.qid] = _loc1_;
         }
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateQuestGuide();
      }
      
      public function set guideVisible(param1:Boolean) : void
      {
         _guideVisible = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : LinkTextArea
      {
         return this._3237038info;
      }
      
      public function initQuest(param1:Object) : void
      {
         var _loc10_:* = undefined;
         var _loc11_:String = null;
         var _loc12_:Object = null;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         var _loc15_:String = null;
         var _loc16_:int = 0;
         var _loc17_:Number = NaN;
         var _loc18_:String = null;
         var _loc19_:Number = NaN;
         var _loc20_:String = null;
         var _loc21_:String = null;
         var _loc22_:Object = null;
         var _loc23_:String = null;
         var _loc24_:Array = null;
         var _loc25_:Object = null;
         var _loc26_:Object = null;
         var _loc27_:Object = null;
         var _loc28_:* = undefined;
         var _loc29_:int = 0;
         var _loc30_:* = undefined;
         var _loc31_:int = 0;
         var _loc32_:String = null;
         var _loc33_:Boolean = false;
         selectId = -1;
         clearView();
         if(!param1)
         {
            return;
         }
         if(param1.lastTime)
         {
            lastTime = param1.lastTime;
         }
         qd = param1;
         quest = param1.data;
         visible = true;
         if(!_core.questGuideList[qd.qid])
         {
            cb_guide.selected = false;
         }
         else if(_core.questGuideList[qd.qid].guideAble == false)
         {
            cb_guide.selected = false;
         }
         else
         {
            cb_guide.selected = true;
         }
         removeTimer();
         if(param1.lastTime)
         {
            questTimer = new Timer(1000,int(param1.lastTime));
            questTimer.addEventListener(TimerEvent.TIMER,timerRepeat);
            questTimer.start();
            lastTimeLabel.visible = true;
            lastTimeLabel.includeInLayout = true;
         }
         var _loc2_:int = int(param1.data.color);
         if(ToolKit.isEqual(param1.data.type,GamePredef.QUEST_TYPE_CALLBOARD))
         {
            _loc2_ = int(param1.c);
         }
         questName.htmlText = getQuestNamePrefix(param1.data) + TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_QUEST] + "|" + param1.data.id + "|" + param1.data.name + "|" + _loc2_ + "|0|0]");
         var _loc3_:String = "";
         if(param1.cn >= 0)
         {
            _loc3_ = Language.QUESTCANVAS_S[0];
            _loc3_ = _loc3_.replace("{questData.cn}",param1.cn);
         }
         var _loc4_:String = Language.QUESTCANVAS_S[1];
         var _loc5_:String = "";
         var _loc6_:String = "";
         var _loc7_:String = "";
         if(ToolKit.isBigThan(quest.rt,0) && ToolKit.isBigThan(quest.rn,0))
         {
            switch(Number(quest.rt))
            {
               case 1:
                  _loc4_ += "<br>　" + GamePredef.CURRENCY_TIP[Currency.TYPE_MONEY_BIND] + ":" + quest.rn;
                  break;
               case 2:
                  _loc4_ += "<br>　" + GamePredef.CURRENCY_TIP[Currency.TYPE_MONEY] + ":" + quest.rn;
                  break;
               case 3:
                  _loc4_ += "<br>　" + GamePredef.CURRENCY_TIP[Currency.TYPE_GOLD_BIND] + ":" + quest.rn;
                  break;
               case 4:
                  _loc4_ += "<br>　" + GamePredef.CURRENCY_TIP[Currency.TYPE_GOLD] + ":" + quest.rn;
                  break;
               case 10:
                  _loc4_ += "<br>　" + GamePredef.CURRENCY_TIP[Currency.TYPE_EXPBATTLE] + ":" + quest.rn;
                  break;
               case 11:
                  _loc4_ += "<br>　" + GamePredef.CURRENCY_TIP[Currency.TYPE_ACTPOINT] + ":" + quest.rn;
                  break;
               case 13:
                  _loc4_ += "<br>　" + GamePredef.CURRENCY_TIP[27] + ":" + quest.rn;
            }
         }
         if(param1.require)
         {
            for each(_loc10_ in param1.require)
            {
               if(ToolKit.isEqual(_loc10_.kind,GamePredef.QUEST_REQUIRE_ITEM))
               {
                  _loc11_ = " (" + _loc10_.num + ")";
                  _loc12_ = _core.getTemplateData(_loc10_.type,_loc10_.itemId);
                  _loc13_ = 0;
                  if(_loc10_.q < 0)
                  {
                     _loc13_ = Number(_core.getItemNum(_loc10_.type,_loc10_.itemId).num);
                  }
                  else
                  {
                     _loc14_ = _core.basic.getColorByQuality(_loc10_.q);
                     if(_loc14_ < 0)
                     {
                        _loc14_ = 0;
                     }
                     else if(_loc14_ > 5)
                     {
                        _loc14_ = 5;
                     }
                     _loc13_ = Number(_core.getItemNumByColor(_loc10_.type,_loc10_.itemId,_loc14_).num);
                  }
                  _loc11_ = " (" + _loc13_ + "/" + _loc10_.num + ")";
                  _loc5_ += "<br>　" + "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc14_] + "\'><a href=\'event:L_" + GamePredef.LINK_TYPE_ARRAY[_loc10_.type] + "|" + _loc10_.itemId + "|" + _loc10_.name + "\' >" + _loc10_.name + "</a></font>" + _loc11_;
               }
               else if(ToolKit.isEqual(_loc10_.kind,GamePredef.QUEST_REQUIRE_PET))
               {
                  _loc15_ = " (" + _loc10_.num + ")";
                  _loc16_ = _core.basic.colorByGrowRate(_loc10_.q / 10);
                  _loc17_ = _core.getPetNumByColor(_loc10_.itemId,_loc10_.name,_loc16_);
                  _loc15_ = " (" + _loc17_ + "/" + _loc10_.num + ")";
                  _loc18_ = "";
                  if(_loc16_ >= 1)
                  {
                     _loc18_ = "<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[0] + "\'>[" + Language.QUESTCANVAS_PCOLOR[_loc16_] + "]</font>";
                  }
                  _loc6_ += "<br>　" + Language.QUESTCANVAS_S[2] + " " + "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc16_] + "\'><a href=\'event:L_" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CREATURE] + "|" + _loc10_.itemId + "|" + _loc10_.name + "\' >" + _loc10_.name + "</a></font>" + _loc18_ + _loc15_ + Language.QUESTCANVAS_S[3];
               }
               else if(ToolKit.isEqual(_loc10_.kind,GamePredef.QUEST_REQUIRE_CREATUR))
               {
                  _loc19_ = 0;
                  _loc20_ = " (0/" + _loc10_.num + ")";
                  if(param1.questKill)
                  {
                     for each(_loc22_ in param1.questKill)
                     {
                        if(Boolean(_loc22_) && ToolKit.isEqual(_loc22_.creatureId,_loc10_.itemId))
                        {
                           if(ToolKit.isSmallOrEqual(_loc22_.num,0))
                           {
                              _loc20_ = Language.QUESTCANVAS_S[4];
                           }
                           else
                           {
                              _loc19_ = ToolKit.minus(_loc10_.num,_loc22_.num);
                              _loc20_ = " (" + _loc19_ + "/" + _loc10_.num + ")";
                           }
                        }
                     }
                  }
                  if(Boolean(param1.pos) && Boolean(param1.pos.name))
                  {
                     _loc21_ = param1.pos.name;
                  }
                  else
                  {
                     _loc21_ = _loc10_.creature.name;
                  }
                  _loc7_ += "<br>　" + Language.QUESTCANVAS_S[5] + " " + "<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[3] + "\'><a href=\'event:L_" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CREATURE] + "|" + _loc10_.creature.id + "|" + _loc21_.split("【")[0] + "\' >" + _loc21_.split("【")[0] + "</a></font>" + _loc20_;
               }
            }
         }
         _loc4_ += _loc5_ + _loc6_ + _loc7_;
         var _loc8_:String = "";
         if(ToolKit.isBigThan(quest.startNpc,0))
         {
            _loc8_ = TextUtil.decode(Language.QUESTCANVAS_S[6] + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_NPC] + "|" + quest.startNpc + "|" + param1.sName + "|0|0|0]") + TextUtil.getMapHtml(param1.sMid) + "<br>";
         }
         else if(ToolKit.isEqual(quest.type,GamePredef.QUEST_TYPE_LOOP))
         {
            _loc23_ = quest.subType;
            _loc24_ = _loc23_.split("-");
            _loc25_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,_loc24_[1]);
            if(_loc25_)
            {
               _loc26_ = _core.player.getMyLoopData(_loc25_.id);
               if(_loc26_)
               {
                  if(_loc26_.ft >= _loc25_.num)
                  {
                     _loc26_.ft = ToolKit.minus(_loc26_.ft,1);
                  }
                  _loc8_ = Language.QUESTCANVAS_S[15] + "<font color=\'#ff0000\'>" + _loc25_.name + "</font> " + Language.QUESTCANVAS_S[16] + "<font color=\'#ff0000\'>" + ToolKit.add(_loc26_.ft,1) + "/" + _loc25_.num + "</font><br>";
               }
            }
         }
         else if(ToolKit.isEqual(quest.type,GamePredef.QUEST_TYPE_GUILD))
         {
            _loc8_ = "<font color=\'#ff0000\'>" + Language.QUESTCANVAS_S[18] + "</font><br>";
         }
         else if(!ToolKit.isEqual(quest.type,GamePredef.QUEST_TYPE_CALLBOARD) && quest.type != GamePredef.QUEST_TYPE_CLASS)
         {
            _loc8_ = "<font color=\'#ff0000\'>" + Language.QUESTCANVAS_S[7] + "</font>";
         }
         if(Boolean(param1) && Boolean(param1.data.type == GamePredef.QUEST_TYPE_CLASS) && quest.finishNpc < 0)
         {
            _loc27_ = _core.data.gameDataIndex3[GamePredef.TBL_NPC][_core.player.classId];
            var _loc34_:int = 0;
            var _loc35_:* = _loc27_;
            for(_loc28_ in _loc35_)
            {
               quest.finishNpc = _loc28_;
               param1.fName = _loc27_[_loc28_].name;
            }
         }
         if(ToolKit.isBigThan(quest.finishNpc,0))
         {
            _loc8_ += TextUtil.decode(Language.QUESTCANVAS_S[8] + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_NPC] + "|" + quest.finishNpc + "|" + param1.fName + "|0|0|0]") + TextUtil.getMapHtml(param1.fMid) + "<br>";
         }
         if(_loc4_.length <= 10)
         {
            _loc4_ = "";
         }
         var _loc9_:String = param1.data.info;
         if(param1.data.posInfo)
         {
            _loc9_ += "<br>" + param1.data.posInfo;
         }
         if(param1.data.clsInfo)
         {
            if(param1.state != GamePredef.ST_QUEST_CANTAKE)
            {
               _loc4_ += "<br>" + param1.data.clsInfo;
            }
         }
         if(parent is TipQuest || parent.parent is ViewStack)
         {
            info.htmlText = "<font color=\'#FFFFFF\'>" + _loc9_ + "<br>" + _loc4_ + "<br>" + _loc8_ + "</font>";
         }
         else
         {
            info.htmlText = "<font color=\'#FFFFFF\'>" + param1.data.info + "<br>" + _loc4_ + "<br>" + _loc8_ + "</font>";
         }
         if(ToolKit.isEqual(param1.data.type,GamePredef.QUEST_TYPE_CLASS))
         {
            if(param1.clsData)
            {
               _loc29_ = param1.clsData.num % 10;
            }
            else
            {
               _loc29_ = param1.cn % 10;
            }
            awardExp.value = Math.round(GamePredef.BASIC_GET_EXP[_core.player.level] * GamePredef.CLASS_QUEST_MONEY_EXP_NUM[_loc29_] * 10 / 31.5);
         }
         else if(ToolKit.isBigThan(param1.data.awardExp,0))
         {
            awardExp.value = param1.data.awardExp;
         }
         if(ToolKit.isEqual(param1.data.type,GamePredef.QUEST_TYPE_CLASS))
         {
            awardMoney.type = Currency.TYPE_MONEYALL;
            if(param1.clsData)
            {
               _loc29_ = param1.clsData.num % 10;
            }
            else
            {
               _loc29_ = param1.cn % 10;
            }
            awardMoney.value = Math.round(GamePredef.BASIC_GET_MONEY[_core.player.level] * GamePredef.CLASS_QUEST_MONEY_EXP_NUM[_loc29_] * 3 / 31.5);
         }
         else if(ToolKit.isBigThan(param1.data.moneyType,0) && ToolKit.isBigThan(param1.data.moneyNum,0))
         {
            switch(Number(param1.data.moneyType))
            {
               case 1:
                  awardMoney.type = Currency.TYPE_MONEY_BIND;
                  break;
               case 2:
                  awardMoney.type = Currency.TYPE_MONEY;
                  break;
               case 3:
                  awardMoney.type = Currency.TYPE_GOLD_BIND;
                  break;
               case 4:
                  awardMoney.type = Currency.TYPE_GOLD;
                  break;
               case 10:
                  awardMoney.type = Currency.TYPE_EXPBATTLE;
                  break;
               case 11:
                  awardMoney.type = Currency.TYPE_ACTPOINT;
            }
            awardMoney.value = param1.data.moneyNum;
         }
         if(ToolKit.isEqual(param1.data.type,GamePredef.QUEST_TYPE_CALLBOARD))
         {
            awardExp.value *= GamePredef.CALLBOARD_AWARD_NUM[param1.c];
            awardMoney.value *= GamePredef.CALLBOARD_AWARD_NUM[param1.c];
         }
         if(param1.award)
         {
            for each(_loc30_ in param1.award)
            {
               if(ToolKit.isEqual(_loc30_.kind,GamePredef.QUEST_AWARD_ITEM))
               {
                  _loc31_ = 1;
                  while(_loc31_ <= 6)
                  {
                     _loc32_ = _core.getTemplateData(_loc30_.type,_loc30_.itemId).reqClass;
                     _loc33_ = !ToolKit.isEqual(param1.data.at,3) || ToolKit.isEqual(param1.data.at,3) && _loc32_.indexOf("|" + _core.player.classId + "|") >= 0;
                     if(this["awardItem" + _loc31_].type == -1 && _loc33_)
                     {
                        this["awardItem" + _loc31_].type = _loc30_.type;
                        this["awardItem" + _loc31_].giid = _loc30_.itemId;
                        this["awardItem" + _loc31_].stackNum = _loc30_.num;
                        this["awardItem" + _loc31_].slotData = _loc30_;
                        break;
                     }
                     _loc31_++;
                  }
               }
               else if(ToolKit.isEqual(_loc30_.kind,GamePredef.QUEST_AWARD_PET))
               {
                  _loc31_ = 1;
                  while(_loc31_ <= 6)
                  {
                     if(this["awardItem" + _loc31_].type == -1)
                     {
                        this["awardItem" + _loc31_].type = GamePredef.TBL_CREATURE;
                        this["awardItem" + _loc31_].giid = _loc30_.itemId;
                        this["awardItem" + _loc31_].slotData = _loc30_;
                        break;
                     }
                     _loc31_++;
                  }
               }
               else if(ToolKit.isEqual(_loc30_.kind,GamePredef.QUEST_AWARD_SKILL))
               {
                  _loc31_ = 1;
                  while(_loc31_ <= 6)
                  {
                     if(this["awardItem" + _loc31_].type == -1)
                     {
                        this["awardItem" + _loc31_].type = GamePredef.TBL_SKILL;
                        this["awardItem" + _loc31_].giid = _loc30_.itemId;
                        this["awardItem" + _loc31_].stackNum = _loc30_.num;
                        this["awardItem" + _loc31_].slotData = _loc30_;
                        break;
                     }
                     _loc31_++;
                  }
               }
            }
            if(ToolKit.isEqual(param1.data.at,2))
            {
               selectId = -1;
            }
         }
         if(Boolean(param1.data.aScriptText) && param1.data.aScriptText.length > 3)
         {
            _loc31_ = 1;
            while(_loc31_ <= 6)
            {
               if(this["awardItem" + _loc31_].type == -1)
               {
                  this["awardItem" + _loc31_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["awardItem" + _loc31_].setIconToolTip(ResManager.ICON_QUEST_AWARD,param1.data.aScriptText);
                  break;
               }
               _loc31_++;
            }
         }
      }
      
      private function mouseWheelHandler(param1:MouseEvent) : void
      {
         var _loc2_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL);
         _loc2_.delta = param1.delta;
      }
      
      public function set awardMoney(param1:Currency) : void
      {
         var _loc2_:Object = this._361867363awardMoney;
         if(_loc2_ !== param1)
         {
            this._361867363awardMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardMoney",_loc2_,param1));
         }
      }
      
      public function __awardItem1_click(param1:MouseEvent) : void
      {
         awardItemClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      private function get _guideVisible() : Boolean
      {
         return this._1062904757_guideVisible;
      }
      
      public function __awardItem5_click(param1:MouseEvent) : void
      {
         awardItemClick(param1);
      }
   }
}

