package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.vo.ToolTipVO;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipMap extends BasicToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _277763378creCanvas:Canvas;
      
      public var _TipMap_Label2:Label;
      
      public var _TipMap_Text1:Text;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TipMap_TipMapSlot1:TipMapSlot;
      
      public var _TipMap_TipMapSlot2:TipMapSlot;
      
      public var _TipMap_TipMapSlot3:TipMapSlot;
      
      public var _TipMap_TipMapSlot4:TipMapSlot;
      
      mx_internal var _watchers:Array = [];
      
      public var _TipMap_Button1:Button;
      
      mx_internal var _bindings:Array = [];
      
      public var _TipMap_Label1:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {
               "width":235,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipMap_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 12515583;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":6,
                        "text":"地图名称"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"_TipMap_Text1",
                  "stylesFactory":function():void
                  {
                     this.color = 16772789;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":43,
                        "text":"地图说明",
                        "width":206,
                        "height":66
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_TipMap_Button1",
                  "events":{"click":"___TipMap_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":5,
                        "styleName":"BtnToolTipClose",
                        "width":15,
                        "height":15
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipMap_Label2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":23,
                        "text":"等级:"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipMap_Label3",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "right";
                     this.color = 3912446;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":108,
                        "y":23,
                        "text":"类型:安全",
                        "width":52
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"creCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":100,
                        "width":228,
                        "height":53,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":TipMapSlot,
                           "id":"_TipMap_TipMapSlot1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":0,
                                 "width":50,
                                 "height":50,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TipMapSlot,
                           "id":"_TipMap_TipMapSlot2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":60,
                                 "y":0,
                                 "width":50,
                                 "height":50,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TipMapSlot,
                           "id":"_TipMap_TipMapSlot3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":118,
                                 "y":0,
                                 "width":50,
                                 "height":50,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TipMapSlot,
                           "id":"_TipMap_TipMapSlot4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":174,
                                 "y":0,
                                 "width":50,
                                 "height":50,
                                 "movable":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _TipMap_Label3:Label;
      
      private var _3769vo:ToolTipVO = new ToolTipVO();
      
      public function TipMap()
      {
         super();
         mx_internal::_document = this;
         this.width = 235;
         this.styleName = "CanvasToolTip";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipMap._watcherSetupUtil = param1;
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
      
      private function _TipMap_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = vo.name;
         _loc1_ = vo.description;
         _loc1_ = vo.btnVisible;
         _loc1_ = Language.TIPMAP_S[2].toString().replace("{level}",vo.level);
         _loc1_ = vo.type;
         _loc1_ = vo.costVisible;
         _loc1_ = vo.costVisible;
         _loc1_ = GamePredef.TBL_CREATURE;
         _loc1_ = vo.cre1;
         _loc1_ = GamePredef.TBL_CREATURE;
         _loc1_ = vo.cre2;
         _loc1_ = GamePredef.TBL_CREATURE;
         _loc1_ = vo.cre3;
         _loc1_ = GamePredef.TBL_CREATURE;
         _loc1_ = vo.cre4;
      }
      
      public function ___TipMap_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipMap = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipMap_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipMapWatcherSetupUtil");
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
      
      public function set creCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._277763378creCanvas;
         if(_loc2_ !== param1)
         {
            this._277763378creCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"creCanvas",_loc2_,param1));
         }
      }
      
      public function showMap(param1:int = -1) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Object = GameData.d[GamePredef.TBL_MAP][param1];
         super.show(_loc2_);
         vo.name = _loc2_.name;
         vo.description = _loc2_.info;
         vo.level = _loc2_.level;
         vo.type = _loc2_.safeFlag > 0 ? Language.TIPMAP_S[0] : Language.TIPMAP_S[1];
         vo.costVisible = !Boolean(_loc2_.safeFlag > 0);
         vo.btnVisible = true;
         var _loc3_:int = 1;
         for(_loc4_ in GameData.d[GamePredef.TBL_MAP_CREATURE])
         {
            if(Boolean(GameData.d[GamePredef.TBL_MAP_CREATURE][_loc4_]) && Boolean(GameData.d[GamePredef.TBL_MAP_CREATURE][_loc4_].mid == param1) && GameData.d[GamePredef.TBL_MAP_CREATURE][_loc4_].bossFlag == 0)
            {
               _loc5_ = true;
               _loc6_ = 1;
               while(_loc6_ < _loc3_)
               {
                  if(Boolean(vo["cre" + _loc6_]) && vo["cre" + _loc6_] == Number(GameData.d[GamePredef.TBL_MAP_CREATURE][_loc4_].cid))
                  {
                     _loc5_ = false;
                     break;
                  }
                  _loc6_++;
               }
               if(_loc5_)
               {
                  vo["cre" + _loc3_] = Number(GameData.d[GamePredef.TBL_MAP_CREATURE][_loc4_].cid);
                  _loc3_++;
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get creCanvas() : Canvas
      {
         return this._277763378creCanvas;
      }
      
      private function _TipMap_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMap_Label1.htmlText = param1;
         },"_TipMap_Label1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMap_Text1.htmlText = param1;
         },"_TipMap_Text1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.btnVisible;
         },function(param1:Boolean):void
         {
            _TipMap_Button1.visible = param1;
         },"_TipMap_Button1.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPMAP_S[2].toString().replace("{level}",vo.level);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMap_Label2.htmlText = param1;
         },"_TipMap_Label2.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.type;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMap_Label3.htmlText = param1;
         },"_TipMap_Label3.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.costVisible;
         },function(param1:Boolean):void
         {
            creCanvas.visible = param1;
         },"creCanvas.visible");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.costVisible;
         },function(param1:Boolean):void
         {
            creCanvas.includeInLayout = param1;
         },"creCanvas.includeInLayout");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_CREATURE;
         },function(param1:int):void
         {
            _TipMap_TipMapSlot1.type = param1;
         },"_TipMap_TipMapSlot1.type");
         result[7] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.cre1;
         },function(param1:Number):void
         {
            _TipMap_TipMapSlot1.giid = param1;
         },"_TipMap_TipMapSlot1.giid");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_CREATURE;
         },function(param1:int):void
         {
            _TipMap_TipMapSlot2.type = param1;
         },"_TipMap_TipMapSlot2.type");
         result[9] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.cre2;
         },function(param1:Number):void
         {
            _TipMap_TipMapSlot2.giid = param1;
         },"_TipMap_TipMapSlot2.giid");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_CREATURE;
         },function(param1:int):void
         {
            _TipMap_TipMapSlot3.type = param1;
         },"_TipMap_TipMapSlot3.type");
         result[11] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.cre3;
         },function(param1:Number):void
         {
            _TipMap_TipMapSlot3.giid = param1;
         },"_TipMap_TipMapSlot3.giid");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_CREATURE;
         },function(param1:int):void
         {
            _TipMap_TipMapSlot4.type = param1;
         },"_TipMap_TipMapSlot4.type");
         result[13] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.cre4;
         },function(param1:Number):void
         {
            _TipMap_TipMapSlot4.giid = param1;
         },"_TipMap_TipMapSlot4.giid");
         result[14] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
   }
}

