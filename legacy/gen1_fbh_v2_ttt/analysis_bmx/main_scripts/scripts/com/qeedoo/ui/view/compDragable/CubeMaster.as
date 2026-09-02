package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CubeMasterButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.MagicCell;
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
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CubeMaster extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var smallCubeBMD:Object = {};
      
      public static var bigCubeBMD:Object = {};
      
      public static var buttonBMD:Object = {};
      
      public static var buttonLightBMD:Object = {};
      
      private static const colorStr:Array = ["Blue","Green","Purple","Red","White"];
      
      private static const dirStr:Array = ["shang","xia","zuo","you"];
      
      public static var decoProxy:EventDispatcher = new EventDispatcher();
      
      private var big:Array = [[],[],[],[],[]];
      
      private var smallBottom:Array = [[],[],[],[],[]];
      
      private var loader:Loader;
      
      private var _type:int = -1;
      
      private var _564289872curLastNum:Label;
      
      private var _1835012049todayScore:Label;
      
      private var _2132428494changeCell:MagicCell;
      
      public var _CubeMaster_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1219476858smallUITop:Canvas;
      
      private var loadCompleteFlag:Boolean = false;
      
      private var _1404137631bigContainer:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _endCount:int = 0;
      
      private var _610842367smallUIRight:Canvas;
      
      private var smallRight:Array = [[],[],[]];
      
      private var _core:Core = Core.getInstance();
      
      private var _409271709totalContainer:Canvas;
      
      private var _state:uint = 0;
      
      private var _851171198smallUILeft:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      private var smallLeft:Array = [[],[],[]];
      
      private var _loadCid:int = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var smallTop:Array = [[],[],[],[],[]];
      
      private var _index:int = -1;
      
      private var _lastNum:int = 0;
      
      public var _CubeMaster_IntroText1:IntroText;
      
      mx_internal var _bindings:Array = [];
      
      private var _2086596582smallUIBottom:Canvas;
      
      private var _direc:int = -1;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":560,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_CubeMaster_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"totalContainer",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":400,
                        "height":375,
                        "x":9,
                        "y":36,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_CubeMaster_Image1"
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"bigContainer",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":275,
                                 "height":275,
                                 "x":62.5,
                                 "y":51
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"smallUILeft",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":130,
                                 "x":17.5,
                                 "y":123.5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"smallUIRight",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":130,
                                 "x":282.5,
                                 "y":123.5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"smallUITop",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":130,
                                 "height":100,
                                 "x":135,
                                 "y":6
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"smallUIBottom",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":130,
                                 "height":100,
                                 "x":135,
                                 "y":271
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"curLastNum",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                              this.horizontalCenter = "127";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":7};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___CubeMaster_BasicDelayButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdGreen",
                                 "label":"Xác nhận",
                                 "x":302.5,
                                 "y":24
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___CubeMaster_BasicDelayButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnAdd",
                                 "x":367,
                                 "y":6
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
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":39,
                                 "text":"Đổi ô"
                              };
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
                           "type":MagicCell,
                           "id":"changeCell",
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
                           "type":BasicDelayButton,
                           "events":{"click":"___CubeMaster_BasicDelayButton3_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "label":"Đổi màu",
                                 "y":141,
                                 "styleName":"BtnStdGreen"
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
                           "id":"_CubeMaster_IntroText1",
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
      
      public var _CubeMaster_Image1:Image;
      
      public function CubeMaster()
      {
         super();
         mx_internal::_document = this;
         this.width = 560;
         this.height = 430;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CubeMaster_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CubeMaster._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get smallUIRight() : Canvas
      {
         return this._610842367smallUIRight;
      }
      
      public function set smallUIRight(param1:Canvas) : void
      {
         var _loc2_:Object = this._610842367smallUIRight;
         if(_loc2_ !== param1)
         {
            this._610842367smallUIRight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallUIRight",_loc2_,param1));
         }
      }
      
      public function set smallUILeft(param1:Canvas) : void
      {
         var _loc2_:Object = this._851171198smallUILeft;
         if(_loc2_ !== param1)
         {
            this._851171198smallUILeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallUILeft",_loc2_,param1));
         }
      }
      
      public function ___CubeMaster_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         endGame();
      }
      
      public function showPanel() : void
      {
         getCubeRes();
         if(_loadCid != _core.cid)
         {
            _loadCid = _core.cid;
            _endCount = 0;
         }
         if(loadCompleteFlag)
         {
            _core.remote.call("getMagicCubeData",new Responder(onGetData));
         }
      }
      
      private function addTimes() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("addmoveMagicCubeTimes",new Responder(onGetData));
            }
         };
         Alert.show(Language.ANNIVERSARY_LANG[21].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get changeCell() : MagicCell
      {
         return this._2132428494changeCell;
      }
      
      public function set totalContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._409271709totalContainer;
         if(_loc2_ !== param1)
         {
            this._409271709totalContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalContainer",_loc2_,param1));
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:Class = null;
         var _loc5_:MovieClip = null;
         var _loc6_:BitmapData = null;
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            _loc3_ = "cube" + colorStr[_loc2_] + "Small";
            _loc4_ = loader.contentLoaderInfo.applicationDomain.getDefinition(_loc3_) as Class;
            _loc5_ = new _loc4_();
            _loc6_ = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
            _loc6_.draw(_loc5_);
            smallCubeBMD[_loc2_] = _loc6_;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            _loc3_ = "cube" + colorStr[_loc2_] + "Big";
            _loc4_ = loader.contentLoaderInfo.applicationDomain.getDefinition(_loc3_) as Class;
            _loc5_ = new _loc4_();
            _loc6_ = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
            _loc6_.draw(_loc5_);
            bigCubeBMD[_loc2_] = _loc6_;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc3_ = dirStr[_loc2_];
            _loc4_ = loader.contentLoaderInfo.applicationDomain.getDefinition(_loc3_) as Class;
            _loc5_ = new _loc4_();
            _loc6_ = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
            _loc6_.draw(_loc5_);
            buttonBMD[_loc2_] = _loc6_;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc3_ = dirStr[_loc2_] + "L";
            _loc4_ = loader.contentLoaderInfo.applicationDomain.getDefinition(_loc3_) as Class;
            _loc5_ = new _loc4_();
            _loc6_ = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
            _loc6_.draw(_loc5_);
            buttonLightBMD[_loc2_] = _loc6_;
            _loc2_++;
         }
         loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         loadCompleteFlag = true;
         _core.remote.call("getMagicCubeData",new Responder(onGetData));
      }
      
      public function onGetData(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:UIComponent = null;
         var _loc8_:int = 0;
         var _loc9_:UIComponent = null;
         var _loc10_:UIComponent = null;
         var _loc11_:int = 0;
         var _loc12_:UIComponent = null;
         var _loc13_:UIComponent = null;
         var _loc14_:int = 0;
         var _loc15_:UIComponent = null;
         var _loc16_:UIComponent = null;
         var _loc17_:int = 0;
         var _loc18_:UIComponent = null;
         var _loc19_:UIComponent = null;
         var _loc20_:int = 0;
         var _loc21_:UIComponent = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:int = 0;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:MagicCell = null;
         var _loc35_:int = 0;
         var _loc36_:int = 0;
         var _loc37_:int = 0;
         var _loc38_:int = 0;
         var _loc39_:CubeMasterButton = null;
         if(param1)
         {
            visible = true;
            while(bigContainer.numChildren > 0)
            {
               bigContainer.removeChildAt(bigContainer.numChildren - 1);
            }
            while(smallUILeft.numChildren > 0)
            {
               smallUILeft.removeChildAt(smallUILeft.numChildren - 1);
            }
            while(smallUIRight.numChildren > 0)
            {
               smallUIRight.removeChildAt(smallUIRight.numChildren - 1);
            }
            while(smallUITop.numChildren > 0)
            {
               smallUITop.removeChildAt(smallUITop.numChildren - 1);
            }
            while(smallBottom.numChildren > 0)
            {
               smallBottom.removeChildAt(smallBottom.numChildren - 1);
            }
            _lastNum = param1.lastNum;
            _state = int(param1["state"]);
            _loc2_ = param1.middle;
            _loc3_ = param1.left;
            _loc4_ = param1.right;
            _loc5_ = param1.top;
            _loc6_ = param1.bottom;
            _loc7_ = new UIComponent();
            bigContainer.addChild(_loc7_);
            _loc8_ = 0;
            while(_loc8_ < 5)
            {
               _loc33_ = 0;
               while(_loc33_ < 5)
               {
                  if(!(_loc8_ == 0 && _loc33_ == 0 || _loc8_ == 0 && _loc33_ == 4 || _loc8_ == 4 && _loc33_ == 0 || _loc8_ == 4 && _loc33_ == 4))
                  {
                     _loc34_ = new MagicCell();
                     _loc34_.type = 2;
                     _loc34_.register();
                     _loc34_.x = _loc34_.width * _loc33_;
                     _loc34_.y = _loc34_.height * _loc8_;
                     big[_loc8_][_loc33_] = _loc34_;
                     if(_loc33_ > 0 && _loc33_ < 4 && _loc8_ > 0 && _loc8_ < 4)
                     {
                        _loc34_.color = _loc2_[_loc8_ - 1][_loc33_ - 1];
                        _loc34_.row = _loc8_ - 1;
                        _loc34_.col = _loc33_ - 1;
                     }
                     else if(_loc8_ == 0 && _loc33_ >= 1 && _loc33_ < 4)
                     {
                        _loc34_.color = _loc5_[2][_loc33_ - 1];
                     }
                     else if(_loc8_ == 4 && _loc33_ >= 1 && _loc33_ < 4)
                     {
                        _loc34_.color = _loc6_[0][_loc33_ - 1];
                     }
                     else if(_loc33_ == 0 && _loc8_ >= 1 && _loc8_ < 4)
                     {
                        _loc34_.color = _loc3_[_loc8_ - 1][2];
                     }
                     else if(_loc33_ == 4 && _loc8_ >= 1 && _loc8_ < 4)
                     {
                        _loc34_.color = _loc4_[_loc8_ - 1][0];
                     }
                     _loc7_.addChild(_loc34_);
                  }
                  _loc33_++;
               }
               _loc8_++;
            }
            _loc9_ = new UIComponent();
            _loc9_.graphics.beginFill(0,1);
            _loc9_.graphics.drawRect(55,55,165,165);
            _loc9_.graphics.endFill();
            _loc7_.mask = _loc9_;
            bigContainer.addChild(_loc9_);
            _loc10_ = new UIComponent();
            smallUILeft.addChild(_loc10_);
            _loc11_ = 0;
            while(_loc11_ < 3)
            {
               _loc35_ = 0;
               while(_loc35_ < 5)
               {
                  _loc34_ = new MagicCell();
                  _loc34_.type = 1;
                  _loc34_.register();
                  _loc34_.x = _loc34_.width * _loc35_;
                  _loc34_.y = 55 * _loc11_;
                  smallLeft[_loc11_][_loc35_] = _loc34_;
                  if(_loc35_ < 4 && _loc35_ > 0)
                  {
                     _loc34_.color = _loc3_[_loc11_][_loc35_ - 1];
                  }
                  else if(_loc35_ == 0)
                  {
                     _loc34_.color = _loc4_[_loc11_][2];
                  }
                  else if(_loc35_ == 4)
                  {
                     _loc34_.color = _loc2_[_loc11_][0];
                  }
                  _loc10_.addChild(_loc34_);
                  _loc35_++;
               }
               _loc11_++;
            }
            _loc12_ = new UIComponent();
            _loc12_.graphics.beginFill(0,1);
            _loc12_.graphics.drawRect(20,0,60,130);
            _loc12_.graphics.endFill();
            _loc10_.mask = _loc12_;
            smallUILeft.addChild(_loc12_);
            _loc13_ = new UIComponent();
            smallUIRight.addChild(_loc13_);
            _loc14_ = 0;
            while(_loc14_ < 3)
            {
               _loc36_ = 0;
               while(_loc36_ < 5)
               {
                  _loc34_ = new MagicCell();
                  _loc34_.type = 1;
                  _loc34_.register();
                  _loc34_.x = _loc34_.width * _loc36_;
                  _loc34_.y = 55 * _loc14_;
                  smallRight[_loc14_][_loc36_] = _loc34_;
                  if(_loc36_ < 4 && _loc36_ > 0)
                  {
                     _loc34_.color = _loc4_[_loc14_][_loc36_ - 1];
                  }
                  else if(_loc36_ == 4)
                  {
                     _loc34_.color = _loc3_[_loc14_][0];
                  }
                  else if(_loc36_ == 0)
                  {
                     _loc34_.color = _loc2_[_loc14_][2];
                  }
                  _loc13_.addChild(_loc34_);
                  _loc36_++;
               }
               _loc14_++;
            }
            _loc15_ = new UIComponent();
            _loc15_.graphics.beginFill(0,1);
            _loc15_.graphics.drawRect(20,0,60,130);
            _loc15_.graphics.endFill();
            _loc13_.mask = _loc15_;
            smallUIRight.addChild(_loc15_);
            _loc16_ = new UIComponent();
            smallUITop.addChild(_loc16_);
            _loc17_ = 0;
            while(_loc17_ < 5)
            {
               _loc37_ = 0;
               while(_loc37_ < 3)
               {
                  _loc34_ = new MagicCell();
                  _loc34_.type = 1;
                  _loc34_.register();
                  _loc34_.x = 55 * _loc37_;
                  _loc34_.y = 20 * _loc17_;
                  smallTop[_loc17_][_loc37_] = _loc34_;
                  if(_loc17_ < 4 && _loc17_ > 0)
                  {
                     _loc34_.color = _loc5_[_loc17_ - 1][_loc37_];
                  }
                  else if(_loc17_ == 4)
                  {
                     _loc34_.color = _loc2_[0][_loc37_];
                  }
                  else if(_loc17_ == 0)
                  {
                     _loc34_.color = _loc6_[2][_loc37_];
                  }
                  _loc16_.addChild(_loc34_);
                  _loc37_++;
               }
               _loc17_++;
            }
            _loc18_ = new UIComponent();
            _loc18_.graphics.beginFill(0,1);
            _loc18_.graphics.drawRect(0,20,130,60);
            _loc18_.graphics.endFill();
            _loc16_.mask = _loc18_;
            smallUITop.addChild(_loc18_);
            _loc19_ = new UIComponent();
            smallUIBottom.addChild(_loc19_);
            _loc20_ = 0;
            while(_loc20_ < 5)
            {
               _loc38_ = 0;
               while(_loc38_ < 3)
               {
                  _loc34_ = new MagicCell();
                  _loc34_.type = 1;
                  _loc34_.register();
                  _loc34_.x = 55 * _loc38_;
                  _loc34_.y = 20 * _loc20_;
                  smallBottom[_loc20_][_loc38_] = _loc34_;
                  if(_loc20_ < 4 && _loc20_ > 0)
                  {
                     _loc34_.color = _loc6_[_loc20_ - 1][_loc38_];
                  }
                  else if(_loc20_ == 0)
                  {
                     _loc34_.color = _loc2_[2][_loc38_];
                  }
                  else if(_loc20_ == 4)
                  {
                     _loc34_.color = _loc5_[0][_loc38_];
                  }
                  _loc19_.addChild(_loc34_);
                  _loc38_++;
               }
               _loc20_++;
            }
            _loc21_ = new UIComponent();
            _loc21_.graphics.beginFill(0,1);
            _loc21_.graphics.drawRect(0,20,130,60);
            _loc21_.graphics.endFill();
            _loc19_.mask = _loc21_;
            smallUIBottom.addChild(_loc21_);
            _loc22_ = 0;
            while(_loc22_ < 3)
            {
               _loc39_ = new CubeMasterButton();
               _loc39_.type = 2;
               _loc39_.index = _loc22_;
               _loc39_.x = bigContainer.x + 55 - _loc39_.width;
               _loc39_.y = bigContainer.y + 55 * (_loc22_ + 1);
               totalContainer.addChild(_loc39_);
               _loc22_++;
            }
            _loc23_ = 0;
            while(_loc23_ < 3)
            {
               _loc39_ = new CubeMasterButton();
               _loc39_.type = 2;
               _loc39_.index = _loc23_;
               _loc39_.x = bigContainer.x + 4 * 55;
               _loc39_.y = bigContainer.y + 55 * (_loc23_ + 1);
               totalContainer.addChild(_loc39_);
               _loc23_++;
            }
            _loc24_ = 0;
            while(_loc24_ < 3)
            {
               _loc39_ = new CubeMasterButton();
               _loc39_.type = 3;
               _loc39_.index = _loc24_;
               _loc39_.x = bigContainer.x + 55 - _loc39_.width;
               _loc39_.y = bigContainer.y + 55 * (_loc24_ + 1) + _loc39_.height;
               totalContainer.addChild(_loc39_);
               _loc24_++;
            }
            _loc25_ = 0;
            while(_loc25_ < 3)
            {
               _loc39_ = new CubeMasterButton();
               _loc39_.type = 3;
               _loc39_.index = _loc25_;
               _loc39_.x = bigContainer.x + 4 * 55;
               _loc39_.y = bigContainer.y + 55 * (_loc25_ + 1) + _loc39_.height;
               totalContainer.addChild(_loc39_);
               _loc25_++;
            }
            _loc26_ = 0;
            while(_loc26_ < 3)
            {
               _loc39_ = new CubeMasterButton();
               _loc39_.type = 0;
               _loc39_.index = _loc26_;
               _loc39_.x = bigContainer.x + 55 * (_loc26_ + 1);
               _loc39_.y = bigContainer.y + 55 - _loc39_.height;
               totalContainer.addChild(_loc39_);
               _loc26_++;
            }
            _loc27_ = 0;
            while(_loc27_ < 3)
            {
               _loc39_ = new CubeMasterButton();
               _loc39_.type = 0;
               _loc39_.index = _loc27_;
               _loc39_.x = bigContainer.x + 55 * (_loc27_ + 1);
               _loc39_.y = bigContainer.y + 55 * 4;
               totalContainer.addChild(_loc39_);
               _loc27_++;
            }
            _loc28_ = 0;
            while(_loc28_ < 3)
            {
               _loc39_ = new CubeMasterButton();
               _loc39_.type = 1;
               _loc39_.index = _loc28_;
               _loc39_.x = bigContainer.x + 55 * (_loc28_ + 1) + _loc39_.width;
               _loc39_.y = bigContainer.y + 55 - _loc39_.height;
               totalContainer.addChild(_loc39_);
               _loc28_++;
            }
            _loc29_ = 0;
            while(_loc29_ < 3)
            {
               _loc39_ = new CubeMasterButton();
               _loc39_.type = 1;
               _loc39_.index = _loc29_;
               _loc39_.x = bigContainer.x + 55 * (_loc29_ + 1) + _loc39_.width;
               _loc39_.y = bigContainer.y + 55 * 4;
               totalContainer.addChild(_loc39_);
               _loc29_++;
            }
            _loc30_ = int(param1["lastNum"]);
            _loc31_ = int(param1["totalNum"]);
            curLastNum.text = Language.ANNIVERSARY_LANG[7].toString().replace("{cnum}",_loc30_).replace("{lnum}",_loc31_);
            _loc32_ = int(param1["score"]);
            todayScore.text = todayScore.text.replace("{num}",_loc32_);
            changeCell.type = 2;
            changeCell.color = int(param1["replaceCube"]);
         }
      }
      
      public function ___CubeMaster_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         addTimes();
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
      
      [Bindable(event="propertyChange")]
      public function get bigContainer() : Canvas
      {
         return this._1404137631bigContainer;
      }
      
      public function set changeCell(param1:MagicCell) : void
      {
         var _loc2_:Object = this._2132428494changeCell;
         if(_loc2_ !== param1)
         {
            this._2132428494changeCell = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeCell",_loc2_,param1));
         }
      }
      
      public function endGame() : void
      {
         _core.remote.call("endMagicCubeGame",new Responder(setGameScore));
         _state = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get smallUITop() : Canvas
      {
         return this._1219476858smallUITop;
      }
      
      private function setGameScore(param1:int) : void
      {
         if(param1)
         {
            todayScore.text = Language.ANNIVERSARY_LANG[8].toString().replace("{num}",param1);
         }
      }
      
      private function _CubeMaster_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ANNIVERSARY_LANG[12];
         _loc1_ = ResManager.getIconUrl(4130220000722);
         _loc1_ = Language.ANNIVERSARY_LANG[7];
         _loc1_ = Language.ANNIVERSARY_LANG[8];
         _loc1_ = Language.ANNIVERSARY_LANG[24];
      }
      
      [Bindable(event="propertyChange")]
      public function get smallUILeft() : Canvas
      {
         return this._851171198smallUILeft;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CubeMaster = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CubeMaster_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CubeMasterWatcherSetupUtil");
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
      
      public function ___CubeMaster_BasicDelayButton3_click(param1:MouseEvent) : void
      {
         changeMagicCube();
      }
      
      private function register() : void
      {
         CubeMaster.decoProxy.addEventListener(GameEvent.CUBE_MOVE_END,onCubeMoveEnd);
      }
      
      [Bindable(event="propertyChange")]
      public function get totalContainer() : Canvas
      {
         return this._409271709totalContainer;
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
      
      [Bindable(event="propertyChange")]
      public function get curLastNum() : Label
      {
         return this._564289872curLastNum;
      }
      
      public function changeMagicCube() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("changeMagicCube",new Responder(onGetData));
            }
         };
         Alert.show(Language.ANNIVERSARY_LANG[18].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function moveCube(param1:uint, param2:uint, param3:uint) : void
      {
         var _loc4_:Object = null;
         var _loc5_:MagicCell = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         if(!_state)
         {
            _core.sysMidNote("Sự kiện đã kết thúc");
            return;
         }
         if(_lastNum <= 0)
         {
            _core.sysMidNote("Không đủ lượt");
            return;
         }
         _type = param1;
         _index = param2;
         _direc = param3;
         switch(param1)
         {
            case 0:
               switch(param3)
               {
                  case 0:
                     for(_loc4_ in smallLeft[param2])
                     {
                        _loc5_ = smallLeft[param2][_loc4_] as MagicCell;
                        _loc5_.moveType = 1;
                        _loc5_.moving = true;
                     }
                     for(_loc6_ in big[param2 + 1])
                     {
                        _loc5_ = big[param2 + 1][_loc6_] as MagicCell;
                        _loc5_.moveType = 1;
                        _loc5_.moving = true;
                     }
                     for(_loc7_ in smallRight[param2])
                     {
                        _loc5_ = smallRight[param2][_loc7_] as MagicCell;
                        _loc5_.moveType = 1;
                        _loc5_.moving = true;
                     }
                     break;
                  case 1:
                     for(_loc8_ in smallLeft[param2])
                     {
                        _loc5_ = smallLeft[param2][_loc8_] as MagicCell;
                        _loc5_.moveType = 0;
                        _loc5_.moving = true;
                     }
                     for(_loc9_ in big[param2 + 1])
                     {
                        _loc5_ = big[param2 + 1][_loc9_] as MagicCell;
                        _loc5_.moveType = 0;
                        _loc5_.moving = true;
                     }
                     for(_loc10_ in smallRight[param2])
                     {
                        _loc5_ = smallRight[param2][_loc10_] as MagicCell;
                        _loc5_.moveType = 0;
                        _loc5_.moving = true;
                     }
               }
               break;
            case 1:
               switch(param3)
               {
                  case 0:
                     _loc11_ = 0;
                     while(_loc11_ < 5)
                     {
                        _loc5_ = smallTop[_loc11_][param2] as MagicCell;
                        _loc5_.moveType = 3;
                        _loc5_.moving = true;
                        _loc11_++;
                     }
                     _loc12_ = 0;
                     while(_loc12_ < 5)
                     {
                        _loc5_ = big[_loc12_][param2 + 1] as MagicCell;
                        _loc5_.moveType = 3;
                        _loc5_.moving = true;
                        _loc12_++;
                     }
                     _loc13_ = 0;
                     while(_loc13_ < 5)
                     {
                        _loc5_ = smallBottom[_loc13_][param2] as MagicCell;
                        _loc5_.moveType = 3;
                        _loc5_.moving = true;
                        _loc13_++;
                     }
                     break;
                  case 1:
                     _loc14_ = 0;
                     while(_loc14_ < 5)
                     {
                        _loc5_ = smallTop[_loc14_][param2] as MagicCell;
                        _loc5_.moveType = 2;
                        _loc5_.moving = true;
                        _loc14_++;
                     }
                     _loc15_ = 0;
                     while(_loc15_ < 5)
                     {
                        _loc5_ = big[_loc15_][param2 + 1] as MagicCell;
                        _loc5_.moveType = 2;
                        _loc5_.moving = true;
                        _loc15_++;
                     }
                     _loc16_ = 0;
                     while(_loc16_ < 5)
                     {
                        _loc5_ = smallBottom[_loc16_][param2] as MagicCell;
                        _loc5_.moveType = 2;
                        _loc5_.moving = true;
                        _loc16_++;
                     }
               }
         }
         --_lastNum;
      }
      
      private function _CubeMaster_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CubeMaster_BasicTitleCanvas1.text = param1;
         },"_CubeMaster_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000722);
         },function(param1:Object):void
         {
            _CubeMaster_Image1.source = param1;
         },"_CubeMaster_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curLastNum.text = param1;
         },"curLastNum.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            todayScore.text = param1;
         },"todayScore.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CubeMaster_IntroText1.htmlText = param1;
         },"_CubeMaster_IntroText1.htmlText");
         result[4] = binding;
         return result;
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" stone master load res Error ");
      }
      
      [Bindable(event="propertyChange")]
      public function get todayScore() : Label
      {
         return this._1835012049todayScore;
      }
      
      public function set smallUIBottom(param1:Canvas) : void
      {
         var _loc2_:Object = this._2086596582smallUIBottom;
         if(_loc2_ !== param1)
         {
            this._2086596582smallUIBottom = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallUIBottom",_loc2_,param1));
         }
      }
      
      public function set bigContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._1404137631bigContainer;
         if(_loc2_ !== param1)
         {
            this._1404137631bigContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigContainer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get smallUIBottom() : Canvas
      {
         return this._2086596582smallUIBottom;
      }
      
      public function set smallUITop(param1:Canvas) : void
      {
         var _loc2_:Object = this._1219476858smallUITop;
         if(_loc2_ !== param1)
         {
            this._1219476858smallUITop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallUITop",_loc2_,param1));
         }
      }
      
      public function ___CubeMaster_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         register();
      }
      
      private function getCubeRes() : void
      {
         var _loc1_:LoaderContext = null;
         if(!loader)
         {
            loader = new Loader();
            _loc1_ = new LoaderContext();
            _loc1_.applicationDomain = ApplicationDomain.currentDomain;
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            loader.load(new URLRequest(ResManager.getResUrl(2080130106014)),_loc1_);
         }
      }
      
      private function onCubeMoveEnd(param1:Event) : void
      {
         ++_endCount;
         if(_endCount == 15)
         {
            if(_type > -1 && _index > -1 && _direc > -1)
            {
               _core.remote.call("moveMagicCubeByClient",new Responder(onGetData),_type,_index,_direc);
               _endCount = 0;
            }
         }
      }
   }
}

