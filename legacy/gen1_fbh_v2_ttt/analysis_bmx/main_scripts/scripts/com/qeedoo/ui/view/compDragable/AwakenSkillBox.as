package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.view.compMain.UserBarCanvas;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AwakenSkillBox extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1656229167levelText:Label;
      
      private var _1990847082skillIcon:Image;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _skillMeta:Object;
      
      mx_internal var _watchers:Array;
      
      private var _core:Core;
      
      public function AwakenSkillBox()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___AwakenSkillBox_Button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnReduce"};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"TransparentSlot",
                        "mouseEnabled":false,
                        "width":34,
                        "height":34,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"skillIcon",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"levelText",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.bottom = "0";
                              this.right = "0";
                              this.fontSize = 8;
                              this.fontFamily = "Arial";
                              this.textAlign = "right";
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___AwakenSkillBox_Button2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnAdd"};
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
            this.horizontalGap = 2;
            this.verticalAlign = "middle";
         };
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AwakenSkillBox._watcherSetupUtil = param1;
      }
      
      public function cleanView() : void
      {
         _skillMeta = null;
         skillIcon.source = null;
         levelText.text = "";
         skillIcon.toolTip = "";
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AwakenSkillBox = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AwakenSkillBox_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AwakenSkillBoxWatcherSetupUtil");
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
      public function get levelText() : Label
      {
         return this._1656229167levelText;
      }
      
      public function updateView(param1:Object) : void
      {
         _skillMeta = param1;
         if(!_skillMeta)
         {
            this.cleanView();
            return;
         }
         skillIcon.source = ResManager.getIconUrl(param1.iconCode);
         this.updateLevelAndTip();
      }
      
      private function _AwakenSkillBox_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      private function addPointHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(!_skillMeta)
         {
            return;
         }
         var _loc2_:int = int(_skillMeta.costPoints);
         if(_core.player.awakenPoint < _loc2_)
         {
            _core.sysMidNote(Language.AWAKEN_PANEL[17]);
            return;
         }
         var _loc3_:int = int(_skillMeta.maxLevel);
         var _loc4_:int = int(_skillMeta.reqPoints);
         var _loc5_:String = _skillMeta.skillCodeName;
         var _loc6_:Array = _loc5_.split("|");
         var _loc7_:Object = _core.player.awakenPointDict;
         var _loc8_:String = _loc6_[0];
         var _loc9_:int = Boolean(_loc7_) && _loc7_.hasOwnProperty(_loc8_) ? int(_loc7_[_loc8_]) : 0;
         if(_loc9_ >= _loc3_)
         {
            _core.sysMidNote(Language.AWAKEN_PANEL[18]);
            return;
         }
         if(_core.player.awakenPointUsed < _loc4_)
         {
            _core.sysMidNote(LanguageUtil.replace(Language.AWAKEN_PANEL[19],{"num":_loc4_}));
            return;
         }
         _core.remote.call("addAwakenPoint",new Responder(onAddAwakenPoint),_skillMeta.id);
      }
      
      private function updateLevelAndTip() : void
      {
         if(!_skillMeta)
         {
            this.cleanView();
            return;
         }
         var _loc1_:String = _skillMeta.skillCodeName;
         var _loc2_:Array = _loc1_.split("|");
         var _loc3_:String = _loc2_[0];
         var _loc4_:Object = _core.player.awakenPointDict;
         var _loc5_:int = (Boolean(_loc4_)) && _loc4_.hasOwnProperty(_loc3_) ? int(_loc4_[_loc3_]) : 0;
         levelText.htmlText = _loc5_ > 0 ? "<font color=\'#00FF00\'>" + _loc5_ + "</font>" : String(_loc5_);
         var _loc6_:int = int(_skillMeta.maxLevel);
         var _loc7_:String = _skillMeta.description;
         var _loc8_:Array = _loc7_.split("|");
         var _loc9_:int = _loc5_ > 0 ? int(_loc5_ - 1) : _loc5_;
         var _loc10_:String = "<font color=\'#FFFF00\'>" + _skillMeta.name + Language.AWAKEN_PANEL[13] + _loc5_ + "/" + _loc6_ + "</font>\n" + _loc8_[_loc9_];
         if(_loc5_ == 0)
         {
            if(Boolean(_skillMeta.reqPoints) && Number(_skillMeta.reqPoints) > 0)
            {
               _loc10_ += LanguageUtil.replace(Language.AWAKEN_PANEL[14],{"num":_skillMeta.reqPoints});
            }
         }
         else if(_loc5_ < _loc6_ && Boolean(_loc8_[_loc9_ + 1]))
         {
            _loc10_ += Language.AWAKEN_PANEL[15] + _loc8_[_loc9_ + 1];
         }
         _loc10_ += LanguageUtil.replace(Language.AWAKEN_PANEL[22],{"num":_skillMeta.costPoints});
         skillIcon.toolTip = _loc10_;
      }
      
      private function reducePointHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(!_skillMeta)
         {
            return;
         }
         var _loc2_:String = _skillMeta.skillCodeName;
         var _loc3_:Object = _core.player.awakenPointDict;
         var _loc4_:Array = _loc2_.split("|");
         var _loc5_:String = _loc4_[0];
         if(!_loc3_ || !_loc3_.hasOwnProperty(_loc5_) || Number(_loc3_[_loc5_]) <= 0)
         {
            _core.sysMidNote(Language.AWAKEN_PANEL[16]);
            return;
         }
         _core.remote.call("reduceAwakenPoint",new Responder(onAddAwakenPoint),_skillMeta.id);
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
      
      public function set skillIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1990847082skillIcon;
         if(_loc2_ !== param1)
         {
            this._1990847082skillIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillIcon",_loc2_,param1));
         }
      }
      
      private function onAddAwakenPoint(param1:Object = null) : void
      {
         if(!param1)
         {
            return;
         }
         _core.player.awakenPoint = param1.awakenPoint;
         _core.player.awakenPointUsed = param1.awakenPointUsed;
         _core.player.awakenPointDict = param1.awakenDict;
         this.updateLevelAndTip();
         var _loc2_:AwakenPanel = _core.view.getUI(ViewManager.PANEL_AWAKEN) as AwakenPanel;
         _loc2_.initialized && _loc2_.updatePoints();
         var _loc3_:SkillManager = _core.view.getUI(ViewManager.PANEL_SKILLMANAGER) as SkillManager;
         _loc3_.initialized && _loc3_.update();
         var _loc4_:UserBarCanvas = _core.view.getUI(ViewManager.MAIN_USER_BAR) as UserBarCanvas;
         _loc4_.initialized && _loc4_.initView();
         var _loc5_:BattleSettingPanel = _core.view.getUI(ViewManager.PANEL_BATTLESET) as BattleSettingPanel;
         _loc5_.initialized && _loc5_.initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get skillIcon() : Image
      {
         return this._1990847082skillIcon;
      }
      
      public function ___AwakenSkillBox_Button1_click(param1:MouseEvent) : void
      {
         reducePointHandler(param1);
      }
      
      public function ___AwakenSkillBox_Button2_click(param1:MouseEvent) : void
      {
         addPointHandler(param1);
      }
      
      private function _AwakenSkillBox_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            levelText.filters = param1;
         },"levelText.filters");
         result[0] = binding;
         return result;
      }
   }
}

