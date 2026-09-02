package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairySkillListComp extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const ITEM_NUM:int = 5;
      
      private var _3614s1:ItemSlot;
      
      private var _3616s3:ItemSlot;
      
      private var _790270159clearBtn:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _3313732lab1:Label;
      
      private var _3313733lab2:Label;
      
      private var _3313734lab3:Label;
      
      private var _3313731lab0:Label;
      
      private var _3313735lab4:Label;
      
      private var _836075691useBtn:BasicGlowButton;
      
      private var _3613s0:ItemSlot;
      
      private var _3615s2:ItemSlot;
      
      private var _3617s4:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _100346066index:int = -1;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":255,
               "height":75,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"title",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "width":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "y":15,
                        "width":260,
                        "height":50,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":8,
                                 "y":8,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s0",
                                    "events":{
                                       "dragDrop":"__s0_dragDrop",
                                       "mouseDown":"__s0_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":true,
                                          "x":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab0",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "8";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"1",
                                          "x":3,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s1",
                                    "events":{
                                       "dragDrop":"__s1_dragDrop",
                                       "mouseDown":"__s1_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":true,
                                          "x":40
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab1",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "8";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"2",
                                          "x":43,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s2",
                                    "events":{
                                       "dragDrop":"__s2_dragDrop",
                                       "mouseDown":"__s2_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":true,
                                          "x":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab2",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "8";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"3",
                                          "x":82,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s3",
                                    "events":{
                                       "dragDrop":"__s3_dragDrop",
                                       "mouseDown":"__s3_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":true,
                                          "x":120
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab3",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "8";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"4",
                                          "x":123,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s4",
                                    "events":{
                                       "dragDrop":"__s4_dragDrop",
                                       "mouseDown":"__s4_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":true,
                                          "x":160
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"lab4",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "8";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"5",
                                          "x":163,
                                          "mouseEnabled":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"useBtn",
                           "events":{"click":"__useBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":205,
                                 "y":6,
                                 "styleName":"BtnNormalBlue",
                                 "label":"",
                                 "width":45,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"clearBtn",
                           "events":{"click":"__clearBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":205,
                                 "y":26,
                                 "styleName":"BtnNormalBlue",
                                 "width":45,
                                 "height":19
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _110371416title:Label;
      
      private var _core:Core = Core.getInstance();
      
      public function FairySkillListComp()
      {
         super();
         mx_internal::_document = this;
         this.width = 255;
         this.height = 75;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairySkillListComp._watcherSetupUtil = param1;
      }
      
      private function setSlot(param1:DragEvent) : void
      {
      }
      
      public function changeSkill(param1:ItemSlot, param2:ItemSlot) : Boolean
      {
         var _loc5_:ItemSlot = null;
         var _loc6_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < ITEM_NUM)
         {
            _loc5_ = ItemSlot(this["s" + _loc4_]);
            if(param2 == _loc5_)
            {
               _loc3_++;
            }
            else if(param1 == _loc5_)
            {
               _loc3_++;
            }
            _loc4_++;
         }
         if(2 == _loc3_)
         {
            _loc6_ = {};
            _loc6_.slotData = param2.slotData;
            _loc6_.type = param2.type;
            _loc6_.giid = param2.giid;
            param2.slotData = param1.slotData;
            param2.type = param1.type;
            param2.giid = param1.giid;
            param1.slotData = _loc6_.slotData;
            param1.type = _loc6_.type;
            param1.giid = _loc6_.giid;
            return true;
         }
         return false;
      }
      
      public function getConfigData() : Object
      {
         var _loc3_:ItemSlot = null;
         var _loc1_:Object = {};
         var _loc2_:int = 0;
         while(_loc2_ < ITEM_NUM)
         {
            _loc3_ = ItemSlot(this["s" + _loc2_]);
            if(Boolean(_loc3_) && Boolean(_loc3_.slotData))
            {
               _loc1_["c" + _loc2_] = _loc3_.slotData.id;
            }
            else
            {
               _loc1_["c" + _loc2_] = -1;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function set lab3(param1:Label) : void
      {
         var _loc2_:Object = this._3313734lab3;
         if(_loc2_ !== param1)
         {
            this._3313734lab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab3",_loc2_,param1));
         }
      }
      
      public function __useBtn_click(param1:MouseEvent) : void
      {
         select();
      }
      
      public function set lab1(param1:Label) : void
      {
         var _loc2_:Object = this._3313732lab1;
         if(_loc2_ !== param1)
         {
            this._3313732lab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab1",_loc2_,param1));
         }
      }
      
      public function set lab2(param1:Label) : void
      {
         var _loc2_:Object = this._3313733lab2;
         if(_loc2_ !== param1)
         {
            this._3313733lab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab2",_loc2_,param1));
         }
      }
      
      public function set lab0(param1:Label) : void
      {
         var _loc2_:Object = this._3313731lab0;
         if(_loc2_ !== param1)
         {
            this._3313731lab0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s3() : ItemSlot
      {
         return this._3616s3;
      }
      
      [Bindable(event="propertyChange")]
      public function get s4() : ItemSlot
      {
         return this._3617s4;
      }
      
      public function getSkill(param1:ItemSlot, param2:ItemSlot) : Boolean
      {
         var _loc3_:ItemSlot = null;
         var _loc5_:ItemSlot = null;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < ITEM_NUM)
         {
            _loc5_ = ItemSlot(this["s" + _loc4_]);
            if(param2 == _loc5_)
            {
               _loc3_ = _loc5_;
               break;
            }
            _loc4_++;
         }
         if(_loc3_)
         {
            _loc4_ = 0;
            while(_loc4_ < ITEM_NUM)
            {
               _loc3_ = ItemSlot(this["s" + _loc4_]);
               if(_loc3_ != param2)
               {
                  if(Boolean(_loc3_ && _loc3_.slotData) && Boolean(param1.slotData) && _loc3_.slotData.name == param1.slotData.name)
                  {
                     _core.sysMsg(Language.FAIRY_MANAGER_PANEL_U[103]);
                     return true;
                  }
               }
               _loc4_++;
            }
            param2.slotData = param1.slotData;
            param2.type = param1.type;
            param2.giid = param1.giid;
            return true;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get s0() : ItemSlot
      {
         return this._3613s0;
      }
      
      public function __s2_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function beSelect(param1:Boolean) : void
      {
         if(param1)
         {
            useBtn.label = Language.FAIRY_MANAGER_PANEL_U[102];
         }
         else
         {
            useBtn.label = Language.FAIRY_MANAGER_PANEL_U[99];
         }
         itemEnable(param1);
      }
      
      public function __s2_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function init() : void
      {
         if(index == -1)
         {
            title.text = Language.FAIRY_MANAGER_PANEL_U[98];
         }
         else
         {
            title.text = Language.FAIRY_MANAGER_PANEL_U[98] + (index + 1);
         }
         clear();
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
      }
      
      public function set useBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._836075691useBtn;
         if(_loc2_ !== param1)
         {
            this._836075691useBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useBtn",_loc2_,param1));
         }
      }
      
      public function set index(param1:int) : void
      {
         var _loc2_:Object = this._100346066index;
         if(_loc2_ !== param1)
         {
            this._100346066index = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index",_loc2_,param1));
         }
      }
      
      public function __s0_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set clearBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._790270159clearBtn;
         if(_loc2_ !== param1)
         {
            this._790270159clearBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clearBtn",_loc2_,param1));
         }
      }
      
      public function __s4_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FairySkillListComp = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairySkillListComp_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FairySkillListCompWatcherSetupUtil");
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
      public function get s2() : ItemSlot
      {
         return this._3615s2;
      }
      
      private function _FairySkillListComp_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[98];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FAIRY_CONFIG_RIGHT;
         },function(param1:int):void
         {
            s0.slotType = param1;
         },"s0.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FAIRY_CONFIG_RIGHT;
         },function(param1:int):void
         {
            s1.slotType = param1;
         },"s1.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FAIRY_CONFIG_RIGHT;
         },function(param1:int):void
         {
            s2.slotType = param1;
         },"s2.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FAIRY_CONFIG_RIGHT;
         },function(param1:int):void
         {
            s3.slotType = param1;
         },"s3.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FAIRY_CONFIG_RIGHT;
         },function(param1:int):void
         {
            s4.slotType = param1;
         },"s4.slotType");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[100];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            clearBtn.label = param1;
         },"clearBtn.label");
         result[6] = binding;
         return result;
      }
      
      public function set s1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3614s1;
         if(_loc2_ !== param1)
         {
            this._3614s1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s1",_loc2_,param1));
         }
      }
      
      public function set title(param1:Label) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s1() : ItemSlot
      {
         return this._3614s1;
      }
      
      public function set s4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3617s4;
         if(_loc2_ !== param1)
         {
            this._3617s4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab0() : Label
      {
         return this._3313731lab0;
      }
      
      public function __s3_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get lab3() : Label
      {
         return this._3313734lab3;
      }
      
      [Bindable(event="propertyChange")]
      public function get lab4() : Label
      {
         return this._3313735lab4;
      }
      
      public function __s4_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get lab1() : Label
      {
         return this._3313732lab1;
      }
      
      public function __s0_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      private function clear() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_NUM)
         {
            this["s" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clearBtn() : BasicGlowButton
      {
         return this._790270159clearBtn;
      }
      
      private function _FairySkillListComp_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[98];
         _loc1_ = Slot.SLOT_FAIRY_CONFIG_RIGHT;
         _loc1_ = Slot.SLOT_FAIRY_CONFIG_RIGHT;
         _loc1_ = Slot.SLOT_FAIRY_CONFIG_RIGHT;
         _loc1_ = Slot.SLOT_FAIRY_CONFIG_RIGHT;
         _loc1_ = Slot.SLOT_FAIRY_CONFIG_RIGHT;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[100];
      }
      
      public function set s0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3613s0;
         if(_loc2_ !== param1)
         {
            this._3613s0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab2() : Label
      {
         return this._3313733lab2;
      }
      
      [Bindable(event="propertyChange")]
      public function get useBtn() : BasicGlowButton
      {
         return this._836075691useBtn;
      }
      
      public function set s2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3615s2;
         if(_loc2_ !== param1)
         {
            this._3615s2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s2",_loc2_,param1));
         }
      }
      
      public function set s3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3616s3;
         if(_loc2_ !== param1)
         {
            this._3616s3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : int
      {
         return this._100346066index;
      }
      
      public function refresh(param1:int, param2:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         title.text = Language.FAIRY_MANAGER_PANEL_U[98] + (index + 1);
         beSelect(param1 == index);
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < ITEM_NUM)
            {
               if(this["s" + _loc3_])
               {
                  _loc4_ = int(param2["c" + _loc3_]);
                  _loc5_ = _core.data.gameData[GamePredef.TBL_SKILL][_loc4_];
                  if(_loc5_)
                  {
                     this["s" + _loc3_].slotData = _loc5_;
                     this["s" + _loc3_].type = GamePredef.TBL_SKILL;
                     this["s" + _loc3_].giid = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : Label
      {
         return this._110371416title;
      }
      
      public function __s1_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s1_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s3_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set lab4(param1:Label) : void
      {
         var _loc2_:Object = this._3313735lab4;
         if(_loc2_ !== param1)
         {
            this._3313735lab4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab4",_loc2_,param1));
         }
      }
      
      public function __clearBtn_click(param1:MouseEvent) : void
      {
         clear();
      }
      
      private function select() : void
      {
         dispatchEvent(new MouseEvent("select"));
      }
      
      private function itemEnable(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < ITEM_NUM)
         {
            this["s" + _loc2_].enabled = param1;
            _loc2_++;
         }
      }
   }
}

