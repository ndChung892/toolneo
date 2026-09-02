package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BossDailyRect extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      private var _104961017nname:Label;
      
      private var _97884btn:Button;
      
      private var _892482111state2:Label;
      
      private var _3034454btn2:Button;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var BOSS_DAILY_CONFIG_WILD_LIST:Array = [2262,2263,2264,2269,2270,2271,2272,2273,2274,2275,2468];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _109757585state:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _401544427_selectedURL:CharactorShowCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":125,
               "height":220,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":CharactorShowCanvas,
                  "id":"_selectedURL",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":10,
                        "width":10,
                        "y":136
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nname",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.horizontalCenter = "0";
                     this.bottom = "50";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":120,
                        "height":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn",
                  "events":{"click":"__btn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "-3";
                     this.bottom = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "width":58,
                        "height":26,
                        "styleName":"bossDailyBattle"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"state",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.bottom = "30";
                     this.left = "-1";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":60,
                        "height":26,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn2",
                  "events":{"click":"__btn2_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "7";
                     this.bottom = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "width":58,
                        "height":26,
                        "styleName":"bossDailyBattle"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"state2",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.bottom = "30";
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":60,
                        "height":26,
                        "mouseChildren":false,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      public var bid:int = 0;
      
      private var _core:Core = Core.getInstance();
      
      public function BossDailyRect()
      {
         super();
         mx_internal::_document = this;
         this.width = 125;
         this.height = 220;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BossDailyRect._watcherSetupUtil = param1;
      }
      
      public function set state2(param1:Label) : void
      {
         var _loc2_:Object = this._892482111state2;
         if(_loc2_ !== param1)
         {
            this._892482111state2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"state2",_loc2_,param1));
         }
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         click();
      }
      
      private function _BossDailyRect_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      private function click() : void
      {
         var str:String = Language.BOSS_DAILY_PANEL[18];
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("bossDailyBattle",null,bid);
            }
         };
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BossDailyRect = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BossDailyRect_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_BossDailyRectWatcherSetupUtil");
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
      public function get state() : Label
      {
         return this._109757585state;
      }
      
      [Bindable(event="propertyChange")]
      public function get _selectedURL() : CharactorShowCanvas
      {
         return this._401544427_selectedURL;
      }
      
      public function set state(param1:Label) : void
      {
         var _loc2_:Object = this._109757585state;
         if(_loc2_ !== param1)
         {
            this._109757585state = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"state",_loc2_,param1));
         }
      }
      
      private function click2() : void
      {
         var str:String = Language.BOSS_DAILY_PANEL[23];
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("bossDailyFinishByCard",null,bid);
            }
         };
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set _selectedURL(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._401544427_selectedURL;
         if(_loc2_ !== param1)
         {
            this._401544427_selectedURL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_selectedURL",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:Button) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function set btn(param1:Button) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         click2();
      }
      
      [Bindable(event="propertyChange")]
      public function get state2() : Label
      {
         return this._892482111state2;
      }
      
      public function clean() : void
      {
         _selectedURL.url = "";
         _selectedURL.toolTip = "";
         btn.toolTip = "";
         nname.text = "";
         state.htmlText = "";
         btn.visible = false;
         btn2.visible = false;
         state2.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : Button
      {
         return this._3034454btn2;
      }
      
      public function refresh(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:Object = null;
         var _loc6_:String = null;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:int = 0;
         bid = int(param1["id"]);
         _loc4_ = GameData.d[GamePredef.TBL_NPC][bid];
         _selectedURL.url = ResManager.getResUrl(_loc4_.resCode);
         _selectedURL.scaleX = param3["s"];
         _selectedURL.scaleY = param3["s"];
         _selectedURL.x = param3["x"];
         _selectedURL.y = 136 + param3["y"];
         _selectedURL.toolTip = param3["award"];
         btn.toolTip = _selectedURL.toolTip;
         nname.text = _loc4_.name;
         btn.visible = true;
         var _loc5_:Object = param2["data"][bid];
         _loc6_ = Language.BOSS_DAILY_PANEL[13];
         btn.enabled = true;
         if(int(param3["type"]) == 1)
         {
            if(!_loc5_)
            {
               state.htmlText = "<font color=\'#FFFF00\'>" + _loc6_ + "(" + param3["num"] + ")</font>";
            }
            else if(int(param3["num"]) > int(_loc5_["n"]))
            {
               _loc7_ = _loc4_.lv;
               _loc8_ = int(_core.player.level);
               if(BOSS_DAILY_CONFIG_WILD_LIST.indexOf(bid) >= 0 && int(_loc5_["n"]) == 1 && _loc8_ + 10 < _loc7_)
               {
                  state.htmlText = "<font color=\'#FFFF00\'>" + "Thưởng suy giảm" + "(" + (int(param3["num"]) - int(_loc5_["n"])) + ")</font>";
                  btn.toolTip = _selectedURL.toolTip + "\n Nếu lv nhân vật nhỏ hơn boss 10 cấp, phần thưởng sẽ suy giảm";
               }
               else
               {
                  state.htmlText = "<font color=\'#FFFF00\'>" + _loc6_ + "(" + (int(param3["num"]) - int(_loc5_["n"])) + ")</font>";
               }
            }
            else
            {
               btn.enabled = false;
               state.htmlText = "<font color=\'#888888\'>" + _loc6_ + "(0)</font>";
            }
         }
         else if(!_loc5_ || Number(_loc5_["t"]) == 0 || ToolKit.isBigThan(param2["now"],ToolKit.add(_loc5_["t"],param3["step"])))
         {
            state.htmlText = "<font color=\'#FFFF00\'>" + _loc6_ + "(0s)</font>";
         }
         else
         {
            _loc9_ = int(_loc5_["t"]) + int(param3["step"]) - int(param2["now"]);
            btn.enabled = false;
            state.htmlText = "<font color=\'#888888\'>" + _loc6_ + "(" + getLeftTime(_loc9_) + ")</font>";
         }
         if(Boolean(param2) && Boolean(param2["dfd"]))
         {
            btn2.visible = state2.visible = true;
            if(param2["dfd"][bid] == bid)
            {
               btn2.enabled = true;
               _loc6_ = Language.BOSS_DAILY_PANEL[20];
               state2.htmlText = "<font color=\'#FFFF00\'>" + _loc6_ + "</font>";
               btn2.toolTip = Language.BOSS_DAILY_PANEL[25];
            }
            else
            {
               btn2.enabled = false;
               _loc6_ = Language.BOSS_DAILY_PANEL[21];
               state2.htmlText = "<font color=\'#FFFF00\'>" + _loc6_ + "</font>";
               btn2.toolTip = Language.BOSS_DAILY_PANEL[22];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      private function _BossDailyRect_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            nname.filters = param1;
         },"nname.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            state.filters = param1;
         },"state.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            state2.filters = param1;
         },"state2.filters");
         result[2] = binding;
         return result;
      }
      
      private function getLeftTime(param1:int) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = "00";
         var _loc7_:String = "00";
         var _loc8_:String = "00";
         param1 /= 1000;
         if(param1 >= 3600)
         {
            _loc3_ = Math.ceil(param1 / 3600);
            return _loc3_ + "H";
         }
         if(param1 >= 60)
         {
            _loc4_ = Math.ceil(param1 / 60);
            return _loc4_ + "m";
         }
         if(param1 > 0)
         {
            return param1 + "s";
         }
         return _loc2_;
      }
      
      public function set nname(param1:Label) : void
      {
         var _loc2_:Object = this._104961017nname;
         if(_loc2_ !== param1)
         {
            this._104961017nname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nname",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nname() : Label
      {
         return this._104961017nname;
      }
   }
}

