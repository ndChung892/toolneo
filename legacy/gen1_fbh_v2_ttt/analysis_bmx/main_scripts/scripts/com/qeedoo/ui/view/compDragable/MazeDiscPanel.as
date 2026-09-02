package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.Button;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MazeDiscPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _type:int = 0;
      
      private var _2147400797skipBtn:Button;
      
      public var _MazeDiscPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _31228997eventName:RoundedLabel;
      
      private var _842377084confirmBtn:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _1859786879eventContent:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":340,
               "height":180,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MazeDiscPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"eventName",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.color = 16777215;
                     this.fontSize = 14;
                     this.textAlign = "center";
                     this.top = "39";
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"eventContent",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "67";
                     this.right = "10";
                     this.bottom = "40";
                     this.fontSize = 14;
                     this.color = 16777215;
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"confirmBtn",
                  "events":{"click":"__confirmBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":85,
                        "width":60,
                        "height":20,
                        "styleName":"BtnStdRed",
                        "y":148
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"skipBtn",
                  "events":{"click":"__skipBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":227,
                        "width":60,
                        "height":20,
                        "styleName":"BtnStdRed",
                        "y":148
                     };
                  }
               })]
            };
         }
      });
      
      public function MazeDiscPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 340;
         this.height = 180;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___MazeDiscPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MazeDiscPanel._watcherSetupUtil = param1;
      }
      
      public function confirm() : void
      {
         if(this.visible)
         {
            this.visible = false;
         }
         _core.remote.call("mazeConfirm",new Responder(onConfirm));
      }
      
      public function ___MazeDiscPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmBtn() : Button
      {
         return this._842377084confirmBtn;
      }
      
      public function __skipBtn_click(param1:MouseEvent) : void
      {
         skip();
      }
      
      public function showPanel(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
         if(_loc2_)
         {
            _loc2_.hide();
         }
         if(!param1)
         {
            return;
         }
         this.visible = true;
         this["eventName"].text = Language.MAZE_DISC_PANEL_U[1].toString().replace("{name}",Language.MAZE_DISC_U[int(param1.type)]);
         this["eventContent"].text = Language.MAZE_DISC_PANEL_U[2].toString().replace("{content}",Language.MAZE_DISC_U[int(param1.type) + 14]);
         _type = int(param1.type);
         if(_type == 5 || _type == 7 || _type == 4 || _type == 9 || _type == 8)
         {
            skipBtn.visible = false;
            confirmBtn.x = 140;
         }
         else
         {
            confirmBtn.x = 85;
            skipBtn.visible = true;
         }
      }
      
      public function set skipBtn(param1:Button) : void
      {
         var _loc2_:Object = this._2147400797skipBtn;
         if(_loc2_ !== param1)
         {
            this._2147400797skipBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipBtn",_loc2_,param1));
         }
      }
      
      public function set eventContent(param1:Text) : void
      {
         var _loc2_:Object = this._1859786879eventContent;
         if(_loc2_ !== param1)
         {
            this._1859786879eventContent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventContent",_loc2_,param1));
         }
      }
      
      private function _MazeDiscPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAZE_DISC_PANEL_U[0];
         _loc1_ = Language.MAZE_DISC_PANEL_U[1];
         _loc1_ = Language.MAZE_DISC_PANEL_U[2];
         _loc1_ = Language.MAZE_DISC_PANEL_U[4];
         _loc1_ = Language.MAZE_DISC_PANEL_U[5];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MazeDiscPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MazeDiscPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MazeDiscPanelWatcherSetupUtil");
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
      
      public function set eventName(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._31228997eventName;
         if(_loc2_ !== param1)
         {
            this._31228997eventName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventContent() : Text
      {
         return this._1859786879eventContent;
      }
      
      override public function initView() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get eventName() : RoundedLabel
      {
         return this._31228997eventName;
      }
      
      [Bindable(event="propertyChange")]
      public function get skipBtn() : Button
      {
         return this._2147400797skipBtn;
      }
      
      public function __confirmBtn_click(param1:MouseEvent) : void
      {
         confirm();
      }
      
      public function onConfirm(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_MAZE_INFO);
         if(Boolean(_loc2_) && Boolean(_loc2_.visible))
         {
            _loc2_.updateData(param1);
         }
      }
      
      private function _MazeDiscPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_DISC_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeDiscPanel_BasicTitleCanvas1.text = param1;
         },"_MazeDiscPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_DISC_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eventName.text = param1;
         },"eventName.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_DISC_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eventContent.text = param1;
         },"eventContent.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_DISC_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            confirmBtn.label = param1;
         },"confirmBtn.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_DISC_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            skipBtn.label = param1;
         },"skipBtn.label");
         result[4] = binding;
         return result;
      }
      
      public function set confirmBtn(param1:Button) : void
      {
         var _loc2_:Object = this._842377084confirmBtn;
         if(_loc2_ !== param1)
         {
            this._842377084confirmBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmBtn",_loc2_,param1));
         }
      }
      
      public function onSkip(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_MAZE_INFO);
         if(_loc2_.visible)
         {
            _loc2_.updateData(param1);
         }
      }
      
      public function skip() : void
      {
         if(this.visible)
         {
            this.visible = false;
         }
         _core.remote.call("mazeSkip",new Responder(onSkip));
      }
   }
}

