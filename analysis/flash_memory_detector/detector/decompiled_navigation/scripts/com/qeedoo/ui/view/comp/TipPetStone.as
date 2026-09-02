package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
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
   import mx.controls.TextArea;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipPetStone extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1577342312stoneProp:Label;
      
      private var _1577119358stoneIcon:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipPetStone_Label2:Label;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _1577266320stoneName:Label;
      
      private var _506577178varContainer:VBox;
      
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
                              "id":"stoneIcon",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":32,
                                    "height":32
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"stoneName"
                           })]};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_TipPetStone_Label2",
                        "stylesFactory":function():void
                        {
                           this.color = 16776960;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "text":"Thuộc tính bảo thạch:",
                              "mouseEnabled":false
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"stoneProp",
                        "stylesFactory":function():void
                        {
                           this.color = 65535;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"mouseEnabled":false};
                        }
                     }),new UIComponentDescriptor({
                        "type":VBox,
                        "id":"varContainer"
                     })]
                  };
               }
            })]};
         }
      });
      
      public function TipPetStone()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipPetStone_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipPetStone._watcherSetupUtil = param1;
      }
      
      public function set stoneIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1577119358stoneIcon;
         if(_loc2_ !== param1)
         {
            this._1577119358stoneIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneIcon",_loc2_,param1));
         }
      }
      
      public function set stoneProp(param1:Label) : void
      {
         var _loc2_:Object = this._1577342312stoneProp;
         if(_loc2_ !== param1)
         {
            this._1577342312stoneProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneProp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneIcon() : Image
      {
         return this._1577119358stoneIcon;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipPetStone = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipPetStone_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipPetStoneWatcherSetupUtil");
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
      
      public function ___TipPetStone_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipPetStone_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      private function setTemp(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:* = undefined;
         var _loc8_:Object = null;
         var _loc9_:* = undefined;
         var _loc10_:Number = NaN;
         var _loc11_:Object = null;
         stoneIcon.source = ResManager.getIconUrl(param1.temp.iconCode);
         var _loc2_:Number = Number(param1.temp.level) - 1;
         var _loc3_:String = GamePredef.MSG_ITEM_COLOR[_loc2_];
         stoneName.setStyle("color",_loc3_);
         stoneName.text = param1.temp.name;
         stoneProp.text = Language.PET_STONE_PANEL[4][param1.temp["propType"]] + "+" + param1.temp["propNum"];
         if(varContainer.numChildren > 0)
         {
            varContainer.removeAllChildren();
         }
         if(Number(param1.temp.level) < 5)
         {
            _loc4_ = new Label();
            _loc4_.text = "Thuộc tính sau:";
            _loc4_.setStyle("color","#FFFF00");
            _loc4_.filters = [GamePredef.FILTER_GLOW_LOWBLACK];
            varContainer.addChild(_loc4_);
            _loc5_ = Number(param1.temp.nextId);
            _loc6_ = GameData.d[GamePredef.TBL_PET_STONE][_loc5_];
            _loc7_ = new Label();
            _loc7_.text = Language.PET_STONE_PANEL[4][_loc6_["propType"]] + "+" + _loc6_["propNum"];
            _loc7_.setStyle("color","#00ffff");
            _loc7_.filters = [GamePredef.FILTER_GLOW_LOWBLACK];
            varContainer.addChild(_loc7_);
         }
         else if(Number(param1.temp.level) == 5)
         {
            _loc4_ = new Label();
            _loc4_.text = "Được Tụ Linh";
            _loc4_.setStyle("color","#FFFF00");
            _loc4_.filters = [GamePredef.FILTER_GLOW_LOWBLACK];
            varContainer.addChild(_loc4_);
         }
         else if(Number(param1.temp.level) == 6 && param1.skillId < 1)
         {
            _loc4_ = new Label();
            _loc4_.text = "Được Luyện";
            _loc4_.setStyle("color","#FFFF00");
            _loc4_.filters = [GamePredef.FILTER_GLOW_LOWBLACK];
            varContainer.addChild(_loc4_);
         }
         else if(Number(param1.temp.level) == 6 && param1.skillId >= 1)
         {
            _loc4_ = new Label();
            _loc4_.text = "K.Năng TLinh：";
            _loc4_.setStyle("color","#FFFF00");
            _loc4_.filters = [GamePredef.FILTER_GLOW_LOWBLACK];
            varContainer.addChild(_loc4_);
            _loc7_ = new Label();
            _loc8_ = GameData.d[GamePredef.TBL_SKILL][param1.skillId];
            _loc7_.text = _loc8_.name;
            _loc7_.setStyle("color","#00ffff");
            _loc7_.filters = [GamePredef.FILTER_GLOW_LOWBLACK];
            varContainer.addChild(_loc7_);
            _loc9_ = new TextArea();
            _loc9_.width = 99;
            _loc9_.height = 73;
            _loc10_ = Number(_loc8_["exStoneSid"]);
            if(_loc10_ > 0)
            {
               _loc11_ = GameData.d[GamePredef.TBL_SKILL][_loc10_];
               _loc9_.text = _loc11_["description"];
            }
            else
            {
               _loc9_.text = _loc8_["description"];
            }
            _loc9_.alpha = 0;
            _loc9_.setStyle("color","#00ffff");
            varContainer.addChild(_loc9_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneName() : Label
      {
         return this._1577266320stoneName;
      }
      
      public function set stoneName(param1:Label) : void
      {
         var _loc2_:Object = this._1577266320stoneName;
         if(_loc2_ !== param1)
         {
            this._1577266320stoneName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get varContainer() : VBox
      {
         return this._506577178varContainer;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneProp() : Label
      {
         return this._1577342312stoneProp;
      }
      
      private function _TipPetStone_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            stoneName.filters = param1;
         },"stoneName.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TipPetStone_Label2.filters = param1;
         },"_TipPetStone_Label2.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            stoneProp.filters = param1;
         },"stoneProp.filters");
         result[2] = binding;
         return result;
      }
      
      public function set varContainer(param1:VBox) : void
      {
         var _loc2_:Object = this._506577178varContainer;
         if(_loc2_ !== param1)
         {
            this._506577178varContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"varContainer",_loc2_,param1));
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

