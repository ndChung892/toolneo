package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StarInstanceMap extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _180315225levelBtn12:MyButton;
      
      private var _1656751361levelBtn7:MyButton;
      
      private var _1452859372starPointNeed:Label;
      
      private var firstFlag:Boolean = true;
      
      private var _1256650571loaderCanvas:SimpleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1656751359levelBtn9:MyButton;
      
      private var _1656751363levelBtn5:MyButton;
      
      private var _2126743388starIns11:StarInstanceCanvas;
      
      private var _1315853344starTile:Tile;
      
      private var _180315223levelBtn10:MyButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _1656751365levelBtn3:MyButton;
      
      private var _1315530614starIns2:StarInstanceCanvas;
      
      private var _114892273_warMapMax:uint = 5;
      
      private var _1315530616starIns4:StarInstanceCanvas;
      
      private var _1315530618starIns6:StarInstanceCanvas;
      
      private var info:Object;
      
      private var _1315530621starIns9:StarInstanceCanvas;
      
      private var _1656751367levelBtn1:MyButton;
      
      private var _1656751360levelBtn8:MyButton;
      
      private var playerStarData:Object;
      
      private var _1438589353selectedLevel:uint = 0;
      
      private var _2126743387starIns10:StarInstanceCanvas;
      
      private var _180315224levelBtn11:MyButton;
      
      private var _114893843_warMapNum:uint = 0;
      
      private var _1656751362levelBtn6:MyButton;
      
      private var _1656751364levelBtn4:MyButton;
      
      private var _2126743389starIns12:StarInstanceCanvas;
      
      private var _1315530615starIns3:StarInstanceCanvas;
      
      private var _1315530613starIns1:StarInstanceCanvas;
      
      private var _1315530617starIns5:StarInstanceCanvas;
      
      private var _1315530619starIns7:StarInstanceCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private const progressPer:Array = [0,0.2,0.28,0.38,0.45,0.5,0.55,0.6,0.65,0.7,0.75,0.9,1];
      
      private var _1656751366levelBtn2:MyButton;
      
      private var _1315530620starIns8:StarInstanceCanvas;
      
      private var _347234980backImg:Image;
      
      public var _StarInstanceMap_Label4:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2082343164btnClose:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Image,
               "id":"backImg",
               "propertiesFactory":function():Object
               {
                  return {
                     "percentWidth":100,
                     "percentHeight":100
                  };
               }
            }),new UIComponentDescriptor({
               "type":Tile,
               "id":"starTile",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":10,
                     "y":10,
                     "width":780,
                     "height":516,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns1",
                        "events":{"click":"__starIns1_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns2",
                        "events":{"click":"__starIns2_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns3",
                        "events":{"click":"__starIns3_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns4",
                        "events":{"click":"__starIns4_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns5",
                        "events":{"click":"__starIns5_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns6",
                        "events":{"click":"__starIns6_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns7",
                        "events":{"click":"__starIns7_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns8",
                        "events":{"click":"__starIns8_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns9",
                        "events":{"click":"__starIns9_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns10",
                        "events":{"click":"__starIns10_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns11",
                        "events":{"click":"__starIns11_click"}
                     }),new UIComponentDescriptor({
                        "type":StarInstanceCanvas,
                        "id":"starIns12",
                        "events":{"click":"__starIns12_click"}
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":VBox,
               "stylesFactory":function():void
               {
                  this.verticalGap = 15;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":801,
                     "y":35,
                     "percentHeight":100,
                     "width":30,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn1",
                        "events":{"click":"__levelBtn1_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn2",
                        "events":{"click":"__levelBtn2_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn3",
                        "events":{"click":"__levelBtn3_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn4",
                        "events":{"click":"__levelBtn4_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn5",
                        "events":{"click":"__levelBtn5_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn6",
                        "events":{"click":"__levelBtn6_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn7",
                        "events":{"click":"__levelBtn7_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn8",
                        "events":{"click":"__levelBtn8_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn9",
                        "events":{"click":"__levelBtn9_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn10",
                        "events":{"click":"__levelBtn10_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn11",
                        "events":{"click":"__levelBtn11_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":MyButton,
                        "id":"levelBtn12",
                        "events":{"click":"__levelBtn12_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":28,
                              "height":28
                           };
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":BasicGlowButton,
               "events":{"click":"___StarInstanceMap_BasicGlowButton1_click"},
               "propertiesFactory":function():Object
               {
                  return {
                     "x":204,
                     "y":528,
                     "label":"Đổi Danh Hiệu",
                     "styleName":"CrystalYellowButton"
                  };
               }
            }),new UIComponentDescriptor({
               "type":Label,
               "stylesFactory":function():void
               {
                  this.color = 16187149;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":16,
                     "y":531,
                     "text":"Điểm hiện tại/Điểm cần"
                  };
               }
            }),new UIComponentDescriptor({
               "type":Label,
               "id":"starPointNeed",
               "stylesFactory":function():void
               {
                  this.color = 65535;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":169,
                     "y":532,
                     "text":"0/0"
                  };
               }
            }),new UIComponentDescriptor({
               "type":Label,
               "stylesFactory":function():void
               {
                  this.color = 16187149;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":323,
                     "y":532,
                     "text":"Mỗi ngày miễn phí 5 lần,tối đa 10 lần 1 ngày"
                  };
               }
            }),new UIComponentDescriptor({
               "type":Label,
               "id":"_StarInstanceMap_Label4",
               "stylesFactory":function():void
               {
                  this.color = 65535;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":588,
                     "y":533
                  };
               }
            }),new UIComponentDescriptor({
               "type":BasicGlowButton,
               "events":{"click":"___StarInstanceMap_BasicGlowButton2_click"},
               "propertiesFactory":function():Object
               {
                  return {
                     "x":673,
                     "y":527,
                     "label":"Tăng thêm",
                     "styleName":"CrystalYellowButton"
                  };
               }
            }),new UIComponentDescriptor({
               "type":SimpleCanvas,
               "id":"loaderCanvas",
               "stylesFactory":function():void
               {
                  this.backgroundColor = 10592673;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "percentWidth":100,
                     "percentHeight":100,
                     "alpha":0.5,
                     "mouseEnabled":true,
                     "visible":true,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Label,
                        "stylesFactory":function():void
                        {
                           this.fontSize = 36;
                           this.color = 4783872;
                           this.horizontalCenter = "0";
                           this.verticalCenter = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "text":"Đang tải dữ liệu....",
                              "width":361,
                              "height":63
                           };
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "id":"btnClose",
               "events":{
                  "mouseDown":"__btnClose_mouseDown",
                  "click":"__btnClose_click"
               },
               "stylesFactory":function():void
               {
                  this.right = "12";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":9,
                     "styleName":"BtnPanelClose"
                  };
               }
            })]};
         }
      });
      
      public function StarInstanceMap()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mouseEnabled = true;
         this.addEventListener("creationComplete",___StarInstanceMap_Canvas1_creationComplete);
         this.addEventListener("show",___StarInstanceMap_Canvas1_show);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StarInstanceMap._watcherSetupUtil = param1;
      }
      
      public function set levelBtn8(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751360levelBtn8;
         if(_loc2_ !== param1)
         {
            this._1656751360levelBtn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn8",_loc2_,param1));
         }
      }
      
      public function __levelBtn12_click(param1:MouseEvent) : void
      {
         if(levelBtn12.enabled)
         {
            levelClick(12);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _warMapNum() : uint
      {
         return this._114893843_warMapNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get starPointNeed() : Label
      {
         return this._1452859372starPointNeed;
      }
      
      public function set levelBtn9(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751359levelBtn9;
         if(_loc2_ !== param1)
         {
            this._1656751359levelBtn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn9",_loc2_,param1));
         }
      }
      
      public function __starIns1_click(param1:MouseEvent) : void
      {
         warMapClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get starTile() : Tile
      {
         return this._1315853344starTile;
      }
      
      public function __starIns9_click(param1:MouseEvent) : void
      {
         warMapClick(9);
      }
      
      public function set starPointNeed(param1:Label) : void
      {
         var _loc2_:Object = this._1452859372starPointNeed;
         if(_loc2_ !== param1)
         {
            this._1452859372starPointNeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starPointNeed",_loc2_,param1));
         }
      }
      
      public function __levelBtn2_click(param1:MouseEvent) : void
      {
         if(levelBtn2.enabled)
         {
            levelClick(2);
         }
      }
      
      private function setPlayerData() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Object = null;
         var _loc1_:Object = _core.player.starsData;
         if(_loc1_)
         {
            playerStarData = new Object();
            _loc2_ = 1;
            while(_loc2_ < 13)
            {
               if(_loc1_[_loc2_])
               {
                  if(Boolean(_loc1_[_loc2_].tid) || _loc1_[_loc2_].tid == 0)
                  {
                     playerStarData[_loc2_] = 0;
                     if(_loc1_[_loc2_].finishDate == -1)
                     {
                        _loc3_ = GameData.d[GamePredef.TBL_STARS_TEMPLATE][_loc1_[_loc2_].tid];
                        if(Boolean(_loc3_) && _loc2_ == _loc3_.type)
                        {
                           playerStarData[_loc2_] = _loc3_.level;
                        }
                        else if(_loc1_[_loc2_].tid == 0)
                        {
                           playerStarData[_loc2_] = 0;
                        }
                     }
                     else if(_loc1_[_loc2_].finishDate > 0)
                     {
                        _loc3_ = GameData.d[GamePredef.TBL_STARS_TEMPLATE][_loc1_[_loc2_].tid];
                        if(Boolean(_loc3_) && Boolean(_loc3_.type))
                        {
                           playerStarData[_loc2_] = uint(_loc3_.level);
                        }
                        ++playerStarData[_loc2_];
                     }
                  }
               }
               _loc2_++;
            }
         }
         showStarEnabled();
      }
      
      private function set _warMapNum(param1:uint) : void
      {
         var _loc2_:Object = this._114893843_warMapNum;
         if(_loc2_ !== param1)
         {
            this._114893843_warMapNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_warMapNum",_loc2_,param1));
         }
      }
      
      private function setStarStyle() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc1_:uint = 1;
         while(_loc1_ < 13)
         {
            if(Boolean(info) && Boolean(info[_loc1_]))
            {
               _loc2_ = 0;
               _loc3_ = 1;
               while(_loc3_ < 13)
               {
                  if(Boolean(info[_loc1_][_loc3_]) && info[_loc1_][_loc3_] > 0)
                  {
                     _loc2_++;
                  }
                  _loc3_++;
               }
               if(0 == _loc2_)
               {
                  this["levelBtn" + _loc1_].progress = 0;
               }
               else if(_loc2_ > 0)
               {
                  this["levelBtn" + _loc1_].progress = progressPer[_loc2_];
               }
            }
            else
            {
               this["levelBtn" + _loc1_].progress = 0;
            }
            _loc1_++;
         }
      }
      
      public function set starTile(param1:Tile) : void
      {
         var _loc2_:Object = this._1315853344starTile;
         if(_loc2_ !== param1)
         {
            this._1315853344starTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starTile",_loc2_,param1));
         }
      }
      
      public function __starIns12_click(param1:MouseEvent) : void
      {
         warMapClick(12);
      }
      
      private function levelChange(param1:uint) : void
      {
         this.selectedLevel = param1;
         var _loc2_:uint = 1;
         while(_loc2_ < 13)
         {
            this["starIns" + _loc2_].level = selectedLevel;
            _loc2_++;
         }
         setAllNum();
         showStarEnabled();
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn10() : MyButton
      {
         return this._180315223levelBtn10;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn12() : MyButton
      {
         return this._180315225levelBtn12;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn11() : MyButton
      {
         return this._180315224levelBtn11;
      }
      
      public function __starIns6_click(param1:MouseEvent) : void
      {
         warMapClick(6);
      }
      
      private function levelClick(param1:uint) : void
      {
         if(param1 != selectedLevel)
         {
            if(selectedLevel)
            {
               this["levelBtn" + selectedLevel].selected = false;
            }
            this["levelBtn" + param1].selected = true;
            levelChange(param1);
         }
      }
      
      public function __btnClose_click(param1:MouseEvent) : void
      {
         exit();
      }
      
      public function __levelBtn7_click(param1:MouseEvent) : void
      {
         if(levelBtn7.enabled)
         {
            levelClick(7);
         }
      }
      
      private function _StarInstanceMap_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn1.skin = param1;
         },"levelBtn1.skin");
         result[0] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn2.skin = param1;
         },"levelBtn2.skin");
         result[1] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn3.skin = param1;
         },"levelBtn3.skin");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn4.skin = param1;
         },"levelBtn4.skin");
         result[3] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn5.skin = param1;
         },"levelBtn5.skin");
         result[4] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn6.skin = param1;
         },"levelBtn6.skin");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn7.skin = param1;
         },"levelBtn7.skin");
         result[6] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn8.skin = param1;
         },"levelBtn8.skin");
         result[7] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn9.skin = param1;
         },"levelBtn9.skin");
         result[8] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn10.skin = param1;
         },"levelBtn10.skin");
         result[9] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn11.skin = param1;
         },"levelBtn11.skin");
         result[10] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_LEVEL_LIGHT;
         },function(param1:Class):void
         {
            levelBtn12.skin = param1;
         },"levelBtn12.skin");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _warMapNum + "/" + _warMapMax;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarInstanceMap_Label4.text = param1;
         },"_StarInstanceMap_Label4.text");
         result[12] = binding;
         return result;
      }
      
      public function set loaderCanvas(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._1256650571loaderCanvas;
         if(_loc2_ !== param1)
         {
            this._1256650571loaderCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loaderCanvas",_loc2_,param1));
         }
      }
      
      private function warMapClick(param1:Number) : void
      {
         var func:Function = null;
         var id:Number = param1;
         if(this["starIns" + id].enable)
         {
            if(this["starIns" + id]._isClick)
            {
               if(Boolean(selectedLevel) && selectedLevel > 0)
               {
                  this.visible = false;
                  _core.remote.call("initTaskSweepPanelByClient",null,0,selectedLevel,id,3);
               }
               return;
            }
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  startStarBattle(id);
               }
            };
            if(_core.data.gameData[GamePredef.TBL_WAR_MAP][id])
            {
               Alert.show(Language.STAR_MAP_INS[10].toString().replace("name",_core.data.gameData[GamePredef.TBL_WAR_MAP][id].name),"",Alert.YES | Alert.NO,null,func);
            }
         }
      }
      
      public function __starIns3_click(param1:MouseEvent) : void
      {
         warMapClick(3);
      }
      
      public function __levelBtn4_click(param1:MouseEvent) : void
      {
         if(levelBtn4.enabled)
         {
            levelClick(4);
         }
      }
      
      public function set levelBtn12(param1:MyButton) : void
      {
         var _loc2_:Object = this._180315225levelBtn12;
         if(_loc2_ !== param1)
         {
            this._180315225levelBtn12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn12",_loc2_,param1));
         }
      }
      
      public function set levelBtn10(param1:MyButton) : void
      {
         var _loc2_:Object = this._180315223levelBtn10;
         if(_loc2_ !== param1)
         {
            this._180315223levelBtn10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn10",_loc2_,param1));
         }
      }
      
      public function set levelBtn11(param1:MyButton) : void
      {
         var _loc2_:Object = this._180315224levelBtn11;
         if(_loc2_ !== param1)
         {
            this._180315224levelBtn11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn11",_loc2_,param1));
         }
      }
      
      public function set starIns11(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._2126743388starIns11;
         if(_loc2_ !== param1)
         {
            this._2126743388starIns11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns11",_loc2_,param1));
         }
      }
      
      public function set starIns10(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._2126743387starIns10;
         if(_loc2_ !== param1)
         {
            this._2126743387starIns10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns10",_loc2_,param1));
         }
      }
      
      private function onGetWarInfo(param1:Object) : void
      {
         levelClick(1);
         loaderCanvas.visible = false;
         this.info = param1.d;
         _warMapMax = param1.s.smax;
         _warMapNum = param1.s.snum;
         setAllNum();
         setStarStyle();
      }
      
      public function __levelBtn11_click(param1:MouseEvent) : void
      {
         if(levelBtn11.enabled)
         {
            levelClick(11);
         }
      }
      
      private function _StarInstanceMap_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = ResManager.IMG_STARS_LEVEL_LIGHT;
         _loc1_ = _warMapNum + "/" + _warMapMax;
      }
      
      public function ___StarInstanceMap_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set starIns12(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._2126743389starIns12;
         if(_loc2_ !== param1)
         {
            this._2126743389starIns12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns12",_loc2_,param1));
         }
      }
      
      public function set backImg(param1:Image) : void
      {
         var _loc2_:Object = this._347234980backImg;
         if(_loc2_ !== param1)
         {
            this._347234980backImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backImg",_loc2_,param1));
         }
      }
      
      public function ___StarInstanceMap_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         addWarMapTime();
      }
      
      public function __levelBtn1_click(param1:MouseEvent) : void
      {
         if(levelBtn1.enabled)
         {
            levelClick(1);
         }
      }
      
      public function __starIns8_click(param1:MouseEvent) : void
      {
         warMapClick(8);
      }
      
      public function set starIns1(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530613starIns1;
         if(_loc2_ !== param1)
         {
            this._1315530613starIns1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns1",_loc2_,param1));
         }
      }
      
      public function set starIns2(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530614starIns2;
         if(_loc2_ !== param1)
         {
            this._1315530614starIns2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns2",_loc2_,param1));
         }
      }
      
      public function set starIns3(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530615starIns3;
         if(_loc2_ !== param1)
         {
            this._1315530615starIns3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns3",_loc2_,param1));
         }
      }
      
      public function set starIns4(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530616starIns4;
         if(_loc2_ !== param1)
         {
            this._1315530616starIns4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns4",_loc2_,param1));
         }
      }
      
      public function __levelBtn9_click(param1:MouseEvent) : void
      {
         if(levelBtn9.enabled)
         {
            levelClick(9);
         }
      }
      
      public function set starIns5(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530617starIns5;
         if(_loc2_ !== param1)
         {
            this._1315530617starIns5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns5",_loc2_,param1));
         }
      }
      
      public function set starIns6(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530618starIns6;
         if(_loc2_ !== param1)
         {
            this._1315530618starIns6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns6",_loc2_,param1));
         }
      }
      
      public function set starIns7(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530619starIns7;
         if(_loc2_ !== param1)
         {
            this._1315530619starIns7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns7",_loc2_,param1));
         }
      }
      
      public function set starIns8(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530620starIns8;
         if(_loc2_ !== param1)
         {
            this._1315530620starIns8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn3() : MyButton
      {
         return this._1656751365levelBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnClose() : Button
      {
         return this._2082343164btnClose;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn5() : MyButton
      {
         return this._1656751363levelBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn6() : MyButton
      {
         return this._1656751362levelBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn7() : MyButton
      {
         return this._1656751361levelBtn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn8() : MyButton
      {
         return this._1656751360levelBtn8;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn4() : MyButton
      {
         return this._1656751364levelBtn4;
      }
      
      public function __starIns11_click(param1:MouseEvent) : void
      {
         warMapClick(11);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn9() : MyButton
      {
         return this._1656751359levelBtn9;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn2() : MyButton
      {
         return this._1656751366levelBtn2;
      }
      
      public function ___StarInstanceMap_Canvas1_show(param1:FlexEvent) : void
      {
         onShow();
      }
      
      private function init() : void
      {
         var _loc1_:uint = 1;
         while(_loc1_ < 13)
         {
            this["starIns" + _loc1_].starName = GameData.d[GamePredef.TBL_WAR_MAP][_loc1_].name;
            this["starIns" + _loc1_].level = selectedLevel;
            this["starIns" + _loc1_].resCode = ResManager.STAR_BUILDER_ARRAY[_loc1_];
            this["starIns" + _loc1_].enabled = true;
            _loc1_++;
         }
         starIns1.enabled = true;
         backImg.source = ResManager.hash(GamePredef.RES_STARRY_SKY);
         var _loc2_:uint = 300;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBtn1() : MyButton
      {
         return this._1656751367levelBtn1;
      }
      
      public function set starIns9(param1:StarInstanceCanvas) : void
      {
         var _loc2_:Object = this._1315530621starIns9;
         if(_loc2_ !== param1)
         {
            this._1315530621starIns9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starIns9",_loc2_,param1));
         }
      }
      
      public function setOneStar(param1:uint, param2:uint, param3:uint) : void
      {
         if(!info[param2])
         {
            info[param2] = [];
         }
         if(Boolean(info[param2][param1]) && info[param2][param1] >= param3)
         {
            return;
         }
         info[param2][param1] = param3;
         if(param2 == this.selectedLevel)
         {
            this["starIns" + param1].starNum = param3;
         }
      }
      
      private function exit() : void
      {
         this.visible = false;
      }
      
      public function __starIns5_click(param1:MouseEvent) : void
      {
         warMapClick(5);
      }
      
      private function setAllNum() : void
      {
         var _loc1_:uint = 1;
         while(_loc1_ < 13)
         {
            if(Boolean(info) && Boolean(info[selectedLevel]) && Boolean(info[selectedLevel][_loc1_]) && info[selectedLevel][_loc1_] > 0)
            {
               this["starIns" + _loc1_].starNum = info[selectedLevel][_loc1_];
            }
            else
            {
               this["starIns" + _loc1_].starNum = 0;
            }
            _loc1_++;
         }
      }
      
      public function __levelBtn6_click(param1:MouseEvent) : void
      {
         if(levelBtn6.enabled)
         {
            levelClick(6);
         }
      }
      
      public function __btnClose_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function reset() : void
      {
         firstFlag = true;
         if(this.visible)
         {
            exit();
         }
      }
      
      private function showStarEnabled() : void
      {
         var _loc1_:uint = 0;
         if(playerStarData)
         {
            _loc1_ = 1;
            while(_loc1_ < 13)
            {
               if(Boolean(playerStarData[_loc1_]) && playerStarData[_loc1_] >= selectedLevel)
               {
                  this["starIns" + _loc1_].enabled = true;
               }
               else
               {
                  this["starIns" + _loc1_].enabled = false;
               }
               _loc1_++;
            }
         }
         else
         {
            _loc1_ = 1;
            while(_loc1_ < 13)
            {
               this["starIns" + _loc1_].enabled = false;
               _loc1_++;
            }
         }
      }
      
      private function set selectedLevel(param1:uint) : void
      {
         var _loc2_:Object = this._1438589353selectedLevel;
         if(_loc2_ !== param1)
         {
            this._1438589353selectedLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loaderCanvas() : SimpleCanvas
      {
         return this._1256650571loaderCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns10() : StarInstanceCanvas
      {
         return this._2126743387starIns10;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns12() : StarInstanceCanvas
      {
         return this._2126743389starIns12;
      }
      
      public function __starIns2_click(param1:MouseEvent) : void
      {
         warMapClick(2);
      }
      
      public function reFlashStarPoint() : void
      {
         starPointNeed.text = _core.player.starPnt + "/" + GamePredef.TITLE_POINT[211][0];
      }
      
      [Bindable(event="propertyChange")]
      public function get backImg() : Image
      {
         return this._347234980backImg;
      }
      
      public function __levelBtn3_click(param1:MouseEvent) : void
      {
         if(levelBtn3.enabled)
         {
            levelClick(3);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns11() : StarInstanceCanvas
      {
         return this._2126743388starIns11;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns1() : StarInstanceCanvas
      {
         return this._1315530613starIns1;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns2() : StarInstanceCanvas
      {
         return this._1315530614starIns2;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns3() : StarInstanceCanvas
      {
         return this._1315530615starIns3;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns4() : StarInstanceCanvas
      {
         return this._1315530616starIns4;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns6() : StarInstanceCanvas
      {
         return this._1315530618starIns6;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns7() : StarInstanceCanvas
      {
         return this._1315530619starIns7;
      }
      
      private function onShow() : void
      {
         if(starPointNeed)
         {
            starPointNeed.text = _core.player.starPnt + "/" + GamePredef.TITLE_POINT[211][0];
         }
         if(firstFlag)
         {
            _core.remote.call("getWarMap",new Responder(onGetWarInfo));
            firstFlag = false;
         }
         setPlayerData();
      }
      
      public function __levelBtn10_click(param1:MouseEvent) : void
      {
         if(levelBtn10.enabled)
         {
            levelClick(10);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns8() : StarInstanceCanvas
      {
         return this._1315530620starIns8;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns9() : StarInstanceCanvas
      {
         return this._1315530621starIns9;
      }
      
      [Bindable(event="propertyChange")]
      public function get starIns5() : StarInstanceCanvas
      {
         return this._1315530617starIns5;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StarInstanceMap = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StarInstanceMap_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_StarInstanceMapWatcherSetupUtil");
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
      
      public function ___StarInstanceMap_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         setCustomTitle();
      }
      
      private function onClickWarMap(param1:Object) : void
      {
         var _loc2_:String = null;
         switch(param1.c)
         {
            case 1:
               _core.view.hide(ViewManager.POPU_STAR_INSTACE_MAP);
               break;
            case -2:
               if(_core.player.inGroup && _core.player.isLeader)
               {
                  _loc2_ = Language.STAR_MAP_INS[3];
                  if(param1.d)
                  {
                     _loc2_ = TextUtil.decode("[@PID|" + param1.d.id + "|" + param1.d.name + "|0|0|0]");
                  }
                  _core.sysMidNote(Language.STAR_MAP_INS[4].toString().replace("name",_loc2_));
               }
               else
               {
                  _core.sysMidNote(Language.STAR_MAP_INS[5]);
               }
               break;
            case -3:
               if(_core.player.inGroup && _core.player.isLeader)
               {
                  _loc2_ = Language.STAR_MAP_INS[3];
                  if(param1.d)
                  {
                     _loc2_ = TextUtil.decode("[@PID|" + param1.d.id + "|" + param1.d.name + "|0|0|0]");
                  }
                  _core.sysMidNote(Language.STAR_MAP_INS[6].toString().replace("name",_loc2_));
               }
               else
               {
                  _core.sysMidNote(Language.STAR_MAP_INS[7]);
               }
               break;
            case -5:
               if(_core.player.inGroup && _core.player.isLeader)
               {
                  _loc2_ = Language.STAR_MAP_INS[3];
                  if(param1.d)
                  {
                     _loc2_ = TextUtil.decode("[@PID|" + param1.d.id + "|" + param1.d.name + "|0|0|0]");
                  }
                  _core.sysMidNote(Language.STAR_MAP_INS[8].toString().replace("name",_loc2_));
               }
               else
               {
                  _core.sysMidNote(Language.STAR_MAP_INS[9]);
               }
         }
      }
      
      private function setCustomTitle() : void
      {
         if(Boolean(_core.player) && Boolean(_core.player.starPnt) && _core.player.starPnt >= GamePredef.TITLE_POINT[211][0])
         {
            var _loc1_:* = _core.view.getUI(ViewManager.PANEL_TITLE_CUSTOM);
            if(_loc1_)
            {
               _loc1_.initTitleContent(211);
               _loc1_.parentCallback(this.reFlashStarPoint);
            }
            return;
         }
         _core.sysMidNote(Language.TITLE_CUSTOM[3]);
      }
      
      public function __levelBtn8_click(param1:MouseEvent) : void
      {
         if(levelBtn8.enabled)
         {
            levelClick(8);
         }
      }
      
      public function __starIns7_click(param1:MouseEvent) : void
      {
         warMapClick(7);
      }
      
      private function startStarBattle(param1:uint) : void
      {
         var func:Function = null;
         var cost:Number = NaN;
         var sid:uint = param1;
         if(Boolean(selectedLevel) && selectedLevel > 0)
         {
            if(!_core.player.inGroup || _core.player.isLeader)
            {
               if(!_core.player.inGroup && ToolKit.isBigOrEqual(_warMapNum,_warMapMax))
               {
                  if(_warMapMax >= 10)
                  {
                     _core.sysMidNote(Language.STAR_MAP_INS[2]);
                     return;
                  }
                  func = function(param1:CloseEvent):void
                  {
                     var e:CloseEvent = param1;
                     var res:Function = function(param1:int):void
                     {
                        if(param1 > 0)
                        {
                           _warMapMax = param1;
                           _core.remote.call("clickWarMap",new Responder(onClickWarMap),sid,selectedLevel);
                        }
                        else
                        {
                           _core.sysMidNote(Language.STAR_MAP_INS[0]);
                        }
                     };
                     if(e.detail == Alert.YES)
                     {
                        _core.remote.call("addWarMapTime",new Responder(res),_warMapMax);
                     }
                  };
                  cost = (_warMapMax - 4) * 10;
                  Alert.show(Language.STAR_MAP_INS[1].toString().replace("{cost}",cost),"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  _core.remote.call("clickWarMap",new Responder(onClickWarMap),sid,selectedLevel);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get selectedLevel() : uint
      {
         return this._1438589353selectedLevel;
      }
      
      private function addWarMapTime() : void
      {
         var func:Function = null;
         var cost:Number = NaN;
         if(_warMapMax < 10)
         {
            func = function(param1:CloseEvent):void
            {
               var e:CloseEvent = param1;
               var res:Function = function(param1:int):void
               {
                  if(param1 > 0)
                  {
                     _warMapMax = param1;
                     _core.sysMidNote(Language.STAR_MAP_INS[11]);
                  }
               };
               if(e.detail == Alert.YES)
               {
                  _core.remote.call("addWarMapTime",new Responder(res),_warMapMax);
               }
            };
            cost = (_warMapMax - 4) * 10;
            Alert.show(Language.STAR_MAP_INS[12].toString().replace("cost",cost),"",Alert.YES | Alert.NO,null,func);
         }
         else
         {
            _core.sysMidNote(Language.STAR_MAP_INS[13]);
         }
      }
      
      public function __starIns10_click(param1:MouseEvent) : void
      {
         warMapClick(10);
      }
      
      public function updateWarMapStatus(param1:Object) : void
      {
         if(param1.smax)
         {
            _warMapMax = param1.smax;
         }
         if(param1.snum)
         {
            _warMapNum = param1.snum;
         }
      }
      
      public function __starIns4_click(param1:MouseEvent) : void
      {
         warMapClick(4);
      }
      
      private function set _warMapMax(param1:uint) : void
      {
         var _loc2_:Object = this._114892273_warMapMax;
         if(_loc2_ !== param1)
         {
            this._114892273_warMapMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_warMapMax",_loc2_,param1));
         }
      }
      
      public function __levelBtn5_click(param1:MouseEvent) : void
      {
         if(levelBtn5.enabled)
         {
            levelClick(5);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _warMapMax() : uint
      {
         return this._114892273_warMapMax;
      }
      
      public function set levelBtn1(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751367levelBtn1;
         if(_loc2_ !== param1)
         {
            this._1656751367levelBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn1",_loc2_,param1));
         }
      }
      
      public function set levelBtn2(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751366levelBtn2;
         if(_loc2_ !== param1)
         {
            this._1656751366levelBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn2",_loc2_,param1));
         }
      }
      
      public function set btnClose(param1:Button) : void
      {
         var _loc2_:Object = this._2082343164btnClose;
         if(_loc2_ !== param1)
         {
            this._2082343164btnClose = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnClose",_loc2_,param1));
         }
      }
      
      public function set levelBtn5(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751363levelBtn5;
         if(_loc2_ !== param1)
         {
            this._1656751363levelBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn5",_loc2_,param1));
         }
      }
      
      public function set levelBtn6(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751362levelBtn6;
         if(_loc2_ !== param1)
         {
            this._1656751362levelBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn6",_loc2_,param1));
         }
      }
      
      public function set levelBtn3(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751365levelBtn3;
         if(_loc2_ !== param1)
         {
            this._1656751365levelBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn3",_loc2_,param1));
         }
      }
      
      public function set levelBtn7(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751361levelBtn7;
         if(_loc2_ !== param1)
         {
            this._1656751361levelBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn7",_loc2_,param1));
         }
      }
      
      public function set levelBtn4(param1:MyButton) : void
      {
         var _loc2_:Object = this._1656751364levelBtn4;
         if(_loc2_ !== param1)
         {
            this._1656751364levelBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBtn4",_loc2_,param1));
         }
      }
   }
}

