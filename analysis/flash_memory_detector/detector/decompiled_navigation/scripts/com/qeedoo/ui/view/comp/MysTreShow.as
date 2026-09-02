package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.containers.HBox;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MysTreShow extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const KIND_NAME:Object = {
         1:Language.DECORATE_PANEL[115][0],
         2:Language.DECORATE_PANEL[115][1],
         3:Language.DECORATE_PANEL[115][2],
         4:Language.DECORATE_PANEL[115][3],
         5:Language.DECORATE_PANEL[115][4],
         6:Language.DECORATE_PANEL[115][5],
         7:Language.DECORATE_PANEL[115][6],
         8:Language.DECORATE_PANEL[115][7],
         9:Language.DECORATE_PANEL[115][8],
         10:Language.DECORATE_PANEL[115][9],
         11:Language.DECORATE_PANEL[115][10]
      };
      
      private const MYS_TRE_RESICRI:uint = 31;
      
      private const MYS_TRE_MATTACK:uint = 5;
      
      private const MYS_TRE_MAG_RED:uint = 60;
      
      private var _710658082kindDes:Label;
      
      private const MYS_TRE_ATTACK:uint = 4;
      
      private const MYS_TRE_HIT:uint = 8;
      
      private const MYS_TRE_DEBUFF:uint = 32;
      
      mx_internal var _watchers:Array = [];
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private const MYS_TRE_RESIDEBUFF:uint = 58;
      
      public var _MysTreShow_Label3:Label;
      
      public var _MysTreShow_Label4:Label;
      
      private var _1815439218mysTreDis:MysTreDisplay;
      
      private const KIND_DES:Object = {
         1:Language.DECORATE_PANEL[116][0],
         2:Language.DECORATE_PANEL[116][1],
         3:Language.DECORATE_PANEL[116][2],
         4:Language.DECORATE_PANEL[116][3],
         5:Language.DECORATE_PANEL[116][4],
         6:Language.DECORATE_PANEL[116][5],
         7:Language.DECORATE_PANEL[116][6],
         8:Language.DECORATE_PANEL[116][7],
         9:Language.DECORATE_PANEL[116][8],
         10:Language.DECORATE_PANEL[116][9],
         11:Language.DECORATE_PANEL[116][10]
      };
      
      private const MYS_TRE_PHY_RED:uint = 59;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _555270081kindName:Label;
      
      private const MYS_TRE_SPEED:uint = 11;
      
      private var _91026547_kind:Number;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private const MYS_TRE_HP:uint = 1;
      
      public var mysTreBuff:Object = {};
      
      private const MYS_TRE_DODGE:uint = 9;
      
      private const MYS_TRE_CRI:uint = 13;
      
      private var _1800607650propContainer:HBox;
      
      mx_internal var _bindings:Array = [];
      
      private const MYS_TRE_MAG_HURT:uint = 63;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":380,
               "height":315,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"kindName",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":7,
                        "x":9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"kindDes",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":11,
                        "x":74
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HRule,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":350,
                        "height":3,
                        "y":33,
                        "x":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_MysTreShow_Label3",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":38,
                        "x":9
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Property,
                  "id":"progress",
                  "stylesFactory":function():void
                  {
                     this.left = "65";
                     this.top = "43";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":13,
                        "width":305,
                        "styleName":"ProgressExp"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_MysTreShow_Label4",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":66,
                        "x":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"propContainer",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 65535;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":86,
                        "x":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MysTreDisplay,
                  "id":"mysTreDis",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":6,
                        "y":101
                     };
                  }
               })]
            };
         }
      });
      
      private var _1001078227progress:Property;
      
      private const MYS_TRE_PHY_HURT:uint = 62;
      
      private var _core:Core = Core.getInstance();
      
      public function MysTreShow()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasBorder";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.width = 380;
         this.height = 315;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MysTreShow._watcherSetupUtil = param1;
      }
      
      private function set _kind(param1:Number) : void
      {
         var _loc2_:Object = this._91026547_kind;
         if(_loc2_ !== param1)
         {
            this._91026547_kind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_kind",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MysTreShow = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MysTreShow_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MysTreShowWatcherSetupUtil");
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
      
      public function set mysTreDis(param1:MysTreDisplay) : void
      {
         var _loc2_:Object = this._1815439218mysTreDis;
         if(_loc2_ !== param1)
         {
            this._1815439218mysTreDis = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysTreDis",_loc2_,param1));
         }
      }
      
      public function updateView(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         kindName.text = KIND_NAME[_kind];
         kindDes.text = KIND_DES[_kind];
         var _loc2_:Number = 0;
         for(_loc3_ in param1[_kind])
         {
            _loc2_++;
         }
         _loc4_ = _dm.gameDataIndex[GamePredef.TBL_MYSTRE][_kind];
         _loc5_ = 0;
         for(_loc6_ in _loc4_)
         {
            _loc5_++;
         }
         progress.color = 0;
         progress.v = _loc2_;
         progress.m = _loc5_;
         progress.label = _loc2_ + "/" + _loc5_;
         mysTreDis.mysTreBookData = param1;
         _core.remote.call("getMysTreBuffByKind",new Responder(updateBuffCanvas),_kind);
      }
      
      public function initBuffProp() : void
      {
         mysTreBuff.hp = 0;
         mysTreBuff.attack = 0;
         mysTreBuff.mAttack = 0;
         mysTreBuff.speed = 0;
         mysTreBuff.hit = 0;
         mysTreBuff.dodge = 0;
         mysTreBuff.debuffSuccRate = 0;
         mysTreBuff.debuffResi = 0;
         mysTreBuff.critical = 0;
         mysTreBuff.resiCritical = 0;
         mysTreBuff.enhPhyHurtPer = 0;
         mysTreBuff.enhMagicHurtPer = 0;
         mysTreBuff.praDef = 0;
         mysTreBuff.praMagDef = 0;
      }
      
      public function set kindName(param1:Label) : void
      {
         var _loc2_:Object = this._555270081kindName;
         if(_loc2_ !== param1)
         {
            this._555270081kindName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kindName",_loc2_,param1));
         }
      }
      
      public function set kind(param1:Number) : void
      {
         _kind = param1;
      }
      
      public function updateBuffCanvas(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:Label = null;
         var _loc6_:Label = null;
         initBuffProp();
         if(propContainer.numChildren > 0)
         {
            propContainer.removeAllChildren();
         }
         for(_loc2_ in param1)
         {
            _loc4_ = param1[_loc2_];
            switch(Number(_loc4_["t"]))
            {
               case MYS_TRE_HP:
                  mysTreBuff.hp = ToolKit.add(mysTreBuff.hp,_loc4_["propVal"]);
                  break;
               case MYS_TRE_ATTACK:
                  mysTreBuff.attack = ToolKit.add(mysTreBuff.attack,_loc4_["propVal"]);
                  break;
               case MYS_TRE_MATTACK:
                  mysTreBuff.mAttack = ToolKit.add(mysTreBuff.mAttack,_loc4_["propVal"]);
                  break;
               case MYS_TRE_SPEED:
                  mysTreBuff.speed = ToolKit.add(mysTreBuff.speed,_loc4_["propVal"]);
                  break;
               case MYS_TRE_CRI:
                  mysTreBuff.critical = ToolKit.add(mysTreBuff.critical,_loc4_["propVal"]);
                  break;
               case MYS_TRE_RESICRI:
                  mysTreBuff.resiCritical = ToolKit.add(mysTreBuff.resiCritical,_loc4_["propVal"]);
                  break;
               case MYS_TRE_DEBUFF:
                  mysTreBuff.debuffSuccRate = ToolKit.add(mysTreBuff.debuffSuccRate,_loc4_["propVal"]);
                  break;
               case MYS_TRE_RESIDEBUFF:
                  mysTreBuff.debuffResi = ToolKit.add(mysTreBuff.debuffResi,_loc4_["propVal"]);
                  break;
               case MYS_TRE_HIT:
                  mysTreBuff.hit = ToolKit.add(mysTreBuff.hit,_loc4_["propVal"]);
                  break;
               case MYS_TRE_DODGE:
                  mysTreBuff.dodge = ToolKit.add(mysTreBuff.dodge,_loc4_["propVal"]);
                  break;
               case MYS_TRE_PHY_HURT:
                  mysTreBuff.enhPhyHurtPer = ToolKit.add(mysTreBuff.enhPhyHurtPer,_loc4_["propVal"]);
                  break;
               case MYS_TRE_MAG_HURT:
                  mysTreBuff.enhMagicHurtPer = ToolKit.add(mysTreBuff.enhMagicHurtPer,_loc4_["propVal"]);
                  break;
               case MYS_TRE_PHY_RED:
                  mysTreBuff.praDef = ToolKit.add(mysTreBuff.praDef,_loc4_["propVal"]);
                  break;
               case MYS_TRE_MAG_RED:
                  mysTreBuff.praMagDef = ToolKit.add(mysTreBuff.praMagDef,_loc4_["propVal"]);
            }
         }
         for(_loc3_ in mysTreBuff)
         {
            _loc5_ = new Label();
            switch(_loc3_)
            {
               case "hp":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[0] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "attack":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[4] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "mAttack":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[5] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "speed":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[10] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "hit":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[7] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "dodge":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[6] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "debuffResi":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[13] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "debuffSuccRate":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[14] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "critical":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[8] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "resiCritical":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[9] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "enhPhyHurtPer":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[17] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "enhMagicHurtPer":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[18] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "praDef":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[15] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
                  break;
               case "praMagDef":
                  _loc5_.htmlText = "<font color=\'#FFFFFF\'/>" + Language.TALENT_PANEL_INFOU[16] + "</font>" + "<font color=\'#00FFFF\'/>" + "+" + mysTreBuff[_loc3_] + "</font>";
            }
            if(Number(mysTreBuff[_loc3_]))
            {
               propContainer.addChild(_loc5_);
            }
         }
         if(!propContainer.numChildren)
         {
            _loc6_ = new Label();
            _loc6_.text = Language.DECORATE_PANEL[117];
            propContainer.addChild(_loc6_);
         }
      }
      
      private function _MysTreShow_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DECORATE_PANEL[118];
         _loc1_ = Language.DECORATE_PANEL[119];
         _loc1_ = _kind;
      }
      
      public function set kindDes(param1:Label) : void
      {
         var _loc2_:Object = this._710658082kindDes;
         if(_loc2_ !== param1)
         {
            this._710658082kindDes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kindDes",_loc2_,param1));
         }
      }
      
      private function _MysTreShow_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[118];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MysTreShow_Label3.text = param1;
         },"_MysTreShow_Label3.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[119];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MysTreShow_Label4.text = param1;
         },"_MysTreShow_Label4.text");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return _kind;
         },function(param1:Number):void
         {
            mysTreDis.kind = param1;
         },"mysTreDis.kind");
         result[2] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get kindDes() : Label
      {
         return this._710658082kindDes;
      }
      
      [Bindable(event="propertyChange")]
      public function get propContainer() : HBox
      {
         return this._1800607650propContainer;
      }
      
      [Bindable(event="propertyChange")]
      public function get progress() : Property
      {
         return this._1001078227progress;
      }
      
      public function set progress(param1:Property) : void
      {
         var _loc2_:Object = this._1001078227progress;
         if(_loc2_ !== param1)
         {
            this._1001078227progress = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progress",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mysTreDis() : MysTreDisplay
      {
         return this._1815439218mysTreDis;
      }
      
      [Bindable(event="propertyChange")]
      private function get _kind() : Number
      {
         return this._91026547_kind;
      }
      
      public function set propContainer(param1:HBox) : void
      {
         var _loc2_:Object = this._1800607650propContainer;
         if(_loc2_ !== param1)
         {
            this._1800607650propContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propContainer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kindName() : Label
      {
         return this._555270081kindName;
      }
   }
}

