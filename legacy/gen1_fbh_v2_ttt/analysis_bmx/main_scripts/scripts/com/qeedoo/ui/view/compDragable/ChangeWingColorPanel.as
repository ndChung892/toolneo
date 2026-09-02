package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ChangeWingColorPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      public var colorObj:Array;
      
      mx_internal var _watchers:Array = [];
      
      private var _205980803btnLeft:Button;
      
      private var _188974544levelLabel:BasicTxtButton;
      
      private var _2096098592btnRight:Button;
      
      public var _ChangeWingColorPanel_BasicTxtButton3:BasicTxtButton;
      
      private var _555140865changeColor2:BasicGlowButton;
      
      public var _ChangeWingColorPanel_BasicTxtButton1:BasicTxtButton;
      
      private var _555140866changeColor1:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _157404278wingShow2:CharactorShowCanvas;
      
      private var _157404279wingShow1:CharactorShowCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _1668885452changePanel:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":325,
               "height":280,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"changePanel"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":60,
                        "width":295,
                        "height":195,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":5,
                                 "width":140,
                                 "height":165,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_ChangeWingColorPanel_BasicTxtButton1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":40,
                                          "y":8,
                                          "width":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"levelLabel",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":100,
                                          "y":8,
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CharactorShowCanvas,
                                    "id":"wingShow1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":65,
                                          "y":135,
                                          "height":20,
                                          "width":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnLeft",
                                    "events":{"click":"__btnLeft_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":16,
                                          "y":135,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnLeft"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnRight",
                                    "events":{"click":"__btnRight_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":99,
                                          "y":135,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnRight"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"changeColor1",
                           "events":{"click":"__changeColor1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":174,
                                 "width":80,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":150,
                                 "y":5,
                                 "width":140,
                                 "height":165,
                                 "styleName":"CanvasBorder",
                                 "visible":true,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_ChangeWingColorPanel_BasicTxtButton3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":40,
                                          "y":8,
                                          "width":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CharactorShowCanvas,
                                    "id":"wingShow2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":65,
                                          "y":135,
                                          "height":20,
                                          "width":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___ChangeWingColorPanel_Button3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":16,
                                          "y":135,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnLeft"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___ChangeWingColorPanel_Button4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":99,
                                          "y":135,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnRight"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"changeColor2",
                           "events":{"click":"__changeColor2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":172,
                                 "y":174,
                                 "width":80,
                                 "styleName":"BtnNormalRed",
                                 "visible":true
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function ChangeWingColorPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 325;
         this.height = 280;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___ChangeWingColorPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChangeWingColorPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLeft() : Button
      {
         return this._205980803btnLeft;
      }
      
      public function set btnLeft(param1:Button) : void
      {
         var _loc2_:Object = this._205980803btnLeft;
         if(_loc2_ !== param1)
         {
            this._205980803btnLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLeft",_loc2_,param1));
         }
      }
      
      public function __btnRight_click(param1:MouseEvent) : void
      {
         rollShow(true);
      }
      
      [Bindable(event="propertyChange")]
      public function get wingShow2() : CharactorShowCanvas
      {
         return this._157404278wingShow2;
      }
      
      public function set changeColor1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._555140866changeColor1;
         if(_loc2_ !== param1)
         {
            this._555140866changeColor1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeColor1",_loc2_,param1));
         }
      }
      
      public function subChange(param1:int) : void
      {
         var type:int = param1;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("onSureChangeWingColor",new Responder(onChangeWingColor),colorObj[type].color);
            }
         };
         Alert.show(Language.WING_COLOR_PANEL[5].replace("{type}",type + 1),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set wingShow1(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._157404279wingShow1;
         if(_loc2_ !== param1)
         {
            this._157404279wingShow1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingShow1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChangeWingColorPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChangeWingColorPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ChangeWingColorPanelWatcherSetupUtil");
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
      
      private function rollShow(param1:Boolean) : void
      {
         if(param1)
         {
            if(wingShow1.url != null)
            {
               wingShow1.rollRight();
            }
            if(wingShow2.visible)
            {
               wingShow2.rollRight();
            }
         }
         else
         {
            if(wingShow1.url != null)
            {
               wingShow1.rollLeft();
            }
            if(wingShow2.visible)
            {
               wingShow2.rollLeft();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnRight() : Button
      {
         return this._2096098592btnRight;
      }
      
      public function set wingShow2(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._157404278wingShow2;
         if(_loc2_ !== param1)
         {
            this._157404278wingShow2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingShow2",_loc2_,param1));
         }
      }
      
      public function ___ChangeWingColorPanel_Button4_click(param1:MouseEvent) : void
      {
         rollShow(true);
      }
      
      public function __changeColor2_click(param1:MouseEvent) : void
      {
         subChange(1);
      }
      
      public function showWingColorPanel(param1:Array) : void
      {
         changeColor1.enabled = true;
         changeColor2.enabled = true;
         var _loc2_:String = ResManager.getResUrl(_core.player.resCode);
         wingShow1.url = _loc2_;
         wingShow2.url = _loc2_;
         wingShow1.charResCode = _core.player.resCode;
         wingShow2.charResCode = _core.player.resCode;
         wingShow1.color = _core.player.colorCode;
         wingShow2.color = _core.player.colorCode;
         wingShow1.wingResCode = colorObj[0].res;
         wingShow2.wingResCode = colorObj[1].res;
         if(colorObj[1].res == null || colorObj[1].res == 0)
         {
            changeColor2.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeColor1() : BasicGlowButton
      {
         return this._555140866changeColor1;
      }
      
      [Bindable(event="propertyChange")]
      public function get changePanel() : BasicTitleCanvas
      {
         return this._1668885452changePanel;
      }
      
      [Bindable(event="propertyChange")]
      public function get wingShow1() : CharactorShowCanvas
      {
         return this._157404279wingShow1;
      }
      
      public function ___ChangeWingColorPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set levelLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._188974544levelLabel;
         if(_loc2_ !== param1)
         {
            this._188974544levelLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel",_loc2_,param1));
         }
      }
      
      private function _ChangeWingColorPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WING_COLOR_PANEL[1];
         _loc1_ = Language.WING_COLOR_PANEL[2];
         _loc1_ = Language.WING_COLOR_PANEL[4];
         _loc1_ = Language.WING_COLOR_PANEL[3];
         _loc1_ = Language.WING_COLOR_PANEL[4];
      }
      
      public function set changeColor2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._555140865changeColor2;
         if(_loc2_ !== param1)
         {
            this._555140865changeColor2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeColor2",_loc2_,param1));
         }
      }
      
      public function set btnRight(param1:Button) : void
      {
         var _loc2_:Object = this._2096098592btnRight;
         if(_loc2_ !== param1)
         {
            this._2096098592btnRight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnRight",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel() : BasicTxtButton
      {
         return this._188974544levelLabel;
      }
      
      private function init() : void
      {
         changePanel.closeFunc = closeFunc;
      }
      
      public function closeFunc() : void
      {
         _core.view.hide(ViewManager.PANEL_WING_COLOR);
         wingShow1.wingResCode = 0;
         wingShow2.wingResCode = 0;
      }
      
      public function ___ChangeWingColorPanel_Button3_click(param1:MouseEvent) : void
      {
         rollShow(false);
      }
      
      public function __changeColor1_click(param1:MouseEvent) : void
      {
         subChange(0);
      }
      
      public function set changePanel(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1668885452changePanel;
         if(_loc2_ !== param1)
         {
            this._1668885452changePanel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePanel",_loc2_,param1));
         }
      }
      
      public function onChangeWingColor(param1:Boolean) : void
      {
         if(param1)
         {
            _core.view.hide(ViewManager.PANEL_WING_COLOR);
            wingShow1.wingResCode = 0;
            wingShow2.wingResCode = 0;
         }
      }
      
      public function __btnLeft_click(param1:MouseEvent) : void
      {
         rollShow(false);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            showWingColorPanel(colorObj);
         }
      }
      
      private function _ChangeWingColorPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_COLOR_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changePanel.text = param1;
         },"changePanel.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_COLOR_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChangeWingColorPanel_BasicTxtButton1.text = param1;
         },"_ChangeWingColorPanel_BasicTxtButton1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_COLOR_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeColor1.label = param1;
         },"changeColor1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_COLOR_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChangeWingColorPanel_BasicTxtButton3.text = param1;
         },"_ChangeWingColorPanel_BasicTxtButton3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WING_COLOR_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeColor2.label = param1;
         },"changeColor2.label");
         result[4] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeColor2() : BasicGlowButton
      {
         return this._555140865changeColor2;
      }
   }
}

