package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetSoulCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var iconCode:Number;
      
      public var _PetSoulCanvas_Image1:Image;
      
      private var soulIcon:UIComponent;
      
      mx_internal var _watchers:Array = [];
      
      private var _1891404463soulLevel:Label;
      
      private var _1740157726soulName:Label;
      
      protected var _toolTip:Object;
      
      private var _100313435image:Image;
      
      private var _578058629pickBtn:LinkButton;
      
      private var _1322534916resovleBtn:LinkButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var index:int;
      
      public var _resLoader:Loader;
      
      private var imgBg:Class = PetSoulCanvas_imgBg;
      
      mx_internal var _bindings:Array = [];
      
      private var soulId:int;
      
      public var soul:SoulSprite;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":85,
               "height":100,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_PetSoulCanvas_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"image",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":8,
                        "y":2,
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"soulName",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                     this.horizontalCenter = "0";
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":26,
                        "y":47,
                        "text":""
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"soulLevel",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                     this.horizontalCenter = "0";
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":26,
                        "y":60,
                        "text":""
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"pickBtn",
                  "events":{"click":"__pickBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "5";
                     this.bottom = "5";
                     this.textDecoration = "underline";
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"resovleBtn",
                  "events":{"click":"__resovleBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "5";
                     this.bottom = "5";
                     this.textDecoration = "underline";
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function PetSoulCanvas()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "BtnStdRed";
         this.width = 85;
         this.height = 100;
         this.addEventListener("creationComplete",___PetSoulCanvas_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetSoulCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get resovleBtn() : LinkButton
      {
         return this._1322534916resovleBtn;
      }
      
      private function transformExpInPanel() : void
      {
         var temp:Object;
         var gfunc:Function = null;
         var func:Function = null;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         temp = GameData.d[GamePredef.TBL_PET_SOUL][soulId];
         if(Number(temp.color) > 1)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("transformExpInPanel",null,index);
               }
            };
            Alert.show(Language.PET_SOUL_S[40].replace("{name}",temp.name),"",Alert.YES | Alert.NO,null,func);
         }
         else
         {
            _core.remote.call("transformExpInPanel",null,index);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetSoulCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetSoulCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PetSoulCanvasWatcherSetupUtil");
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
      public function get soulName() : Label
      {
         return this._1740157726soulName;
      }
      
      public function init() : void
      {
         var _loc2_:String = null;
         var _loc1_:Object = GameData.d[GamePredef.TBL_PET_SOUL][soulId];
         if(!_loc1_)
         {
            return;
         }
         if(Boolean(_loc1_) && Boolean(_loc1_["iconCode"]))
         {
            iconCode = _loc1_["iconCode"];
            _loc2_ = ResManager.getResUrlNoHash(iconCode);
            soul = new SoulSprite();
            soul.show(_loc2_);
            soulIcon = new UIComponent();
            soulIcon.addChild(soul);
            this.image.addChild(soulIcon);
         }
         if(GameData.d[GamePredef.TBL_PET_SOUL][soulId]["color"] < 0)
         {
            pickBtn.visible = false;
            resovleBtn.x = 25;
         }
         else
         {
            pickBtn.visible = true;
            resovleBtn.x = 50;
         }
         resovleBtn.visible = true;
         soulName.text = _loc1_.name;
         soulLevel.text = "Lv." + _loc1_.level;
         soulName.setStyle("color",GamePredef.CODE_SOUL_COLOR[_loc1_.color]);
         soulLevel.setStyle("color",GamePredef.CODE_SOUL_COLOR[_loc1_.color]);
         image.addEventListener(MouseEvent.MOUSE_OVER,mouseOverHandler);
         image.addEventListener(MouseEvent.MOUSE_OUT,mouseOutHandler);
      }
      
      public function mouseOutHandler(param1:MouseEvent) : void
      {
         if(_toolTip)
         {
            _toolTip.hide();
         }
      }
      
      public function set soulLevel(param1:Label) : void
      {
         var _loc2_:Object = this._1891404463soulLevel;
         if(_loc2_ !== param1)
         {
            this._1891404463soulLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulLevel",_loc2_,param1));
         }
      }
      
      public function setData(param1:Object) : void
      {
         soulId = param1.soulId;
         index = param1.index;
      }
      
      public function set image(param1:Image) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
         }
      }
      
      private function showSoulToolTip() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         if(Boolean(_toolTip) && Boolean(_toolTip.tipData) && Boolean(_toolTip.tipData.temp) && _toolTip.tipData.temp.id == soulId)
         {
            _toolTip.show();
         }
         if(_core.data.hasData(GamePredef.TBL_PET_SOUL,soulId))
         {
            _loc2_ = {};
            _loc2_.temp = GameData.d[GamePredef.TBL_PET_SOUL][soulId];
            _toolTip = _core.view.getUI(ViewManager.TOOLTIP_PET_SOUL);
            _toolTip.object = _loc2_;
            _toolTip.show();
         }
      }
      
      public function set soulName(param1:Label) : void
      {
         var _loc2_:Object = this._1740157726soulName;
         if(_loc2_ !== param1)
         {
            this._1740157726soulName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulName",_loc2_,param1));
         }
      }
      
      private function putToSoulBag() : void
      {
         _core.remote.call("putSoulToBag",null,index);
      }
      
      private function _PetSoulCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = imgBg;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.PET_SOUL_S[6];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.PET_SOUL_S[4];
      }
      
      [Bindable(event="propertyChange")]
      public function get soulLevel() : Label
      {
         return this._1891404463soulLevel;
      }
      
      public function ___PetSoulCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _PetSoulCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return imgBg;
         },function(param1:Object):void
         {
            _PetSoulCanvas_Image1.source = param1;
         },"_PetSoulCanvas_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            pickBtn.setStyle("overSkin",param1);
         },"pickBtn.overSkin");
         result[1] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            pickBtn.setStyle("upSkin",param1);
         },"pickBtn.upSkin");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            pickBtn.setStyle("downSkin",param1);
         },"pickBtn.downSkin");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pickBtn.label = param1;
         },"pickBtn.label");
         result[4] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            resovleBtn.setStyle("overSkin",param1);
         },"resovleBtn.overSkin");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            resovleBtn.setStyle("upSkin",param1);
         },"resovleBtn.upSkin");
         result[6] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            resovleBtn.setStyle("downSkin",param1);
         },"resovleBtn.downSkin");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            resovleBtn.label = param1;
         },"resovleBtn.label");
         result[8] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : Image
      {
         return this._100313435image;
      }
      
      public function __pickBtn_click(param1:MouseEvent) : void
      {
         putToSoulBag();
      }
      
      public function __resovleBtn_click(param1:MouseEvent) : void
      {
         transformExpInPanel();
      }
      
      public function mouseOverHandler(param1:MouseEvent) : void
      {
         showSoulToolTip();
      }
      
      public function set resovleBtn(param1:LinkButton) : void
      {
         var _loc2_:Object = this._1322534916resovleBtn;
         if(_loc2_ !== param1)
         {
            this._1322534916resovleBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resovleBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pickBtn() : LinkButton
      {
         return this._578058629pickBtn;
      }
      
      public function set pickBtn(param1:LinkButton) : void
      {
         var _loc2_:Object = this._578058629pickBtn;
         if(_loc2_ !== param1)
         {
            this._578058629pickBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pickBtn",_loc2_,param1));
         }
      }
   }
}

