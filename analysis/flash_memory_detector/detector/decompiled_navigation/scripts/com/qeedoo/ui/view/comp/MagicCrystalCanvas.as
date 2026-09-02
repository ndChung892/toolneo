package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.NumericStepper;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MagicCrystalCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _991744828perVal:Text;
      
      public var _MagicCrystalCanvas_Text11:Text;
      
      private var _2937411_lmc:Number = 0;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MagicCrystalCanvas_BasicGlowButton1:BasicGlowButton;
      
      public var _MagicCrystalCanvas_BasicGlowButton3:BasicGlowButton;
      
      public var _MagicCrystalCanvas_BasicGlowButton4:BasicGlowButton;
      
      private var _1285520421_active:Number = 0;
      
      private var _lv:Number = 0;
      
      private var _2944138_smc:Number = 0;
      
      public var _MagicCrystalCanvas_Canvas2:Canvas;
      
      private var _1422988188actBth:BasicGlowButton;
      
      public var _MagicCrystalCanvas_Text1:Text;
      
      private var _104387img:Image;
      
      public var _MagicCrystalCanvas_Text5:Text;
      
      public var _MagicCrystalCanvas_Text7:Text;
      
      public var _MagicCrystalCanvas_Text2:Text;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _MagicCrystalCanvas_Text8:Text;
      
      public var _MagicCrystalCanvas_Text9:Text;
      
      private var _60073210jewelUpdateNum:NumericStepper;
      
      private var _index:Number = -1;
      
      public var _MagicCrystalCanvas_Canvas1:Canvas;
      
      private var _1164649830limitVal:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _alert:Alert;
      
      private var _2938021_max:Number = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":175,
               "height":150,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"_MagicCrystalCanvas_Text1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":28,
                        "x":63.5,
                        "y":21
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"_MagicCrystalCanvas_Text2",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16711680;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":28,
                        "x":63.5,
                        "y":42
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"perVal",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 65280;
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":104.5,
                        "text":"+10000",
                        "x":100.5,
                        "y":21
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"limitVal",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16711680;
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":104.5,
                        "text":"+10000",
                        "x":100.5,
                        "y":42
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PropertyBar,
                  "id":"expBar",
                  "stylesFactory":function():void
                  {
                     this.cornerRadius = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":3,
                        "y":75,
                        "width":162,
                        "height":14,
                        "barCornerRadius":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_MagicCrystalCanvas_Canvas1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":3,
                        "y":90,
                        "width":168,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Text,
                           "id":"_MagicCrystalCanvas_Text5",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "right";
                              this.fontSize = 12;
                              this.color = 65280;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":32,
                                 "x":41.5,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":10,
                                 "text":"+",
                                 "x":70,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_MagicCrystalCanvas_Text7",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "left";
                              this.fontSize = 12;
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":30,
                                 "x":81.5,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_MagicCrystalCanvas_Text8",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":48,
                                 "x":-1,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_MagicCrystalCanvas_Text9",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":32,
                                 "x":116,
                                 "y":0,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":11,
                                 "text":"/\n",
                                 "x":107,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_MagicCrystalCanvas_BasicGlowButton1",
                           "events":{"click":"___MagicCrystalCanvas_BasicGlowButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":57,
                                 "width":50,
                                 "y":28
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"jewelUpdateNum",
                           "events":{"change":"__jewelUpdateNum_change"},
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":28,
                                 "minimum":1,
                                 "maximum":9999,
                                 "x":2,
                                 "value":0,
                                 "width":55
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"actBth",
                           "events":{"click":"__actBth_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":140.5,
                                 "label":"+",
                                 "width":24,
                                 "y":-1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_MagicCrystalCanvas_BasicGlowButton3",
                           "events":{"click":"___MagicCrystalCanvas_BasicGlowButton3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":115,
                                 "width":50,
                                 "y":28
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_MagicCrystalCanvas_Canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":9,
                        "y":90,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Text,
                           "id":"_MagicCrystalCanvas_Text11",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":48,
                                 "x":-1,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "stylesFactory":function():void
                           {
                              this.textAlign = "right";
                              this.fontSize = 12;
                              this.color = 65280;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":25,
                                 "text":"--",
                                 "x":41.5,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":32,
                                 "text":"--",
                                 "x":77,
                                 "y":0,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":11,
                                 "text":"/\n",
                                 "x":65.5,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_MagicCrystalCanvas_BasicGlowButton4",
                           "events":{"click":"___MagicCrystalCanvas_BasicGlowButton4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":37,
                                 "width":86,
                                 "y":28,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1289197386expBar:PropertyBar;
      
      private var _core:Core = Core.getInstance();
      
      public function MagicCrystalCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 175;
         this.height = 150;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MagicCrystalCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelUpdateNum() : NumericStepper
      {
         return this._60073210jewelUpdateNum;
      }
      
      private function MagicCrystalNumChange() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_MAGICCRYSTAL);
         if(_loc1_)
         {
            _loc2_ = _loc1_.getSelectPointType();
            if(_loc2_ == "1")
            {
               if(jewelUpdateNum.value > _core.player.magiccystalpre)
               {
                  jewelUpdateNum.value = _core.player.magiccystalpre;
               }
            }
            else if(jewelUpdateNum.value > _core.player.magiccystallimit)
            {
               jewelUpdateNum.value = _core.player.magiccystallimit;
            }
         }
      }
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      public function set perVal(param1:Text) : void
      {
         var _loc2_:Object = this._991744828perVal;
         if(_loc2_ !== param1)
         {
            this._991744828perVal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"perVal",_loc2_,param1));
         }
      }
      
      public function ___MagicCrystalCanvas_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         MagicCrystalActive();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MagicCrystalCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MagicCrystalCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MagicCrystalCanvasWatcherSetupUtil");
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
      private function get _smc() : Number
      {
         return this._2944138_smc;
      }
      
      private function set _lmc(param1:Number) : void
      {
         var _loc2_:Object = this._2937411_lmc;
         if(_loc2_ !== param1)
         {
            this._2937411_lmc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_lmc",_loc2_,param1));
         }
      }
      
      public function set expBar(param1:PropertyBar) : void
      {
         var _loc2_:Object = this._1289197386expBar;
         if(_loc2_ !== param1)
         {
            this._1289197386expBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expBar",_loc2_,param1));
         }
      }
      
      private function set _smc(param1:Number) : void
      {
         var _loc2_:Object = this._2944138_smc;
         if(_loc2_ !== param1)
         {
            this._2944138_smc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_smc",_loc2_,param1));
         }
      }
      
      private function MagicCrystalRecovery() : void
      {
         var str:String;
         var handler:Function = null;
         if(_lmc == 0 && _smc == 0)
         {
            return;
         }
         if(1 > _core.player.magiccystalrec)
         {
            _core.sysMsg(Language.MAGIC_CRYSTAL_PANEL[3]);
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("MagicCrystalRecovery",null,_index);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.MAGIC_CRYSTAL_PANEL[6].toString().replace("{num}",1);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
      }
      
      private function updatePro() : void
      {
         expBar.valueMax = _max;
         expBar.value = _lmc + _smc;
         if(_max == 0)
         {
            perVal.text = "--";
            limitVal.text = "--";
         }
         else
         {
            perVal.text = "+" + Number(Math.floor(_lmc / _max * GamePredef.MAGIC_CRYSTAL_UP[_index][_lv]["v"] * 10000) / 10000).toFixed(4);
            limitVal.text = "+" + Number(Math.floor(_smc / _max * GamePredef.MAGIC_CRYSTAL_UP[_index][_lv]["v"] * 10000) / 10000).toFixed(4);
            if(ToolKit.isEqual(GamePredef.MAGIC_CRYSTAL_UP[_index][_lv]["num"],0))
            {
               actBth.visible = false;
            }
            else
            {
               actBth.visible = true;
            }
         }
         img.source = ResManager.getIconUrl(GamePredef.MAGIC_CRYSTAL_PROP_ICON[_index]);
      }
      
      public function set limitVal(param1:Text) : void
      {
         var _loc2_:Object = this._1164649830limitVal;
         if(_loc2_ !== param1)
         {
            this._1164649830limitVal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitVal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _active() : Number
      {
         return this._1285520421_active;
      }
      
      public function __jewelUpdateNum_change(param1:NumericStepperEvent) : void
      {
         MagicCrystalNumChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get expBar() : PropertyBar
      {
         return this._1289197386expBar;
      }
      
      private function _MagicCrystalCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[8];
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[9];
         _loc1_ = _active == 1;
         _loc1_ = _lmc;
         _loc1_ = _smc;
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[7] + ":\n";
         _loc1_ = _max;
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[10];
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[11];
         _loc1_ = _active == 0;
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[7] + ":\n";
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[12];
      }
      
      [Bindable(event="propertyChange")]
      private function get _max() : Number
      {
         return this._2938021_max;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      [Bindable(event="propertyChange")]
      public function get perVal() : Text
      {
         return this._991744828perVal;
      }
      
      public function set actBth(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1422988188actBth;
         if(_loc2_ !== param1)
         {
            this._1422988188actBth = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBth",_loc2_,param1));
         }
      }
      
      public function ___MagicCrystalCanvas_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         MagicCrystalRecovery();
      }
      
      private function MagicCrystalActive() : void
      {
         var str:String;
         var handler:Function = null;
         if(GamePredef.MAGIC_CRYSTAL_ACTIVE[_index]["num"] > _core.player.magiccystalrec)
         {
            _core.sysMsg(Language.MAGIC_CRYSTAL_PANEL[3]);
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("MagicCrystalActive",null,_index);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.MAGIC_CRYSTAL_PANEL[4].toString().replace("{num}",GamePredef.MAGIC_CRYSTAL_ACTIVE[_index]["num"]);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
      }
      
      private function _MagicCrystalCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_Text1.text = param1;
         },"_MagicCrystalCanvas_Text1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_Text2.text = param1;
         },"_MagicCrystalCanvas_Text2.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _active == 1;
         },function(param1:Boolean):void
         {
            _MagicCrystalCanvas_Canvas1.visible = param1;
         },"_MagicCrystalCanvas_Canvas1.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _lmc;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_Text5.text = param1;
         },"_MagicCrystalCanvas_Text5.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _smc;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_Text7.text = param1;
         },"_MagicCrystalCanvas_Text7.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[7] + ":\n";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_Text8.text = param1;
         },"_MagicCrystalCanvas_Text8.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _max;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_Text9.text = param1;
         },"_MagicCrystalCanvas_Text9.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_BasicGlowButton1.label = param1;
         },"_MagicCrystalCanvas_BasicGlowButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_BasicGlowButton3.label = param1;
         },"_MagicCrystalCanvas_BasicGlowButton3.label");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _active == 0;
         },function(param1:Boolean):void
         {
            _MagicCrystalCanvas_Canvas2.visible = param1;
         },"_MagicCrystalCanvas_Canvas2.visible");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[7] + ":\n";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_Text11.text = param1;
         },"_MagicCrystalCanvas_Text11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalCanvas_BasicGlowButton4.label = param1;
         },"_MagicCrystalCanvas_BasicGlowButton4.label");
         result[11] = binding;
         return result;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         _index = data.index;
         if(data.a == 0)
         {
            _active = 0;
            _max = 0;
         }
         else
         {
            _active = data.a;
            _max = data.max;
            _lmc = data.l;
            _smc = data.s;
            _lv = data.lv;
         }
         updatePro();
      }
      
      private function set _active(param1:Number) : void
      {
         var _loc2_:Object = this._1285520421_active;
         if(_loc2_ !== param1)
         {
            this._1285520421_active = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_active",_loc2_,param1));
         }
      }
      
      public function __actBth_click(param1:MouseEvent) : void
      {
         MagicCrystalUp();
      }
      
      [Bindable(event="propertyChange")]
      public function get limitVal() : Text
      {
         return this._1164649830limitVal;
      }
      
      private function MagicCrystalUp() : void
      {
         var str:String;
         var handler:Function = null;
         if(ToolKit.isEqual(GamePredef.MAGIC_CRYSTAL_UP[_index][_lv]["num"],0))
         {
            return;
         }
         if(GamePredef.MAGIC_CRYSTAL_UP[_index][_lv]["num"] > _core.player.magiccystalrec)
         {
            _core.sysMsg(Language.MAGIC_CRYSTAL_PANEL[3]);
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("MagicCrystalUp",null,_index);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.MAGIC_CRYSTAL_PANEL[5].toString().replace("{num}",GamePredef.MAGIC_CRYSTAL_UP[_index][_lv]["num"]);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
      }
      
      private function MagicCrystalAddPower() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_MAGICCRYSTAL);
         if(_loc1_)
         {
            if(ToolKit.add(_lmc,_smc) == _max)
            {
               return;
            }
            _core.remote.call("MagicCrystalAddPower",null,_index,jewelUpdateNum.value,_loc1_.getSelectPointType());
         }
      }
      
      public function ___MagicCrystalCanvas_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         MagicCrystalAddPower();
      }
      
      [Bindable(event="propertyChange")]
      private function get _lmc() : Number
      {
         return this._2937411_lmc;
      }
      
      [Bindable(event="propertyChange")]
      public function get actBth() : BasicGlowButton
      {
         return this._1422988188actBth;
      }
      
      private function set _max(param1:Number) : void
      {
         var _loc2_:Object = this._2938021_max;
         if(_loc2_ !== param1)
         {
            this._2938021_max = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_max",_loc2_,param1));
         }
      }
      
      public function set jewelUpdateNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._60073210jewelUpdateNum;
         if(_loc2_ !== param1)
         {
            this._60073210jewelUpdateNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelUpdateNum",_loc2_,param1));
         }
      }
   }
}

