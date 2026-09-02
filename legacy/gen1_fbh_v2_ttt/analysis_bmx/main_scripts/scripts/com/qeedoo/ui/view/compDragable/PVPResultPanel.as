package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PVPResultPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _PVPResultPanel_Button1:Button;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _2053377414battleInfo:IntroText;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":282,
               "height":143,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"battleInfo",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "21";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"height":102};
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_PVPResultPanel_Button1",
                  "events":{"click":"___PVPResultPanel_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":102,
                        "y":86,
                        "width":78,
                        "height":28,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      private var _2942945_res:String = "";
      
      private var _core:Core = Core.getInstance();
      
      public function PVPResultPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 282;
         this.height = 143;
         this.x = 300;
         this.y = 200;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PVPResultPanel._watcherSetupUtil = param1;
      }
      
      public function showResult(param1:Object) : void
      {
         var _loc2_:String = Language.PVP_GROUP_P[21].toString().replace("{rank}",param1.rank).replace("{point}",param1.point);
         if(!param1.pvpPoint || Number(param1.pvpPoint) == 0)
         {
            _loc2_ = Language.PVP_GROUP_P[24].toString().replace("{rank}",param1.rank);
         }
         _res = _loc2_;
         this.visible = true;
      }
      
      private function set _res(param1:String) : void
      {
         var _loc2_:Object = this._2942945_res;
         if(_loc2_ !== param1)
         {
            this._2942945_res = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_res",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battleInfo() : IntroText
      {
         return this._2053377414battleInfo;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PVPResultPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PVPResultPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PVPResultPanelWatcherSetupUtil");
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
      
      public function set battleInfo(param1:IntroText) : void
      {
         var _loc2_:Object = this._2053377414battleInfo;
         if(_loc2_ !== param1)
         {
            this._2053377414battleInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleInfo",_loc2_,param1));
         }
      }
      
      private function _PVPResultPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _res;
         _loc1_ = Language.PVP_ROOM_P[22];
      }
      
      [Bindable(event="propertyChange")]
      private function get _res() : String
      {
         return this._2942945_res;
      }
      
      public function ___PVPResultPanel_Button1_click(param1:MouseEvent) : void
      {
         closeResult();
      }
      
      private function closeResult() : void
      {
         this.visible = false;
         _core.remote.call("leavePVPRoom",null);
      }
      
      private function _PVPResultPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _res;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            battleInfo.htmlText = param1;
         },"battleInfo.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_ROOM_P[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPResultPanel_Button1.label = param1;
         },"_PVPResultPanel_Button1.label");
         result[1] = binding;
         return result;
      }
   }
}

