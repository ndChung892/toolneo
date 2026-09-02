package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipQuest extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TipQuest_Label4:Label;
      
      public var _TipQuest_Label1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3602qc:QuestCanvas;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":308,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":QuestCanvas,
                  "id":"qc",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 5;
                     this.paddingRight = 5;
                     this.paddingTop = 5;
                     this.paddingBottom = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":-8,
                        "y":2,
                        "embeded":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___TipQuest_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "5";
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnToolTipClose"};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipQuest_Label1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":4,
                        "y":5,
                        "width":55
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipQuest_Label2",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":4,
                        "y":274,
                        "width":55
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipQuest_Label3",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":4,
                        "y":250,
                        "width":55
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_TipQuest_Label4",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":4,
                        "y":226,
                        "width":55
                     };
                  }
               })]
            };
         }
      });
      
      public var _TipQuest_Label3:Label;
      
      public var _TipQuest_Label2:Label;
      
      public function TipQuest()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.width = 300;
         this.height = 308;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("resize",___TipQuest_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipQuest._watcherSetupUtil = param1;
      }
      
      public function set object(param1:Object) : void
      {
         qc.questData = param1.temp;
      }
      
      public function ___TipQuest_Button1_click(param1:MouseEvent) : void
      {
         closeQuestTip();
      }
      
      [Bindable(event="propertyChange")]
      public function get qc() : QuestCanvas
      {
         return this._3602qc;
      }
      
      private function _TipQuest_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPQUEST_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipQuest_Label1.text = param1;
         },"_TipQuest_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPQUEST_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipQuest_Label2.text = param1;
         },"_TipQuest_Label2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPQUEST_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipQuest_Label3.text = param1;
         },"_TipQuest_Label3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPQUEST_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipQuest_Label4.text = param1;
         },"_TipQuest_Label4.text");
         result[3] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipQuest = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipQuest_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipQuestWatcherSetupUtil");
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
      
      public function set qc(param1:QuestCanvas) : void
      {
         var _loc2_:Object = this._3602qc;
         if(_loc2_ !== param1)
         {
            this._3602qc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qc",_loc2_,param1));
         }
      }
      
      public function ___TipQuest_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function closeQuestTip() : void
      {
         visible = false;
         dispatchEvent(new Event(DragableCanvas.EVENT_CLOSE));
      }
      
      private function _TipQuest_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TIPQUEST_S[0];
         _loc1_ = Language.TIPQUEST_S[1];
         _loc1_ = Language.TIPQUEST_S[2];
         _loc1_ = Language.TIPQUEST_S[3];
      }
      
      override public function show(param1:Object = null) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Array = Canvas(parent).getChildren();
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc3_ is TipCre))
            {
               _loc3_.visible = false;
            }
         }
         setPos();
         visible = true;
      }
   }
}

