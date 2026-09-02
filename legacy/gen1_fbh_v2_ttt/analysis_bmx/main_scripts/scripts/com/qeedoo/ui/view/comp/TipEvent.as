package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipEvent extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1313937309timeTxt:Text;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1499853000descriTxt:LinkText;
      
      private var _3582325vBox:VBox;
      
      private var _1512935670reqLevelTxt:Text;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _176891356lineTxt:Text;
      
      public var _TipEvent_RoundedLabel1:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _1039292465npcTxt:LinkText;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":RoundedLabel,
               "id":"_TipEvent_RoundedLabel1",
               "stylesFactory":function():void
               {
                  this.top = "5";
                  this.left = "5";
                  this.fontSize = 16;
                  this.color = 65280;
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "events":{"click":"___TipEvent_Button1_click"},
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
            }),new UIComponentDescriptor({
               "type":VBox,
               "id":"vBox",
               "stylesFactory":function():void
               {
                  this.left = "0";
                  this.top = "25";
                  this.verticalGap = 0;
                  this.paddingLeft = 5;
                  this.paddingRight = 5;
                  this.paddingTop = 5;
                  this.paddingBottom = 5;
               },
               "propertiesFactory":function():Object
               {
                  return {"childDescriptors":[new UIComponentDescriptor({
                     "type":LinkText,
                     "id":"npcTxt",
                     "stylesFactory":function():void
                     {
                        this.color = 16773307;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"width":240};
                     }
                  }),new UIComponentDescriptor({
                     "type":Text,
                     "id":"timeTxt"
                  }),new UIComponentDescriptor({
                     "type":Text,
                     "id":"lineTxt"
                  }),new UIComponentDescriptor({
                     "type":Text,
                     "id":"reqLevelTxt"
                  }),new UIComponentDescriptor({
                     "type":LinkText,
                     "id":"descriTxt",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 12;
                        this.color = 16773307;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"width":310};
                     }
                  })]};
               }
            })]};
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      private var _3769vo:ToolTipVO;
      
      public function TipEvent()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipEvent_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipEvent._watcherSetupUtil = param1;
      }
      
      public function set object(param1:Object) : void
      {
         var _loc2_:String = null;
         vo = new ToolTipVO();
         vo.name = param1.temp.name;
         vBox.removeAllChildren();
         if(param1.temp.npc != "-1")
         {
            vBox.addChild(npcTxt);
            vo.activeNPC = Language.TIPEVENT_S[1].toString().replace("{npc}",param1.temp.npc);
         }
         if(param1.temp.time != "")
         {
            vBox.addChild(timeTxt);
            vo.activeTime = Language.TIPEVENT_S[2].toString().replace("{time}",param1.temp.time);
         }
         if(param1.temp.line != "")
         {
            vBox.addChild(lineTxt);
            vo.activeLine = Language.TIPEVENT_S[3].toString().replace("{line}",param1.temp.line);
         }
         if(param1.temp.level > 0)
         {
            vBox.addChild(reqLevelTxt);
            if(param1.temp.level > _core.player.level)
            {
               _loc2_ = "<font color=\"#FF0000\">" + param1.temp.level + "</font>";
            }
            else
            {
               _loc2_ = "<font color=\"#00FF00\">" + param1.temp.level + "</font>";
            }
            vo.reqLevel = Language.TIPEVENT_S[4].toString().replace("{level}",_loc2_);
         }
         if(param1.temp.description != "")
         {
            vBox.addChild(descriTxt);
            vo.description = param1.temp.description;
         }
      }
      
      public function set timeTxt(param1:Text) : void
      {
         var _loc2_:Object = this._1313937309timeTxt;
         if(_loc2_ !== param1)
         {
            this._1313937309timeTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeTxt",_loc2_,param1));
         }
      }
      
      public function ___TipEvent_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get descriTxt() : LinkText
      {
         return this._1499853000descriTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get npcTxt() : LinkText
      {
         return this._1039292465npcTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqLevelTxt() : Text
      {
         return this._1512935670reqLevelTxt;
      }
      
      private function _TipEvent_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipEvent_RoundedLabel1.htmlText = param1;
         },"_TipEvent_RoundedLabel1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.activeNPC;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            npcTxt.htmlText = param1;
         },"npcTxt.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPEVENT_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            npcTxt.text = param1;
         },"npcTxt.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.activeTime;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            timeTxt.htmlText = param1;
         },"timeTxt.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPEVENT_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            timeTxt.text = param1;
         },"timeTxt.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.activeLine;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lineTxt.htmlText = param1;
         },"lineTxt.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPEVENT_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lineTxt.text = param1;
         },"lineTxt.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.reqLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqLevelTxt.htmlText = param1;
         },"reqLevelTxt.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPEVENT_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqLevelTxt.text = param1;
         },"reqLevelTxt.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            descriTxt.htmlText = param1;
         },"descriTxt.htmlText");
         result[9] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipEvent = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipEvent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipEventWatcherSetupUtil");
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
      
      public function set reqLevelTxt(param1:Text) : void
      {
         var _loc2_:Object = this._1512935670reqLevelTxt;
         if(_loc2_ !== param1)
         {
            this._1512935670reqLevelTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqLevelTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lineTxt() : Text
      {
         return this._176891356lineTxt;
      }
      
      public function set npcTxt(param1:LinkText) : void
      {
         var _loc2_:Object = this._1039292465npcTxt;
         if(_loc2_ !== param1)
         {
            this._1039292465npcTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"npcTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timeTxt() : Text
      {
         return this._1313937309timeTxt;
      }
      
      public function set lineTxt(param1:Text) : void
      {
         var _loc2_:Object = this._176891356lineTxt;
         if(_loc2_ !== param1)
         {
            this._176891356lineTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lineTxt",_loc2_,param1));
         }
      }
      
      public function set descriTxt(param1:LinkText) : void
      {
         var _loc2_:Object = this._1499853000descriTxt;
         if(_loc2_ !== param1)
         {
            this._1499853000descriTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"descriTxt",_loc2_,param1));
         }
      }
      
      public function set vBox(param1:VBox) : void
      {
         var _loc2_:Object = this._3582325vBox;
         if(_loc2_ !== param1)
         {
            this._3582325vBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vBox",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get vBox() : VBox
      {
         return this._3582325vBox;
      }
      
      public function ___TipEvent_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      private function _TipEvent_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = vo.name;
         _loc1_ = vo.activeNPC;
         _loc1_ = Language.TIPEVENT_S[1];
         _loc1_ = vo.activeTime;
         _loc1_ = Language.TIPEVENT_S[2];
         _loc1_ = vo.activeLine;
         _loc1_ = Language.TIPEVENT_S[3];
         _loc1_ = vo.reqLevel;
         _loc1_ = Language.TIPEVENT_S[4];
         _loc1_ = vo.description;
      }
   }
}

