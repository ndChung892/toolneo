package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
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
   import mx.containers.Canvas;
   import mx.containers.Tile;
   import mx.controls.Alert;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FarmMaster extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _FarmMaster_IntroText1:IntroText;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      public var _FarmMaster_Image2:Image;
      
      private var _564289872curLastNum:Label;
      
      public var _FarmMaster_Label2:Label;
      
      private var _938645478rabbit:Image;
      
      private var _2141875252cubeContainer:Tile;
      
      private var _1835012049todayScore:Label;
      
      public var _FarmMaster_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private const _sourceArr:Array = [4130220000715,4130220000712,4130220000714,4130220000713];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":560,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FarmMaster_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":400,
                        "height":370,
                        "x":9,
                        "y":36,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Tile,
                           "id":"cubeContainer",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 0;
                              this.verticalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":360,
                                 "height":360,
                                 "y":5,
                                 "x":4
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"rabbit",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___FarmMaster_BasicDelayButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdGreen",
                                 "label":"Dừng",
                                 "x":364,
                                 "y":341
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":140,
                        "height":173,
                        "x":412,
                        "y":35,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"todayScore",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":8};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_FarmMaster_Label2",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":39};
                           }
                        }),new UIComponentDescriptor({
                           "type":HRule,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":1,
                                 "y":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_FarmMaster_Image2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":45,
                                 "y":65,
                                 "mouseEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"curLastNum",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":128};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___FarmMaster_BasicDelayButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnAdd",
                                 "x":110,
                                 "y":128
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":140,
                        "height":190,
                        "x":412,
                        "y":216,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"_FarmMaster_IntroText1",
                           "stylesFactory":function():void
                           {
                              this.left = "5";
                              this.top = "5";
                              this.right = "5";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":180,
                                 "mouseEnabled":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function FarmMaster()
      {
         super();
         mx_internal::_document = this;
         this.width = 560;
         this.height = 430;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FarmMaster._watcherSetupUtil = param1;
      }
      
      private function onSetTimes(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            _loc2_ = int(param1["cnum"]);
            _loc3_ = int(param1["lnum"]);
            curLastNum.text = Language.ANNIVERSARY_LANG[7].toString().replace("{cnum}",_loc2_).replace("{lnum}",_loc3_);
         }
      }
      
      public function ___FarmMaster_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         addTimes();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FarmMaster = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FarmMaster_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FarmMasterWatcherSetupUtil");
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
      public function get rabbit() : Image
      {
         return this._938645478rabbit;
      }
      
      public function set todayScore(param1:Label) : void
      {
         var _loc2_:Object = this._1835012049todayScore;
         if(_loc2_ !== param1)
         {
            this._1835012049todayScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayScore",_loc2_,param1));
         }
      }
      
      private function addTimes() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("addFarmMasterTimes",new Responder(onSetTimes));
            }
         };
         Alert.show(Language.ANNIVERSARY_LANG[10].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set cubeContainer(param1:Tile) : void
      {
         var _loc2_:Object = this._2141875252cubeContainer;
         if(_loc2_ !== param1)
         {
            this._2141875252cubeContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cubeContainer",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         _core.remote.call("getFarmMasterData",new Responder(onGetData));
      }
      
      [Bindable(event="propertyChange")]
      public function get curLastNum() : Label
      {
         return this._564289872curLastNum;
      }
      
      public function set rabbit(param1:Image) : void
      {
         var _loc2_:Object = this._938645478rabbit;
         if(_loc2_ !== param1)
         {
            this._938645478rabbit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rabbit",_loc2_,param1));
         }
      }
      
      private function onGetData(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:FarmMasterCube = null;
         if(param1)
         {
            visible = true;
            if(cubeContainer.numChildren > 0)
            {
               cubeContainer.removeAllChildren();
            }
            _loc2_ = param1["map"];
            _loc3_ = 0;
            while(_loc3_ < 7)
            {
               _loc7_ = 0;
               while(_loc7_ < 7)
               {
                  _loc8_ = new FarmMasterCube();
                  _loc8_.type = _loc2_[_loc3_][_loc7_];
                  _loc8_.rowIndex = _loc3_;
                  _loc8_.columnIndex = _loc7_;
                  _loc8_.clickFunc = cubeClick;
                  _loc8_.name = "fmCube" + _loc3_ + _loc7_;
                  cubeContainer.addChild(_loc8_);
                  _loc7_++;
               }
               _loc3_++;
            }
            rabbit.source = ResManager.getIconUrl(_sourceArr[Number(param1["dir"])]);
            rabbit.x = param1["pos"][1] * 50;
            rabbit.y = param1["pos"][0] * 50;
            _loc4_ = int(param1["lastNum"]);
            _loc5_ = int(param1["totalNum"]);
            curLastNum.text = Language.ANNIVERSARY_LANG[7].toString().replace("{cnum}",_loc4_).replace("{lnum}",_loc5_);
            _loc6_ = int(param1["score"]);
            todayScore.text = todayScore.text.replace("{num}",_loc6_);
         }
      }
      
      public function ___FarmMaster_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         endGame();
      }
      
      [Bindable(event="propertyChange")]
      public function get todayScore() : Label
      {
         return this._1835012049todayScore;
      }
      
      [Bindable(event="propertyChange")]
      public function get cubeContainer() : Tile
      {
         return this._2141875252cubeContainer;
      }
      
      private function _FarmMaster_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FarmMaster_BasicTitleCanvas1.text = param1;
         },"_FarmMaster_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            todayScore.text = param1;
         },"todayScore.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FarmMaster_Label2.text = param1;
         },"_FarmMaster_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000720);
         },function(param1:Object):void
         {
            _FarmMaster_Image2.source = param1;
         },"_FarmMaster_Image2.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curLastNum.text = param1;
         },"curLastNum.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FarmMaster_IntroText1.htmlText = param1;
         },"_FarmMaster_IntroText1.htmlText");
         result[5] = binding;
         return result;
      }
      
      public function cubeClick(param1:Event) : void
      {
         var cube:FarmMasterCube = null;
         var func:Function = null;
         var event:Event = param1;
         cube = event.target as FarmMasterCube;
         if(cube.type == 3)
         {
            _core.remote.call("openUpWasteland",new Responder(onGetData),cube.rowIndex,cube.columnIndex);
         }
         if(cube.type == 2)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("clearRock",new Responder(onGetData),cube.rowIndex,cube.columnIndex);
               }
            };
            Alert.show(Language.ANNIVERSARY_LANG[6].toString(),"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function set curLastNum(param1:Label) : void
      {
         var _loc2_:Object = this._564289872curLastNum;
         if(_loc2_ !== param1)
         {
            this._564289872curLastNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curLastNum",_loc2_,param1));
         }
      }
      
      private function _FarmMaster_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ANNIVERSARY_LANG[5];
         _loc1_ = Language.ANNIVERSARY_LANG[8];
         _loc1_ = Language.ANNIVERSARY_LANG[9];
         _loc1_ = ResManager.getIconUrl(4130220000720);
         _loc1_ = Language.ANNIVERSARY_LANG[7];
         _loc1_ = Language.ANNIVERSARY_LANG[22];
      }
      
      public function endGame() : void
      {
         _core.remote.call("endFarmMaster",new Responder(setGameScore));
      }
      
      private function setGameScore(param1:int) : void
      {
         if(param1)
         {
            todayScore.text = Language.ANNIVERSARY_LANG[8].toString().replace("{num}",param1);
         }
      }
   }
}

