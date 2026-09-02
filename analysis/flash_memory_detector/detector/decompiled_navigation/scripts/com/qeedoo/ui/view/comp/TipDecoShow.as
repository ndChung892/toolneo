package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.containers.HBox;
   import mx.containers.VBox;
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
   
   public class TipDecoShow extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1542403109decoDes:Text;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _570013435decoInfo:Text;
      
      private var _3449699prop:Text;
      
      private var _570150104decoName:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _747804969position:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _570003142decoIcon:Image;
      
      private var _obj:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "propertiesFactory":function():Object
               {
                  return {
                     "mouseChildren":false,
                     "mouseEnabled":false,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":HBox,
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":Image,
                              "id":"decoIcon",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":32,
                                    "height":32
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"decoName",
                              "stylesFactory":function():void
                              {
                                 this.color = 65280;
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"decoDes",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":180,
                              "mouseEnabled":false
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"position",
                        "propertiesFactory":function():Object
                        {
                           return {"mouseEnabled":false};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"prop",
                        "propertiesFactory":function():Object
                        {
                           return {"mouseEnabled":false};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"decoInfo",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":180,
                              "mouseEnabled":false,
                              "mouseChildren":false
                           };
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      public function TipDecoShow()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipDecoShow_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipDecoShow._watcherSetupUtil = param1;
      }
      
      public function set decoInfo(param1:Text) : void
      {
         var _loc2_:Object = this._570013435decoInfo;
         if(_loc2_ !== param1)
         {
            this._570013435decoInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decoInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get decoIcon() : Image
      {
         return this._570003142decoIcon;
      }
      
      private function setInst(param1:Object) : void
      {
         var _loc2_:Date = null;
         var _loc3_:String = null;
         if(ToolKit.isBigThan(param1.inst.dueTime,1))
         {
            _loc2_ = new Date(Number(param1.inst.dueTime));
            _loc3_ = Language.TIPDECO_S[0].toString();
            _loc3_ = _loc3_.replace("{fullYear}",_loc2_.fullYear);
            _loc3_ = _loc3_.replace("{lastMonth}",ToolKit.add(_loc2_.month,1));
            _loc3_ = _loc3_.replace("{lastDate}",_loc2_.date);
            _loc3_ = _loc3_.replace("{lastHour}",_loc2_.hours);
            decoInfo.htmlText += _loc3_;
         }
      }
      
      public function set prop(param1:Text) : void
      {
         var _loc2_:Object = this._3449699prop;
         if(_loc2_ !== param1)
         {
            this._3449699prop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop",_loc2_,param1));
         }
      }
      
      public function ___TipDecoShow_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function set decoDes(param1:Text) : void
      {
         var _loc2_:Object = this._1542403109decoDes;
         if(_loc2_ !== param1)
         {
            this._1542403109decoDes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decoDes",_loc2_,param1));
         }
      }
      
      private function _TipDecoShow_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function set decoIcon(param1:Image) : void
      {
         var _loc2_:Object = this._570003142decoIcon;
         if(_loc2_ !== param1)
         {
            this._570003142decoIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decoIcon",_loc2_,param1));
         }
      }
      
      private function setTemp(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         decoIcon.source = ResManager.getIconUrl(param1.temp.iconCode);
         decoName.text = param1.temp.name;
         decoDes.text = param1.temp.description ? param1.temp.description : "";
         position.text = Language.TIPDECO_S[1] + Language.TIPDECO_S[2][param1.temp.position - 1];
         prop.htmlText = Language.TIPDECO_S[6];
         var _loc2_:int = int(param1.temp["per"]);
         for(_loc3_ in param1.temp)
         {
            _loc4_ = _loc3_ as String;
            if(_loc4_.substring(0,8) == "propType" && Boolean(Number(param1.temp[_loc3_])))
            {
               prop.htmlText += "<br/>" + Language.TIPPROP_S[Number(param1.temp[_loc3_])];
               prop.htmlText += "<font color=\'#00FFFF\'>";
               if(Number(param1.temp[_loc3_]) != 1 && Number(param1.temp[_loc3_]) != 4 && Number(param1.temp[_loc3_]) != 5 && Number(param1.temp[_loc3_]) != 6 && Number(param1.temp[_loc3_]) != 7 && Number(param1.temp[_loc3_]) != 11)
               {
                  prop.htmlText += param1.temp["propNum" + _loc4_.charAt(8)] / 10000 + "%";
               }
               else
               {
                  prop.htmlText += _loc2_ ? param1.temp["propNum" + _loc4_.charAt(8)] / 10000 + "%" : param1.temp["propNum" + _loc4_.charAt(8)];
               }
               prop.htmlText += "</font>";
            }
         }
         decoInfo.htmlText = Language.TIPDECO_S[3];
         decoInfo.htmlText += param1.temp["t"] > 1 ? Math.round(param1.temp.t / (24 * 60)) + Language.TIPDECO_S[4] : Language.TIPDECO_S[5];
      }
      
      public function set position(param1:Label) : void
      {
         var _loc2_:Object = this._747804969position;
         if(_loc2_ !== param1)
         {
            this._747804969position = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"position",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipDecoShow = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipDecoShow_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipDecoShowWatcherSetupUtil");
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
      public function get prop() : Text
      {
         return this._3449699prop;
      }
      
      [Bindable(event="propertyChange")]
      public function get decoDes() : Text
      {
         return this._1542403109decoDes;
      }
      
      [Bindable(event="propertyChange")]
      public function get decoName() : Label
      {
         return this._570150104decoName;
      }
      
      [Bindable(event="propertyChange")]
      public function get position() : Label
      {
         return this._747804969position;
      }
      
      [Bindable(event="propertyChange")]
      public function get decoInfo() : Text
      {
         return this._570013435decoInfo;
      }
      
      private function _TipDecoShow_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            decoName.filters = param1;
         },"decoName.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            decoDes.filters = param1;
         },"decoDes.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            position.filters = param1;
         },"position.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            prop.filters = param1;
         },"prop.filters");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            decoInfo.filters = param1;
         },"decoInfo.filters");
         result[4] = binding;
         return result;
      }
      
      public function set decoName(param1:Label) : void
      {
         var _loc2_:Object = this._570150104decoName;
         if(_loc2_ !== param1)
         {
            this._570150104decoName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decoName",_loc2_,param1));
         }
      }
      
      public function set object(param1:Object) : void
      {
         _obj = param1;
         if(!param1.temp)
         {
            return;
         }
         setTemp(param1);
         if(param1.inst)
         {
            setInst(param1);
         }
      }
   }
}

