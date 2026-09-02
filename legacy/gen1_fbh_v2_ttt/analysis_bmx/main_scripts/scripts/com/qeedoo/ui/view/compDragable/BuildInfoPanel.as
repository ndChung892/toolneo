package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.Application;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BuildInfoPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1184171001infoVo:Object;
      
      private var _106940718prop1:Text;
      
      mx_internal var _watchers:Array = [];
      
      private var _1638753418iconImg:Image;
      
      private var _3237038info:Text;
      
      private var _106940719prop2:Text;
      
      public var _BuildInfoPanel_Text1:Text;
      
      public var _BuildInfoPanel_Label1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _106940720prop3:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":170,
               "height":182,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.verticalGap = 0;
                     this.paddingLeft = 5;
                     this.paddingRight = 5;
                     this.paddingTop = 5;
                     this.paddingBottom = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":57,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_BuildInfoPanel_Label1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":45,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"iconImg",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":5,
                                          "width":32,
                                          "height":32
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_BuildInfoPanel_Text1"
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"prop1"
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"prop2"
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"prop3"
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"prop4"
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"info"
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___BuildInfoPanel_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.top = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":true,
                        "styleName":"BtnPanelClose",
                        "width":15,
                        "height":15
                     };
                  }
               })]
            };
         }
      });
      
      private var template:Object;
      
      private var _106940721prop4:Text;
      
      public function BuildInfoPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 170;
         this.height = 182;
         this.styleName = "CanvasToolTip";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BuildInfoPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get infoVo() : Object
      {
         return this._1184171001infoVo;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImg() : Image
      {
         return this._1638753418iconImg;
      }
      
      private function set infoVo(param1:Object) : void
      {
         var _loc2_:Object = this._1184171001infoVo;
         if(_loc2_ !== param1)
         {
            this._1184171001infoVo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoVo",_loc2_,param1));
         }
      }
      
      private function setPos(param1:Object) : void
      {
         this.x = Application.application.stage.mouseX;
         this.y = Application.application.stage.mouseY;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BuildInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BuildInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_BuildInfoPanelWatcherSetupUtil");
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
      
      public function set iconImg(param1:Image) : void
      {
         var _loc2_:Object = this._1638753418iconImg;
         if(_loc2_ !== param1)
         {
            this._1638753418iconImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prop1() : Text
      {
         return this._106940718prop1;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop2() : Text
      {
         return this._106940719prop2;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop3() : Text
      {
         return this._106940720prop3;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop4() : Text
      {
         return this._106940721prop4;
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : Text
      {
         return this._3237038info;
      }
      
      private function _BuildInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BuildInfoPanel_Label1.htmlText = param1;
         },"_BuildInfoPanel_Label1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BUILDINFOPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BuildInfoPanel_Label1.text = param1;
         },"_BuildInfoPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return infoVo.urlIcon;
         },function(param1:Object):void
         {
            iconImg.source = param1;
         },"iconImg.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVo.maintainCost;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BuildInfoPanel_Text1.htmlText = param1;
         },"_BuildInfoPanel_Text1.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BUILDINFOPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BuildInfoPanel_Text1.text = param1;
         },"_BuildInfoPanel_Text1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVo.bProp1;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop1.htmlText = param1;
         },"prop1.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BUILDINFOPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop1.text = param1;
         },"prop1.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVo.bProp2;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop2.htmlText = param1;
         },"prop2.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BUILDINFOPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop2.text = param1;
         },"prop2.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVo.bProp3;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop3.htmlText = param1;
         },"prop3.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BUILDINFOPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop3.text = param1;
         },"prop3.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVo.bProp4;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop4.htmlText = param1;
         },"prop4.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BUILDINFOPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop4.text = param1;
         },"prop4.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoVo.tips;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info.htmlText = param1;
         },"info.htmlText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BUILDINFOPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info.text = param1;
         },"info.text");
         result[14] = binding;
         return result;
      }
      
      public function ___BuildInfoPanel_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      private function setProperty(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = 1;
         while(_loc3_ <= 4)
         {
            if(ToolKit.isEqual(param1.percentFlag,0))
            {
               _loc2_ = param1["prop" + _loc3_ + "Value"];
            }
            else
            {
               _loc2_ = param1["prop" + _loc3_ + "Value"] + "%";
            }
            infoVo["bProp" + _loc3_] = GamePredef.PROP_NAME[param1["prop" + _loc3_]] + Language.BUILDINFOPANEL_U[1] + " : " + _loc2_;
            _loc3_++;
         }
         if(ToolKit.isEqual(param1["prop" + 1],0))
         {
            prop1.visible = false;
         }
         else
         {
            prop1.visible = true;
         }
         if(ToolKit.isEqual(param1["prop" + 2],0))
         {
            prop2.visible = false;
         }
         else
         {
            prop2.visible = true;
         }
         if(ToolKit.isEqual(param1["prop" + 3],0))
         {
            prop3.visible = false;
         }
         else
         {
            prop3.visible = true;
         }
         if(ToolKit.isEqual(param1["prop" + 4],0))
         {
            prop4.visible = false;
         }
         else
         {
            prop4.visible = true;
         }
      }
      
      public function set info(param1:Text) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      public function set prop2(param1:Text) : void
      {
         var _loc2_:Object = this._106940719prop2;
         if(_loc2_ !== param1)
         {
            this._106940719prop2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop2",_loc2_,param1));
         }
      }
      
      public function set prop3(param1:Text) : void
      {
         var _loc2_:Object = this._106940720prop3;
         if(_loc2_ !== param1)
         {
            this._106940720prop3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop3",_loc2_,param1));
         }
      }
      
      public function set prop4(param1:Text) : void
      {
         var _loc2_:Object = this._106940721prop4;
         if(_loc2_ !== param1)
         {
            this._106940721prop4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop4",_loc2_,param1));
         }
      }
      
      public function set prop1(param1:Text) : void
      {
         var _loc2_:Object = this._106940718prop1;
         if(_loc2_ !== param1)
         {
            this._106940718prop1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop1",_loc2_,param1));
         }
      }
      
      private function _BuildInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = infoVo.name;
         _loc1_ = Language.BUILDINFOPANEL_U[2];
         _loc1_ = infoVo.urlIcon;
         _loc1_ = infoVo.maintainCost;
         _loc1_ = Language.BUILDINFOPANEL_U[3];
         _loc1_ = infoVo.bProp1;
         _loc1_ = Language.BUILDINFOPANEL_U[4];
         _loc1_ = infoVo.bProp2;
         _loc1_ = Language.BUILDINFOPANEL_U[5];
         _loc1_ = infoVo.bProp3;
         _loc1_ = Language.BUILDINFOPANEL_U[6];
         _loc1_ = infoVo.bProp4;
         _loc1_ = Language.BUILDINFOPANEL_U[7];
         _loc1_ = infoVo.tips;
         _loc1_ = Language.BUILDINFOPANEL_U[8];
      }
      
      public function showBuild(param1:Object) : void
      {
         infoVo = new Object();
         template = GameData.d[GamePredef.TBL_BUILDING][param1.tid];
         infoVo.name = template.name;
         infoVo.maintainCost = Language.BUILDINFOPANEL_U[0] + template.maintainCost;
         infoVo.urlIcon = ResManager.getIconUrl(template.iconCode);
         setProperty(template);
         setPos(template);
         visible = true;
      }
   }
}

