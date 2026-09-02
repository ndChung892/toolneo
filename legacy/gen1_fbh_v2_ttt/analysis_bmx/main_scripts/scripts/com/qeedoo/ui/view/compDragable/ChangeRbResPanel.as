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
   
   public class ChangeRbResPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      private var _205980803btnLeft:Button;
      
      private var changeObj:Object = new Object();
      
      private var _1913918552showText2:BasicTxtButton;
      
      private var _1455232140changeBtn:BasicGlowButton;
      
      private var _2096098592btnRight:Button;
      
      private var TITLE_ARR:Array = [Language.CHANGECOLORPANEL_S[25],Language.CHANGECOLORPANEL_S[26]];
      
      private var _109413588show1:CharactorShowCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1913918553showText1:BasicTxtButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _109413589show2:CharactorShowCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":305,
               "height":260,
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
                        "width":275,
                        "height":185,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":5,
                                 "width":130,
                                 "height":145,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"showText1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":40,
                                          "y":8,
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CharactorShowCanvas,
                                    "id":"show1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":115,
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
                                          "x":21,
                                          "y":115,
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
                                          "x":89,
                                          "y":115,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnRight"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":140,
                                 "y":5,
                                 "width":130,
                                 "height":145,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"showText2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":40,
                                          "y":10,
                                          "width":60,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CharactorShowCanvas,
                                    "id":"show2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":115,
                                          "height":20,
                                          "width":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___ChangeRbResPanel_Button3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":21,
                                          "y":115,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnLeft"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___ChangeRbResPanel_Button4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":89,
                                          "y":115,
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
                           "id":"changeBtn",
                           "events":{"click":"__changeBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":190,
                                 "y":154,
                                 "width":60,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1668885452changePanel:BasicTitleCanvas;
      
      private var _core:Core = Core.getInstance();
      
      public function ChangeRbResPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 305;
         this.height = 260;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___ChangeRbResPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChangeRbResPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get show2() : CharactorShowCanvas
      {
         return this._109413589show2;
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
      public function get showText2() : BasicTxtButton
      {
         return this._1913918552showText2;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeBtn() : BasicGlowButton
      {
         return this._1455232140changeBtn;
      }
      
      public function updateView() : void
      {
         var _loc1_:String = ResManager.getResUrl(_core.player.resCode);
         if(show1.url != _loc1_)
         {
            show1.url = _loc1_;
         }
         var _loc2_:String = ResManager.getResUrl(changeObj.resCode);
         if(show2.url != _loc2_)
         {
            show2.url = _loc2_;
         }
         if(changeObj.isRebirthRes)
         {
            showText2.text = this.TITLE_ARR[0];
         }
         else
         {
            showText2.text = this.TITLE_ARR[1];
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChangeRbResPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChangeRbResPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ChangeRbResPanelWatcherSetupUtil");
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
            if(show1.url != null)
            {
               show1.rollRight();
            }
            if(show2.url != null)
            {
               show2.rollRight();
            }
         }
         else
         {
            if(show1.url != null)
            {
               show1.rollLeft();
            }
            if(show2.url != null)
            {
               show2.rollLeft();
            }
         }
      }
      
      private function init() : void
      {
         changePanel.closeFunc = closeFunc;
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnRight() : Button
      {
         return this._2096098592btnRight;
      }
      
      private function subChange() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.changeRebirthedRes();
            }
         };
         Alert.show(Language.CHANGECOLORPANEL_S[28].replace("{name}",showText2.text),"",Alert.YES | Alert.NO,null,func);
         this.closeFunc();
      }
      
      public function set show2(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._109413589show2;
         if(_loc2_ !== param1)
         {
            this._109413589show2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show2",_loc2_,param1));
         }
      }
      
      private function viewClear() : void
      {
         show1.url = null;
         show2.url = null;
         showText1.text = "";
         showText2.text = "";
      }
      
      public function set changeBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1455232140changeBtn;
         if(_loc2_ !== param1)
         {
            this._1455232140changeBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeBtn",_loc2_,param1));
         }
      }
      
      private function _ChangeRbResPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changePanel.text = param1;
         },"changePanel.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showText1.text = param1;
         },"showText1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeBtn.label = param1;
         },"changeBtn.label");
         result[2] = binding;
         return result;
      }
      
      public function __changeBtn_click(param1:MouseEvent) : void
      {
         subChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get showText1() : BasicTxtButton
      {
         return this._1913918553showText1;
      }
      
      public function set show1(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._109413588show1;
         if(_loc2_ !== param1)
         {
            this._109413588show1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"show1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changePanel() : BasicTitleCanvas
      {
         return this._1668885452changePanel;
      }
      
      public function ___ChangeRbResPanel_Button3_click(param1:MouseEvent) : void
      {
         rollShow(false);
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
      
      public function set showText2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1913918552showText2;
         if(_loc2_ !== param1)
         {
            this._1913918552showText2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showText2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get show1() : CharactorShowCanvas
      {
         return this._109413588show1;
      }
      
      public function set showText1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1913918553showText1;
         if(_loc2_ !== param1)
         {
            this._1913918553showText1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showText1",_loc2_,param1));
         }
      }
      
      public function closeFunc() : void
      {
         _core.view.hide(ViewManager.PANEL_CHANGE_RES);
         viewClear();
      }
      
      public function ___ChangeRbResPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __btnLeft_click(param1:MouseEvent) : void
      {
         rollShow(false);
      }
      
      public function set newResObj(param1:Object) : void
      {
         this.visible = true;
         changeObj = param1;
         if(!this.initialized)
         {
            return;
         }
         updateView();
      }
      
      public function ___ChangeRbResPanel_Button4_click(param1:MouseEvent) : void
      {
         rollShow(true);
      }
      
      private function _ChangeRbResPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHANGECOLORPANEL_S[24];
         _loc1_ = Language.CHANGECOLORPANEL_S[29];
         _loc1_ = Language.CHANGECOLORPANEL_S[27];
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
   }
}

