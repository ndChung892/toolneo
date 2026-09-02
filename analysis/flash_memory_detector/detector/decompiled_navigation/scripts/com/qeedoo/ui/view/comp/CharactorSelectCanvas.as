package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CharactorSelectCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _CharactorSelectCanvas_RoundedLabel2:RoundedLabel;
      
      public var _CharactorSelectCanvas_RoundedLabel3:RoundedLabel;
      
      private var _1387368223cLevel:String;
      
      private var _core:Core;
      
      private var _3560248tips:String = "";
      
      mx_internal var _watchers:Array;
      
      public var deleted:Boolean = false;
      
      public var _CharactorSelectCanvas_Image1:Image;
      
      private var _252017581cIconUrl:String;
      
      public var cid:Number;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _93848974cName:String;
      
      mx_internal var _bindings:Array;
      
      public var cImgUrl:String;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _1395491115cClass:String;
      
      public var _CharactorSelectCanvas_RoundedLabel1:RoundedLabel;
      
      public function CharactorSelectCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":129,
                  "height":67,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Image,
                     "id":"_CharactorSelectCanvas_Image1",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "-2";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":12,
                           "width":49,
                           "height":47,
                           "scaleContent":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_CharactorSelectCanvas_RoundedLabel1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":61,
                           "y":5,
                           "width":58
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_CharactorSelectCanvas_RoundedLabel2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":61,
                           "y":24,
                           "width":58
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_CharactorSelectCanvas_RoundedLabel3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":61,
                           "y":41,
                           "width":58
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
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
            this.borderStyle = "none";
            this.borderColor = 0;
         };
         this.width = 129;
         this.height = 67;
         this.styleName = "CanvasStartBtnBack";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CharactorSelectCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cName() : String
      {
         return this._93848974cName;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CharactorSelectCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CharactorSelectCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_CharactorSelectCanvasWatcherSetupUtil");
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
      
      public function set cName(param1:String) : void
      {
         var _loc2_:Object = this._93848974cName;
         if(_loc2_ !== param1)
         {
            this._93848974cName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cName",_loc2_,param1));
         }
      }
      
      private function _CharactorSelectCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = cIconUrl;
         _loc1_ = cName;
         _loc1_ = "LV " + cLevel;
         _loc1_ = cClass;
      }
      
      public function set cIconUrl(param1:String) : void
      {
         var _loc2_:Object = this._252017581cIconUrl;
         if(_loc2_ !== param1)
         {
            this._252017581cIconUrl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cIconUrl",_loc2_,param1));
         }
      }
      
      public function set cClass(param1:String) : void
      {
         var _loc2_:Object = this._1395491115cClass;
         if(_loc2_ !== param1)
         {
            this._1395491115cClass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cClass",_loc2_,param1));
         }
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            filters = [GamePredef.FILTER_CHAR_SELECTED];
         }
         else
         {
            filters = [];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tips() : String
      {
         return this._3560248tips;
      }
      
      public function set cLevel(param1:String) : void
      {
         var _loc2_:Object = this._1387368223cLevel;
         if(_loc2_ !== param1)
         {
            this._1387368223cLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cLevel",_loc2_,param1));
         }
      }
      
      private function update(param1:Object) : void
      {
         var _loc4_:Date = null;
         var _loc5_:String = null;
         var _loc2_:Object = _core.data.getGameDataList(GamePredef.TBL_CLASS);
         if(!_loc2_)
         {
            callLater(update,[param1]);
            return;
         }
         if(Boolean(param1.delTime) && param1.delTime > 0)
         {
            this.alpha = 0.5;
            _loc4_ = new Date(param1.delTime * 1000);
            _loc5_ = "";
            _loc5_ = Language.CHARACTOR_DELETE[0].replace("{year}",int(_loc4_.getFullYear()));
            _loc5_ = _loc5_.replace("{month}",int(ToolKit.add(_loc4_.getMonth(),1)));
            _loc5_ = _loc5_.replace("{dates}",int(_loc4_.getDate()));
            _loc5_ = _loc5_.replace("{hour}",int(_loc4_.getHours()));
            _loc5_ = _loc5_.replace("{minutes}",int(_loc4_.getMinutes()));
            _loc5_ = _loc5_.replace("{cname}",param1.name);
            this.tips = _loc5_;
            deleted = true;
         }
         else
         {
            this.tips = "";
         }
         cName = param1.name;
         cLevel = _core.basic.expToLevel(param1.exp).toString();
         cClass = _loc2_[param1.classId].name;
         var _loc3_:Number = Number(Number(param1.gender) <= 0 ? _loc2_[param1.classId].largeImgMale : _loc2_[param1.classId].largeImgFemale);
         cImgUrl = ResManager.getIconUrl(_loc3_);
         cIconUrl = ResManager.getIconUrl(param1.iconCode);
         cid = Number(param1.id);
      }
      
      [Bindable(event="propertyChange")]
      public function get cIconUrl() : String
      {
         return this._252017581cIconUrl;
      }
      
      [Bindable(event="propertyChange")]
      public function get cClass() : String
      {
         return this._1395491115cClass;
      }
      
      public function set cData(param1:Object) : void
      {
         update(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get cLevel() : String
      {
         return this._1387368223cLevel;
      }
      
      private function _CharactorSelectCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return cIconUrl;
         },function(param1:Object):void
         {
            _CharactorSelectCanvas_Image1.source = param1;
         },"_CharactorSelectCanvas_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = cName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorSelectCanvas_RoundedLabel1.text = param1;
         },"_CharactorSelectCanvas_RoundedLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "LV " + cLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorSelectCanvas_RoundedLabel2.text = param1;
         },"_CharactorSelectCanvas_RoundedLabel2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = cClass;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorSelectCanvas_RoundedLabel3.text = param1;
         },"_CharactorSelectCanvas_RoundedLabel3.text");
         result[3] = binding;
         return result;
      }
      
      public function set tips(param1:String) : void
      {
         var _loc2_:Object = this._3560248tips;
         if(_loc2_ !== param1)
         {
            this._3560248tips = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tips",_loc2_,param1));
         }
      }
   }
}

