package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MazePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const img1:Class = MazePanel_img1;
      
      public static const img2:Class = MazePanel_img2;
      
      public static const img3:Class = MazePanel_img3;
      
      public static const img4:Class = MazePanel_img4;
      
      public static const img5:Class = MazePanel_img5;
      
      public static const img6:Class = MazePanel_img6;
      
      private var _level:int = 1;
      
      private var _1185250762image1:Image;
      
      private var _1133599785currentLevelLabel:RoundedLabel;
      
      private var _428894166enterButton:Button;
      
      public var _MazePanel_RoundedLabel3:RoundedLabel;
      
      public var _MazePanel_RoundedLabel5:RoundedLabel;
      
      public var _MazePanel_RoundedLabel7:RoundedLabel;
      
      public var _MazePanel_RoundedLabel8:RoundedLabel;
      
      public var _MazePanel_RoundedLabel9:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _3059661cost:RoundedLabel;
      
      private var _1185250758image5:Image;
      
      private var _cost:int = 5;
      
      private var _1185250761image2:Image;
      
      public var _MazePanel_RoundedLabel10:RoundedLabel;
      
      public var _MazePanel_RoundedLabel11:RoundedLabel;
      
      private var _2033767917refreshButton:Button;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _freeRefreshNum:* = 0;
      
      private var _maxLevel:int = 5;
      
      private var _1185250759image4:Image;
      
      private var _1521838490enterNumRemain:RoundedLabel;
      
      private var _1859786879eventContent:IntroText;
      
      private var _674573239refreshNumFree:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      public var _MazePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1185250760image3:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":586,
               "height":388,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MazePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"currentLevelLabel",
                  "stylesFactory":function():void
                  {
                     this.left = "15.5";
                     this.right = "15.5";
                     this.top = "40";
                     this.horizontalCenter = "0";
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "15.5";
                     this.right = "15.5";
                     this.top = "52";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":160,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"image1",
                           "stylesFactory":function():void
                           {
                              this.left = "17.5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":140,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"image2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":140,
                                 "x":127.5,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"image3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":140,
                                 "x":232.5,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"image4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":140,
                                 "x":337.5,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"image5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":140,
                                 "x":442.5,
                                 "y":10
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"cost",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":385,
                        "y":355
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazePanel_RoundedLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":358,
                        "y":225,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"refreshNumFree",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":473,
                        "y":225,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazePanel_RoundedLabel5",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":358,
                        "y":243
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"enterNumRemain",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":473,
                        "y":243
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "15.5";
                     this.right = "15.5";
                     this.top = "222";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":140,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"eventContent",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "10";
                              this.right = "10";
                              this.bottom = "10";
                              this.fontSize = 12;
                              this.color = 16777215;
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"enterButton",
                  "events":{"click":"__enterButton_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "height":20,
                        "width":65,
                        "y":355,
                        "x":227.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"refreshButton",
                  "events":{"click":"__refreshButton_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "height":20,
                        "width":65,
                        "y":355,
                        "x":318.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazePanel_RoundedLabel7",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":206,
                        "x":34
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazePanel_RoundedLabel8",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":143,
                        "y":206
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazePanel_RoundedLabel9",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":249,
                        "y":206
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazePanel_RoundedLabel10",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":353,
                        "y":206
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazePanel_RoundedLabel11",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":461,
                        "y":206
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function MazePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 586;
         this.height = 388;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___MazePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MazePanel._watcherSetupUtil = param1;
      }
      
      public function set image5(param1:Image) : void
      {
         var _loc2_:Object = this._1185250758image5;
         if(_loc2_ !== param1)
         {
            this._1185250758image5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image5",_loc2_,param1));
         }
      }
      
      public function set image3(param1:Image) : void
      {
         var _loc2_:Object = this._1185250760image3;
         if(_loc2_ !== param1)
         {
            this._1185250760image3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image3",_loc2_,param1));
         }
      }
      
      public function ___MazePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function showPanel() : void
      {
         if(_core.player.level < 120)
         {
            Alert.show(Language.MAZE_PANEL_U[29]);
            return;
         }
         _core.remote.call("getMazePreDate",new Responder(onGetMazePreData),null);
         this.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshButton() : Button
      {
         return this._2033767917refreshButton;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MazePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MazePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MazePanelWatcherSetupUtil");
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
      
      public function set cost(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3059661cost;
         if(_loc2_ !== param1)
         {
            this._3059661cost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost",_loc2_,param1));
         }
      }
      
      public function set refreshNumFree(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._674573239refreshNumFree;
         if(_loc2_ !== param1)
         {
            this._674573239refreshNumFree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshNumFree",_loc2_,param1));
         }
      }
      
      public function onGetMazeData(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         this["cost"].htmlText = Language.MAZE_PANEL_U[1].toString().replace("{num}",param1.preData.cost);
         this["enterNumRemain"].text = Language.MAZE_PANEL_U[6].toString().replace("{num}",param1.preData.enterNumRemain);
         this["refreshNumFree"].text = Language.MAZE_PANEL_U[6].toString().replace("{num}",param1.preData.refreshNumFree);
         if(_level == int(param1.preData.level) && _level != _maxLevel)
         {
            _core.sysMidNote(Language.MAZE_PANEL_U[28]);
         }
         else
         {
            _core.sysMidNote(Language.MAZE_PANEL_U[27]);
         }
         _level = int(param1.preData.level);
         _freeRefreshNum = int(param1.preData.refreshNumFree);
         _cost = int(param1.preData.cost);
         switch(_level)
         {
            case 1:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[21]);
               break;
            case 2:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[22]);
               break;
            case 3:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[23]);
               break;
            case 4:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[24]);
               break;
            case 5:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[25]);
         }
         if(_freeRefreshNum > 0)
         {
            this["cost"].visible = false;
         }
         else
         {
            this["cost"].visible = true;
         }
         if(_level >= 5)
         {
            this["cost"].visible = false;
         }
         else
         {
            this["cost"].visible = true;
         }
         var _loc2_:* = 1;
         while(_loc2_ <= 5)
         {
            this["image" + _loc2_].source = img6;
            _loc2_++;
         }
         if(int(param1.preData.level) == 1)
         {
            this["image1"].source = img1;
         }
         if(int(param1.preData.level) == 2)
         {
            this["image2"].source = img2;
         }
         if(int(param1.preData.level) == 3)
         {
            this["image3"].source = img3;
         }
         if(int(param1.preData.level) == 4)
         {
            this["image4"].source = img4;
         }
         if(int(param1.preData.level) == 5)
         {
            this["image5"].source = img5;
         }
         if(int(param1.preData.enterNumRemain) <= 0)
         {
            enterButton.enabled = false;
            refreshButton.enabled = false;
         }
         else
         {
            enterButton.enabled = true;
            refreshButton.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get enterNumRemain() : RoundedLabel
      {
         return this._1521838490enterNumRemain;
      }
      
      public function onEnterMaze(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_MAZE_INFO);
         if(_loc2_)
         {
            _loc2_.showPanel();
         }
      }
      
      public function enterClick() : void
      {
         _core.remote.call("enterMaze",new Responder(onEnterMaze),null);
      }
      
      [Bindable(event="propertyChange")]
      public function get currentLevelLabel() : RoundedLabel
      {
         return this._1133599785currentLevelLabel;
      }
      
      public function set eventContent(param1:IntroText) : void
      {
         var _loc2_:Object = this._1859786879eventContent;
         if(_loc2_ !== param1)
         {
            this._1859786879eventContent = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventContent",_loc2_,param1));
         }
      }
      
      private function _MazePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePanel_BasicTitleCanvas1.text = param1;
         },"_MazePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            currentLevelLabel.htmlText = param1;
         },"currentLevelLabel.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return img6;
         },function(param1:Object):void
         {
            image1.source = param1;
         },"image1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            image1.toolTip = param1;
         },"image1.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return img6;
         },function(param1:Object):void
         {
            image2.source = param1;
         },"image2.source");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            image2.toolTip = param1;
         },"image2.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return img6;
         },function(param1:Object):void
         {
            image3.source = param1;
         },"image3.source");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            image3.toolTip = param1;
         },"image3.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return img6;
         },function(param1:Object):void
         {
            image4.source = param1;
         },"image4.source");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            image4.toolTip = param1;
         },"image4.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return img6;
         },function(param1:Object):void
         {
            image5.source = param1;
         },"image5.source");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            image5.toolTip = param1;
         },"image5.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cost.htmlText = param1;
         },"cost.htmlText");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePanel_RoundedLabel3.text = param1;
         },"_MazePanel_RoundedLabel3.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            refreshNumFree.text = param1;
         },"refreshNumFree.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePanel_RoundedLabel5.text = param1;
         },"_MazePanel_RoundedLabel5.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            enterNumRemain.text = param1;
         },"enterNumRemain.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eventContent.htmlText = param1;
         },"eventContent.htmlText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            enterButton.label = param1;
         },"enterButton.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            refreshButton.label = param1;
         },"refreshButton.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePanel_RoundedLabel7.htmlText = param1;
         },"_MazePanel_RoundedLabel7.htmlText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePanel_RoundedLabel8.htmlText = param1;
         },"_MazePanel_RoundedLabel8.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePanel_RoundedLabel9.htmlText = param1;
         },"_MazePanel_RoundedLabel9.htmlText");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePanel_RoundedLabel10.htmlText = param1;
         },"_MazePanel_RoundedLabel10.htmlText");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePanel_RoundedLabel11.htmlText = param1;
         },"_MazePanel_RoundedLabel11.htmlText");
         result[24] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get enterButton() : Button
      {
         return this._428894166enterButton;
      }
      
      public function set enterNumRemain(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1521838490enterNumRemain;
         if(_loc2_ !== param1)
         {
            this._1521838490enterNumRemain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterNumRemain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image1() : Image
      {
         return this._1185250762image1;
      }
      
      public function onGetMazePreData(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         this["cost"].htmlText = Language.MAZE_PANEL_U[1].toString().replace("{num}",param1.preData.cost);
         this["enterNumRemain"].text = Language.MAZE_PANEL_U[6].toString().replace("{num}",param1.preData.enterNumRemain);
         this["refreshNumFree"].text = Language.MAZE_PANEL_U[6].toString().replace("{num}",param1.preData.refreshNumFree);
         _level = int(param1.preData.level);
         _freeRefreshNum = int(param1.preData.refreshNumFree);
         _cost = int(param1.preData.cost);
         switch(_level)
         {
            case 1:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[21]);
               break;
            case 2:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[22]);
               break;
            case 3:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[23]);
               break;
            case 4:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[24]);
               break;
            case 5:
               this["currentLevelLabel"].htmlText = Language.MAZE_PANEL_U[20].toString().replace("{level}",Language.MAZE_PANEL_U[25]);
         }
         if(_freeRefreshNum > 0)
         {
            this["cost"].visible = false;
         }
         else
         {
            this["cost"].visible = true;
         }
         if(_level >= 5)
         {
            this["cost"].visible = false;
         }
         else
         {
            this["cost"].visible = true;
         }
         var _loc2_:* = 1;
         while(_loc2_ <= 5)
         {
            this["image" + _loc2_].source = img6;
            _loc2_++;
         }
         if(int(param1.preData.level) == 1)
         {
            this["image1"].source = img1;
         }
         if(int(param1.preData.level) == 2)
         {
            this["image2"].source = img2;
         }
         if(int(param1.preData.level) == 3)
         {
            this["image3"].source = img3;
         }
         if(int(param1.preData.level) == 4)
         {
            this["image4"].source = img4;
         }
         if(int(param1.preData.level) == 5)
         {
            this["image5"].source = img5;
         }
         if(int(param1.preData.enterNumRemain) <= 0)
         {
            enterButton.enabled = false;
            refreshButton.enabled = false;
         }
         else
         {
            enterButton.enabled = true;
            refreshButton.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image4() : Image
      {
         return this._1185250759image4;
      }
      
      [Bindable(event="propertyChange")]
      public function get image5() : Image
      {
         return this._1185250758image5;
      }
      
      [Bindable(event="propertyChange")]
      public function get eventContent() : IntroText
      {
         return this._1859786879eventContent;
      }
      
      [Bindable(event="propertyChange")]
      public function get image3() : Image
      {
         return this._1185250760image3;
      }
      
      [Bindable(event="propertyChange")]
      public function get image2() : Image
      {
         return this._1185250761image2;
      }
      
      private function _MazePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAZE_PANEL_U[0];
         _loc1_ = Language.MAZE_PANEL_U[20];
         _loc1_ = img6;
         _loc1_ = Language.MAZE_PANEL_U[15];
         _loc1_ = img6;
         _loc1_ = Language.MAZE_PANEL_U[16];
         _loc1_ = img6;
         _loc1_ = Language.MAZE_PANEL_U[17];
         _loc1_ = img6;
         _loc1_ = Language.MAZE_PANEL_U[18];
         _loc1_ = img6;
         _loc1_ = Language.MAZE_PANEL_U[19];
         _loc1_ = Language.MAZE_PANEL_U[1];
         _loc1_ = Language.MAZE_PANEL_U[2];
         _loc1_ = Language.MAZE_PANEL_U[6];
         _loc1_ = Language.MAZE_PANEL_U[3];
         _loc1_ = Language.MAZE_PANEL_U[6];
         _loc1_ = Language.MAZE_PANEL_U[26];
         _loc1_ = Language.MAZE_PANEL_U[4];
         _loc1_ = Language.MAZE_PANEL_U[5];
         _loc1_ = Language.MAZE_PANEL_U[10];
         _loc1_ = Language.MAZE_PANEL_U[11];
         _loc1_ = Language.MAZE_PANEL_U[12];
         _loc1_ = Language.MAZE_PANEL_U[13];
         _loc1_ = Language.MAZE_PANEL_U[14];
      }
      
      public function __enterButton_click(param1:MouseEvent) : void
      {
         enterClick();
      }
      
      override public function initView() : void
      {
      }
      
      public function set currentLevelLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1133599785currentLevelLabel;
         if(_loc2_ !== param1)
         {
            this._1133599785currentLevelLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentLevelLabel",_loc2_,param1));
         }
      }
      
      public function set enterButton(param1:Button) : void
      {
         var _loc2_:Object = this._428894166enterButton;
         if(_loc2_ !== param1)
         {
            this._428894166enterButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enterButton",_loc2_,param1));
         }
      }
      
      public function __refreshButton_click(param1:MouseEvent) : void
      {
         refreshClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshNumFree() : RoundedLabel
      {
         return this._674573239refreshNumFree;
      }
      
      public function set refreshButton(param1:Button) : void
      {
         var _loc2_:Object = this._2033767917refreshButton;
         if(_loc2_ !== param1)
         {
            this._2033767917refreshButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cost() : RoundedLabel
      {
         return this._3059661cost;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1 && _core.player.level < 120)
         {
            Alert.show(Language.MAZE_PANEL_U[29]);
            return;
         }
         super.visible = param1;
         if(param1)
         {
            _core.remote.call("getMazePreDate",new Responder(onGetMazePreData),null);
         }
      }
      
      public function refreshClick() : void
      {
         var func:Function = null;
         if(_level >= _maxLevel)
         {
            Alert.show(Language.MAZE_PANEL_U[7],"",Alert.OK);
            return;
         }
         if(_freeRefreshNum <= 0)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("refreshMaze",new Responder(onGetMazeData),null);
               }
            };
            Alert.show(Language.MAZE_PANEL_U[9].toString().replace("{num}",_cost),"",Alert.YES | Alert.NO,null,func);
         }
         else
         {
            _core.remote.call("refreshMaze",new Responder(onGetMazeData),null);
         }
      }
      
      public function set image2(param1:Image) : void
      {
         var _loc2_:Object = this._1185250761image2;
         if(_loc2_ !== param1)
         {
            this._1185250761image2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image2",_loc2_,param1));
         }
      }
      
      public function set image4(param1:Image) : void
      {
         var _loc2_:Object = this._1185250759image4;
         if(_loc2_ !== param1)
         {
            this._1185250759image4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image4",_loc2_,param1));
         }
      }
      
      public function set image1(param1:Image) : void
      {
         var _loc2_:Object = this._1185250762image1;
         if(_loc2_ !== param1)
         {
            this._1185250762image1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image1",_loc2_,param1));
         }
      }
   }
}

