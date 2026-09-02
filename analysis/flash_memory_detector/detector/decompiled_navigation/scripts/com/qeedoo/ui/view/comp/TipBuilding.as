package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.vo.ToolTipVO;
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
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipBuilding extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var dm:DataManager;
      
      private var _319435295preList:Repeater;
      
      private var _106940718prop1:Text;
      
      public var _TipBuilding_Text1:Text;
      
      public var _TipBuilding_Text2:Text;
      
      public var _TipBuilding_Text3:Text;
      
      public var _TipBuilding_Text4:Text;
      
      public var _TipBuilding_Text5:Text;
      
      private var _1638753418iconImg:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _106940719prop2:Text;
      
      public var _TipBuilding_Text10:Array;
      
      private var _3769vo:ToolTipVO;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipBuilding_VBox1:VBox;
      
      private var _106940720prop3:Text;
      
      mx_internal var _bindings:Array = [];
      
      public var _TipBuilding_Label1:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "id":"_TipBuilding_VBox1",
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
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":57,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_TipBuilding_Label1",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":45,
                                       "y":5
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"iconImg",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":5,
                                       "y":5,
                                       "width":32,
                                       "height":32
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipBuilding_Text1"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipBuilding_Text2"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipBuilding_Text3"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipBuilding_Text4"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipBuilding_Text5"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"prop1"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"prop2"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"prop3"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"prop4"
                     }),new UIComponentDescriptor({
                        "type":Repeater,
                        "id":"preList",
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":Text,
                              "id":"_TipBuilding_Text10"
                           })]};
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "id":"_TipBuilding_Button1",
               "events":{"click":"___TipBuilding_Button1_click"},
               "stylesFactory":function():void
               {
                  this.right = "5";
                  this.top = "5";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"BtnToolTipClose",
                     "width":15,
                     "height":15
                  };
               }
            })]};
         }
      });
      
      public var _TipBuilding_Button1:Button;
      
      private var _106940721prop4:Text;
      
      private var _core:Core;
      
      public function TipBuilding()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipBuilding_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipBuilding._watcherSetupUtil = param1;
      }
      
      public function set object(param1:Object) : void
      {
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         vo = new ToolTipVO();
         setCommon(param1.temp);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImg() : Image
      {
         return this._1638753418iconImg;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipBuilding = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipBuilding_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipBuildingWatcherSetupUtil");
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
      
      private function _TipBuilding_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Label1.htmlText = param1;
         },"_TipBuilding_Label1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Label1.text = param1;
         },"_TipBuilding_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.urlIcon;
         },function(param1:Object):void
         {
            iconImg.source = param1;
         },"iconImg.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.expCost;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text1.htmlText = param1;
         },"_TipBuilding_Text1.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text1.text = param1;
         },"_TipBuilding_Text1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.moneyCost;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text2.htmlText = param1;
         },"_TipBuilding_Text2.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text2.text = param1;
         },"_TipBuilding_Text2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.genMCost;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text3.htmlText = param1;
         },"_TipBuilding_Text3.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text3.text = param1;
         },"_TipBuilding_Text3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.rareMCost;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text4.htmlText = param1;
         },"_TipBuilding_Text4.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text4.text = param1;
         },"_TipBuilding_Text4.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.maintainCost;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text5.htmlText = param1;
         },"_TipBuilding_Text5.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipBuilding_Text5.text = param1;
         },"_TipBuilding_Text5.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bProp1;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop1.htmlText = param1;
         },"prop1.htmlText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop1.text = param1;
         },"prop1.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bProp2;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop2.htmlText = param1;
         },"prop2.htmlText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop2.text = param1;
         },"prop2.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bProp3;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop3.htmlText = param1;
         },"prop3.htmlText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop3.text = param1;
         },"prop3.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bProp4;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop4.htmlText = param1;
         },"prop4.htmlText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPBUILDING_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop4.text = param1;
         },"prop4.text");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.preBuilds;
         },function(param1:Object):void
         {
            preList.dataProvider = param1;
         },"preList.dataProvider");
         result[21] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):String
         {
            var _loc3_:* = preList.mx_internal::getItemAt(param2[0]);
            return _loc3_ == undefined ? null : String(_loc3_);
         },function(param1:String, param2:Array):void
         {
            _TipBuilding_Text10[param2[0]].htmlText = param1;
         },"_TipBuilding_Text10.htmlText");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.btnVisible;
         },function(param1:Boolean):void
         {
            _TipBuilding_Button1.visible = param1;
         },"_TipBuilding_Button1.visible");
         result[23] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop2() : Text
      {
         return this._106940719prop2;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop4() : Text
      {
         return this._106940721prop4;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop1() : Text
      {
         return this._106940718prop1;
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      public function set iconImg(param1:Image) : void
      {
         var _loc2_:Object = this._1638753418iconImg;
         if(_loc2_ !== param1)
         {
            this._1638753418iconImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImg",_loc2_,param1));
         }
      }
      
      public function set preList(param1:Repeater) : void
      {
         var _loc2_:Object = this._319435295preList;
         if(_loc2_ !== param1)
         {
            this._319435295preList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prop3() : Text
      {
         return this._106940720prop3;
      }
      
      public function ___TipBuilding_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      public function set prop1(param1:Text) : void
      {
         var _loc2_:Object = this._106940718prop1;
         if(_loc2_ !== param1)
         {
            this._106940718prop1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop1",_loc2_,param1));
         }
      }
      
      public function set prop2(param1:Text) : void
      {
         var _loc2_:Object = this._106940719prop2;
         if(_loc2_ !== param1)
         {
            this._106940719prop2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop2",_loc2_,param1));
         }
      }
      
      public function set prop4(param1:Text) : void
      {
         var _loc2_:Object = this._106940721prop4;
         if(_loc2_ !== param1)
         {
            this._106940721prop4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop4",_loc2_,param1));
         }
      }
      
      public function ___TipBuilding_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function set prop3(param1:Text) : void
      {
         var _loc2_:Object = this._106940720prop3;
         if(_loc2_ !== param1)
         {
            this._106940720prop3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop3",_loc2_,param1));
         }
      }
      
      private function _TipBuilding_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = vo.name;
         _loc1_ = Language.TIPBUILDING_U[6];
         _loc1_ = vo.urlIcon;
         _loc1_ = vo.expCost;
         _loc1_ = Language.TIPBUILDING_U[0];
         _loc1_ = vo.moneyCost;
         _loc1_ = Language.TIPBUILDING_U[1];
         _loc1_ = vo.genMCost;
         _loc1_ = Language.TIPBUILDING_U[2];
         _loc1_ = vo.rareMCost;
         _loc1_ = Language.TIPBUILDING_U[3];
         _loc1_ = vo.maintainCost;
         _loc1_ = Language.TIPBUILDING_U[4];
         _loc1_ = vo.bProp1;
         _loc1_ = Language.TIPBUILDING_U[7];
         _loc1_ = vo.bProp2;
         _loc1_ = Language.TIPBUILDING_U[8];
         _loc1_ = vo.bProp3;
         _loc1_ = Language.TIPBUILDING_U[9];
         _loc1_ = vo.bProp4;
         _loc1_ = Language.TIPBUILDING_U[10];
         _loc1_ = vo.preBuilds;
         _loc1_ = preList.currentItem;
         _loc1_ = vo.btnVisible;
      }
      
      private function set vo(param1:ToolTipVO) : void
      {
         var _loc2_:Object = this._3769vo;
         if(_loc2_ !== param1)
         {
            this._3769vo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vo",_loc2_,param1));
         }
      }
      
      private function setCommon(param1:*) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         vo.expCost = Language.TIPBUILDING_U[0] + param1.expCost;
         vo.moneyCost = Language.TIPBUILDING_U[1] + param1.moneyCost;
         vo.genMCost = Language.TIPBUILDING_U[2] + param1.genMCost;
         vo.rareMCost = Language.TIPBUILDING_U[3] + param1.rareMCost;
         vo.maintainCost = Language.TIPBUILDING_U[4] + param1.maintainCost;
         vo.name = param1.name;
         vo.urlIcon = ResManager.getIconUrl(param1.iconCode);
         vo.preBuilds = new Array();
         var _loc2_:Array = null;
         if(param1.preBuilding != "" && param1.preBuilding != null)
         {
            _loc2_ = param1.preBuilding.split("|");
            _loc3_ = null;
            _loc4_ = null;
            for(_loc5_ in _loc2_)
            {
               _loc4_ = dm.gameData[GamePredef.TBL_BUILDING][_loc2_[_loc5_]];
               if(_loc4_ != null)
               {
                  vo.preBuilds.push(Language.TIPBUILDING_U[5] + _loc4_.name);
               }
            }
         }
         preList.dataProvider = vo.preBuilds;
      }
      
      [Bindable(event="propertyChange")]
      public function get preList() : Repeater
      {
         return this._319435295preList;
      }
   }
}

