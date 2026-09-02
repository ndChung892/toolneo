package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
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
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GroupRecruitUpdatePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _GroupRecruitUpdatePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2070514658ns_hour:NumericStepper;
      
      private var _3322014list:List;
      
      private const MIN_BOOK_INTERVAL:Number = 300000;
      
      private var _3503016rl_m:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var minLevel:int;
      
      private var _1057325618ns_minute:NumericStepper;
      
      private var _core:Core = Core.getInstance();
      
      private var maxLevel:int;
      
      mx_internal var _watchers:Array = [];
      
      private var willList:Array;
      
      private const MAX_BOOK_INTERVAL:Number = 7200000;
      
      private var _3503011rl_h:RoundedLabel;
      
      public var _GroupRecruitUpdatePanel_SetProperty1:SetProperty;
      
      public var _GroupRecruitUpdatePanel_SetProperty2:SetProperty;
      
      public var _GroupRecruitUpdatePanel_SetProperty3:SetProperty;
      
      public var _GroupRecruitUpdatePanel_SetProperty4:SetProperty;
      
      public var _GroupRecruitUpdatePanel_SetProperty5:SetProperty;
      
      public var _GroupRecruitUpdatePanel_SetProperty6:SetProperty;
      
      public var _GroupRecruitUpdatePanel_SetProperty7:SetProperty;
      
      public var _GroupRecruitUpdatePanel_SetProperty8:SetProperty;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _GroupRecruitUpdatePanel_BasicGlowButton1:BasicGlowButton;
      
      public var _GroupRecruitUpdatePanel_BasicGlowButton2:BasicGlowButton;
      
      private var _94442652cb_fb:ComboBox;
      
      private var willTypeList:Array;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":250,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GroupRecruitUpdatePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"title",
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.horizontalCenter = "0";
                     this.fontSize = 14;
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GroupRecruitUpdatePanel_BasicGlowButton1",
                  "events":{"click":"___GroupRecruitUpdatePanel_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                     this.horizontalCenter = "-40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed2",
                        "width":65
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GroupRecruitUpdatePanel_BasicGlowButton2",
                  "events":{"click":"___GroupRecruitUpdatePanel_BasicGlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                     this.horizontalCenter = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed2",
                        "width":65
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ComboBox,
                  "id":"cb_fb",
                  "events":{"change":"__cb_fb_change"},
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selectedIndex":1,
                        "y":71,
                        "labelField":"name"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":List,
                  "id":"list",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.top = "101";
                     this.bottom = "47";
                     this.left = "10";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CSSBorder",
                        "horizontalScrollPolicy":"off",
                        "itemRenderer":_GroupRecruitUpdatePanel_ClassFactory1_c()
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"ns_hour",
                  "stylesFactory":function():void
                  {
                     this.top = "118";
                     this.horizontalCenter = "-60";
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
                     this.top = "118";
                     this.horizontalCenter = "40";
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
                  "id":"rl_h",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.top = "118";
                     this.horizontalCenter = "-22";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"rl_m",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.top = "118";
                     this.horizontalCenter = "79";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":20,
                        "height":20
                     };
                  }
               })]
            };
         }
      });
      
      private var _110371416title:RoundedLabel;
      
      public function GroupRecruitUpdatePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.height = 250;
         this.styleName = "StandardContent";
         this.states = [_GroupRecruitUpdatePanel_State1_c(),_GroupRecruitUpdatePanel_State2_c()];
         this.addEventListener("creationComplete",___GroupRecruitUpdatePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupRecruitUpdatePanel._watcherSetupUtil = param1;
      }
      
      public function ___GroupRecruitUpdatePanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         setRoomConfig();
      }
      
      public function init() : void
      {
      }
      
      private function _GroupRecruitUpdatePanel_SetProperty8_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _GroupRecruitUpdatePanel_SetProperty8 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_GroupRecruitUpdatePanel_SetProperty8",_GroupRecruitUpdatePanel_SetProperty8);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_hour() : NumericStepper
      {
         return this._2070514658ns_hour;
      }
      
      private function _GroupRecruitUpdatePanel_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _GroupRecruitUpdatePanel_SetProperty3 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_GroupRecruitUpdatePanel_SetProperty3",_GroupRecruitUpdatePanel_SetProperty3);
         return _loc1_;
      }
      
      private function _GroupRecruitUpdatePanel_SetProperty7_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _GroupRecruitUpdatePanel_SetProperty7 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_GroupRecruitUpdatePanel_SetProperty7",_GroupRecruitUpdatePanel_SetProperty7);
         return _loc1_;
      }
      
      public function set cb_fb(param1:ComboBox) : void
      {
         var _loc2_:Object = this._94442652cb_fb;
         if(_loc2_ !== param1)
         {
            this._94442652cb_fb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb_fb",_loc2_,param1));
         }
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
      
      public function setLevel(param1:int, param2:int) : void
      {
         minLevel = param1;
         maxLevel = param2;
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
      
      public function set rl_h(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3503011rl_h;
         if(_loc2_ !== param1)
         {
            this._3503011rl_h = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_h",_loc2_,param1));
         }
      }
      
      public function setState(param1:String) : void
      {
         currentState = param1;
      }
      
      public function ___GroupRecruitUpdatePanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         cancel();
      }
      
      public function setWill(param1:*, param2:*) : void
      {
         if(!cb_fb)
         {
            callLater(setWill,[param1,param2]);
         }
         else
         {
            willTypeList = param1;
            willList = param2;
            cb_fb.dataProvider = willTypeList;
         }
      }
      
      public function set rl_m(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3503016rl_m;
         if(_loc2_ !== param1)
         {
            this._3503016rl_m = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_m",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : RoundedLabel
      {
         return this._110371416title;
      }
      
      private function setDefultData() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Date = null;
         if(!list || !ns_hour || !ns_minute || !cb_fb || !willList)
         {
            callLater(setDefultData);
            return;
         }
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
         _loc4_.setTime(_loc4_.getTime() + MAX_BOOK_INTERVAL + _core.timeLag - 60 * 1000);
         ns_hour.value = _loc4_.getHours();
         ns_minute.value = _loc4_.getMinutes();
         cb_fb.selectedIndex = 0;
      }
      
      private function _GroupRecruitUpdatePanel_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _GroupRecruitUpdatePanel_SetProperty2 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_GroupRecruitUpdatePanel_SetProperty2",_GroupRecruitUpdatePanel_SetProperty2);
         return _loc1_;
      }
      
      private function _GroupRecruitUpdatePanel_SetProperty6_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _GroupRecruitUpdatePanel_SetProperty6 = _loc1_;
         _loc1_.name = "text";
         BindingManager.executeBindings(this,"_GroupRecruitUpdatePanel_SetProperty6",_GroupRecruitUpdatePanel_SetProperty6);
         return _loc1_;
      }
      
      private function _GroupRecruitUpdatePanel_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "time";
         _loc1_.overrides = [_GroupRecruitUpdatePanel_SetProperty6_i(),_GroupRecruitUpdatePanel_SetProperty7_i(),_GroupRecruitUpdatePanel_SetProperty8_i()];
         return _loc1_;
      }
      
      private function cancel() : void
      {
         hide();
      }
      
      private function _GroupRecruitUpdatePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[29];
         _loc1_ = Language.INPUTPANEL_U[0];
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[32];
         _loc1_ = title;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[30];
         _loc1_ = ns_hour;
         _loc1_ = ns_minute;
         _loc1_ = rl_h;
         _loc1_ = rl_m;
         _loc1_ = title;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[31];
         _loc1_ = cb_fb;
         _loc1_ = list;
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[16];
         _loc1_ = Language.WEDDING_BOOK_PANEL_U[17];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupRecruitUpdatePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupRecruitUpdatePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GroupRecruitUpdatePanelWatcherSetupUtil");
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
      
      public function __cb_fb_change(param1:ListEvent) : void
      {
         changeWillType(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get cb_fb() : ComboBox
      {
         return this._94442652cb_fb;
      }
      
      [Bindable(event="propertyChange")]
      public function get list() : List
      {
         return this._3322014list;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_h() : RoundedLabel
      {
         return this._3503011rl_h;
      }
      
      private function _GroupRecruitUpdatePanel_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "will";
         _loc1_.overrides = [_GroupRecruitUpdatePanel_SetProperty1_i(),_GroupRecruitUpdatePanel_SetProperty2_i(),_GroupRecruitUpdatePanel_SetProperty3_i(),_GroupRecruitUpdatePanel_SetProperty4_i(),_GroupRecruitUpdatePanel_SetProperty5_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_m() : RoundedLabel
      {
         return this._3503016rl_m;
      }
      
      private function _GroupRecruitUpdatePanel_SetProperty5_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _GroupRecruitUpdatePanel_SetProperty5 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_GroupRecruitUpdatePanel_SetProperty5",_GroupRecruitUpdatePanel_SetProperty5);
         return _loc1_;
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
      
      private function _GroupRecruitUpdatePanel_SetProperty1_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _GroupRecruitUpdatePanel_SetProperty1 = _loc1_;
         _loc1_.name = "text";
         BindingManager.executeBindings(this,"_GroupRecruitUpdatePanel_SetProperty1",_GroupRecruitUpdatePanel_SetProperty1);
         return _loc1_;
      }
      
      public function ___GroupRecruitUpdatePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set title(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_minute() : NumericStepper
      {
         return this._1057325618ns_minute;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            setDefultData();
         }
      }
      
      private function _GroupRecruitUpdatePanel_SetProperty4_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _GroupRecruitUpdatePanel_SetProperty4 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_GroupRecruitUpdatePanel_SetProperty4",_GroupRecruitUpdatePanel_SetProperty4);
         return _loc1_;
      }
      
      private function _GroupRecruitUpdatePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitUpdatePanel_BasicTitleCanvas1.text = param1;
         },"_GroupRecruitUpdatePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitUpdatePanel_BasicGlowButton1.label = param1;
         },"_GroupRecruitUpdatePanel_BasicGlowButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitUpdatePanel_BasicGlowButton2.label = param1;
         },"_GroupRecruitUpdatePanel_BasicGlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return title;
         },function(param1:Object):void
         {
            _GroupRecruitUpdatePanel_SetProperty1.target = param1;
         },"_GroupRecruitUpdatePanel_SetProperty1.target");
         result[3] = binding;
         binding = new Binding(this,function():*
         {
            return Language.GROUP_RECRUIT_PANEL_U[30];
         },function(param1:*):void
         {
            _GroupRecruitUpdatePanel_SetProperty1.value = param1;
         },"_GroupRecruitUpdatePanel_SetProperty1.value");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ns_hour;
         },function(param1:Object):void
         {
            _GroupRecruitUpdatePanel_SetProperty2.target = param1;
         },"_GroupRecruitUpdatePanel_SetProperty2.target");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ns_minute;
         },function(param1:Object):void
         {
            _GroupRecruitUpdatePanel_SetProperty3.target = param1;
         },"_GroupRecruitUpdatePanel_SetProperty3.target");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return rl_h;
         },function(param1:Object):void
         {
            _GroupRecruitUpdatePanel_SetProperty4.target = param1;
         },"_GroupRecruitUpdatePanel_SetProperty4.target");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return rl_m;
         },function(param1:Object):void
         {
            _GroupRecruitUpdatePanel_SetProperty5.target = param1;
         },"_GroupRecruitUpdatePanel_SetProperty5.target");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return title;
         },function(param1:Object):void
         {
            _GroupRecruitUpdatePanel_SetProperty6.target = param1;
         },"_GroupRecruitUpdatePanel_SetProperty6.target");
         result[9] = binding;
         binding = new Binding(this,function():*
         {
            return Language.GROUP_RECRUIT_PANEL_U[31];
         },function(param1:*):void
         {
            _GroupRecruitUpdatePanel_SetProperty6.value = param1;
         },"_GroupRecruitUpdatePanel_SetProperty6.value");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return cb_fb;
         },function(param1:Object):void
         {
            _GroupRecruitUpdatePanel_SetProperty7.target = param1;
         },"_GroupRecruitUpdatePanel_SetProperty7.target");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return list;
         },function(param1:Object):void
         {
            _GroupRecruitUpdatePanel_SetProperty8.target = param1;
         },"_GroupRecruitUpdatePanel_SetProperty8.target");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl_h.text = param1;
         },"rl_h.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WEDDING_BOOK_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl_m.text = param1;
         },"rl_m.text");
         result[14] = binding;
         return result;
      }
      
      private function _GroupRecruitUpdatePanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GroupRecruitUpdatePanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
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
      
      private function setRoomConfig() : void
      {
         var func:Function;
         var msg:String = null;
         var obj:Object = null;
         var time:Object = null;
         var fid:int = 0;
         var warnMsg:String = null;
         var date:Date = null;
         var timeNow:Number = NaN;
         var timeTarget:Number = NaN;
         var interval:Number = NaN;
         var tempDate1:Date = null;
         var tempDate2:Date = null;
         obj = new Object();
         if(currentState == "will")
         {
            if(!list.selectedItem)
            {
               Alert.show(Language.GROUP_RECRUIT_PANEL_S[3]);
               return;
            }
            msg = Language.GROUP_RECRUIT_PANEL_S[13].toString().replace("{name}",list.selectedItem.name);
            fid = int(list.selectedItem.id);
            if(list.selectedItem.level > minLevel)
            {
               minLevel = list.selectedItem.level;
            }
            if(maxLevel < minLevel)
            {
               maxLevel = minLevel;
            }
            obj.fid = fid;
            obj.type = list.selectedItem.type;
         }
         else if(currentState == "time")
         {
            msg = Language.GROUP_RECRUIT_PANEL_S[14].toString().replace("{h}",ns_hour.value).replace("{m}",ns_minute.value);
            time = new Object();
            time.hour = ns_hour.value;
            time.minute = ns_minute.value;
            warnMsg = Language.GROUP_RECRUIT_PANEL_S[7];
            date = new Date();
            timeNow = date.getTime() + _core.timeLag;
            date.setTime(timeNow);
            warnMsg = warnMsg.replace("{h}",date.getHours()).replace("{m}",date.getMinutes());
            date.setHours(ns_hour.value,ns_minute.value,0);
            timeTarget = date.getTime();
            interval = timeTarget - timeNow;
            if(interval < 0)
            {
               interval += 24 * 60 * 60 * 1000;
            }
            tempDate1 = new Date();
            tempDate1.setTime(tempDate1.getTime() + MIN_BOOK_INTERVAL + _core.timeLag + 60 * 1000 - 1);
            warnMsg = warnMsg.replace("{h1}",tempDate1.getHours()).replace("{m1}",tempDate1.getMinutes());
            tempDate2 = new Date();
            tempDate2.setTime(tempDate2.getTime() + MAX_BOOK_INTERVAL + _core.timeLag);
            warnMsg = warnMsg.replace("{h2}",tempDate2.getHours()).replace("{m2}",tempDate2.getMinutes());
            if(interval > MAX_BOOK_INTERVAL)
            {
               Alert.show(warnMsg);
               return;
            }
            if(interval < MIN_BOOK_INTERVAL)
            {
               Alert.show(warnMsg);
               return;
            }
            obj.time = time;
         }
         obj.minLevel = minLevel;
         obj.maxLevel = maxLevel;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.setRoomConfig(obj);
               hide();
            }
         };
         Alert.show(msg,null,Alert.YES | Alert.NO,null,func);
      }
   }
}

