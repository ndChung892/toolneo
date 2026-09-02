package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.view.comp.FilterButton;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TripleTownTurnPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TripleTownTurnPanel_FilterButton2:FilterButton;
      
      public var _TripleTownTurnPanel_FilterButton4:FilterButton;
      
      public var _TripleTownTurnPanel_FilterButton1:FilterButton;
      
      public var _TripleTownTurnPanel_Label5:Label;
      
      public var _TripleTownTurnPanel_FilterButton3:FilterButton;
      
      public var _TripleTownTurnPanel_FilterButton5:FilterButton;
      
      public var _TripleTownTurnPanel_Label4:Label;
      
      public var _TripleTownTurnPanel_Label1:Label;
      
      mx_internal var _watchers:Array;
      
      private var _2048529025chanceText:Label;
      
      mx_internal var _bindings:Array;
      
      private const CONST_TURN_BY_KILL:int = 3;
      
      private const CONST_DIR_NAME:Object;
      
      private const CONST_TURN_DICT:Array;
      
      private var _1528018603_isHide:Boolean;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _134198090turnText:Label;
      
      private const CONST_DIR_TOTAL:int = 8;
      
      private var _1670000474dirText:Label;
      
      public var _TripleTownTurnPanel_Canvas2:Canvas;
      
      public var _TripleTownTurnPanel_Canvas3:Canvas;
      
      private var _1300750333showHideBtn:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _core:Core;
      
      private var _isHideUI:Boolean;
      
      public function TripleTownTurnPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":217,
                  "height":210,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_TripleTownTurnPanel_Canvas2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":12,
                           "styleName":"RoundedGradientBorder",
                           "width":205,
                           "height":110,
                           "clipContent":false,
                           "verticalScrollPolicy":"off",
                           "horizontalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TripleTownTurnPanel_Label1",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.color = 16776960;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":8};
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"turnText",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":35,
                                    "y":26
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"dirText",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":35,
                                    "y":43
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TripleTownTurnPanel_Label4",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":19,
                                    "y":67
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":FilterButton,
                              "id":"_TripleTownTurnPanel_FilterButton1",
                              "events":{"click":"___TripleTownTurnPanel_FilterButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":83,
                                    "width":35,
                                    "height":22,
                                    "styleName":"BtnStdGreen"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"_TripleTownTurnPanel_Canvas3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":12,
                           "y":110,
                           "styleName":"RoundedGradientBorder",
                           "width":205,
                           "height":100,
                           "clipContent":false,
                           "verticalScrollPolicy":"off",
                           "horizontalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "id":"_TripleTownTurnPanel_Label5",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.color = 16776960;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":10};
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"chanceText",
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                                 this.color = 16777215;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":35};
                              }
                           }),new UIComponentDescriptor({
                              "type":FilterButton,
                              "id":"_TripleTownTurnPanel_FilterButton2",
                              "events":{"click":"___TripleTownTurnPanel_FilterButton2_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":66,
                                    "width":35,
                                    "height":22,
                                    "styleName":"BtnStdGreen"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":FilterButton,
                              "id":"_TripleTownTurnPanel_FilterButton3",
                              "events":{"click":"___TripleTownTurnPanel_FilterButton3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":45,
                                    "y":66,
                                    "width":35,
                                    "height":22,
                                    "styleName":"BtnStdGreen"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":FilterButton,
                              "id":"_TripleTownTurnPanel_FilterButton4",
                              "events":{"click":"___TripleTownTurnPanel_FilterButton4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":80,
                                    "y":66,
                                    "width":35,
                                    "height":22,
                                    "styleName":"BtnStdGreen"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":FilterButton,
                              "id":"_TripleTownTurnPanel_FilterButton5",
                              "events":{"click":"___TripleTownTurnPanel_FilterButton5_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":115,
                                    "y":66,
                                    "width":82,
                                    "height":22,
                                    "styleName":"BtnStdGreen"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"showHideBtn",
                     "events":{"click":"__showHideBtn_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":79,
                           "width":12,
                           "height":25,
                           "styleName":"BtnHideButtons"
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         CONST_TURN_DICT = [1,1,2,3,3];
         CONST_DIR_NAME = {
            1:1,
            3:4,
            5:3,
            7:2
         };
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.right = "0";
            this.verticalCenter = "0";
         };
         this.width = 217;
         this.height = 210;
         this.clipContent = false;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TripleTownTurnPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showHideBtn() : Button
      {
         return this._1300750333showHideBtn;
      }
      
      private function turnHandler(param1:int) : void
      {
         _core.remote.call("tripleTownChangeTurn",null,param1);
      }
      
      public function set chanceText(param1:Label) : void
      {
         var _loc2_:Object = this._2048529025chanceText;
         if(_loc2_ !== param1)
         {
            this._2048529025chanceText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chanceText",_loc2_,param1));
         }
      }
      
      public function set turnText(param1:Label) : void
      {
         var _loc2_:Object = this._134198090turnText;
         if(_loc2_ !== param1)
         {
            this._134198090turnText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"turnText",_loc2_,param1));
         }
      }
      
      public function updateView(param1:Object) : void
      {
         this.tripleHideUI();
         var _loc2_:int = param1.turnTime % CONST_TURN_DICT.length;
         var _loc3_:int = param1.turnType ? int(param1.turnType) : int(CONST_TURN_DICT[_loc2_]);
         var _loc4_:String = Language.TRIPLE_TOWN_PANEL[26][_loc3_];
         turnText.htmlText = LanguageUtil.replace(Language.TRIPLE_TOWN_PANEL[18],{
            "num":param1.turnAfter,
            "name":_loc4_
         });
         var _loc5_:int = int(param1.npcDir);
         if(_loc3_ == 1)
         {
            _loc5_ = Number(param1.npcDir) + 6;
         }
         else if(_loc3_ == 2)
         {
            _loc5_ = Number(param1.npcDir) + 4;
         }
         else if(_loc3_ == 3)
         {
            _loc5_ = Number(param1.npcDir) + 2;
         }
         _loc5_ %= CONST_DIR_TOTAL;
         dirText.htmlText = LanguageUtil.replace(Language.TRIPLE_TOWN_PANEL[17],{"dir":CONST_DIR_NAME[_loc5_]});
         chanceText.htmlText = LanguageUtil.replace(Language.TRIPLE_TOWN_PANEL[21],{"num":param1.turnChance});
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TripleTownTurnPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TripleTownTurnPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TripleTownTurnPanelWatcherSetupUtil");
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
      public function get chanceText() : Label
      {
         return this._2048529025chanceText;
      }
      
      public function ___TripleTownTurnPanel_FilterButton2_click(param1:MouseEvent) : void
      {
         turnHandler(1);
      }
      
      [Bindable(event="propertyChange")]
      private function get _isHide() : Boolean
      {
         return this._1528018603_isHide;
      }
      
      public function set dirText(param1:Label) : void
      {
         var _loc2_:Object = this._1670000474dirText;
         if(_loc2_ !== param1)
         {
            this._1670000474dirText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dirText",_loc2_,param1));
         }
      }
      
      private function _TripleTownTurnPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return !_isHide;
         },function(param1:Boolean):void
         {
            _TripleTownTurnPanel_Canvas2.visible = param1;
         },"_TripleTownTurnPanel_Canvas2.visible");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownTurnPanel_Label1.text = param1;
         },"_TripleTownTurnPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownTurnPanel_Label1.filters = param1;
         },"_TripleTownTurnPanel_Label1.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            turnText.filters = param1;
         },"turnText.filters");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            dirText.filters = param1;
         },"dirText.filters");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownTurnPanel_Label4.htmlText = param1;
         },"_TripleTownTurnPanel_Label4.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownTurnPanel_Label4.filters = param1;
         },"_TripleTownTurnPanel_Label4.filters");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownTurnPanel_FilterButton1.label = param1;
         },"_TripleTownTurnPanel_FilterButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownTurnPanel_FilterButton1.filters = param1;
         },"_TripleTownTurnPanel_FilterButton1.filters");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !_isHide;
         },function(param1:Boolean):void
         {
            _TripleTownTurnPanel_Canvas3.visible = param1;
         },"_TripleTownTurnPanel_Canvas3.visible");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownTurnPanel_Label5.text = param1;
         },"_TripleTownTurnPanel_Label5.text");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownTurnPanel_Label5.filters = param1;
         },"_TripleTownTurnPanel_Label5.filters");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            chanceText.filters = param1;
         },"chanceText.filters");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownTurnPanel_FilterButton2.label = param1;
         },"_TripleTownTurnPanel_FilterButton2.label");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownTurnPanel_FilterButton2.filters = param1;
         },"_TripleTownTurnPanel_FilterButton2.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownTurnPanel_FilterButton3.label = param1;
         },"_TripleTownTurnPanel_FilterButton3.label");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownTurnPanel_FilterButton3.filters = param1;
         },"_TripleTownTurnPanel_FilterButton3.filters");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownTurnPanel_FilterButton4.label = param1;
         },"_TripleTownTurnPanel_FilterButton4.label");
         result[17] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownTurnPanel_FilterButton4.filters = param1;
         },"_TripleTownTurnPanel_FilterButton4.filters");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownTurnPanel_FilterButton5.label = param1;
         },"_TripleTownTurnPanel_FilterButton5.label");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownTurnPanel_FilterButton5.filters = param1;
         },"_TripleTownTurnPanel_FilterButton5.filters");
         result[20] = binding;
         return result;
      }
      
      public function ___TripleTownTurnPanel_FilterButton4_click(param1:MouseEvent) : void
      {
         turnHandler(2);
      }
      
      private function _TripleTownTurnPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = !_isHide;
         _loc1_ = Language.TRIPLE_TOWN_PANEL[16];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[27];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[19];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = !_isHide;
         _loc1_ = Language.TRIPLE_TOWN_PANEL[20];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[22];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[23];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[24];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[25];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
      }
      
      [Bindable(event="propertyChange")]
      public function get turnText() : Label
      {
         return this._134198090turnText;
      }
      
      public function tripleHideUI(param1:Boolean = true) : void
      {
         if(_isHideUI == param1)
         {
            return;
         }
         _isHideUI = param1;
         this.visible = param1;
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_SYS);
         _loc2_.sysBtnBar.visible = !param1;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         _loc2_.visible = !param1;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
         if(param1)
         {
            _loc2_.hide();
         }
         else
         {
            _loc2_.show();
         }
         _loc2_ = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         _loc2_.visible = !param1;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_ACTIVITY);
         _loc2_.hideIcons(param1);
      }
      
      private function set _isHide(param1:Boolean) : void
      {
         var _loc2_:Object = this._1528018603_isHide;
         if(_loc2_ !== param1)
         {
            this._1528018603_isHide = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_isHide",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dirText() : Label
      {
         return this._1670000474dirText;
      }
      
      public function ___TripleTownTurnPanel_FilterButton1_click(param1:MouseEvent) : void
      {
         refreshHandler(param1);
      }
      
      private function showHideHandler(param1:Event) : void
      {
         _isHide = !_isHide;
         if(_isHide)
         {
            showHideBtn.x = 205;
            showHideBtn.styleName = "BtnShowButtons";
         }
         else
         {
            showHideBtn.x = 0;
            showHideBtn.styleName = "BtnHideButtons";
         }
      }
      
      public function ___TripleTownTurnPanel_FilterButton5_click(param1:MouseEvent) : void
      {
         turnHandler(4);
      }
      
      private function refreshHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         _core.remote.call("tripleTownSyncTrunInfo",null);
      }
      
      public function ___TripleTownTurnPanel_FilterButton3_click(param1:MouseEvent) : void
      {
         turnHandler(3);
      }
      
      public function __showHideBtn_click(param1:MouseEvent) : void
      {
         showHideHandler(param1);
      }
      
      public function set showHideBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1300750333showHideBtn;
         if(_loc2_ !== param1)
         {
            this._1300750333showHideBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHideBtn",_loc2_,param1));
         }
      }
   }
}

