package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossContentionBattleInfo extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _115312txt:IntroText;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":625,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "7";
                     this.right = "7";
                     this.top = "40";
                     this.bottom = "25";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"txt",
                           "stylesFactory":function():void
                           {
                              this.fontStyle = "normal";
                              this.fontWeight = "bold";
                              this.textAlign = "left";
                              this.fontSize = 12;
                              this.borderThickness = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":6,
                                 "y":6,
                                 "width":600,
                                 "height":420
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function CrossContentionBattleInfo()
      {
         super();
         mx_internal::_document = this;
         this.width = 625;
         this.height = 500;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionBattleInfo_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionBattleInfo._watcherSetupUtil = param1;
      }
      
      public function open(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:int = 0;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Date = null;
         var _loc17_:String = null;
         super.visible = true;
         if(!param1)
         {
            return;
         }
         var _loc2_:String = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            if(_loc4_)
            {
               _loc5_ = _loc4_.om;
               _loc6_ = _loc4_.bm.leader;
               _loc7_ = Number(_loc4_.t);
               _loc8_ = Number(_loc4_.mid);
               _loc9_ = Number(_loc4_.rid);
               _loc10_ = Number(_loc4_.bosid);
               _loc11_ = Language.CROSS_CONTENTION_PANEL_U[158];
               if(GamePredef.CROSS_CONTENTION_MAP[_loc8_])
               {
                  _loc12_ = GamePredef.CROSS_CONTENTION_MAP[_loc8_].name;
                  _loc13_ = int(GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[_loc8_]][_loc9_].p);
                  _loc14_ = Language.CROSS_CONTENTION_PANEL_U[67 + _loc13_] + "-" + _loc9_;
                  _loc15_ = CrossContentionTotalPanel.getServerName(_loc10_);
                  _loc16_ = new Date(_loc7_);
                  _loc17_ = _loc16_.getHours() + ":" + _loc16_.getMinutes();
                  _loc2_ += (_loc3_ + 1).toString() + "、" + _loc11_.replace("{mname}",_loc12_).replace("{rname}",_loc14_).replace("{time}",_loc17_).replace("{bosid}",_loc15_).replace("{leader}",_loc6_) + "\n";
               }
            }
            _loc3_++;
         }
         txt.htmlText = _loc2_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionBattleInfo = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionBattleInfo_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionBattleInfoWatcherSetupUtil");
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
      
      public function ___CrossContentionBattleInfo_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function init() : void
      {
      }
      
      public function set txt(param1:IntroText) : void
      {
         var _loc2_:Object = this._115312txt;
         if(_loc2_ !== param1)
         {
            this._115312txt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt",_loc2_,param1));
         }
      }
      
      private function _CrossContentionBattleInfo_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[159];
      }
      
      private function _CrossContentionBattleInfo_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[159];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         return result;
      }
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txt() : IntroText
      {
         return this._115312txt;
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
   }
}

