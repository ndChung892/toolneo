package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipDecoRune extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const QUL_COLOR:Object = {
         1:"#FFFFFF",
         2:"#00FF00",
         3:"#0000FF",
         4:"#9900FF",
         5:"#FF6633",
         6:"#FF0000"
      };
      
      public static const RUNE_KIND:Object = {
         1:Language.DECORATE_PANEL[80][0],
         2:Language.DECORATE_PANEL[80][1]
      };
      
      private var _100893exp:Label;
      
      public var _TipDecoRune_Label6:Label;
      
      private var _107554lvl:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1125939651curProp:Label;
      
      private var _111458690upExp:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _3292052kind:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "id":"container",
               "propertiesFactory":function():Object
               {
                  return {"childDescriptors":[new UIComponentDescriptor({
                     "type":Label,
                     "id":"runeName"
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"lvl",
                     "stylesFactory":function():void
                     {
                        this.color = 16776960;
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"upExp"
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"exp"
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"kind"
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_TipDecoRune_Label6"
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"curProp",
                     "stylesFactory":function():void
                     {
                        this.color = 65535;
                     }
                  })]};
               }
            })]};
         }
      });
      
      private var _410956671container:VBox;
      
      private var _obj:Object;
      
      private var _820533477runeName:Label;
      
      public function TipDecoRune()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipDecoRune_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipDecoRune._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : VBox
      {
         return this._410956671container;
      }
      
      public function ___TipDecoRune_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      [Bindable(event="propertyChange")]
      public function get curProp() : Label
      {
         return this._1125939651curProp;
      }
      
      public function set curProp(param1:Label) : void
      {
         var _loc2_:Object = this._1125939651curProp;
         if(_loc2_ !== param1)
         {
            this._1125939651curProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curProp",_loc2_,param1));
         }
      }
      
      public function set container(param1:VBox) : void
      {
         var _loc2_:Object = this._410956671container;
         if(_loc2_ !== param1)
         {
            this._410956671container = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
         }
      }
      
      private function _TipDecoRune_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPDECO_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipDecoRune_Label6.text = param1;
         },"_TipDecoRune_Label6.text");
         result[0] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipDecoRune = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipDecoRune_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipDecoRuneWatcherSetupUtil");
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
      
      public function set runeName(param1:Label) : void
      {
         var _loc2_:Object = this._820533477runeName;
         if(_loc2_ !== param1)
         {
            this._820533477runeName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runeName",_loc2_,param1));
         }
      }
      
      public function set exp(param1:Label) : void
      {
         var _loc2_:Object = this._100893exp;
         if(_loc2_ !== param1)
         {
            this._100893exp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exp",_loc2_,param1));
         }
      }
      
      public function set lvl(param1:Label) : void
      {
         var _loc2_:Object = this._107554lvl;
         if(_loc2_ !== param1)
         {
            this._107554lvl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvl",_loc2_,param1));
         }
      }
      
      private function setTemp(param1:Object) : void
      {
         var _loc12_:Object = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:Label = null;
         var _loc17_:Label = null;
         var _loc2_:Object = param1["temp"];
         var _loc3_:int = int(_loc2_["qulity"]);
         var _loc4_:int = int(_loc2_["level"]);
         var _loc5_:int = int(_loc2_["type"]);
         var _loc6_:int = int(_loc2_["propNum"]);
         var _loc7_:int = int(_loc2_["per"]);
         var _loc8_:String = QUL_COLOR[_loc3_];
         runeName.setStyle("color",_loc8_);
         runeName.text = _loc2_["name"];
         lvl.text = Language.TIPDECO_S[12].toString().replace("{num}",_loc4_);
         upExp.text = Language.TIPDECO_S[9].toString().replace("{num}",_loc2_["upExp"]);
         exp.text = Language.TIPDECO_S[10].toString().replace("{num}",_loc2_["exp"]);
         kind.htmlText = Language.TIPDECO_S[11] + "<font color=\'#00FFFF\'>" + RUNE_KIND[_loc2_["kind"]] + "</font>";
         switch(_loc5_)
         {
            case 1:
            case 4:
            case 5:
            case 6:
            case 7:
            case 11:
               curProp.text = Language.TIPPROP_S[_loc5_] + _loc6_;
               break;
            case 8:
            case 9:
            case 13:
            case 14:
            case 31:
            case 32:
            case 58:
            case 61:
               curProp.text = Language.TIPPROP_S[_loc5_] + _loc6_ / 10000;
               break;
            case 34:
            case 59:
            case 60:
            case 62:
            case 63:
            case 71:
               curProp.text = Language.TIPPROP_S[_loc5_] + _loc6_ / 100 + "%";
         }
         var _loc9_:DisplayObject = container.getChildByName("label");
         var _loc10_:DisplayObject = container.getChildByName("label2");
         if(_loc9_)
         {
            container.removeChild(_loc9_);
         }
         if(_loc10_)
         {
            container.removeChild(_loc10_);
         }
         var _loc11_:int = int(_loc2_["nextId"]);
         if(_loc11_)
         {
            _loc12_ = GameData.d[GamePredef.TBL_DECO_RUNE][_loc11_];
            _loc13_ = int(_loc12_["type"]);
            _loc14_ = int(_loc12_["propNum"]);
            _loc15_ = int(_loc12_["per"]);
            _loc16_ = new Label();
            _loc16_.name = "label";
            _loc16_.text = Language.TIPDECO_S[8];
            _loc17_ = new Label();
            _loc17_.name = "label2";
            _loc17_.setStyle("color","#00FFFF");
            switch(_loc13_)
            {
               case 1:
               case 4:
               case 5:
               case 6:
               case 7:
               case 11:
                  _loc17_.text = Language.TIPPROP_S[_loc13_] + _loc14_;
                  break;
               case 8:
               case 9:
               case 13:
               case 14:
               case 31:
               case 32:
               case 58:
               case 61:
                  _loc17_.text = Language.TIPPROP_S[_loc13_] + _loc14_ / 10000;
                  break;
               case 34:
               case 59:
               case 60:
               case 62:
               case 63:
               case 71:
                  _loc17_.text = Language.TIPPROP_S[_loc13_] + _loc14_ / 100 + "%";
            }
            container.addChild(_loc16_);
            container.addChild(_loc17_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lvl() : Label
      {
         return this._107554lvl;
      }
      
      [Bindable(event="propertyChange")]
      public function get kind() : Label
      {
         return this._3292052kind;
      }
      
      [Bindable(event="propertyChange")]
      public function get exp() : Label
      {
         return this._100893exp;
      }
      
      [Bindable(event="propertyChange")]
      public function get runeName() : Label
      {
         return this._820533477runeName;
      }
      
      public function set upExp(param1:Label) : void
      {
         var _loc2_:Object = this._111458690upExp;
         if(_loc2_ !== param1)
         {
            this._111458690upExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upExp",_loc2_,param1));
         }
      }
      
      public function set kind(param1:Label) : void
      {
         var _loc2_:Object = this._3292052kind;
         if(_loc2_ !== param1)
         {
            this._3292052kind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kind",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upExp() : Label
      {
         return this._111458690upExp;
      }
      
      private function _TipDecoRune_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TIPDECO_S[7];
      }
      
      public function set object(param1:Object) : void
      {
         _obj = param1;
         if(!param1.temp)
         {
            return;
         }
         setTemp(param1);
      }
   }
}

