package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.StringUtil;
   
   use namespace mx_internal;
   
   public class WorldCupCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3236047img2:Image;
      
      private var _3236049img4:Image;
      
      private var _100318716imgY2:Image;
      
      private var _1872787729saveCal:DelayButton;
      
      private var _teamInfo:String;
      
      private var _3118c1:Canvas;
      
      private var _104584968name3:Label;
      
      private var _3121c4:Canvas;
      
      private var _team:Array = new Array();
      
      private var _110233972team1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _100318715imgY1:Image;
      
      private var _3120c3:Canvas;
      
      private var _teamSure:Array = new Array();
      
      private var _3236046img1:Image;
      
      private var _group:String = "A";
      
      private var _3236048img3:Image;
      
      private var _clickId:Number = -1;
      
      private var _core:Core = Core.getInstance();
      
      private var _104584967name2:Label;
      
      private var _click:Number = -1;
      
      mx_internal var _watchers:Array = [];
      
      private var _3237038info:Label;
      
      private var _110233971team0:Label;
      
      private var _teamChar:Object = {};
      
      private var _1185092072imgSJ2:Image;
      
      private var _teamRealy:String;
      
      private var _104584969name4:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1439306256teamLab:Label;
      
      private var _3119c2:Canvas;
      
      private var _104584966name1:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":206,
               "height":250,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"teamLab",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.color = 16766720;
                     this.fontSize = 20;
                     this.fontFamily = "Arial";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"123",
                        "width":206
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"saveCal",
                  "events":{"click":"__saveCal_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":133,
                        "y":4,
                        "clickDelay":3000,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"info",
                  "stylesFactory":function():void
                  {
                     this.color = 16766720;
                     this.fontSize = 15;
                     this.fontFamily = "Arial";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":206,
                        "y":125,
                        "height":25.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"c1",
                  "events":{"click":"__c1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":152.5,
                        "width":39,
                        "height":39,
                        "buttonMode":true,
                        "useHandCursor":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"img1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":39,
                                 "height":39
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"name1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":60,
                        "y":155.5,
                        "width":53,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"c2",
                  "events":{"click":"__c2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":112,
                        "y":152.5,
                        "width":39,
                        "height":39,
                        "buttonMode":true,
                        "useHandCursor":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"img2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":39,
                                 "height":39
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"name2",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":152,
                        "y":155.5,
                        "width":53,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"c3",
                  "events":{"click":"__c3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":203.45,
                        "width":39,
                        "height":39,
                        "buttonMode":true,
                        "useHandCursor":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"img3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":39,
                                 "height":39
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"name3",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":60,
                        "y":206.5,
                        "width":53,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"c4",
                  "events":{"click":"__c4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":112,
                        "y":203.45,
                        "width":39,
                        "height":39,
                        "buttonMode":true,
                        "useHandCursor":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"img4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":39,
                                 "height":39
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"name4",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":152,
                        "y":206.5,
                        "width":53,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"team0",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.color = 16766720;
                     this.fontSize = 15;
                     this.fontFamily = "Arial";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":75,
                        "x":0,
                        "y":39
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"team1",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.color = 16766720;
                     this.fontSize = 15;
                     this.fontFamily = "Arial";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":75,
                        "x":0,
                        "y":86
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgY1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":80,
                        "y":35.45,
                        "width":39,
                        "height":39
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgY2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134,
                        "y":35.45,
                        "width":39,
                        "height":39
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgSJ1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":80,
                        "y":87.45,
                        "width":39,
                        "height":39
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgSJ2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134,
                        "y":87.45,
                        "width":39,
                        "height":39
                     };
                  }
               })]
            };
         }
      });
      
      private var _1185092073imgSJ1:Image;
      
      public function WorldCupCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 206;
         this.height = 250;
         this.addEventListener("creationComplete",___WorldCupCanvas_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WorldCupCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgY2() : Image
      {
         return this._100318716imgY2;
      }
      
      [Bindable(event="propertyChange")]
      public function get name2() : Label
      {
         return this._104584967name2;
      }
      
      [Bindable(event="propertyChange")]
      public function get name4() : Label
      {
         return this._104584969name4;
      }
      
      public function set name1(param1:Label) : void
      {
         var _loc2_:Object = this._104584966name1;
         if(_loc2_ !== param1)
         {
            this._104584966name1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name1",_loc2_,param1));
         }
      }
      
      public function set imgY1(param1:Image) : void
      {
         var _loc2_:Object = this._100318715imgY1;
         if(_loc2_ !== param1)
         {
            this._100318715imgY1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgY1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name1() : Label
      {
         return this._104584966name1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSJ2() : Image
      {
         return this._1185092072imgSJ2;
      }
      
      public function set name2(param1:Label) : void
      {
         var _loc2_:Object = this._104584967name2;
         if(_loc2_ !== param1)
         {
            this._104584967name2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name2",_loc2_,param1));
         }
      }
      
      public function __c1_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroup(0);
      }
      
      private function init() : void
      {
         updateInfo();
      }
      
      public function set name4(param1:Label) : void
      {
         var _loc2_:Object = this._104584969name4;
         if(_loc2_ !== param1)
         {
            this._104584969name4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name4",_loc2_,param1));
         }
      }
      
      public function set saveCal(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1872787729saveCal;
         if(_loc2_ !== param1)
         {
            this._1872787729saveCal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saveCal",_loc2_,param1));
         }
      }
      
      public function updateInfo() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         teamLab.text = _group + Language.WORLD_CUP_PANEL[5];
         _teamSure = new Array();
         if(_teamInfo)
         {
            _loc2_ = _teamInfo.split("|");
            _loc3_ = 0;
            _loc1_ = 0;
            while(_loc1_ < _loc2_.length)
            {
               if(Boolean(_loc2_[_loc1_]) && Boolean(StringUtil.trim(_loc2_[_loc1_]) != "") && Boolean(GamePredef.WORLD_CUP_INFO[_loc2_[_loc1_]]))
               {
                  _loc3_++;
                  this["img" + _loc3_].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_loc2_[_loc1_]].icon));
                  this["name" + _loc3_].text = GamePredef.WORLD_CUP_INFO[_loc2_[_loc1_]].name;
                  _teamSure.push(_loc2_[_loc1_]);
               }
               _loc1_++;
            }
         }
         this["imgSJ1"].visible = false;
         this["imgSJ2"].visible = false;
         if(_teamRealy)
         {
            _loc2_ = _teamRealy.split("|");
            _loc3_ = 0;
            _loc1_ = 0;
            while(_loc1_ < _loc2_.length)
            {
               if(Boolean(_loc2_[_loc1_]) && Boolean(StringUtil.trim(_loc2_[_loc1_]) != "") && Boolean(GamePredef.WORLD_CUP_INFO[_loc2_[_loc1_]]))
               {
                  _loc3_++;
                  this["imgSJ" + _loc3_].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_loc2_[_loc1_]].icon));
                  this["imgSJ" + _loc3_].visible = true;
               }
               _loc1_++;
            }
         }
         this["imgY1"].visible = false;
         this["imgY2"].visible = false;
         _loc3_ = 0;
         _team = new Array();
         for(_loc1_ in _teamChar)
         {
            if(Boolean(_teamChar[_loc1_]) && Boolean(GamePredef.WORLD_CUP_INFO[_loc1_]))
            {
               _loc3_++;
               this["imgY" + _loc3_].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_loc1_].icon));
               this["imgY" + _loc3_].visible = true;
               _team.push(_loc1_);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saveCal() : DelayButton
      {
         return this._1872787729saveCal;
      }
      
      [Bindable(event="propertyChange")]
      public function get name3() : Label
      {
         return this._104584968name3;
      }
      
      [Bindable(event="propertyChange")]
      public function get c1() : Canvas
      {
         return this._3118c1;
      }
      
      [Bindable(event="propertyChange")]
      public function get c2() : Canvas
      {
         return this._3119c2;
      }
      
      [Bindable(event="propertyChange")]
      public function get c3() : Canvas
      {
         return this._3120c3;
      }
      
      [Bindable(event="propertyChange")]
      public function get c4() : Canvas
      {
         return this._3121c4;
      }
      
      public function set imgSJ1(param1:Image) : void
      {
         var _loc2_:Object = this._1185092073imgSJ1;
         if(_loc2_ !== param1)
         {
            this._1185092073imgSJ1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSJ1",_loc2_,param1));
         }
      }
      
      public function set imgSJ2(param1:Image) : void
      {
         var _loc2_:Object = this._1185092072imgSJ2;
         if(_loc2_ !== param1)
         {
            this._1185092072imgSJ2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSJ2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSJ1() : Image
      {
         return this._1185092073imgSJ1;
      }
      
      public function set name3(param1:Label) : void
      {
         var _loc2_:Object = this._104584968name3;
         if(_loc2_ !== param1)
         {
            this._104584968name3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name3",_loc2_,param1));
         }
      }
      
      private function _WorldCupCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            saveCal.label = param1;
         },"saveCal.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info.text = param1;
         },"info.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c1.toolTip = param1;
         },"c1.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c2.toolTip = param1;
         },"c2.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c3.toolTip = param1;
         },"c3.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            c4.toolTip = param1;
         },"c4.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            team0.text = param1;
         },"team0.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            team1.text = param1;
         },"team1.text");
         result[7] = binding;
         return result;
      }
      
      private function _WorldCupCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WORLD_CUP_PANEL[1];
         _loc1_ = Language.WORLD_CUP_PANEL[4];
         _loc1_ = Language.WORLD_CUP_PANEL[6];
         _loc1_ = Language.WORLD_CUP_PANEL[6];
         _loc1_ = Language.WORLD_CUP_PANEL[6];
         _loc1_ = Language.WORLD_CUP_PANEL[6];
         _loc1_ = Language.WORLD_CUP_PANEL[2];
         _loc1_ = Language.WORLD_CUP_PANEL[3];
      }
      
      public function set teamInfo(param1:String) : void
      {
         _teamInfo = param1;
      }
      
      public function __c2_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroup(1);
      }
      
      public function set c1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3118c1;
         if(_loc2_ !== param1)
         {
            this._3118c1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c1",_loc2_,param1));
         }
      }
      
      public function set c2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3119c2;
         if(_loc2_ !== param1)
         {
            this._3119c2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c2",_loc2_,param1));
         }
      }
      
      public function set c3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3120c3;
         if(_loc2_ !== param1)
         {
            this._3120c3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c3",_loc2_,param1));
         }
      }
      
      public function set c4(param1:Canvas) : void
      {
         var _loc2_:Object = this._3121c4;
         if(_loc2_ !== param1)
         {
            this._3121c4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c4",_loc2_,param1));
         }
      }
      
      public function set info(param1:Label) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      public function ___WorldCupCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get team1() : Label
      {
         return this._110233972team1;
      }
      
      [Bindable(event="propertyChange")]
      public function get team0() : Label
      {
         return this._110233971team0;
      }
      
      public function set teamRealy(param1:String) : void
      {
         _teamRealy = param1;
      }
      
      private function onCalculateWorldCupGroup(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if(_teamSure[0])
         {
            if(_team.length >= 2)
            {
               _team = _team.shift();
               _team.push(_teamSure[0]);
            }
            else
            {
               _team.push(_teamSure[0]);
            }
            _loc2_ = 0;
            while(_loc2_ < _team.length)
            {
               this["imgY" + ToolKit.add(_loc2_,1)].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_team[_loc2_]].icon));
               this["imgY" + ToolKit.add(_loc2_,1)].visible = true;
               _loc2_++;
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WorldCupCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WorldCupCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_WorldCupCanvasWatcherSetupUtil");
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
      
      public function __c3_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroup(2);
      }
      
      public function set img2(param1:Image) : void
      {
         var _loc2_:Object = this._3236047img2;
         if(_loc2_ !== param1)
         {
            this._3236047img2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img2",_loc2_,param1));
         }
      }
      
      public function set img3(param1:Image) : void
      {
         var _loc2_:Object = this._3236048img3;
         if(_loc2_ !== param1)
         {
            this._3236048img3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img3",_loc2_,param1));
         }
      }
      
      public function set img4(param1:Image) : void
      {
         var _loc2_:Object = this._3236049img4;
         if(_loc2_ !== param1)
         {
            this._3236049img4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img4",_loc2_,param1));
         }
      }
      
      public function set img1(param1:Image) : void
      {
         var _loc2_:Object = this._3236046img1;
         if(_loc2_ !== param1)
         {
            this._3236046img1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img1",_loc2_,param1));
         }
      }
      
      public function set teamChar(param1:Object) : void
      {
         _teamChar = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : Label
      {
         return this._3237038info;
      }
      
      private function calculateWorldCupGroup(param1:Number) : void
      {
         var _loc3_:* = undefined;
         if(_teamRealy)
         {
            return;
         }
         var _loc2_:* = new Date().getTime();
         if(ToolKit.minus(_loc2_,_click) <= 700 && _clickId == param1)
         {
            if(_teamSure[param1])
            {
               _loc3_ = 0;
               while(_loc3_ < _team.length)
               {
                  if(_team[_loc3_] == _teamSure[param1])
                  {
                     return;
                  }
                  _loc3_++;
               }
               if(_team.length >= 2)
               {
                  _team.shift();
                  _team.push(_teamSure[param1]);
               }
               else
               {
                  _team.push(_teamSure[param1]);
               }
               _loc3_ = 0;
               while(_loc3_ < _team.length)
               {
                  this["imgY" + ToolKit.add(_loc3_,1)].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[_team[_loc3_]].icon));
                  this["imgY" + ToolKit.add(_loc3_,1)].visible = true;
                  _loc3_++;
               }
            }
         }
         else
         {
            _click = _loc2_;
            _clickId = param1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img2() : Image
      {
         return this._3236047img2;
      }
      
      [Bindable(event="propertyChange")]
      public function get img4() : Image
      {
         return this._3236049img4;
      }
      
      [Bindable(event="propertyChange")]
      public function get img1() : Image
      {
         return this._3236046img1;
      }
      
      public function __c4_click(param1:MouseEvent) : void
      {
         calculateWorldCupGroup(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get img3() : Image
      {
         return this._3236048img3;
      }
      
      public function set teamLab(param1:Label) : void
      {
         var _loc2_:Object = this._1439306256teamLab;
         if(_loc2_ !== param1)
         {
            this._1439306256teamLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"teamLab",_loc2_,param1));
         }
      }
      
      private function saveCalculateResult() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         if(_team.length > 0)
         {
            _loc1_ = new Object();
            _loc1_["group"] = _group;
            _loc1_["state"] = 8;
            _loc2_ = new Object();
            _loc3_ = 0;
            while(_loc3_ < _team.length)
            {
               _loc2_[_team[_loc3_]] = 1;
               _loc3_++;
            }
            _loc1_["info"] = _loc2_;
            _core.remote.call("updateCharWorldCupData",null,_loc1_);
         }
      }
      
      public function set team1(param1:Label) : void
      {
         var _loc2_:Object = this._110233972team1;
         if(_loc2_ !== param1)
         {
            this._110233972team1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"team1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get teamLab() : Label
      {
         return this._1439306256teamLab;
      }
      
      public function set team0(param1:Label) : void
      {
         var _loc2_:Object = this._110233971team0;
         if(_loc2_ !== param1)
         {
            this._110233971team0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"team0",_loc2_,param1));
         }
      }
      
      public function set imgY2(param1:Image) : void
      {
         var _loc2_:Object = this._100318716imgY2;
         if(_loc2_ !== param1)
         {
            this._100318716imgY2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgY2",_loc2_,param1));
         }
      }
      
      public function __saveCal_click(param1:MouseEvent) : void
      {
         saveCalculateResult();
      }
      
      [Bindable(event="propertyChange")]
      public function get imgY1() : Image
      {
         return this._100318715imgY1;
      }
      
      public function set group(param1:String) : void
      {
         _group = param1;
      }
   }
}

