package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.Label;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipBattle extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _104066928mpBar:Property;
      
      private var _3314105lbMp:Label;
      
      private var _48124112lbSpPre:Label;
      
      private var _3314291lbSp:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _109608054spBar:Property;
      
      private var _3313950lbHp:Label;
      
      private var _obj:Object;
      
      private var _102865796level:String;
      
      private var _3029869boss:String;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _99449323hpBar:Property;
      
      public var _TipBattle_Label1:Label;
      
      mx_internal var _bindings:Array = [];
      
      public var _TipBattle_Label8:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {
               "width":130,
               "height":65,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Property,
                  "id":"hpBar",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 9;
                     this.fontFamily = "Arial";
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":15.95,
                        "width":97,
                        "height":5,
                        "styleName":"ProgressHp",
                        "color":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Property,
                  "id":"mpBar",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 9;
                     this.fontFamily = "Arial";
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":31,
                        "width":97,
                        "height":5,
                        "styleName":"ProgressMp",
                        "color":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Property,
                  "id":"spBar",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 9;
                     this.fontFamily = "Arial";
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":46,
                        "width":97,
                        "height":5,
                        "styleName":"ProgressSp",
                        "color":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipBattle_Label1",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":0,
                        "x":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "stylesFactory":function():void
                  {
                     this.color = 16688806;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":12,
                        "text":"HP:"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "stylesFactory":function():void
                  {
                     this.color = 11713789;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":27,
                        "text":"MP:"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lbSpPre",
                  "stylesFactory":function():void
                  {
                     this.color = 11713789;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":42,
                        "text":"SP:"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lbHp",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 9;
                     this.fontFamily = "Verdana";
                     this.textAlign = "center";
                     this.color = 16751772;
                     this.horizontalCenter = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":18,
                        "text":"123123/123123"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lbMp",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 9;
                     this.fontFamily = "Verdana";
                     this.textAlign = "center";
                     this.color = 9216767;
                     this.horizontalCenter = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":33,
                        "text":"123123/123123"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lbSp",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 9;
                     this.fontFamily = "Verdana";
                     this.textAlign = "center";
                     this.color = 9216767;
                     this.horizontalCenter = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":48,
                        "text":"123123/123123"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipBattle_Label8",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":70,
                        "y":0,
                        "text":"Boss"
                     };
                  }
               })]
            };
         }
      });
      
      public function TipBattle()
      {
         super();
         mx_internal::_document = this;
         this.width = 130;
         this.height = 65;
         this.styleName = "CanvasToolTip";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipBattle._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get level() : String
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get spBar() : Property
      {
         return this._109608054spBar;
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipBattle = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipBattle_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipBattleWatcherSetupUtil");
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
      
      override protected function setPos() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get lbHp() : Label
      {
         return this._3313950lbHp;
      }
      
      private function _TipBattle_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBATTLE_S[3] + 150;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBattle_Label1.text = param1;
         },"_TipBattle_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBattle_Label1.htmlText = param1;
         },"_TipBattle_Label1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = boss;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBattle_Label8.htmlText = param1;
         },"_TipBattle_Label8.htmlText");
         result[2] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get lbSpPre() : Label
      {
         return this._48124112lbSpPre;
      }
      
      private function setObj() : void
      {
         hpBar.setProgress(_obj.hp,_obj.hpMax);
         mpBar.setProgress(_obj.mp,_obj.mpMax);
         spBar.setProgress(_obj.sp,_obj.spMax);
         lbHp.text = int(_obj.hp) + "/" + int(_obj.hpMax);
         lbMp.text = int(_obj.mp) + "/" + int(_obj.mpMax);
         lbSp.text = int(_obj.sp) + "/" + int(_obj.spMax);
         if(_obj.spMax <= 1)
         {
            spBar.visible = false;
            lbSp.visible = false;
            lbSpPre.visible = false;
         }
         else
         {
            spBar.visible = true;
            lbSp.visible = true;
            lbSpPre.visible = true;
         }
         level = Language.TIPBATTLE_S[0] + _obj.level;
         if(_obj.bossFlag == 2)
         {
            boss = Language.TIPBATTLE_S[1];
         }
         else if(_obj.bossFlag == 1)
         {
            boss = Language.TIPBATTLE_S[2];
         }
         else
         {
            boss = "";
         }
         x = _obj.x - width / 2 + (GamePredef.APP_WIDTH - GamePredef.APP_WIDTH_OLD) / 2;
         y = _obj.y + 10 + (GamePredef.APP_HEIGHT - GamePredef.APP_HEIGHT_OLD) / 2;
         if(Core.getInstance().view.getUI(ViewManager.STAGE_BATTLE).isAirBattle)
         {
            y -= GamePredef.FLIGHT_HEIGHT;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lbMp() : Label
      {
         return this._3314105lbMp;
      }
      
      public function set lbHp(param1:Label) : void
      {
         var _loc2_:Object = this._3313950lbHp;
         if(_loc2_ !== param1)
         {
            this._3313950lbHp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lbHp",_loc2_,param1));
         }
      }
      
      public function set hpBar(param1:Property) : void
      {
         var _loc2_:Object = this._99449323hpBar;
         if(_loc2_ !== param1)
         {
            this._99449323hpBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hpBar",_loc2_,param1));
         }
      }
      
      private function cc() : void
      {
         removeEventListener(FlexEvent.CREATION_COMPLETE,cc);
         setObj();
      }
      
      private function set boss(param1:String) : void
      {
         var _loc2_:Object = this._3029869boss;
         if(_loc2_ !== param1)
         {
            this._3029869boss = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boss",_loc2_,param1));
         }
      }
      
      private function _TipBattle_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TIPBATTLE_S[3] + 150;
         _loc1_ = level;
         _loc1_ = boss;
      }
      
      public function set lbSpPre(param1:Label) : void
      {
         var _loc2_:Object = this._48124112lbSpPre;
         if(_loc2_ !== param1)
         {
            this._48124112lbSpPre = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lbSpPre",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hpBar() : Property
      {
         return this._99449323hpBar;
      }
      
      public function set lbMp(param1:Label) : void
      {
         var _loc2_:Object = this._3314105lbMp;
         if(_loc2_ !== param1)
         {
            this._3314105lbMp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lbMp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lbSp() : Label
      {
         return this._3314291lbSp;
      }
      
      [Bindable(event="propertyChange")]
      private function get boss() : String
      {
         return this._3029869boss;
      }
      
      public function set lbSp(param1:Label) : void
      {
         var _loc2_:Object = this._3314291lbSp;
         if(_loc2_ !== param1)
         {
            this._3314291lbSp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lbSp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mpBar() : Property
      {
         return this._104066928mpBar;
      }
      
      public function set mpBar(param1:Property) : void
      {
         var _loc2_:Object = this._104066928mpBar;
         if(_loc2_ !== param1)
         {
            this._104066928mpBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mpBar",_loc2_,param1));
         }
      }
      
      public function set spBar(param1:Property) : void
      {
         var _loc2_:Object = this._109608054spBar;
         if(_loc2_ !== param1)
         {
            this._109608054spBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spBar",_loc2_,param1));
         }
      }
      
      override public function show(param1:Object = null) : void
      {
         super.show(param1);
         _obj = param1;
         if(initialized)
         {
            setObj();
         }
         else
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,cc);
         }
      }
   }
}

