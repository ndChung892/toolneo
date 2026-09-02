package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
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
   import mx.controls.Image;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SmallGamePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const ACTIVE_ICON:Class = SmallGamePanel_ACTIVE_ICON;
      
      private static var SMALL_GAME_ICON_CODE_1:Number = 4130220000201;
      
      private static var SMALL_GAME_ICON_CODE_2:Number = 4130220000202;
      
      private static var SMALL_GAME_ICON_CODE_3:Number = 4130220000203;
      
      private static var SMALL_GAME_ICON_CODE_4:Number = 4130220000204;
      
      private static var SMALL_GAME_ICON_CODE_5:Number = 4130220000205;
      
      public var _SmallGamePanel_Button1:Button;
      
      public var _SmallGamePanel_Button2:Button;
      
      private var _24325235imgSignin2:Image;
      
      public var _SmallGamePanel_Button4:Button;
      
      public var _SmallGamePanel_Image1:Image;
      
      public var _SmallGamePanel_Button3:Button;
      
      private var _2088273106signin4:BasicDelayButton;
      
      private var _24325233imgSignin4:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _873453350title2:Canvas;
      
      private var _2088273105signin3:BasicDelayButton;
      
      public var _SmallGamePanel_Text1:Text;
      
      public var _SmallGamePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2088273104signin2:BasicDelayButton;
      
      private var _24325234imgSignin3:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _24325236imgSignin1:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _2088273103signin1:BasicDelayButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":560,
               "height":444,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SmallGamePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.bottom = "10";
                     this.left = "10";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"",
                        "percentWidth":100,
                        "percentHeight":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "10";
                              this.top = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SmallGamePanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":5,
                                          "width":500,
                                          "height":75
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"title2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "x":10,
                                          "y":85,
                                          "width":500,
                                          "height":95,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Text,
                                             "id":"_SmallGamePanel_Text1",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.top = "10";
                                                this.fontSize = 14;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"height":75};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":true,
                                          "width":100,
                                          "height":140,
                                          "x":44,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"signin1",
                                    "events":{"click":"__signin1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":10000,
                                          "x":74,
                                          "y":313,
                                          "width":40,
                                          "styleName":"BtnStdRed",
                                          "enabled":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_SmallGamePanel_Button1",
                                    "events":{"click":"___SmallGamePanel_Button1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":340,
                                          "styleName":"BtnStdRed",
                                          "enabled":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":true,
                                          "width":100,
                                          "height":140,
                                          "x":154,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"signin2",
                                    "events":{"click":"__signin2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":10000,
                                          "x":184,
                                          "y":313,
                                          "width":40,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_SmallGamePanel_Button2",
                                    "events":{"click":"___SmallGamePanel_Button2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":170,
                                          "y":340,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":true,
                                          "width":100,
                                          "height":140,
                                          "x":264,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"signin3",
                                    "events":{"click":"__signin3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":10000,
                                          "x":294,
                                          "y":313,
                                          "width":40,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_SmallGamePanel_Button3",
                                    "events":{"click":"___SmallGamePanel_Button3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":280,
                                          "y":340,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":true,
                                          "width":100,
                                          "height":140,
                                          "x":374,
                                          "y":190
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"signin4",
                                    "events":{"click":"__signin4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":10000,
                                          "x":404,
                                          "y":313,
                                          "width":40,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"_SmallGamePanel_Button4",
                                    "events":{"click":"___SmallGamePanel_Button4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":390,
                                          "y":340,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function SmallGamePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 560;
         this.height = 444;
         this.styleName = "StandardContent";
         this.x = 135;
         this.y = 258;
         this.addEventListener("creationComplete",___SmallGamePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SmallGamePanel._watcherSetupUtil = param1;
      }
      
      public function ___SmallGamePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _SmallGamePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SMALL_GAME_P[0];
         _loc1_ = ACTIVE_ICON;
         _loc1_ = Language.SMALL_GAME_P[12];
         _loc1_ = ResManager.hash(ResManager.getIconUrlNoHash(SMALL_GAME_ICON_CODE_1));
         _loc1_ = Language.SMALL_GAME_P[22];
         _loc1_ = Language.SMALL_GAME_P[25];
         _loc1_ = ResManager.hash(ResManager.getIconUrlNoHash(SMALL_GAME_ICON_CODE_2));
         _loc1_ = Language.SMALL_GAME_P[22];
         _loc1_ = Language.SMALL_GAME_P[26];
         _loc1_ = ResManager.hash(ResManager.getIconUrlNoHash(SMALL_GAME_ICON_CODE_3));
         _loc1_ = Language.SMALL_GAME_P[22];
         _loc1_ = Language.SMALL_GAME_P[27];
         _loc1_ = ResManager.hash(ResManager.getIconUrlNoHash(SMALL_GAME_ICON_CODE_4));
         _loc1_ = Language.SMALL_GAME_P[22];
         _loc1_ = Language.SMALL_GAME_P[28];
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSignin4() : Image
      {
         return this._24325233imgSignin4;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SmallGamePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SmallGamePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SmallGamePanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get imgSignin3() : Image
      {
         return this._24325234imgSignin3;
      }
      
      public function set imgSignin4(param1:Image) : void
      {
         var _loc2_:Object = this._24325233imgSignin4;
         if(_loc2_ !== param1)
         {
            this._24325233imgSignin4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin4",_loc2_,param1));
         }
      }
      
      public function set signin2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2088273104signin2;
         if(_loc2_ !== param1)
         {
            this._2088273104signin2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin2",_loc2_,param1));
         }
      }
      
      public function set imgSignin2(param1:Image) : void
      {
         var _loc2_:Object = this._24325235imgSignin2;
         if(_loc2_ !== param1)
         {
            this._24325235imgSignin2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin2",_loc2_,param1));
         }
      }
      
      public function set signin3(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2088273105signin3;
         if(_loc2_ !== param1)
         {
            this._2088273105signin3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin3",_loc2_,param1));
         }
      }
      
      public function init() : void
      {
      }
      
      public function set signin1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2088273103signin1;
         if(_loc2_ !== param1)
         {
            this._2088273103signin1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin1",_loc2_,param1));
         }
      }
      
      private function showDesc(param1:int) : void
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case ViewManager.PANEL_Small_Game_HideSeek:
               _loc2_ = Language.SMALL_GAME_P[18];
               break;
            case ViewManager.PANEL_Small_Game_TwoSame:
               _loc2_ = Language.SMALL_GAME_P[19];
               break;
            case ViewManager.PANEL_Small_Game_MagicPower:
               _loc2_ = Language.SMALL_GAME_P[20];
               break;
            case ViewManager.PANEL_Small_Game_Speed:
               _loc2_ = Language.SMALL_GAME_P[21];
         }
         Alert.show(_loc2_);
      }
      
      public function set imgSignin3(param1:Image) : void
      {
         var _loc2_:Object = this._24325234imgSignin3;
         if(_loc2_ !== param1)
         {
            this._24325234imgSignin3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin3",_loc2_,param1));
         }
      }
      
      public function ___SmallGamePanel_Button3_click(param1:MouseEvent) : void
      {
         showDesc(ViewManager.PANEL_Small_Game_MagicPower);
      }
      
      public function __signin1_click(param1:MouseEvent) : void
      {
         open(ViewManager.PANEL_Small_Game_HideSeek);
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSignin1() : Image
      {
         return this._24325236imgSignin1;
      }
      
      public function set signin4(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2088273106signin4;
         if(_loc2_ !== param1)
         {
            this._2088273106signin4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin4",_loc2_,param1));
         }
      }
      
      public function __signin3_click(param1:MouseEvent) : void
      {
         open(ViewManager.PANEL_Small_Game_MagicPower);
      }
      
      public function ___SmallGamePanel_Button1_click(param1:MouseEvent) : void
      {
         showDesc(ViewManager.PANEL_Small_Game_HideSeek);
      }
      
      public function set title2(param1:Canvas) : void
      {
         var _loc2_:Object = this._873453350title2;
         if(_loc2_ !== param1)
         {
            this._873453350title2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSignin2() : Image
      {
         return this._24325235imgSignin2;
      }
      
      private function _SmallGamePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGamePanel_BasicTitleCanvas1.text = param1;
         },"_SmallGamePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ACTIVE_ICON;
         },function(param1:Object):void
         {
            _SmallGamePanel_Image1.source = param1;
         },"_SmallGamePanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGamePanel_Text1.text = param1;
         },"_SmallGamePanel_Text1.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.hash(ResManager.getIconUrlNoHash(SMALL_GAME_ICON_CODE_1));
         },function(param1:Object):void
         {
            imgSignin1.source = param1;
         },"imgSignin1.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin1.label = param1;
         },"signin1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGamePanel_Button1.label = param1;
         },"_SmallGamePanel_Button1.label");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.hash(ResManager.getIconUrlNoHash(SMALL_GAME_ICON_CODE_2));
         },function(param1:Object):void
         {
            imgSignin2.source = param1;
         },"imgSignin2.source");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin2.label = param1;
         },"signin2.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGamePanel_Button2.label = param1;
         },"_SmallGamePanel_Button2.label");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.hash(ResManager.getIconUrlNoHash(SMALL_GAME_ICON_CODE_3));
         },function(param1:Object):void
         {
            imgSignin3.source = param1;
         },"imgSignin3.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin3.label = param1;
         },"signin3.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGamePanel_Button3.label = param1;
         },"_SmallGamePanel_Button3.label");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.hash(ResManager.getIconUrlNoHash(SMALL_GAME_ICON_CODE_4));
         },function(param1:Object):void
         {
            imgSignin4.source = param1;
         },"imgSignin4.source");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin4.label = param1;
         },"signin4.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGamePanel_Button4.label = param1;
         },"_SmallGamePanel_Button4.label");
         result[14] = binding;
         return result;
      }
      
      private function open(param1:int) : void
      {
         var _loc2_:Object = _core.view.getUI(param1);
         if(_loc2_)
         {
            _loc2_.initPanel();
            _loc2_.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get signin1() : BasicDelayButton
      {
         return this._2088273103signin1;
      }
      
      [Bindable(event="propertyChange")]
      public function get signin2() : BasicDelayButton
      {
         return this._2088273104signin2;
      }
      
      [Bindable(event="propertyChange")]
      public function get signin4() : BasicDelayButton
      {
         return this._2088273106signin4;
      }
      
      public function initPanel() : void
      {
         if(!initialized)
         {
            _core.player.normalView.pause();
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         callLater(_core.player.normalView.resume);
      }
      
      [Bindable(event="propertyChange")]
      public function get signin3() : BasicDelayButton
      {
         return this._2088273105signin3;
      }
      
      [Bindable(event="propertyChange")]
      public function get title2() : Canvas
      {
         return this._873453350title2;
      }
      
      public function set imgSignin1(param1:Image) : void
      {
         var _loc2_:Object = this._24325236imgSignin1;
         if(_loc2_ !== param1)
         {
            this._24325236imgSignin1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin1",_loc2_,param1));
         }
      }
      
      public function ___SmallGamePanel_Button2_click(param1:MouseEvent) : void
      {
         showDesc(ViewManager.PANEL_Small_Game_TwoSame);
      }
      
      public function __signin2_click(param1:MouseEvent) : void
      {
         open(ViewManager.PANEL_Small_Game_TwoSame);
      }
      
      public function __signin4_click(param1:MouseEvent) : void
      {
         open(ViewManager.PANEL_Small_Game_Speed);
      }
      
      public function ___SmallGamePanel_Button4_click(param1:MouseEvent) : void
      {
         showDesc(ViewManager.PANEL_Small_Game_Speed);
      }
   }
}

