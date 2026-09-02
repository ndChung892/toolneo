package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.resource.ResManager;
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
   
   public class TipMonsterHeart extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const MONHEART_TYPE:Object = {
         1:"Người",
         2:"Thú",
         3:"TV",
         4:"Máy",
         5:"Ma",
         6:"Long",
         7:"BOSS"
      };
      
      private var _1068525194monLvl:Label;
      
      private var _1235698790monType:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1235496887monName:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TipMonsterHeart_Label5:Label;
      
      private var _1235572879monProp:Label;
      
      public var _TipMonsterHeart_Label3:Label;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      private var _obj:Object;
      
      private var _1235203005monDesc:Text;
      
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
                              "id":"monIcon",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":32,
                                    "height":32
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":VBox,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "mouseChildren":false,
                                    "mouseEnabled":false,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"monName"
                                    }),new UIComponentDescriptor({
                                       "type":Label,
                                       "id":"monLvl",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16776960;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"mouseEnabled":false};
                                       }
                                    })]
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"monDesc",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TipMonsterHeart_Label3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"mouseEnabled":false};
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"monType",
                              "stylesFactory":function():void
                              {
                                 this.color = 65280;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"mouseEnabled":false};
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_TipMonsterHeart_Label5",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"mouseEnabled":false};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"monProp",
                        "stylesFactory":function():void
                        {
                           this.color = 65535;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"mouseEnabled":false};
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      private var _1235349925monIcon:Image;
      
      public function TipMonsterHeart()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipMonsterHeart_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipMonsterHeart._watcherSetupUtil = param1;
      }
      
      public function set monProp(param1:Label) : void
      {
         var _loc2_:Object = this._1235572879monProp;
         if(_loc2_ !== param1)
         {
            this._1235572879monProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monProp",_loc2_,param1));
         }
      }
      
      public function set monDesc(param1:Text) : void
      {
         var _loc2_:Object = this._1235203005monDesc;
         if(_loc2_ !== param1)
         {
            this._1235203005monDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monDesc",_loc2_,param1));
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
      }
      
      private function _TipMonsterHeart_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            monName.filters = param1;
         },"monName.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            monLvl.filters = param1;
         },"monLvl.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONSTER_HEART[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMonsterHeart_Label3.text = param1;
         },"_TipMonsterHeart_Label3.text");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TipMonsterHeart_Label3.filters = param1;
         },"_TipMonsterHeart_Label3.filters");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            monType.filters = param1;
         },"monType.filters");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONSTER_HEART[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMonsterHeart_Label5.text = param1;
         },"_TipMonsterHeart_Label5.text");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TipMonsterHeart_Label5.filters = param1;
         },"_TipMonsterHeart_Label5.filters");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            monProp.filters = param1;
         },"monProp.filters");
         result[7] = binding;
         return result;
      }
      
      public function ___TipMonsterHeart_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function set monType(param1:Label) : void
      {
         var _loc2_:Object = this._1235698790monType;
         if(_loc2_ !== param1)
         {
            this._1235698790monType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monType",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get monDesc() : Text
      {
         return this._1235203005monDesc;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipMonsterHeart = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipMonsterHeart_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipMonsterHeartWatcherSetupUtil");
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
      
      public function set monIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1235349925monIcon;
         if(_loc2_ !== param1)
         {
            this._1235349925monIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monIcon",_loc2_,param1));
         }
      }
      
      private function setTemp(param1:Object) : void
      {
         monIcon.source = ResManager.getIconUrl(param1.temp.iconCode);
         var _loc2_:Number = Number(param1.temp.color);
         var _loc3_:String = GamePredef.MSG_ITEM_COLOR[_loc2_];
         monName.setStyle("color",_loc3_);
         monName.text = param1.temp.name;
         monLvl.text = "Lv" + _loc2_;
         monDesc.htmlText = param1.temp.desc;
         monType.text = MONHEART_TYPE[Number(param1.temp.type)];
         switch(Number(param1.temp.propType))
         {
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 31:
            case 32:
            case 58:
            case 61:
            case 71:
            case 34:
            case 72:
               monProp.text = Language.TIP_MONSTER_H[Number(param1.temp.propType)] + Number(param1.temp.propnum) / 10000;
               break;
            case 59:
            case 60:
            case 62:
            case 63:
               monProp.text = Language.TIP_MONSTER_H[Number(param1.temp.propType)] + Number(param1.temp.propnum) / 100 + "%";
         }
      }
      
      private function _TipMonsterHeart_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.MONSTER_HEART[8];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.MONSTER_HEART[9];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      [Bindable(event="propertyChange")]
      public function get monName() : Label
      {
         return this._1235496887monName;
      }
      
      [Bindable(event="propertyChange")]
      public function get monType() : Label
      {
         return this._1235698790monType;
      }
      
      [Bindable(event="propertyChange")]
      public function get monLvl() : Label
      {
         return this._1068525194monLvl;
      }
      
      [Bindable(event="propertyChange")]
      public function get monProp() : Label
      {
         return this._1235572879monProp;
      }
      
      public function set monLvl(param1:Label) : void
      {
         var _loc2_:Object = this._1068525194monLvl;
         if(_loc2_ !== param1)
         {
            this._1068525194monLvl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monLvl",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get monIcon() : Image
      {
         return this._1235349925monIcon;
      }
      
      public function set monName(param1:Label) : void
      {
         var _loc2_:Object = this._1235496887monName;
         if(_loc2_ !== param1)
         {
            this._1235496887monName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monName",_loc2_,param1));
         }
      }
   }
}

