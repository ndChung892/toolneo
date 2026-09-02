package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.ResCacher;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.ColorProgressBar;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   import style.Assets;
   
   use namespace mx_internal;
   
   public class TrainSoulPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1401550734rightProp1:Text;
      
      private var _soulMovie:MovieClip;
      
      public var _TrainSoulPanel_Image1:Image;
      
      public var _TrainSoulPanel_Label1:Label;
      
      public var _TrainSoulPanel_Label2:Label;
      
      private var _3211823levelProgress:ColorProgressBar;
      
      public var _TrainSoulPanel_Label4:Label;
      
      private var _helpAlert:Alert;
      
      private var _1718064942leftHint:Label;
      
      private var _1569478973rightHint:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _1401550733rightProp2:Text;
      
      private var _1541417732movieHolder:UIComponent;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private const RES_CODE:Number = 2080130102009;
      
      private var _1728062823leftProp1:Text;
      
      private const MAX_SOUL_LVL:int = 100;
      
      private var _1656229167levelText:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _1728062824leftProp2:Text;
      
      public var _TrainSoulPanel_FilterButton1:FilterButton;
      
      public var _TrainSoulPanel_Text5:Text;
      
      private const MIN_LVL:int = 50;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":460,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_TrainSoulPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":40,
                        "styleName":"CanvasBorder",
                        "width":430,
                        "height":395,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "clipContent":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_TrainSoulPanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"movieHolder",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_TrainSoulPanel_Image1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "rotation":90,
                                 "y":240
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":185,
                                 "styleName":"CanvasBorder",
                                 "width":190,
                                 "height":125,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "clipContent":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_TrainSoulPanel_Label2",
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
                                    "id":"leftHint",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":30,
                                          "visible":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"leftProp1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":21,
                                          "y":30,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"leftProp2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":101,
                                          "y":30,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
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
                                 "x":230,
                                 "y":185,
                                 "styleName":"CanvasBorder",
                                 "width":190,
                                 "height":125,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "clipContent":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_TrainSoulPanel_Label4",
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
                                    "id":"rightHint",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":30,
                                          "visible":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"rightProp1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":21,
                                          "y":30,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"rightProp2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":101,
                                          "y":30,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"levelText",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":70,
                                 "y":326
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ColorProgressBar,
                           "id":"levelProgress",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":110,
                                 "y":325,
                                 "width":250,
                                 "height":17,
                                 "upColor":16711935
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"_TrainSoulPanel_FilterButton1",
                           "events":{"click":"___TrainSoulPanel_FilterButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":355,
                                 "height":23,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TrainSoulPanel_Text5",
                           "events":{"click":"___TrainSoulPanel_Text5_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":360,
                                 "y":360,
                                 "selectable":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _TrainSoulPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _core:Core = Core.getInstance();
      
      public function TrainSoulPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 460;
         this.height = 450;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___TrainSoulPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TrainSoulPanel._watcherSetupUtil = param1;
      }
      
      public function set rightHint(param1:Label) : void
      {
         var _loc2_:Object = this._1569478973rightHint;
         if(_loc2_ !== param1)
         {
            this._1569478973rightHint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightHint",_loc2_,param1));
         }
      }
      
      public function set movieHolder(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1541417732movieHolder;
         if(_loc2_ !== param1)
         {
            this._1541417732movieHolder = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"movieHolder",_loc2_,param1));
         }
      }
      
      public function ___TrainSoulPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get movieHolder() : UIComponent
      {
         return this._1541417732movieHolder;
      }
      
      private function updateView() : void
      {
         this.updateMovie();
         this.updateProperty();
         this.updateProgress();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TrainSoulPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TrainSoulPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TrainSoulPanelWatcherSetupUtil");
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
      
      public function ___TrainSoulPanel_FilterButton1_click(param1:MouseEvent) : void
      {
         soulHandler(param1);
      }
      
      private function updateProgress() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc1_:int = _core.player.trainSoulLvl;
         levelText.text = Language.TRAIN_SOUL_PANEL[4] + _loc1_;
         if(_loc1_ >= MAX_SOUL_LVL)
         {
            _loc2_ = GameData.d[GamePredef.TBL_SOUL][MAX_SOUL_LVL];
            _loc3_ = Number(_loc2_.requireNum);
            levelProgress.setProgress(_loc3_,_loc3_);
         }
         else
         {
            _loc4_ = _loc1_ + 1;
            _loc5_ = GameData.d[GamePredef.TBL_SOUL][_loc4_];
            _loc6_ = Number(_loc5_.requireNum);
            _loc7_ = _core.player.trainSoulExp;
            levelProgress.setProgress(_loc7_,_loc6_);
         }
      }
      
      public function set levelProgress(param1:ColorProgressBar) : void
      {
         var _loc2_:Object = this._3211823levelProgress;
         if(_loc2_ !== param1)
         {
            this._3211823levelProgress = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelProgress",_loc2_,param1));
         }
      }
      
      public function set levelText(param1:Label) : void
      {
         var _loc2_:Object = this._1656229167levelText;
         if(_loc2_ !== param1)
         {
            this._1656229167levelText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelText",_loc2_,param1));
         }
      }
      
      private function _TrainSoulPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TRAIN_SOUL_PANEL[0];
         _loc1_ = Language.TRAIN_SOUL_PANEL[1] + _core.player.mysteryCrystal;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Assets.UP_ARROW;
         _loc1_ = Language.TRAIN_SOUL_PANEL[2];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.TRAIN_SOUL_PANEL[8];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.TRAIN_SOUL_PANEL[3];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.TRAIN_SOUL_PANEL[9];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.TRAIN_SOUL_PANEL[5];
         _loc1_ = Language.TRAIN_SOUL_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.TRAIN_SOUL_PANEL[6];
      }
      
      [Bindable(event="propertyChange")]
      public function get leftHint() : Label
      {
         return this._1718064942leftHint;
      }
      
      private function updateProperty() : void
      {
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Object = null;
         var _loc1_:int = _core.player.trainSoulLvl;
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(_loc1_ <= 0)
         {
            _loc1_ = 0;
            leftHint.visible = true;
         }
         else
         {
            leftHint.visible = false;
            _loc7_ = GameData.d[GamePredef.TBL_SOUL][_loc1_];
            _loc8_ = 1;
            while(_loc8_ <= 10)
            {
               _loc9_ = int(_loc7_["prop" + _loc8_]);
               _loc10_ = Number(_loc7_["propNum" + _loc8_]);
               if(_loc8_ % 2 == 1)
               {
                  _loc2_ += (_loc2_ ? "\n" : "") + GamePredef.AWAKEN_PROP_DICT[_loc9_] + "+" + _loc10_;
               }
               else
               {
                  _loc3_ += (_loc3_ ? "\n" : "") + GamePredef.AWAKEN_PROP_DICT[_loc9_] + "+" + _loc10_;
               }
               _loc8_++;
            }
         }
         leftProp1.htmlText = _loc2_;
         leftProp2.htmlText = _loc3_;
         var _loc4_:int = _loc1_ + 1;
         var _loc5_:String = "";
         var _loc6_:String = "";
         if(_loc4_ > MAX_SOUL_LVL)
         {
            rightHint.visible = true;
         }
         else
         {
            rightHint.visible = false;
            _loc11_ = GameData.d[GamePredef.TBL_SOUL][_loc4_];
            _loc8_ = 1;
            while(_loc8_ <= 10)
            {
               _loc9_ = int(_loc11_["prop" + _loc8_]);
               _loc10_ = Number(_loc11_["propNum" + _loc8_]);
               if(_loc8_ % 2 == 1)
               {
                  _loc5_ += (_loc5_ ? "\n" : "") + GamePredef.AWAKEN_PROP_DICT[_loc9_] + "+" + _loc10_;
               }
               else
               {
                  _loc6_ += (_loc6_ ? "\n" : "") + GamePredef.AWAKEN_PROP_DICT[_loc9_] + "+" + _loc10_;
               }
               _loc8_++;
            }
         }
         rightProp1.htmlText = _loc5_;
         rightProp2.htmlText = _loc6_;
      }
      
      private function onSoulChange(param1:Object = null) : void
      {
         if(!param1)
         {
            return;
         }
         _core.player.trainSoulLvl = param1.soulLvl;
         _core.player.trainSoulExp = param1.soulExp;
         this.updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get rightHint() : Label
      {
         return this._1569478973rightHint;
      }
      
      private function helpHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc2_:String = Language.TRAIN_SOUL_PANEL[7];
         _helpAlert = Alert.show(LanguageUtil.html2PlainText(_loc2_),"",Alert.YES);
         _helpAlert.mx_internal::alertForm.mx_internal::textField.htmlText = _loc2_;
      }
      
      public function set leftProp1(param1:Text) : void
      {
         var _loc2_:Object = this._1728062823leftProp1;
         if(_loc2_ !== param1)
         {
            this._1728062823leftProp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftProp1",_loc2_,param1));
         }
      }
      
      public function set leftProp2(param1:Text) : void
      {
         var _loc2_:Object = this._1728062824leftProp2;
         if(_loc2_ !== param1)
         {
            this._1728062824leftProp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftProp2",_loc2_,param1));
         }
      }
      
      private function soulHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(_core.player.mysteryCrystal <= 0)
         {
            return;
         }
         if(_core.player.trainSoulLvl >= MAX_SOUL_LVL)
         {
            _core.sysMidNote(Language.TRAIN_SOUL_PANEL[10]);
            return;
         }
         _core.remote.call("trainSoul",new Responder(onSoulChange));
      }
      
      [Bindable(event="propertyChange")]
      public function get levelProgress() : ColorProgressBar
      {
         return this._3211823levelProgress;
      }
      
      public function ___TrainSoulPanel_Text5_click(param1:MouseEvent) : void
      {
         helpHandler(param1);
      }
      
      public function set leftHint(param1:Label) : void
      {
         var _loc2_:Object = this._1718064942leftHint;
         if(_loc2_ !== param1)
         {
            this._1718064942leftHint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftHint",_loc2_,param1));
         }
      }
      
      public function set rightProp1(param1:Text) : void
      {
         var _loc2_:Object = this._1401550734rightProp1;
         if(_loc2_ !== param1)
         {
            this._1401550734rightProp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightProp1",_loc2_,param1));
         }
      }
      
      public function set rightProp2(param1:Text) : void
      {
         var _loc2_:Object = this._1401550733rightProp2;
         if(_loc2_ !== param1)
         {
            this._1401550733rightProp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightProp2",_loc2_,param1));
         }
      }
      
      private function updateMovie() : void
      {
         var soulStep:int = 0;
         var soulUrl:String = null;
         var onLoadMovie:Function = null;
         soulStep = int(_core.player.trainSoulLvl || 1);
         if(!_soulMovie)
         {
            soulUrl = ResManager.getResUrl(RES_CODE);
            _soulMovie = ResCacher.getInstance().getRes(soulUrl) as MovieClip;
            if(!_soulMovie)
            {
               onLoadMovie = function(param1:Event):void
               {
                  var _loc2_:LoaderInfo = ResCacher.getInstance().current_complete_loader;
                  if(_loc2_.url.indexOf(soulUrl) == -1)
                  {
                     return;
                  }
                  ResCacher.getInstance().removeEventListener("complete",onLoadMovie);
                  _soulMovie = param1.target.current_complete_loader.content as MovieClip;
                  addUpMovie();
                  _soulMovie.gotoAndStop(soulStep);
               };
               ResCacher.getInstance().addEventListener("complete",onLoadMovie);
               return;
            }
            addUpMovie();
         }
         _soulMovie.gotoAndStop(soulStep);
      }
      
      [Bindable(event="propertyChange")]
      public function get leftProp2() : Text
      {
         return this._1728062824leftProp2;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelText() : Label
      {
         return this._1656229167levelText;
      }
      
      [Bindable(event="propertyChange")]
      public function get leftProp1() : Text
      {
         return this._1728062823leftProp1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rightProp1() : Text
      {
         return this._1401550734rightProp1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rightProp2() : Text
      {
         return this._1401550733rightProp2;
      }
      
      private function addUpMovie() : void
      {
         _soulMovie.x = movieHolder.width - _soulMovie.width >> 1;
         _soulMovie.y = -10;
         movieHolder.addChild(_soulMovie);
      }
      
      override public function show() : void
      {
         super.show();
         initialized && updateView();
      }
      
      private function _TrainSoulPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrainSoulPanel_BasicTitleCanvas1.text = param1;
         },"_TrainSoulPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[1] + _core.player.mysteryCrystal;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrainSoulPanel_Label1.text = param1;
         },"_TrainSoulPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TrainSoulPanel_Label1.filters = param1;
         },"_TrainSoulPanel_Label1.filters");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return Assets.UP_ARROW;
         },function(param1:Object):void
         {
            _TrainSoulPanel_Image1.source = param1;
         },"_TrainSoulPanel_Image1.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrainSoulPanel_Label2.text = param1;
         },"_TrainSoulPanel_Label2.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TrainSoulPanel_Label2.filters = param1;
         },"_TrainSoulPanel_Label2.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            leftHint.text = param1;
         },"leftHint.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            leftHint.filters = param1;
         },"leftHint.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            leftProp1.filters = param1;
         },"leftProp1.filters");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            leftProp2.filters = param1;
         },"leftProp2.filters");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrainSoulPanel_Label4.text = param1;
         },"_TrainSoulPanel_Label4.text");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TrainSoulPanel_Label4.filters = param1;
         },"_TrainSoulPanel_Label4.filters");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rightHint.text = param1;
         },"rightHint.text");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            rightHint.filters = param1;
         },"rightHint.filters");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            rightProp1.filters = param1;
         },"rightProp1.filters");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            rightProp2.filters = param1;
         },"rightProp2.filters");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            levelText.filters = param1;
         },"levelText.filters");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            levelProgress.title = param1;
         },"levelProgress.title");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrainSoulPanel_FilterButton1.label = param1;
         },"_TrainSoulPanel_FilterButton1.label");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TrainSoulPanel_FilterButton1.filters = param1;
         },"_TrainSoulPanel_FilterButton1.filters");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _TrainSoulPanel_Text5.filters = param1;
         },"_TrainSoulPanel_Text5.filters");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRAIN_SOUL_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TrainSoulPanel_Text5.htmlText = param1;
         },"_TrainSoulPanel_Text5.htmlText");
         result[21] = binding;
         return result;
      }
   }
}

