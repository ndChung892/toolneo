package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StarInstanceCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _enabled:Boolean = false;
      
      private var _705847778imgStar3:Image;
      
      private var _scoreNum:uint = 0;
      
      mx_internal var _watchers:Array = [];
      
      private var _3005871auto:Button;
      
      private var _878708453txtName:Label;
      
      public var _isClick:Boolean = false;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _705847776imgStar5:Image;
      
      private var _721510293imgBuild:MyButton;
      
      private var _705847779imgStar2:Image;
      
      private var _1472332155_level:int = 1;
      
      private var _name:String = "";
      
      private var _705847780imgStar1:Image;
      
      private var _705847777imgStar4:Image;
      
      private var _1396158280battle:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":180,
               "height":168,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"txtName",
                  "stylesFactory":function():void
                  {
                     this.color = 16261152;
                     this.fontSize = 16;
                     this.fontFamily = "Tahoma";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":112
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgStar1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":135,
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgStar2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":135,
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgStar3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":80,
                        "y":135,
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgStar4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":110,
                        "y":135,
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgStar5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":140,
                        "y":135,
                        "width":20,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":MyButton,
                  "id":"imgBuild",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "y":10,
                        "width":130,
                        "height":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"battle",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":41,
                        "y":82,
                        "label":"Fight",
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"auto",
                  "events":{
                     "mouseOver":"__auto_mouseOver",
                     "mouseOut":"__auto_mouseOut"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":85,
                        "y":82,
                        "label":"Auto",
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      public function StarInstanceCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 180;
         this.height = 168;
         this.addEventListener("creationComplete",___StarInstanceCanvas_SimpleCanvas1_creationComplete);
         this.addEventListener("rollOut",___StarInstanceCanvas_SimpleCanvas1_rollOut);
         this.addEventListener("rollOver",___StarInstanceCanvas_SimpleCanvas1_rollOver);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StarInstanceCanvas._watcherSetupUtil = param1;
      }
      
      public function get enable() : Boolean
      {
         return this._enabled;
      }
      
      public function set level(param1:int) : void
      {
         _level = param1;
         resetStarName();
      }
      
      private function set _level(param1:int) : void
      {
         var _loc2_:Object = this._1472332155_level;
         if(_loc2_ !== param1)
         {
            this._1472332155_level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_level",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _level() : int
      {
         return this._1472332155_level;
      }
      
      private function _StarInstanceCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Object):void
         {
            imgStar1.source = param1;
         },"imgStar1.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Object):void
         {
            imgStar2.source = param1;
         },"imgStar2.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Object):void
         {
            imgStar3.source = param1;
         },"imgStar3.source");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Object):void
         {
            imgStar4.source = param1;
         },"imgStar4.source");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.IMG_STARS_INS_LIGHT;
         },function(param1:Object):void
         {
            imgStar5.source = param1;
         },"imgStar5.source");
         result[4] = binding;
         return result;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = true;
         this._enabled = param1;
         if(this.imgBuild)
         {
            this.imgBuild.enabled = param1;
         }
         if(!param1)
         {
            this.toolTip = Language.STAR_BATTLE[0].toString().replace("{name}",_name).replace("{level}",_level);
         }
         else
         {
            this.toolTip = "";
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StarInstanceCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StarInstanceCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_StarInstanceCanvasWatcherSetupUtil");
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
      
      public function ___StarInstanceCanvas_SimpleCanvas1_rollOut(param1:MouseEvent) : void
      {
         autoVisible(2);
      }
      
      public function __auto_mouseOut(param1:MouseEvent) : void
      {
         mousePosistionChange(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get txtName() : Label
      {
         return this._878708453txtName;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgStar1() : Image
      {
         return this._705847780imgStar1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgStar2() : Image
      {
         return this._705847779imgStar2;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgStar3() : Image
      {
         return this._705847778imgStar3;
      }
      
      private function init() : void
      {
         txtName.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      [Bindable(event="propertyChange")]
      public function get imgStar4() : Image
      {
         return this._705847777imgStar4;
      }
      
      public function set starNum(param1:uint) : void
      {
         this._scoreNum = param1;
         var _loc2_:uint = 1;
         if(param1 > 90)
         {
            _loc2_ = 5;
         }
         else if(param1 > 80)
         {
            _loc2_ = 4;
         }
         else if(param1 > 60)
         {
            _loc2_ = 3;
         }
         else if(param1 > 30)
         {
            _loc2_ = 2;
         }
         var _loc3_:uint = 1;
         while(_loc3_ < 6)
         {
            if(param1 == 0)
            {
               this["imgStar" + _loc3_].visible = false;
            }
            else
            {
               this["imgStar" + _loc3_].visible = true;
            }
            if(_loc3_ > _loc2_)
            {
               this["imgStar" + _loc3_].source = ResManager.IMG_STARS_INS_DARK;
            }
            else
            {
               this["imgStar" + _loc3_].source = ResManager.IMG_STARS_INS_LIGHT;
            }
            _loc3_++;
         }
      }
      
      public function ___StarInstanceCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get auto() : Button
      {
         return this._3005871auto;
      }
      
      public function set txtName(param1:Label) : void
      {
         var _loc2_:Object = this._878708453txtName;
         if(_loc2_ !== param1)
         {
            this._878708453txtName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battle() : Button
      {
         return this._1396158280battle;
      }
      
      private function _StarInstanceCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
         _loc1_ = ResManager.IMG_STARS_INS_LIGHT;
      }
      
      public function set imgStar3(param1:Image) : void
      {
         var _loc2_:Object = this._705847778imgStar3;
         if(_loc2_ !== param1)
         {
            this._705847778imgStar3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgStar3",_loc2_,param1));
         }
      }
      
      public function set imgStar4(param1:Image) : void
      {
         var _loc2_:Object = this._705847777imgStar4;
         if(_loc2_ !== param1)
         {
            this._705847777imgStar4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgStar4",_loc2_,param1));
         }
      }
      
      public function set imgStar2(param1:Image) : void
      {
         var _loc2_:Object = this._705847779imgStar2;
         if(_loc2_ !== param1)
         {
            this._705847779imgStar2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgStar2",_loc2_,param1));
         }
      }
      
      public function autoVisible(param1:int) : void
      {
         if(param1 == 1)
         {
            if(this._enabled)
            {
               this.battle.visible = true;
               this.auto.visible = true;
            }
            else
            {
               this.battle.visible = false;
               this.auto.visible = false;
            }
         }
         else
         {
            this.battle.visible = false;
            this.auto.visible = false;
         }
      }
      
      public function set imgStar1(param1:Image) : void
      {
         var _loc2_:Object = this._705847780imgStar1;
         if(_loc2_ !== param1)
         {
            this._705847780imgStar1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgStar1",_loc2_,param1));
         }
      }
      
      public function ___StarInstanceCanvas_SimpleCanvas1_rollOver(param1:MouseEvent) : void
      {
         autoVisible(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get imgStar5() : Image
      {
         return this._705847776imgStar5;
      }
      
      public function set imgStar5(param1:Image) : void
      {
         var _loc2_:Object = this._705847776imgStar5;
         if(_loc2_ !== param1)
         {
            this._705847776imgStar5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgStar5",_loc2_,param1));
         }
      }
      
      public function set imgBuild(param1:MyButton) : void
      {
         var _loc2_:Object = this._721510293imgBuild;
         if(_loc2_ !== param1)
         {
            this._721510293imgBuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgBuild",_loc2_,param1));
         }
      }
      
      public function set auto(param1:Button) : void
      {
         var _loc2_:Object = this._3005871auto;
         if(_loc2_ !== param1)
         {
            this._3005871auto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"auto",_loc2_,param1));
         }
      }
      
      public function set resCode(param1:*) : void
      {
         imgBuild.skin = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgBuild() : MyButton
      {
         return this._721510293imgBuild;
      }
      
      private function resetStarName() : void
      {
         txtName.text = _name + " LV" + _level;
      }
      
      public function set battle(param1:Button) : void
      {
         var _loc2_:Object = this._1396158280battle;
         if(_loc2_ !== param1)
         {
            this._1396158280battle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battle",_loc2_,param1));
         }
      }
      
      public function __auto_mouseOver(param1:MouseEvent) : void
      {
         mousePosistionChange(1);
      }
      
      public function set starName(param1:String) : void
      {
         _name = param1;
         resetStarName();
      }
      
      private function mousePosistionChange(param1:int) : void
      {
         if(this._enabled && param1 == 1)
         {
            this._isClick = true;
         }
         else
         {
            this._isClick = false;
         }
      }
   }
}

