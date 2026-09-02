package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compDragable.InputPanel;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class EnemyHBox extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core;
      
      private var _1378835447btnEgg:Button;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _2097447169btnSword:Button;
      
      private var _242228723btnGlasss:Button;
      
      private var _547606487btnRaving:Button;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _obj:Object = null;
      
      public function EnemyHBox()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnGlasss",
                  "events":{"click":"__btnGlasss_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnGlass"};
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnSword",
                  "events":{"click":"__btnSword_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnSword"};
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnEgg",
                  "events":{"click":"__btnEgg_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnEgg"};
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnRaving",
                  "events":{"click":"__btnRaving_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnRaving"};
                  }
               })]};
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
            this.horizontalGap = 0;
         };
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EnemyHBox._watcherSetupUtil = param1;
      }
      
      public function __btnRaving_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function useRaving() : void
      {
         _core.remote.useFootle(_obj.name);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnSword() : Button
      {
         return this._2097447169btnSword;
      }
      
      private function useFlower(param1:uint) : void
      {
         if(param1 <= 0)
         {
            return;
         }
         if(_core.hasFlowerNum() >= param1)
         {
            _core.remote.addPopNum(_obj.name,param1);
         }
         else
         {
            _core.sysMidNote(Language.ENEMYHBOX_S[16]);
         }
      }
      
      private function useTrack() : void
      {
         _core.remote.useTrack(_obj.name);
      }
      
      public function set btnSword(param1:Button) : void
      {
         var _loc2_:Object = this._2097447169btnSword;
         if(_loc2_ !== param1)
         {
            this._2097447169btnSword = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnSword",_loc2_,param1));
         }
      }
      
      public function set btnEgg(param1:Button) : void
      {
         var _loc2_:Object = this._1378835447btnEgg;
         if(_loc2_ !== param1)
         {
            this._1378835447btnEgg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnEgg",_loc2_,param1));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         _obj = param1.revenge;
         if(param1.revenge.isFriend)
         {
            isFriend = true;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EnemyHBox = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EnemyHBox_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_EnemyHBoxWatcherSetupUtil");
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
      
      public function __btnGlasss_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnRaving() : Button
      {
         return this._547606487btnRaving;
      }
      
      private function useSeek() : void
      {
         _core.remote.useSeek(_obj.name);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnEgg() : Button
      {
         return this._1378835447btnEgg;
      }
      
      private function _EnemyHBox_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ENEMYHBOX_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnGlasss.toolTip = param1;
         },"btnGlasss.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ENEMYHBOX_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnSword.toolTip = param1;
         },"btnSword.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ENEMYHBOX_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnEgg.toolTip = param1;
         },"btnEgg.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ENEMYHBOX_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnRaving.toolTip = param1;
         },"btnRaving.toolTip");
         result[3] = binding;
         return result;
      }
      
      public function set btnGlasss(param1:Button) : void
      {
         var _loc2_:Object = this._242228723btnGlasss;
         if(_loc2_ !== param1)
         {
            this._242228723btnGlasss = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnGlasss",_loc2_,param1));
         }
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:InputPanel = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Button = Button(param1.currentTarget);
         switch(_loc2_.id)
         {
            case "btnGlasss":
               _loc3_ = _core.hasSeekNum();
               if(_loc3_ > 0)
               {
                  useSeek();
               }
               else
               {
                  _core.sysMidNote(Language.ENEMYHBOX_S[10]);
               }
               break;
            case "btnSword":
               _loc4_ = _core.hasTrackNum();
               if(_loc4_ > 0)
               {
                  useTrack();
               }
               else
               {
                  _core.sysMidNote(Language.ENEMYHBOX_S[11]);
               }
               break;
            case "btnEgg":
               _loc5_ = _core.hasEggNum();
               if(_loc5_ > 0)
               {
                  _loc6_ = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
                  _loc6_.showInputNum(Language.ENEMYHBOX_S[9],"",useEgg,1,1,_loc5_);
               }
               else
               {
                  _core.sysMidNote(Language.ENEMYHBOX_S[8]);
               }
               break;
            case "btnRaving":
               if(_loc2_.styleName == "BtnRaving")
               {
                  _loc7_ = _core.hasRavingNum();
                  if(_loc7_ > 0)
                  {
                     useRaving();
                  }
                  else
                  {
                     _core.sysMidNote(Language.ENEMYHBOX_S[12]);
                  }
               }
               else if(_loc2_.styleName == "BtnFlower")
               {
                  _loc8_ = _core.hasFlowerNum();
                  if(_loc8_ > 0)
                  {
                     _loc6_ = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
                     _loc6_.showInputNum(Language.ENEMYHBOX_S[17],"",useFlower,1,1,_loc8_);
                  }
                  else
                  {
                     _core.sysMidNote(Language.ENEMYHBOX_S[15]);
                  }
               }
         }
      }
      
      public function __btnSword_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set obj(param1:Object) : void
      {
         _obj = param1;
      }
      
      public function set btnRaving(param1:Button) : void
      {
         var _loc2_:Object = this._547606487btnRaving;
         if(_loc2_ !== param1)
         {
            this._547606487btnRaving = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnRaving",_loc2_,param1));
         }
      }
      
      public function get obj() : Object
      {
         return _obj;
      }
      
      public function __btnEgg_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnGlasss() : Button
      {
         return this._242228723btnGlasss;
      }
      
      private function _EnemyHBox_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ENEMYHBOX_S[4];
         _loc1_ = Language.ENEMYHBOX_S[5];
         _loc1_ = Language.ENEMYHBOX_S[6];
         _loc1_ = Language.ENEMYHBOX_S[13];
      }
      
      public function set isFriend(param1:Boolean) : void
      {
         if(param1)
         {
            btnRaving.styleName = "BtnFlower";
            btnRaving.toolTip = Language.ENEMYHBOX_S[14];
         }
      }
      
      private function useEgg(param1:int) : void
      {
         if(param1 <= 0)
         {
            return;
         }
         if(_core.hasEggNum() >= param1)
         {
            _core.remote.delPopNum(_obj.name,param1);
         }
         else
         {
            _core.sysMidNote(Language.ENEMYHBOX_S[7]);
         }
      }
   }
}

