package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.Alert;
   import mx.controls.ComboBox;
   import mx.controls.List;
   import mx.controls.NumericStepper;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GroupRecruitNewPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _GroupRecruitNewPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _2070514658ns_hour:NumericStepper;
      
      private var _3322014list:List;
      
      private const MIN_CREATE_ROOM_INTERVAL:Number = 300000;
      
      private const MIN_BOOK_INTERVAL:Number = 300000;
      
      mx_internal var _watchers:Array = [];
      
      private var willList:Array;
      
      private const MAX_BOOK_INTERVAL:Number = 7200000;
      
      public var _GroupRecruitNewPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _GroupRecruitNewPanel_RoundedLabel1:RoundedLabel;
      
      public var _GroupRecruitNewPanel_RoundedLabel2:RoundedLabel;
      
      public var _GroupRecruitNewPanel_RoundedLabel3:RoundedLabel;
      
      public var _GroupRecruitNewPanel_RoundedLabel4:RoundedLabel;
      
      public var _GroupRecruitNewPanel_RoundedLabel5:RoundedLabel;
      
      public var _GroupRecruitNewPanel_RoundedLabel6:RoundedLabel;
      
      public var _GroupRecruitNewPanel_RoundedLabel7:RoundedLabel;
      
      private var timeFlag:Number;
      
      private var _3167cb:ComboBox;
      
      private var _1779038604ns_minLevel:NumericStepper;
      
      private var _1057325618ns_minute:NumericStepper;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":330,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GroupRecruitNewPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_GroupRecruitNewPanel_RoundedLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.left = "10";
                     this.top = "184";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":65};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_GroupRecruitNewPanel_RoundedLabel2",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.top = "184";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":173.5,
                        "width":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"ns_minLevel",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":101.5,
                        "y":182,
                        "maximum":150,
                        "stepSize":1,
                        "width":60,
                        "value":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"ns_maxLevel",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":201.5,
                        "y":182,
                        "maximum":150,
                        "stepSize":1,
                        "width":60,
                        "value":140
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_GroupRecruitNewPanel_RoundedLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.left = "10";
                     this.top = "231";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":65};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_GroupRecruitNewPanel_RoundedLabel4",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.top = "266";
                     this.horizontalCenter = "0";
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"ns_hour",
                  "stylesFactory":function():void
                  {
                     this.left = "101.5";
                     this.top = "221";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "minimum":0,
                        "maximum":23,
                        "width":60
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"ns_minute",
                  "stylesFactory":function():void
                  {
                     this.left = "201.5";
                     this.top = "221";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "minimum":0,
                        "maximum":59,
                        "width":60
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_GroupRecruitNewPanel_RoundedLabel5",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.left = "159.5";
                     this.top = "221";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"height":20};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_GroupRecruitNewPanel_RoundedLabel6",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.left = "260.5";
                     this.top = "221";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"height":20};
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GroupRecruitNewPanel_BasicGlowButton1",
                  "events":{"click":"___GroupRecruitNewPanel_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.horizontalCenter = "0";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CrystalYellowButton",
                        "width":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_GroupRecruitNewPanel_RoundedLabel7",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.left = "10";
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":65};
                  }
               }),new UIComponentDescriptor({
                  "type":ComboBox,
                  "id":"cb",
                  "events":{"change":"__cb_change"},
                  "stylesFactory":function():void
                  {
                     this.top = "39";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selectedIndex":0,
                        "x":90,
                        "width":171.5,
                        "labelField":"name"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":List,
                  "id":"list",
                  "events":{
                     "mouseDown":"__list_mouseDown",
                     "change":"__list_change"
                  },
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.top = "67";
                     this.bottom = "138";
                     this.left = "92";
                     this.right = "38.5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CSSBorder",
                        "horizontalScrollPolicy":"off",
                        "itemRenderer":_GroupRecruitNewPanel_ClassFactory1_c()
                     };
                  }
               })]
            };
         }
      });
      
      private var _739732038ns_maxLevel:NumericStepper;
      
      private var _core:Core = Core.getInstance();
      
      public function GroupRecruitNewPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 330;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___GroupRecruitNewPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupRecruitNewPanel._watcherSetupUtil = param1;
      }
      
      public function changeWillType(param1:Event) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:int = int(param1.target.selectedItem.data);
         var _loc3_:Array = [];
         for(_loc4_ in willList)
         {
            if(willList[_loc4_].type == _loc2_)
            {
               _loc3_.push(willList[_loc4_]);
            }
         }
         list.dataProvider = _loc3_;
      }
      
      public function ___GroupRecruitNewPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_minLevel() : NumericStepper
      {
         return this._1779038604ns_minLevel;
      }
      
      private function init() : void
      {
      }
      
      public function __list_change(param1:ListEvent) : void
      {
         changeListItem(param1);
      }
      
      private function _GroupRecruitNewPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[8];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[2];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[14];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[4];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[34];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[16];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[17];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[13];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[3];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupRecruitNewPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupRecruitNewPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GroupRecruitNewPanelWatcherSetupUtil");
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
      
      private function changeListItem(param1:Event) : void
      {
         ns_minLevel.value = list.selectedItem.level;
      }
      
      [Bindable(event="propertyChange")]
      public function get list() : List
      {
         return this._3322014list;
      }
      
      public function ___GroupRecruitNewPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         createRoom();
      }
      
      public function __cb_change(param1:ListEvent) : void
      {
         changeWillType(param1);
      }
      
      public function set ns_minute(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1057325618ns_minute;
         if(_loc2_ !== param1)
         {
            this._1057325618ns_minute = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_minute",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_hour() : NumericStepper
      {
         return this._2070514658ns_hour;
      }
      
      public function set list(param1:List) : void
      {
         var _loc2_:Object = this._3322014list;
         if(_loc2_ !== param1)
         {
            this._3322014list = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list",_loc2_,param1));
         }
      }
      
      public function setDataProvider(param1:Array, param2:Array) : void
      {
         cb.dataProvider = param1;
         willList = param2;
         setDefultData();
      }
      
      public function set cb(param1:ComboBox) : void
      {
         var _loc2_:Object = this._3167cb;
         if(_loc2_ !== param1)
         {
            this._3167cb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb",_loc2_,param1));
         }
      }
      
      private function _GroupRecruitNewPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_BasicTitleCanvas1.text = param1;
         },"_GroupRecruitNewPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_RoundedLabel1.text = param1;
         },"_GroupRecruitNewPanel_RoundedLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_RoundedLabel2.text = param1;
         },"_GroupRecruitNewPanel_RoundedLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_RoundedLabel3.text = param1;
         },"_GroupRecruitNewPanel_RoundedLabel3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_RoundedLabel4.text = param1;
         },"_GroupRecruitNewPanel_RoundedLabel4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_RoundedLabel5.text = param1;
         },"_GroupRecruitNewPanel_RoundedLabel5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_RoundedLabel6.text = param1;
         },"_GroupRecruitNewPanel_RoundedLabel6.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_BasicGlowButton1.label = param1;
         },"_GroupRecruitNewPanel_BasicGlowButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitNewPanel_RoundedLabel7.text = param1;
         },"_GroupRecruitNewPanel_RoundedLabel7.text");
         result[8] = binding;
         return result;
      }
      
      public function set ns_hour(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._2070514658ns_hour;
         if(_loc2_ !== param1)
         {
            this._2070514658ns_hour = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_hour",_loc2_,param1));
         }
      }
      
      public function set ns_minLevel(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1779038604ns_minLevel;
         if(_loc2_ !== param1)
         {
            this._1779038604ns_minLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_minLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_maxLevel() : NumericStepper
      {
         return this._739732038ns_maxLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get cb() : ComboBox
      {
         return this._3167cb;
      }
      
      private function setDefultData() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Date = null;
         var _loc1_:int = 0;
         var _loc2_:Array = [];
         for(_loc3_ in willList)
         {
            if(willList[_loc3_].type == _loc1_)
            {
               _loc2_.push(willList[_loc3_]);
            }
         }
         list.dataProvider = _loc2_;
         _loc4_ = new Date();
         _loc4_.setTime(_loc4_.getTime() + MAX_BOOK_INTERVAL + _core.timeLag + TimeUtil.timeOSOffSet - 60 * 1000);
         ns_hour.value = _loc4_.getHours();
         ns_minute.value = _loc4_.getMinutes();
      }
      
      private function _GroupRecruitNewPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GroupRecruitNewPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function __list_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_minute() : NumericStepper
      {
         return this._1057325618ns_minute;
      }
      
      private function createRoom() : void
      {
         var _loc6_:String = null;
         var _loc9_:Date = null;
         if(!list.selectedItem)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[3]);
            return;
         }
         if(!cb.selectedItem)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[4]);
            return;
         }
         if(ns_minLevel.value < list.selectedItem.level)
         {
            _loc6_ = Language.GROUP_RECRUIT_PANEL_S[5].toString().replace("{num}",list.selectedItem.level);
            Alert.show(_loc6_);
            return;
         }
         if(ns_maxLevel.value < ns_minLevel.value)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[6]);
            return;
         }
         var _loc1_:Object = new Object();
         _loc1_.minLevel = ns_minLevel.value;
         _loc1_.maxLevel = ns_maxLevel.value;
         _loc1_.fid = list.selectedItem.id;
         _loc1_.type = list.selectedItem.type;
         _loc1_.hour = ns_hour.value;
         _loc1_.minute = ns_minute.value;
         var _loc2_:Date = new Date();
         var _loc3_:Number = _loc2_.getTime() + _core.timeLag + TimeUtil.timeOSOffSet;
         _loc2_.setHours(ns_hour.value,ns_minute.value,0);
         var _loc4_:Number = _loc2_.getTime();
         var _loc5_:Number = _loc4_ - _loc3_;
         if(_loc5_ < 0)
         {
            _loc4_ += 24 * 60 * 60 * 1000;
            _loc5_ = _loc4_ - _loc3_;
         }
         _loc6_ = Language.GROUP_RECRUIT_PANEL_S[7];
         var _loc7_:Date = new Date();
         _loc7_.setTime(_loc7_.getTime() + _core.timeLag + TimeUtil.timeOSOffSet);
         _loc6_ = _loc6_.replace("{h}",_loc7_.getHours()).replace("{m}",_loc7_.getMinutes());
         var _loc8_:Date = new Date();
         _loc8_.setTime(_loc8_.getTime() + MIN_BOOK_INTERVAL + _core.timeLag + TimeUtil.timeOSOffSet + 60 * 1000 - 1);
         _loc6_ = _loc6_.replace("{h1}",_loc8_.getHours()).replace("{m1}",_loc8_.getMinutes());
         _loc9_ = new Date();
         _loc9_.setTime(_loc9_.getTime() + MAX_BOOK_INTERVAL + TimeUtil.timeOSOffSet + _core.timeLag);
         _loc6_ = _loc6_.replace("{h2}",_loc9_.getHours()).replace("{m2}",_loc9_.getMinutes());
         if(_loc5_ > MAX_BOOK_INTERVAL)
         {
            Alert.show(_loc6_);
            return;
         }
         if(_loc5_ < MIN_BOOK_INTERVAL)
         {
            Alert.show(_loc6_);
            return;
         }
         if(_core.player.level < ns_minLevel.value)
         {
            _loc6_ = Language.GROUP_RECRUIT_PANEL_S[36].toString().replace("{num}",ns_minLevel.value);
            Alert.show(_loc6_);
            return;
         }
         _loc9_ = new Date();
         var _loc10_:Number = _loc9_.getTime() - timeFlag;
         if(_loc10_ < MIN_CREATE_ROOM_INTERVAL)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[37]);
            return;
         }
         _core.remote.createRoom(_loc1_);
         timeFlag = _loc9_.getTime();
         hide();
      }
      
      public function set ns_maxLevel(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._739732038ns_maxLevel;
         if(_loc2_ !== param1)
         {
            this._739732038ns_maxLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_maxLevel",_loc2_,param1));
         }
      }
   }
}

