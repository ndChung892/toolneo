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
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipMysTreasure extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const MYS_LEVEL_NAME:Object = {
         1:Language.DECORATE_PANEL[75][0],
         2:Language.DECORATE_PANEL[75][1],
         3:Language.DECORATE_PANEL[75][2],
         4:Language.DECORATE_PANEL[75][3],
         5:Language.DECORATE_PANEL[75][4],
         6:Language.DECORATE_PANEL[75][5]
      };
      
      public var _TipMysTreasure_Label4:Label;
      
      private var _1526481994mysProp:Label;
      
      private var _1059141029mysLvl:Label;
      
      private var _1526324347mysKind:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1526406002mysName:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1526259040mysIcon:Image;
      
      mx_internal var _bindings:Array = [];
      
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
                              "id":"mysIcon",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":32,
                                    "height":32
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"mysName"
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"mysKind",
                        "stylesFactory":function():void
                        {
                           this.color = 16776960;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"mouseEnabled":false};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"mysLvl",
                        "stylesFactory":function():void
                        {
                           this.color = 16776960;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"mouseEnabled":false};
                        }
                     }),new UIComponentDescriptor({
                        "type":HBox,
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TipMysTreasure_Label4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16776960;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"mouseEnabled":false};
                              }
                           }),new UIComponentDescriptor({
                              "type":HBox,
                              "id":"starContainer",
                              "stylesFactory":function():void
                              {
                                 this.horizontalGap = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "mouseChildren":false,
                                    "mouseEnabled":false
                                 };
                              }
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"mysProp",
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
      });
      
      private var _obj:Object;
      
      private var _866804303starContainer:HBox;
      
      public function TipMysTreasure()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipMysTreasure_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipMysTreasure._watcherSetupUtil = param1;
      }
      
      public function set mysIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1526259040mysIcon;
         if(_loc2_ !== param1)
         {
            this._1526259040mysIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysIcon",_loc2_,param1));
         }
      }
      
      public function set mysProp(param1:Label) : void
      {
         var _loc2_:Object = this._1526481994mysProp;
         if(_loc2_ !== param1)
         {
            this._1526481994mysProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysProp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mysKind() : Label
      {
         return this._1526324347mysKind;
      }
      
      public function ___TipMysTreasure_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function set mysLvl(param1:Label) : void
      {
         var _loc2_:Object = this._1059141029mysLvl;
         if(_loc2_ !== param1)
         {
            this._1059141029mysLvl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysLvl",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starContainer() : HBox
      {
         return this._866804303starContainer;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipMysTreasure = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipMysTreasure_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipMysTreasureWatcherSetupUtil");
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
      
      private function _TipMysTreasure_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            mysName.filters = param1;
         },"mysName.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            mysKind.filters = param1;
         },"mysKind.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            mysLvl.filters = param1;
         },"mysLvl.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TipMysTreasure_Label4.filters = param1;
         },"_TipMysTreasure_Label4.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[79];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMysTreasure_Label4.text = param1;
         },"_TipMysTreasure_Label4.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            mysProp.filters = param1;
         },"mysProp.filters");
         result[5] = binding;
         return result;
      }
      
      private function setTemp(param1:Object) : void
      {
         var _loc5_:Image = null;
         mysIcon.source = ResManager.getIconUrl(param1.temp.iconCode);
         var _loc2_:String = TipDecoRune.QUL_COLOR[Number(param1.temp.level)];
         mysName.setStyle("color",_loc2_);
         mysName.text = param1.temp.name;
         mysKind.text = Language.DECORATE_PANEL[76] + MysTreShow.KIND_NAME[Number(param1.temp.kind)];
         mysLvl.text = Language.DECORATE_PANEL[77] + MYS_LEVEL_NAME[Number(param1.temp.level)];
         var _loc3_:Number = Number(param1.temp.star);
         if(starContainer.numChildren > 0)
         {
            starContainer.removeAllChildren();
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new Image();
            _loc5_.width = 16;
            _loc5_.height = 16;
            _loc5_.source = ResManager.ICON_EQUIP_STAR;
            starContainer.addChild(_loc5_);
            _loc4_++;
         }
         switch(Number(param1.temp.propType))
         {
            case 1:
            case 4:
            case 5:
            case 6:
            case 7:
            case 11:
               mysProp.text = Language.DECORATE_PANEL[78] + Language.TIPPROP_S[Number(param1.temp.propType)] + Number(param1.temp.propNum);
               break;
            case 8:
            case 9:
            case 13:
            case 14:
            case 31:
            case 32:
            case 58:
            case 61:
               mysProp.text = Language.DECORATE_PANEL[78] + Language.TIPPROP_S[Number(param1.temp.propType)] + Number(param1.temp.propNum) / 10000;
               break;
            case 34:
            case 59:
            case 60:
            case 62:
            case 63:
            case 71:
               mysProp.text = Language.DECORATE_PANEL[78] + Language.TIPPROP_S[Number(param1.temp.propType)] + Number(param1.temp.propNum) / 100 + "%";
         }
      }
      
      public function set starContainer(param1:HBox) : void
      {
         var _loc2_:Object = this._866804303starContainer;
         if(_loc2_ !== param1)
         {
            this._866804303starContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starContainer",_loc2_,param1));
         }
      }
      
      private function _TipMysTreasure_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DECORATE_PANEL[79];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      [Bindable(event="propertyChange")]
      public function get mysLvl() : Label
      {
         return this._1059141029mysLvl;
      }
      
      public function set mysName(param1:Label) : void
      {
         var _loc2_:Object = this._1526406002mysName;
         if(_loc2_ !== param1)
         {
            this._1526406002mysName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mysIcon() : Image
      {
         return this._1526259040mysIcon;
      }
      
      [Bindable(event="propertyChange")]
      public function get mysName() : Label
      {
         return this._1526406002mysName;
      }
      
      [Bindable(event="propertyChange")]
      public function get mysProp() : Label
      {
         return this._1526481994mysProp;
      }
      
      public function set mysKind(param1:Label) : void
      {
         var _loc2_:Object = this._1526324347mysKind;
         if(_loc2_ !== param1)
         {
            this._1526324347mysKind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysKind",_loc2_,param1));
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
   }
}

