package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StarBattleReport extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3614s1:MyButton;
      
      public var _StarBattleReport_BasicGlowButton1:BasicGlowButton;
      
      private var _3616s3:MyButton;
      
      private var _3618s5:MyButton;
      
      private var _859638800txtDie:Label;
      
      private var _1464371768txtTitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _3615s2:MyButton;
      
      private var _3617s4:MyButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _callBack:Function;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _totalScore:uint;
      
      public var _StarBattleReport_Label1:Label;
      
      public var _StarBattleReport_Label2:Label;
      
      public var _StarBattleReport_Label3:Label;
      
      private var _3059468comm:Label;
      
      private var _1465478654txtScore:Label;
      
      private var _878522019txtTime:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":274,
               "height":330,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"txtTitle"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_StarBattleReport_Label1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 25;
                     this.color = 16493886;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":24,
                        "y":52
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_StarBattleReport_Label2",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 25;
                     this.color = 16493886;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":24,
                        "y":95
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_StarBattleReport_Label3",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 25;
                     this.color = 16752172;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":24,
                        "y":150
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MyButton,
                  "id":"s1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":47,
                        "y":205,
                        "width":20,
                        "height":20,
                        "orient":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MyButton,
                  "id":"s2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":87,
                        "y":205,
                        "width":20,
                        "height":20,
                        "orient":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MyButton,
                  "id":"s3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":127,
                        "y":205,
                        "width":20,
                        "height":20,
                        "orient":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MyButton,
                  "id":"s4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":167,
                        "y":205,
                        "width":20,
                        "height":20,
                        "orient":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MyButton,
                  "id":"s5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":207,
                        "y":205,
                        "width":20,
                        "height":20,
                        "orient":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "stylesFactory":function():void
                  {
                     this.fontFamily = "GameNumber";
                     this.fontSize = 25;
                     this.color = 16702720;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":179,
                        "y":148,
                        "text":"100"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "stylesFactory":function():void
                  {
                     this.fontSize = 25;
                     this.color = 16702720;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":156,
                        "y":150,
                        "text":"/",
                        "width":15
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"txtScore",
                  "stylesFactory":function():void
                  {
                     this.fontFamily = "GameNumber";
                     this.fontSize = 25;
                     this.color = 16702720;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":98,
                        "y":148,
                        "text":"100"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"txtTime",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 25;
                     this.color = 7536384;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":145,
                        "y":51,
                        "text":"00:00:00"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"txtDie",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 25;
                     this.color = 7536384;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":145,
                        "y":95,
                        "text":"0"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"comm",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.fontSize = 25;
                     this.color = 65280;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":240};
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_StarBattleReport_BasicGlowButton1",
                  "events":{"click":"___StarBattleReport_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":285,
                        "styleName":"CrystalBlueButton"
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function StarBattleReport()
      {
         super();
         mx_internal::_document = this;
         this.width = 274;
         this.height = 330;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___StarBattleReport_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StarBattleReport._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtScore() : Label
      {
         return this._1465478654txtScore;
      }
      
      public function set txtScore(param1:Label) : void
      {
         var _loc2_:Object = this._1465478654txtScore;
         if(_loc2_ !== param1)
         {
            this._1465478654txtScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtScore",_loc2_,param1));
         }
      }
      
      private function showWarStarAndComment(param1:Number) : void
      {
         var _loc2_:int = 1;
         if(param1 > 90)
         {
            _loc2_ = 5;
            comm.text = Language.STAR_BATTLE_REPORT[1];
         }
         else if(param1 > 80)
         {
            _loc2_ = 4;
            comm.text = Language.STAR_BATTLE_REPORT[2];
         }
         else if(param1 > 60)
         {
            _loc2_ = 3;
            comm.text = Language.STAR_BATTLE_REPORT[3];
         }
         else if(param1 > 30)
         {
            _loc2_ = 2;
            comm.text = Language.STAR_BATTLE_REPORT[4];
         }
         else
         {
            comm.text = Language.STAR_BATTLE_REPORT[5];
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 5)
         {
            if(_loc2_ >= _loc3_)
            {
               this["s" + _loc3_].enabled = true;
               this["s" + _loc3_].progress = 1;
            }
            else
            {
               this["s" + _loc3_].enabled = false;
            }
            _loc3_++;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StarBattleReport = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StarBattleReport_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_StarBattleReportWatcherSetupUtil");
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
      public function get comm() : Label
      {
         return this._3059468comm;
      }
      
      public function ___StarBattleReport_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function exit() : void
      {
         if(Boolean(_callBack))
         {
            _callBack();
         }
      }
      
      private function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get s3() : MyButton
      {
         return this._3616s3;
      }
      
      [Bindable(event="propertyChange")]
      public function get s4() : MyButton
      {
         return this._3617s4;
      }
      
      private function _StarBattleReport_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.STAR_BATTLE_REPORT[6];
         _loc1_ = Language.STAR_BATTLE_REPORT[7];
         _loc1_ = Language.STAR_BATTLE_REPORT[8];
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = Language.STAR_BATTLE_REPORT[9];
      }
      
      [Bindable(event="propertyChange")]
      public function get s1() : MyButton
      {
         return this._3614s1;
      }
      
      [Bindable(event="propertyChange")]
      public function get s2() : MyButton
      {
         return this._3615s2;
      }
      
      public function set comm(param1:Label) : void
      {
         var _loc2_:Object = this._3059468comm;
         if(_loc2_ !== param1)
         {
            this._3059468comm = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comm",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s5() : MyButton
      {
         return this._3618s5;
      }
      
      public function set txtTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1464371768txtTitle;
         if(_loc2_ !== param1)
         {
            this._1464371768txtTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtTitle",_loc2_,param1));
         }
      }
      
      private function updateMyButtonProgress(param1:Number) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ <= 5)
         {
            if(param1 >= _loc2_ * 20)
            {
               this["s" + _loc2_].enabled = true;
               this["s" + _loc2_].progress = 1;
            }
            else
            {
               this["s" + _loc2_].enabled = false;
            }
            _loc2_++;
         }
      }
      
      public function set txtTime(param1:Label) : void
      {
         var _loc2_:Object = this._878522019txtTime;
         if(_loc2_ !== param1)
         {
            this._878522019txtTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtTime",_loc2_,param1));
         }
      }
      
      public function set s1(param1:MyButton) : void
      {
         var _loc2_:Object = this._3614s1;
         if(_loc2_ !== param1)
         {
            this._3614s1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtTitle() : BasicTitleCanvas
      {
         return this._1464371768txtTitle;
      }
      
      private function onResultHandler(param1:*) : void
      {
         txtTitle.text = Language.STAR_BATTLE_REPORT[0];
         if(param1.r == 1)
         {
            totalScore = param1.s.score;
            txtTime.text = getTimeBySec(Math.round(param1.s.time / 1000));
            txtDie.text = param1.s.die ? param1.s.die : "0";
            _core.view.getUI(ViewManager.POPU_STAR_INSTACE_MAP).setOneStar(param1.s.id,param1.s.level,param1.s.score);
         }
      }
      
      public function set s3(param1:MyButton) : void
      {
         var _loc2_:Object = this._3616s3;
         if(_loc2_ !== param1)
         {
            this._3616s3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s3",_loc2_,param1));
         }
      }
      
      override public function hide() : void
      {
         if(this.visible)
         {
            this.visible = false;
            exit();
         }
      }
      
      public function set s5(param1:MyButton) : void
      {
         var _loc2_:Object = this._3618s5;
         if(_loc2_ !== param1)
         {
            this._3618s5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s5",_loc2_,param1));
         }
      }
      
      private function _StarBattleReport_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_BATTLE_REPORT[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarBattleReport_Label1.text = param1;
         },"_StarBattleReport_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_BATTLE_REPORT[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarBattleReport_Label2.text = param1;
         },"_StarBattleReport_Label2.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_BATTLE_REPORT[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarBattleReport_Label3.text = param1;
         },"_StarBattleReport_Label3.text");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Class):void
         {
            s1.skin = param1;
         },"s1.skin");
         result[3] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Class):void
         {
            s2.skin = param1;
         },"s2.skin");
         result[4] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Class):void
         {
            s3.skin = param1;
         },"s3.skin");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Class):void
         {
            s4.skin = param1;
         },"s4.skin");
         result[6] = binding;
         binding = new Binding(this,function():Class
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Class):void
         {
            s5.skin = param1;
         },"s5.skin");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_BATTLE_REPORT[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarBattleReport_BasicGlowButton1.label = param1;
         },"_StarBattleReport_BasicGlowButton1.label");
         result[8] = binding;
         return result;
      }
      
      public function set s2(param1:MyButton) : void
      {
         var _loc2_:Object = this._3615s2;
         if(_loc2_ !== param1)
         {
            this._3615s2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s2",_loc2_,param1));
         }
      }
      
      private function set totalScore(param1:uint) : void
      {
         var currentScore:uint = 0;
         var onEnter:Function = null;
         var num:uint = param1;
         _totalScore = num;
         currentScore = 0;
         onEnter = function(param1:Event):void
         {
            if(++currentScore < _totalScore)
            {
               txtScore.text = currentScore.toString();
               ++currentScore;
            }
            else
            {
               param1.currentTarget.removeEventListener(Event.ENTER_FRAME,onEnter);
               txtScore.text = _totalScore.toString();
            }
         };
         showWarStarAndComment(_totalScore);
         this.addEventListener(Event.ENTER_FRAME,onEnter);
      }
      
      [Bindable(event="propertyChange")]
      public function get txtTime() : Label
      {
         return this._878522019txtTime;
      }
      
      public function set s4(param1:MyButton) : void
      {
         var _loc2_:Object = this._3617s4;
         if(_loc2_ !== param1)
         {
            this._3617s4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s4",_loc2_,param1));
         }
      }
      
      public function ___StarBattleReport_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         this.hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get txtDie() : Label
      {
         return this._859638800txtDie;
      }
      
      private function getTimeBySec(param1:uint) : String
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc2_:String = "";
         if(param1 > 3600)
         {
            _loc3_ = Math.floor(param1 / 3600);
            _loc4_ = Math.floor((param1 - 3600 * _loc3_) / 60);
            param1 = param1 - _loc3_ * 3600 - _loc4_ * 60;
            _loc2_ = _loc3_ + ":" + _loc4_ + ":" + param1;
         }
         else
         {
            _loc4_ = Math.floor(param1 / 60);
            param1 -= _loc4_ * 60;
            _loc2_ = (_loc4_ < 10 ? "0" + _loc4_ : _loc4_) + ":" + (param1 < 10 ? "0" + param1 : param1);
         }
         return _loc2_;
      }
      
      public function set txtDie(param1:Label) : void
      {
         var _loc2_:Object = this._859638800txtDie;
         if(_loc2_ !== param1)
         {
            this._859638800txtDie = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtDie",_loc2_,param1));
         }
      }
      
      public function showResult(param1:Function) : void
      {
         this.show();
         _core.remote.call("battlePlayEnd",new Responder(onResultHandler));
         this._callBack = param1;
      }
   }
}

