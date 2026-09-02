package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipMedal extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const MEDAL_MAX_LEVEL:int = 10;
      
      private var _755439989propBasic:String;
      
      private var _479786134reqLevel0:Text;
      
      private var _1829026215needExp:String;
      
      private var _2067263007showBtn:Button;
      
      private var _286760779magicWeaponLevel0:Text;
      
      private var _747804969position:String;
      
      private var _1375771073totalJoinDesc:String;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TipMedal_Text10:Text;
      
      public var _TipMedal_Text11:Text;
      
      private var _226921015uplevel:String;
      
      private var _1724546052description:String;
      
      private var _148001439useType:String;
      
      private var _core:Core;
      
      private var _2012328149tipName1:Label;
      
      private var dm:DataManager;
      
      mx_internal var _watchers:Array = [];
      
      private var _2012328150tipName0:Label;
      
      private var _293077265useType0:Text;
      
      private var _1921387042medalName:String;
      
      private var _738251546iconImg0:Image;
      
      private var _102865796level:String;
      
      private var _557573430tipContainer0:VBox;
      
      private var _431118970reqLevel:String;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipMedal_Text1:Text;
      
      public var _TipMedal_Text2:Text;
      
      public var _TipMedal_Text6:Text;
      
      public var _TipMedal_Text8:Text;
      
      public var _TipMedal_Text9:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _1279859928nextPropBasic:String;
      
      public var _TipMedal_Text7:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {
               "width":170,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "id":"tipContainer0",
                  "stylesFactory":function():void
                  {
                     this.verticalGap = 0;
                     this.paddingLeft = 5;
                     this.paddingRight = 5;
                     this.paddingTop = 5;
                     this.paddingBottom = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "width":248,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":57,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "width":246,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"tipName0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":45,
                                          "y":23,
                                          "text":"完美的什么装备名字[金]"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"iconImg0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":15,
                                          "width":32,
                                          "height":32
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"showBtn",
                                    "events":{"click":"__showBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "5";
                                       this.top = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "styleName":"BtnToolTipClose",
                                          "width":15,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"tipName1",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":23};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipMedal_Text1",
                           "stylesFactory":function():void
                           {
                              this.color = 16773307;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"text":"装备描述"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipMedal_Text2",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"装备位置: 主手"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"useType0",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"使用对象: 123"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"reqLevel0",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"等级需求: 123"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"magicWeaponLevel0",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"神器等级: 123"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipMedal_Text6",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"勋章属性"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipMedal_Text7",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"勋章属性"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipMedal_Text8",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"可激活回路"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipMedal_Text9",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"可激活回路"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipMedal_Text10",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"升级所需经验"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipMedal_Text11",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"下级纹章属性"};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var obj:Object;
      
      public function TipMedal()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.width = 170;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("resize",___TipMedal_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipMedal._watcherSetupUtil = param1;
      }
      
      private function set level(param1:String) : void
      {
         var _loc2_:Object = this._102865796level;
         if(_loc2_ !== param1)
         {
            this._102865796level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",_loc2_,param1));
         }
      }
      
      private function getNextMedal(param1:Object) : Object
      {
         var _loc3_:Object = null;
         if(!param1 || param1.level == null || param1.level == MEDAL_MAX_LEVEL)
         {
            return null;
         }
         var _loc2_:Object = _core.data.gameData[GamePredef.TBL_MEDAL];
         for(_loc3_ in _loc2_)
         {
            if(Boolean(_loc2_[_loc3_]) && Boolean(_loc2_[_loc3_].name == param1.name) && Number(_loc2_[_loc3_].level) == Number(param1.level) + 1)
            {
               return _loc2_[_loc3_];
            }
         }
         return null;
      }
      
      private function set reqLevel(param1:String) : void
      {
         var _loc2_:Object = this._431118970reqLevel;
         if(_loc2_ !== param1)
         {
            this._431118970reqLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqLevel",_loc2_,param1));
         }
      }
      
      private function set propBasic(param1:String) : void
      {
         var _loc2_:Object = this._755439989propBasic;
         if(_loc2_ !== param1)
         {
            this._755439989propBasic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propBasic",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showBtn() : Button
      {
         return this._2067263007showBtn;
      }
      
      [Bindable(event="propertyChange")]
      private function get medalName() : String
      {
         return this._1921387042medalName;
      }
      
      [Bindable(event="propertyChange")]
      private function get position() : String
      {
         return this._747804969position;
      }
      
      [Bindable(event="propertyChange")]
      public function get tipName0() : Label
      {
         return this._2012328150tipName0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tipName1() : Label
      {
         return this._2012328149tipName1;
      }
      
      public function set showBtn(param1:Button) : void
      {
         var _loc2_:Object = this._2067263007showBtn;
         if(_loc2_ !== param1)
         {
            this._2067263007showBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get totalJoinDesc() : String
      {
         return this._1375771073totalJoinDesc;
      }
      
      private function set medalName(param1:String) : void
      {
         var _loc2_:Object = this._1921387042medalName;
         if(_loc2_ !== param1)
         {
            this._1921387042medalName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalName",_loc2_,param1));
         }
      }
      
      private function set needExp(param1:String) : void
      {
         var _loc2_:Object = this._1829026215needExp;
         if(_loc2_ !== param1)
         {
            this._1829026215needExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needExp",_loc2_,param1));
         }
      }
      
      private function set position(param1:String) : void
      {
         var _loc2_:Object = this._747804969position;
         if(_loc2_ !== param1)
         {
            this._747804969position = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"position",_loc2_,param1));
         }
      }
      
      public function set tipName0(param1:Label) : void
      {
         var _loc2_:Object = this._2012328150tipName0;
         if(_loc2_ !== param1)
         {
            this._2012328150tipName0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipName0",_loc2_,param1));
         }
      }
      
      public function set tipName1(param1:Label) : void
      {
         var _loc2_:Object = this._2012328149tipName1;
         if(_loc2_ !== param1)
         {
            this._2012328149tipName1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipName1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get useType() : String
      {
         return this._148001439useType;
      }
      
      public function set magicWeaponLevel0(param1:Text) : void
      {
         var _loc2_:Object = this._286760779magicWeaponLevel0;
         if(_loc2_ !== param1)
         {
            this._286760779magicWeaponLevel0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicWeaponLevel0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reqLevel0() : Text
      {
         return this._479786134reqLevel0;
      }
      
      public function ___TipMedal_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function set object(param1:Object) : void
      {
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         obj = param1;
         if(!param1.temp)
         {
            return;
         }
         setCommon(param1);
         showBtn.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      private function get level() : String
      {
         return this._102865796level;
      }
      
      public function __showBtn_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get propBasic() : String
      {
         return this._755439989propBasic;
      }
      
      [Bindable(event="propertyChange")]
      private function get reqLevel() : String
      {
         return this._431118970reqLevel;
      }
      
      private function set uplevel(param1:String) : void
      {
         var _loc2_:Object = this._226921015uplevel;
         if(_loc2_ !== param1)
         {
            this._226921015uplevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uplevel",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipMedal = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipMedal_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipMedalWatcherSetupUtil");
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
      
      public function set tipContainer0(param1:VBox) : void
      {
         var _loc2_:Object = this._557573430tipContainer0;
         if(_loc2_ !== param1)
         {
            this._557573430tipContainer0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipContainer0",_loc2_,param1));
         }
      }
      
      private function set totalJoinDesc(param1:String) : void
      {
         var _loc2_:Object = this._1375771073totalJoinDesc;
         if(_loc2_ !== param1)
         {
            this._1375771073totalJoinDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalJoinDesc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get needExp() : String
      {
         return this._1829026215needExp;
      }
      
      private function set nextPropBasic(param1:String) : void
      {
         var _loc2_:Object = this._1279859928nextPropBasic;
         if(_loc2_ !== param1)
         {
            this._1279859928nextPropBasic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextPropBasic",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get magicWeaponLevel0() : Text
      {
         return this._286760779magicWeaponLevel0;
      }
      
      private function _TipMedal_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = medalName;
         _loc1_ = level;
         _loc1_ = description;
         _loc1_ = position;
         _loc1_ = useType;
         _loc1_ = reqLevel;
         _loc1_ = uplevel;
         _loc1_ = Language.MEDAL_P[36];
         _loc1_ = propBasic;
         _loc1_ = Language.MEDAL_P[37];
         _loc1_ = totalJoinDesc;
         _loc1_ = needExp;
         _loc1_ = nextPropBasic;
      }
      
      private function set useType(param1:String) : void
      {
         var _loc2_:Object = this._148001439useType;
         if(_loc2_ !== param1)
         {
            this._148001439useType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useType",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tipContainer0() : VBox
      {
         return this._557573430tipContainer0;
      }
      
      public function set reqLevel0(param1:Text) : void
      {
         var _loc2_:Object = this._479786134reqLevel0;
         if(_loc2_ !== param1)
         {
            this._479786134reqLevel0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqLevel0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get uplevel() : String
      {
         return this._226921015uplevel;
      }
      
      public function set useType0(param1:Text) : void
      {
         var _loc2_:Object = this._293077265useType0;
         if(_loc2_ !== param1)
         {
            this._293077265useType0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useType0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nextPropBasic() : String
      {
         return this._1279859928nextPropBasic;
      }
      
      public function set iconImg0(param1:Image) : void
      {
         var _loc2_:Object = this._738251546iconImg0;
         if(_loc2_ !== param1)
         {
            this._738251546iconImg0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImg0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImg0() : Image
      {
         return this._738251546iconImg0;
      }
      
      private function _TipMedal_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = medalName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tipName0.htmlText = param1;
         },"tipName0.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tipName1.htmlText = param1;
         },"tipName1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMedal_Text1.htmlText = param1;
         },"_TipMedal_Text1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = position;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMedal_Text2.htmlText = param1;
         },"_TipMedal_Text2.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = useType;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            useType0.htmlText = param1;
         },"useType0.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = reqLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqLevel0.htmlText = param1;
         },"reqLevel0.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = uplevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            magicWeaponLevel0.htmlText = param1;
         },"magicWeaponLevel0.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMedal_Text6.htmlText = param1;
         },"_TipMedal_Text6.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = propBasic;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMedal_Text7.htmlText = param1;
         },"_TipMedal_Text7.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMedal_Text8.htmlText = param1;
         },"_TipMedal_Text8.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = totalJoinDesc;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMedal_Text9.htmlText = param1;
         },"_TipMedal_Text9.htmlText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = needExp;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMedal_Text10.htmlText = param1;
         },"_TipMedal_Text10.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = nextPropBasic;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMedal_Text11.htmlText = param1;
         },"_TipMedal_Text11.htmlText");
         result[12] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get useType0() : Text
      {
         return this._293077265useType0;
      }
      
      private function setCommon(param1:Object) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         medalName = param1.temp.name;
         level = "LV " + param1.temp.level;
         iconImg0.source = ResManager.getIconUrl(param1.temp.iconCode);
         description = param1.temp.desc;
         position = Language.MEDAL_P[23] + " " + GamePredef.MEDAL_EQUIPT_SID[param1.temp.sid];
         if(!GamePredef.MEDAL_EQUIPT_SID[param1.temp.sid])
         {
            position = Language.MEDAL_P[23];
         }
         var _loc2_:Number = 1006;
         if(Number(param1.temp.sid) < 2000)
         {
            useType = Language.MEDAL_P[24] + " " + Language.MEDAL_P[25];
         }
         else
         {
            useType = Language.MEDAL_P[24] + " " + Language.MEDAL_P[26];
            _loc2_ = 2006;
         }
         if(!param1.temp.clevel || Number(param1.temp.clevel) <= _core.player.level)
         {
            reqLevel = Language.MEDAL_P[27] + " " + (param1.temp.clevel ? param1.temp.clevel : "0");
         }
         else
         {
            reqLevel = "<font color=\'#FF0000\'>" + Language.MEDAL_P[27] + " " + (param1.temp.clevel ? param1.temp.clevel : "0") + "</font>";
         }
         if(Number(param1.temp.level) >= GamePredef.MEDAL_MAX_LEVEL)
         {
            uplevel = Language.MEDAL_P[28];
            if(!param1.temp.clevel || Number(param1.temp.clevel) <= _core.player.level)
            {
               uplevel = Language.MEDAL_P[28];
            }
            else
            {
               uplevel = "<font color=\'#FF0000\'>" + Language.MEDAL_P[28] + "</font>";
            }
         }
         else
         {
            for each(_loc5_ in _core.data.gameDataIndex[GamePredef.TBL_MEDAL][param1.temp.basicTid])
            {
               if(Number(_loc5_.level) == ToolKit.add(1,param1.temp.level))
               {
                  if(!_loc5_.clevel || Number(_loc5_.clevel) <= _core.player.level)
                  {
                     uplevel = Language.MEDAL_P[29] + " " + _loc5_.clevel;
                  }
                  else
                  {
                     uplevel = "<font color=\'#FF0000\'>" + Language.MEDAL_P[29] + " " + _loc5_.clevel + "</font>";
                  }
                  break;
               }
            }
         }
         propBasic = GamePredef.MEDAL_PROP_NAME[param1.temp.propType] + " " + Number(param1.temp.propVal) / 100;
         if(Boolean(param1.temp.preflag) && ToolKit.isEqual(param1.temp.preflag,1))
         {
            propBasic += "%";
         }
         var _loc3_:* = "|" + param1.temp.basicTid + "|";
         var _loc4_:String = "";
         for each(_loc5_ in _core.data.gameDataIndex2[GamePredef.TBL_MEDAL][_loc2_])
         {
            if(Boolean(_loc5_) && Boolean(_loc5_.joinTid))
            {
               if(String(_loc5_.joinTid).indexOf(_loc3_) >= 0 && Number(_loc5_.level) == Number(param1.temp.level))
               {
                  _loc4_ = _loc4_ + _loc5_.name + "\n";
               }
            }
         }
         if(Boolean(_loc4_) && Boolean(_loc4_ != "") && Boolean(GamePredef.MEDAL_EQUIPT_SID[param1.temp.sid]))
         {
            totalJoinDesc = _loc4_;
         }
         else
         {
            totalJoinDesc = "";
         }
         if(int(param1.temp.level) == MEDAL_MAX_LEVEL)
         {
            needExp = "<font color=\'#EE9611\'>" + Language.MEDAL_P[52] + "</font>";
            nextPropBasic = "";
         }
         else
         {
            needExp = "\n<font color=\'#EE9611\'>" + Language.MEDAL_P[6] + ":" + param1.temp.upExp.toString() + "</font>";
            _loc6_ = getNextMedal(param1.temp);
            if(_loc6_)
            {
               nextPropBasic = "<font color=\'#EE9611\'>" + Language.MEDAL_P[51] + "\n" + GamePredef.MEDAL_PROP_NAME[_loc6_.propType] + " " + Number(_loc6_.propVal) / 100 + "</font>";
            }
         }
      }
      
      private function set description(param1:String) : void
      {
         var _loc2_:Object = this._1724546052description;
         if(_loc2_ !== param1)
         {
            this._1724546052description = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"description",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get description() : String
      {
         return this._1724546052description;
      }
   }
}

