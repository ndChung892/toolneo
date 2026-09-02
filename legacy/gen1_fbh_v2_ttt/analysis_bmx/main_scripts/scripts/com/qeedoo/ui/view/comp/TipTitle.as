package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   
   public class TipTitle extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _309147635propTxt:Text;
      
      private var _1499853000descriTxt:Text;
      
      mx_internal var _watchers:Array = [];
      
      private var _3582325vBox:VBox;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipTitle_RoundedLabel1:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":RoundedLabel,
               "id":"_TipTitle_RoundedLabel1",
               "stylesFactory":function():void
               {
                  this.top = "5";
                  this.left = "5";
                  this.fontSize = 16;
                  this.color = 65280;
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "events":{"click":"___TipTitle_Button1_click"},
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
                     "type":Text,
                     "id":"descriTxt",
                     "propertiesFactory":function():Object
                     {
                        return {"width":240};
                     }
                  }),new UIComponentDescriptor({
                     "type":Text,
                     "id":"propTxt",
                     "propertiesFactory":function():Object
                     {
                        return {"width":240};
                     }
                  })]};
               }
            })]};
         }
      });
      
      private var _3769vo:ToolTipVO;
      
      public function TipTitle()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipTitle_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipTitle._watcherSetupUtil = param1;
      }
      
      public function ___TipTitle_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get descriTxt() : Text
      {
         return this._1499853000descriTxt;
      }
      
      private function _TipTitle_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipTitle_RoundedLabel1.htmlText = param1;
         },"_TipTitle_RoundedLabel1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            descriTxt.htmlText = param1;
         },"descriTxt.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPTITLE_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            descriTxt.text = param1;
         },"descriTxt.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propAdded;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propTxt.htmlText = param1;
         },"propTxt.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPTITLE_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propTxt.text = param1;
         },"propTxt.text");
         result[4] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get propTxt() : Text
      {
         return this._309147635propTxt;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipTitle = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipTitle_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipTitleWatcherSetupUtil");
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
      
      public function set propTxt(param1:Text) : void
      {
         var _loc2_:Object = this._309147635propTxt;
         if(_loc2_ !== param1)
         {
            this._309147635propTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propTxt",_loc2_,param1));
         }
      }
      
      public function set descriTxt(param1:Text) : void
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
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      public function ___TipTitle_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipTitle_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = vo.name;
         _loc1_ = vo.description;
         _loc1_ = Language.TIPTITLE_S[0];
         _loc1_ = vo.propAdded;
         _loc1_ = Language.TIPTITLE_S[1];
      }
      
      public function set object(param1:Object) : void
      {
         vo = new ToolTipVO();
         vo.name = param1.temp.name;
         vo.description = "<font color=\"#EEEE00\">" + Language.TIPTITLE_S[0] + "</font><br/>" + param1.temp.description + "<br/><br/>";
         if(Boolean(param1.temp.propAdded) && param1.temp.propAdded.length > 0)
         {
            vo.propAdded = "<font color=\"#EEEE00\">" + Language.TIPTITLE_S[1] + "</font><br/>" + param1.temp.propAdded;
         }
         else
         {
            vo.propAdded = "<font color=\"#EEEE00\">" + Language.TIPTITLE_S[1] + "</font><br/>" + Language.TIPTITLE_S[2];
         }
      }
   }
}

