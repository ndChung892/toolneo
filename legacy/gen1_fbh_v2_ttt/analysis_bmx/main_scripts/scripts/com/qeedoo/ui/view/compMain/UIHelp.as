package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.view.comp.RoundTextArea;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class UIHelp extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _UIHelp_RoundTextArea1:RoundTextArea;
      
      public var _UIHelp_RoundTextArea2:RoundTextArea;
      
      public var _UIHelp_RoundTextArea3:RoundTextArea;
      
      public var _UIHelp_RoundTextArea4:RoundTextArea;
      
      public var _UIHelp_RoundTextArea5:RoundTextArea;
      
      public var _UIHelp_RoundTextArea6:RoundTextArea;
      
      public var _UIHelp_RoundTextArea7:RoundTextArea;
      
      public var _UIHelp_RoundTextArea8:RoundTextArea;
      
      public var _UIHelp_RoundTextArea10:RoundTextArea;
      
      public var _UIHelp_RoundTextArea11:RoundTextArea;
      
      public var _UIHelp_RoundTextArea12:RoundTextArea;
      
      public var _UIHelp_RoundTextArea13:RoundTextArea;
      
      public var _UIHelp_RoundTextArea14:RoundTextArea;
      
      public var _UIHelp_RoundTextArea15:RoundTextArea;
      
      public var _UIHelp_RoundTextArea16:RoundTextArea;
      
      public var _UIHelp_RoundTextArea17:RoundTextArea;
      
      public var _UIHelp_RoundTextArea19:RoundTextArea;
      
      public var _UIHelp_RoundTextArea18:RoundTextArea;
      
      mx_internal var _bindings:Array = [];
      
      public var _UIHelp_RoundTextArea9:RoundTextArea;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea1",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":222,
                     "y":95,
                     "height":35,
                     "width":176
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea2",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":560,
                     "y":7,
                     "height":16,
                     "width":79
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea3",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":561,
                     "y":63,
                     "height":16,
                     "width":86
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea4",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":573,
                     "y":79,
                     "height":16,
                     "width":136
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea5",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":583,
                     "y":96,
                     "height":16,
                     "width":136
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea6",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":615,
                     "y":197,
                     "height":16,
                     "width":58
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea7",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":615,
                     "y":127,
                     "height":16,
                     "width":93
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea8",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":600,
                     "y":112,
                     "height":16,
                     "width":50
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea9",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":616,
                     "y":170,
                     "height":16,
                     "width":87
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea10",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":615,
                     "y":147,
                     "height":16,
                     "width":93
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea11",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":727,
                     "y":454,
                     "height":16,
                     "width":100
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea12",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":192,
                     "y":271,
                     "height":47,
                     "width":151
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea13",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":85,
                     "y":445,
                     "height":30,
                     "width":104
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea14",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":240,
                     "y":428,
                     "height":16,
                     "width":71
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea15",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":220,
                     "y":467,
                     "height":16,
                     "width":71
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea16",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":741,
                     "y":426,
                     "height":21.3,
                     "width":119.2
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea17",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":541,
                     "y":448,
                     "height":16,
                     "width":203
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea18",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":210,
                     "y":146,
                     "height":35,
                     "width":176
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea19",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":675,
                     "y":335,
                     "height":35,
                     "width":100
                  };
               }
            }),new UIComponentDescriptor({
               "type":RoundTextArea,
               "id":"_UIHelp_RoundTextArea20",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":510,
                     "y":413,
                     "height":21,
                     "width":119
                  };
               }
            })]};
         }
      });
      
      public var _UIHelp_RoundTextArea20:RoundTextArea;
      
      public function UIHelp()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.styleName = "CanvasUIHelp";
         this.addEventListener("keyDown",___UIHelp_Canvas1_keyDown);
         this.addEventListener("click",___UIHelp_Canvas1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         UIHelp._watcherSetupUtil = param1;
      }
      
      public function ___UIHelp_Canvas1_keyDown(param1:KeyboardEvent) : void
      {
         hide();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:UIHelp = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _UIHelp_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_UIHelpWatcherSetupUtil");
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
      
      private function _UIHelp_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea1.text = param1;
         },"_UIHelp_RoundTextArea1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea2.text = param1;
         },"_UIHelp_RoundTextArea2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea3.text = param1;
         },"_UIHelp_RoundTextArea3.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea4.text = param1;
         },"_UIHelp_RoundTextArea4.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea5.text = param1;
         },"_UIHelp_RoundTextArea5.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea6.text = param1;
         },"_UIHelp_RoundTextArea6.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea7.text = param1;
         },"_UIHelp_RoundTextArea7.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea8.text = param1;
         },"_UIHelp_RoundTextArea8.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea9.text = param1;
         },"_UIHelp_RoundTextArea9.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea10.text = param1;
         },"_UIHelp_RoundTextArea10.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea11.text = param1;
         },"_UIHelp_RoundTextArea11.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea12.text = param1;
         },"_UIHelp_RoundTextArea12.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea13.text = param1;
         },"_UIHelp_RoundTextArea13.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea14.text = param1;
         },"_UIHelp_RoundTextArea14.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea15.text = param1;
         },"_UIHelp_RoundTextArea15.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea16.text = param1;
         },"_UIHelp_RoundTextArea16.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea17.text = param1;
         },"_UIHelp_RoundTextArea17.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea18.text = param1;
         },"_UIHelp_RoundTextArea18.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea19.text = param1;
         },"_UIHelp_RoundTextArea19.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.UIHELP_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _UIHelp_RoundTextArea20.text = param1;
         },"_UIHelp_RoundTextArea20.text");
         result[19] = binding;
         return result;
      }
      
      public function ___UIHelp_Canvas1_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      private function hide() : void
      {
         visible = false;
      }
      
      private function _UIHelp_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.UIHELP_U[0];
         _loc1_ = Language.UIHELP_U[1];
         _loc1_ = Language.UIHELP_U[2];
         _loc1_ = Language.UIHELP_U[3];
         _loc1_ = Language.UIHELP_U[24];
         _loc1_ = Language.UIHELP_U[4];
         _loc1_ = Language.UIHELP_U[5];
         _loc1_ = Language.UIHELP_U[6];
         _loc1_ = Language.UIHELP_U[7];
         _loc1_ = Language.UIHELP_U[8];
         _loc1_ = Language.UIHELP_U[23];
         _loc1_ = Language.UIHELP_U[12];
         _loc1_ = Language.UIHELP_U[14];
         _loc1_ = Language.UIHELP_U[15];
         _loc1_ = Language.UIHELP_U[16];
         _loc1_ = Language.UIHELP_U[22];
         _loc1_ = Language.UIHELP_U[18];
         _loc1_ = Language.UIHELP_U[19];
         _loc1_ = Language.UIHELP_U[20];
         _loc1_ = Language.UIHELP_U[21];
      }
   }
}

