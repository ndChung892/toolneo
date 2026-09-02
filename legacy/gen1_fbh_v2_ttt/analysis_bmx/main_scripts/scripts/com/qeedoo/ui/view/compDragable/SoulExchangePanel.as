package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SoulExchangePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2034549083soulExcList:List;
      
      public var _SoulExchangePanel_Label1:Label;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      public var _SoulExchangePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":355,
               "height":425,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SoulExchangePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_SoulExchangePanel_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":65,
                        "y":40
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"chipInfo",
                  "stylesFactory":function():void
                  {
                     this.right = "30";
                     this.color = 16775802;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":40};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":60,
                        "width":335,
                        "height":350,
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":List,
                           "id":"soulExcList",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.right = "0";
                              this.borderStyle = "none";
                              this.left = "0";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "width":335,
                                 "height":340,
                                 "itemRenderer":_SoulExchangePanel_ClassFactory1_c()
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var isInited:Boolean = false;
      
      private var _1662412570chipInfo:Label;
      
      private var _core:Core = Core.getInstance();
      
      public function SoulExchangePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 355;
         this.height = 425;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___SoulExchangePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SoulExchangePanel._watcherSetupUtil = param1;
      }
      
      private function _SoulExchangePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SOUL_EXCHANGE_PANEL[0];
         _loc1_ = Language.PET_SOUL_S[34];
         _loc1_ = Language.PET_SOUL_S[34];
         _loc1_ = null;
      }
      
      public function updateView() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Sort = null;
         var _loc5_:Object = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         var _loc1_:Object = _core.data.gameDataIndex2[GamePredef.TBL_PET_SOUL][1];
         var _loc2_:ArrayCollection = new ArrayCollection();
         for(_loc3_ in _loc1_)
         {
            _loc5_ = new Object();
            _loc5_.soulId = _loc1_[_loc3_].id;
            _loc5_.reqChip = _loc1_[_loc3_].reqChip;
            _loc5_.sort1 = _loc1_[_loc3_].color;
            _loc5_.sort2 = _loc1_[_loc3_].propType;
            _loc5_.color = GamePredef.CODE_SOUL_COLOR[_loc1_[_loc3_].color];
            _loc5_.name = _loc1_[_loc3_].name;
            _loc5_.desc = _loc1_[_loc3_].desc;
            _loc2_.addItem(_loc5_);
         }
         _loc4_ = new Sort();
         _loc4_.fields = [new SortField("sort1",true,true,true),new SortField("sort2",true,false,true)];
         _loc2_.sort = _loc4_;
         _loc2_.refresh();
         soulExcList.dataProvider = _loc2_;
         if(_core.player)
         {
            chipInfo.text = Language.PET_SOUL_S[12] + _core.player.soulChip;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SoulExchangePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SoulExchangePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SoulExchangePanelWatcherSetupUtil");
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
      
      private function _SoulExchangePanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SoulExchangePanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      override public function initView() : void
      {
         isInited = true;
         updateView();
      }
      
      private function _SoulExchangePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SOUL_EXCHANGE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SoulExchangePanel_BasicTitleCanvas1.text = param1;
         },"_SoulExchangePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SoulExchangePanel_Label1.text = param1;
         },"_SoulExchangePanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            chipInfo.text = param1;
         },"chipInfo.text");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            soulExcList.setStyle("borderSkin",param1);
         },"soulExcList.borderSkin");
         result[3] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get soulExcList() : List
      {
         return this._2034549083soulExcList;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            updateView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chipInfo() : Label
      {
         return this._1662412570chipInfo;
      }
      
      public function set chipInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1662412570chipInfo;
         if(_loc2_ !== param1)
         {
            this._1662412570chipInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipInfo",_loc2_,param1));
         }
      }
      
      public function ___SoulExchangePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function set soulExcList(param1:List) : void
      {
         var _loc2_:Object = this._2034549083soulExcList;
         if(_loc2_ !== param1)
         {
            this._2034549083soulExcList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulExcList",_loc2_,param1));
         }
      }
   }
}

