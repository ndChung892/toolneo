package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuildwarScoreCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _1303000775guildBattleScore:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":72,
               "height":36,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"guildBattleScore",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 20;
                     this.color = 16711680;
                     this.textAlign = "center";
                     this.fontWeight = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"100",
                        "styleName":"LabelBattleTimer",
                        "width":72,
                        "height":36,
                        "x":0,
                        "visible":true
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _watchers:Array = [];
      
      public function GuildwarScoreCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 72;
         this.height = 36;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuildwarScoreCanvas._watcherSetupUtil = param1;
      }
      
      private function _GuildwarScoreCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.PORTRAITCANVAS_U[1];
      }
      
      private function _GuildwarScoreCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            guildBattleScore.filters = param1;
         },"guildBattleScore.filters");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PORTRAITCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            guildBattleScore.toolTip = param1;
         },"guildBattleScore.toolTip");
         result[1] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildBattleScore() : Label
      {
         return this._1303000775guildBattleScore;
      }
      
      public function updateScore(param1:int) : *
      {
         guildBattleScore.text = Language.PORTRAITCANVAS_U[1] + " : " + param1.toString();
      }
      
      public function set guildBattleScore(param1:Label) : void
      {
         var _loc2_:Object = this._1303000775guildBattleScore;
         if(_loc2_ !== param1)
         {
            this._1303000775guildBattleScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildBattleScore",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuildwarScoreCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuildwarScoreCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_GuildwarScoreCanvasWatcherSetupUtil");
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
      
      public function setSocreVisible(param1:Boolean) : *
      {
         guildBattleScore.visible = param1;
      }
   }
}

