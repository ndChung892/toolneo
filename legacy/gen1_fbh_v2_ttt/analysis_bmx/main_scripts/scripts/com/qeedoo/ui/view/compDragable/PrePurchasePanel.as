package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PrePurchaseListRenderer;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.List;
   import mx.controls.TextArea;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PrePurchasePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":650,
               "height":435,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PrePurchasePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "height":400,
                        "width":640,
                        "x":5,
                        "y":30,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_PrePurchasePanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":640,
                                 "height":400
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TextArea,
                           "id":"timeLable",
                           "stylesFactory":function():void
                           {
                              this.leading = 7;
                              this.borderThickness = 0;
                              this.backgroundAlpha = 0;
                              this.color = 16777215;
                              this.bottom = "5";
                              this.left = "5";
                              this.fontWeight = "bold";
                              this.fontSize = 12;
                              this.textAlign = "right";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "wordWrap":true,
                                 "text":"",
                                 "width":397,
                                 "height":37
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":List,
                           "id":"list",
                           "stylesFactory":function():void
                           {
                              this.right = "0";
                              this.top = "1";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "itemRenderer":_PrePurchasePanel_ClassFactory1_c(),
                                 "width":230,
                                 "height":400,
                                 "labelField":"name",
                                 "styleName":"CSSBorder"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _18543865timeLable:TextArea;
      
      private var _3322014list:List;
      
      private var _2128318134itemDatas:ArrayCollection = new ArrayCollection();
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      public var _PrePurchasePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _PrePurchasePanel_Image1:Image;
      
      private var _core:Core = Core.getInstance();
      
      public function PrePurchasePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 650;
         this.height = 435;
         this.styleName = "StandardContent";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PrePurchasePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get timeLable() : TextArea
      {
         return this._18543865timeLable;
      }
      
      public function showPanel() : void
      {
         initView();
      }
      
      public function set list(param1:List) : void
      {
         var _loc2_:Object = this._3322014list;
         if(_loc2_ !== param1)
         {
            this._3322014list = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDatas() : ArrayCollection
      {
         return this._2128318134itemDatas;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         visible = true;
         _core.remote.call("initPPCHESData",null,null);
      }
      
      public function list_itemClickHandler(param1:*) : void
      {
         var itemId:* = undefined;
         var _trialsAlert:* = undefined;
         var handler:Function = null;
         var str:String = null;
         var data:* = param1;
         itemId = data.id;
         if(!data || !data.btnStatus || itemId <= 0)
         {
            return;
         }
         if(data.btnStatus == 2 || data.btnStatus == 5)
         {
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("getPPCHESItem",null,itemId);
               }
            };
            if(_trialsAlert)
            {
               PopUpManager.removePopUp(_trialsAlert);
               _trialsAlert = null;
            }
            str = "";
            if(data.btnStatus == 2)
            {
               str = Language.PPCHES_PANEL[1].toString().replace("{gold}",data.price).replace("{item}",data.name);
            }
            if(data.btnStatus == 5)
            {
               str = Language.PPCHES_PANEL[2].toString().replace("{item}",data.name);
            }
            _trialsAlert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PrePurchasePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PrePurchasePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PrePurchasePanelWatcherSetupUtil");
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
      
      public function set itemDatas(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._2128318134itemDatas;
         if(_loc2_ !== param1)
         {
            this._2128318134itemDatas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDatas",_loc2_,param1));
         }
      }
      
      private function _PrePurchasePanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PrePurchaseListRenderer;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get list() : List
      {
         return this._3322014list;
      }
      
      public function set timeLable(param1:TextArea) : void
      {
         var _loc2_:Object = this._18543865timeLable;
         if(_loc2_ !== param1)
         {
            this._18543865timeLable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeLable",_loc2_,param1));
         }
      }
      
      private function _PrePurchasePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PPCHES_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PrePurchasePanel_BasicTitleCanvas1.text = param1;
         },"_PrePurchasePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003800);
         },function(param1:Object):void
         {
            _PrePurchasePanel_Image1.source = param1;
         },"_PrePurchasePanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            timeLable.filters = param1;
         },"timeLable.filters");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return itemDatas;
         },function(param1:Object):void
         {
            list.dataProvider = param1;
         },"list.dataProvider");
         result[3] = binding;
         return result;
      }
      
      private function _PrePurchasePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PPCHES_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220003800);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = itemDatas;
      }
      
      public function onPPCHESData(param1:*) : void
      {
         var _loc3_:* = undefined;
         if(!param1)
         {
            return;
         }
         timeLable.htmlText = param1.timeStr;
         var _loc2_:ArrayCollection = new ArrayCollection();
         if(param1.items)
         {
            for(_loc3_ in param1.items)
            {
               _loc2_.addItem(param1.items[_loc3_]);
            }
         }
         itemDatas = _loc2_;
      }
   }
}

