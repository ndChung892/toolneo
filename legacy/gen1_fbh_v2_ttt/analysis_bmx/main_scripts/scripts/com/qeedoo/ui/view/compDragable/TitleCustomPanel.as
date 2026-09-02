package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.ComboBox;
   import mx.controls.Label;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TitleCustomPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _titleIndex:Number = 0;
      
      private var _1870024861titleEnd:ComboBox;
      
      private var _1870014165titlePre:ComboBox;
      
      private var _891535336submit:Button;
      
      private var _titlePre:String;
      
      private var parentCbFunc:Function;
      
      mx_internal var _watchers:Array = [];
      
      private var _titleMid:String;
      
      private var _607740351labelText:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1870017328titleMid:ComboBox;
      
      mx_internal var _bindings:Array = [];
      
      private var _titleNext:String;
      
      private var _1307249261titleId:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":352,
               "height":138,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"titleId"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":128,
                        "y":30,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ComboBox,
                           "id":"titleEnd",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5.5,
                                 "y":41,
                                 "width":139,
                                 "labelField":"label"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ComboBox,
                           "id":"titleMid",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":150.5,
                                 "y":41,
                                 "width":65,
                                 "labelField":"label",
                                 "visible":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ComboBox,
                           "id":"titlePre",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":221.5,
                                 "y":41,
                                 "width":123.5,
                                 "labelField":"label"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"submit",
                           "events":{"click":"__submit_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":77,
                                 "width":67,
                                 "label":"OK",
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"labelText",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":19.5,
                                 "y":15,
                                 "text":"Label"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var midArr:Array = new Array({
         "label":"quá",
         "data":1
      },{
         "label":"rất",
         "data":2
      },{
         "label":"cực",
         "data":3
      });
      
      private var _titleUpdateAlert:Alert;
      
      private var _core:Core = Core.getInstance();
      
      public function TitleCustomPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 352;
         this.height = 138;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TitleCustomPanel._watcherSetupUtil = param1;
      }
      
      public function __submit_click(param1:MouseEvent) : void
      {
         setTitleName();
      }
      
      public function set labelText(param1:Label) : void
      {
         var _loc2_:Object = this._607740351labelText;
         if(_loc2_ !== param1)
         {
            this._607740351labelText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelText",_loc2_,param1));
         }
      }
      
      public function parentCallback(param1:Function) : void
      {
         parentCbFunc = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleId() : BasicTitleCanvas
      {
         return this._1307249261titleId;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TitleCustomPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TitleCustomPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TitleCustomPanelWatcherSetupUtil");
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
      
      private function _TitleCustomPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TITLE_CUSTOM[1];
      }
      
      public function set titleMid(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1870017328titleMid;
         if(_loc2_ !== param1)
         {
            this._1870017328titleMid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleMid",_loc2_,param1));
         }
      }
      
      public function set titleId(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1307249261titleId;
         if(_loc2_ !== param1)
         {
            this._1307249261titleId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleId",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get submit() : Button
      {
         return this._891535336submit;
      }
      
      private function _TitleCustomPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TITLE_CUSTOM[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            titleId.text = param1;
         },"titleId.text");
         result[0] = binding;
         return result;
      }
      
      public function set submit(param1:Button) : void
      {
         var _loc2_:Object = this._891535336submit;
         if(_loc2_ !== param1)
         {
            this._891535336submit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"submit",_loc2_,param1));
         }
      }
      
      public function initTitleContent(param1:Number) : void
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         if(Boolean(GamePredef.TITLE_NEXT[param1]) && Boolean(GamePredef.TITLE_PRE[param1]))
         {
            _loc2_ = new Array();
            for(_loc3_ in GamePredef.TITLE_PRE[param1])
            {
               _loc5_ = new Object();
               _loc5_.label = GamePredef.TITLE_PRE[param1][_loc3_];
               _loc5_.data = _loc3_;
               _loc2_.push(_loc5_);
            }
            this.titlePre.dataProvider = _loc2_;
            this.titleMid.dataProvider = midArr;
            _loc4_ = new Array();
            for(_loc3_ in GamePredef.TITLE_NEXT[param1])
            {
               _loc5_ = new Object();
               _loc5_.label = GamePredef.TITLE_NEXT[param1][_loc3_];
               _loc5_.data = _loc3_;
               _loc4_.push(_loc5_);
            }
            this.titleEnd.dataProvider = _loc4_;
            _titleIndex = param1;
            this.labelText.text = GamePredef.TITLE_LABLE[param1][2].toString();
            this.titleId.text = GamePredef.TITLE_LABLE[param1][1].toString();
            this.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titlePre() : ComboBox
      {
         return this._1870014165titlePre;
      }
      
      private function setTitleName() : void
      {
         var tf:IUITextField;
         var titleName:String;
         var obj:*;
         var titleAdd:String;
         var handler:Function = null;
         var i:* = undefined;
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("setCustomTitle",new Responder(onSetCustomTitle),_titleIndex,_titlePre,_titleMid,_titleNext);
            }
            if(param1.detail == Alert.NO)
            {
            }
         };
         if(_titleUpdateAlert)
         {
            PopUpManager.removePopUp(_titleUpdateAlert);
            _titleUpdateAlert = null;
         }
         titleAdd = this.titleEnd.selectedItem.label + " " + this.titleMid.selectedItem.label + " " + this.titlePre.selectedItem.label;
         _titleMid = this.titleMid.selectedItem.data;
         _titlePre = this.titlePre.selectedItem.data;
         _titleNext = this.titleEnd.selectedItem.data;
         titleName = Language.TITLE_CUSTOM[0].toString().replace("{title}",titleAdd);
         obj = _core.view.getUI(ViewManager.MAIN_LONGBUFF);
         if(Boolean(obj) && Boolean(obj.rp))
         {
            for(i in obj.rp.dataProvider)
            {
               if(Boolean(obj.rp.dataProvider) && Boolean(obj.rp.dataProvider[i]) && Boolean(obj.rp.dataProvider[i].bid) && obj.rp.dataProvider[i].bid == GamePredef.TITLE_POINT[_titleIndex][2])
               {
                  titleName = Language.TITLE_CUSTOM[4].toString();
               }
            }
         }
         _titleUpdateAlert = Alert.show(titleName,null,Alert.YES | Alert.NO,null,handler);
         tf = _titleUpdateAlert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = titleName;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function set titleEnd(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1870024861titleEnd;
         if(_loc2_ !== param1)
         {
            this._1870024861titleEnd = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleEnd",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelText() : Label
      {
         return this._607740351labelText;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleMid() : ComboBox
      {
         return this._1870017328titleMid;
      }
      
      public function set titlePre(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1870014165titlePre;
         if(_loc2_ !== param1)
         {
            this._1870014165titlePre = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titlePre",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleEnd() : ComboBox
      {
         return this._1870024861titleEnd;
      }
      
      public function onSetCustomTitle(param1:Object) : void
      {
         if(Boolean(this) && this.visible)
         {
            this.visible = false;
         }
         if(Boolean(parentCbFunc))
         {
            parentCbFunc();
         }
      }
   }
}

