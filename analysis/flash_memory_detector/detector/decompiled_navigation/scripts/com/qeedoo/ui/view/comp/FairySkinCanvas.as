package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairySkinCanvas extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const FAIRY_BACKGROUND:Class = FairySkinCanvas_FAIRY_BACKGROUND;
      
      private static const FAIRY_BINDED:Class = FairySkinCanvas_FAIRY_BINDED;
      
      private var _fairyActive:int = 0;
      
      public var isLoadCharactorFairyFlag:Boolean = false;
      
      mx_internal var _watchers:Array = [];
      
      private var FAIRY_SKIN_NEED_ITEM:* = {
         15:true,
         16:true
      };
      
      private var _fairyResList:Array = new Array();
      
      private var btnDict:Dictionary = new Dictionary();
      
      private var _id:int = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _fairyCount:int = 0;
      
      private var _alert:Alert;
      
      private var _647326148fairySkillTitle:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _p:DragableCanvas;
      
      private var _1699633811imageCanvas:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":320,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"fairySkillTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"imageCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":34,
                        "width":300,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"auto",
                        "height":351
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function FairySkinCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 320;
         this.height = 400;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairySkinCanvas._watcherSetupUtil = param1;
      }
      
      private function updateView() : void
      {
         _core.remote.call("getFairyResAndList",new Responder(onGetFairyResAndList),null);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FairySkinCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairySkinCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FairySkinCanvasWatcherSetupUtil");
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
      
      private function onGetFairyResAndList(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            isLoadCharactorFairyFlag = true;
            _id = _core.cid;
            for(_loc2_ in _fairyResList)
            {
               delete _fairyResList[_loc2_];
            }
            if(param1)
            {
               if(param1.actFairy)
               {
                  _fairyActive = Number(param1.actFairy);
               }
               if(param1.actFairyList)
               {
                  if(String(param1.actFairyList).indexOf("|") >= 0)
                  {
                     _fairyResList = param1.actFairyList.split("|");
                  }
                  else
                  {
                     _fairyResList.push(Number(param1.actFairyList));
                  }
               }
            }
            updateFairSkinView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imageCanvas() : Canvas
      {
         return this._1699633811imageCanvas;
      }
      
      private function initSkinPanelView() : void
      {
         if(checkPanelView())
         {
            updateFairSkinView();
         }
      }
      
      private function checkPanelView() : Boolean
      {
         var _loc3_:* = undefined;
         var _loc1_:Array = GameData.d[GamePredef.TBL_FAIRY_TEMPALTE];
         if(!_loc1_)
         {
            return false;
         }
         var _loc2_:* = 0;
         for(_loc3_ in _loc1_)
         {
            if(_loc1_[_loc3_])
            {
               _loc2_++;
            }
         }
         if(_fairyCount == _loc2_)
         {
            return false;
         }
         return true;
      }
      
      public function set imageCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1699633811imageCanvas;
         if(_loc2_ !== param1)
         {
            this._1699633811imageCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imageCanvas",_loc2_,param1));
         }
      }
      
      public function onSetFairyRes(param1:Object) : void
      {
         if(param1)
         {
            if(param1.type == 2)
            {
               if(Boolean(_fairyActive != 0) && Boolean(btnDict["btn" + _fairyActive]) && Boolean(btnDict["btn" + _fairyActive].label))
               {
                  btnDict["btn" + _fairyActive].label = Language.FAIRY_MANAGER_PANEL_U[91];
               }
               _fairyActive = Number(param1.tid);
               if(Boolean(btnDict["btn" + _fairyActive]) && Boolean(btnDict["btn" + _fairyActive].label))
               {
                  btnDict["btn" + _fairyActive].label = Language.FAIRY_MANAGER_PANEL_U[90];
               }
            }
            else if(param1.type == 1)
            {
               if(Boolean(btnDict["btn" + _fairyActive]) && Boolean(btnDict["btn" + _fairyActive].label))
               {
                  btnDict["btn" + _fairyActive].label = Language.FAIRY_MANAGER_PANEL_U[91];
               }
               _fairyActive = null;
            }
         }
      }
      
      public function follow(param1:DragableCanvas) : void
      {
         _p = param1;
         this.x = param1.x + param1.width;
         this.y = param1.y;
         if(this.visible)
         {
            param1.addEventListener(DragableCanvas.EVENT_MOVE,onMove);
         }
      }
      
      public function clickBtn(param1:Event) : void
      {
         var tid:int = 0;
         var func:Function = null;
         var showtext:* = undefined;
         var event:Event = param1;
         tid = Number(event.currentTarget.name);
         if(tid == _fairyActive)
         {
            if(!checkThisFairyDress(tid))
            {
               updateView();
               return;
            }
            _core.remote.call("setFairyRes",new Responder(onSetFairyRes),tid,1);
         }
         else if(checkThisFairyDress(tid) && event.currentTarget.label == Language.FAIRY_MANAGER_PANEL_U[91])
         {
            _core.remote.call("setFairyRes",new Responder(onSetFairyRes),tid,2);
         }
         else if(!checkThisFairyDress(tid) && event.currentTarget.label == Language.FAIRY_MANAGER_PANEL_U[92])
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("setFairyResList",new Responder(onGetFairyResAndList),tid);
               }
            };
            showtext = Language.FAIRY_MANAGER_PANEL_U[93];
            if(FAIRY_SKIN_NEED_ITEM[int(tid)])
            {
               showtext = Language.FAIRY_MANAGER_PANEL_U[108];
            }
            _alert = Alert.show(showtext,null,Alert.YES | Alert.NO,null,func);
         }
         else
         {
            updateView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fairySkillTitle() : BasicTitleCanvas
      {
         return this._647326148fairySkillTitle;
      }
      
      private function _FairySkinCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[89];
      }
      
      private function checkThisFairyDress(param1:*) : Boolean
      {
         var _loc2_:* = undefined;
         for(_loc2_ in _fairyResList)
         {
            if(Number(_fairyResList[_loc2_]) == param1)
            {
               return true;
            }
         }
         for(_loc2_ in _core.player.fairyList)
         {
            if(Boolean(_core.player.fairyList[_loc2_].tData) && _core.player.fairyList[_loc2_].tData.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      private function _FairySkinCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[89];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fairySkillTitle.text = param1;
         },"fairySkillTitle.text");
         result[0] = binding;
         return result;
      }
      
      private function onMove(param1:Event) : void
      {
         this.x = _p.x + _p.width;
         this.y = _p.y;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(_p)
         {
            super.visible = param1;
            if(param1)
            {
               follow(_p);
               if(_id != _core.cid)
               {
                  isLoadCharactorFairyFlag = false;
               }
               if(!isLoadCharactorFairyFlag)
               {
                  updateView();
               }
               else
               {
                  initSkinPanelView();
               }
               if(this.parent)
               {
                  this.parent.setChildIndex(this,this.parent.numChildren - 1);
               }
            }
            else
            {
               _p.removeEventListener(DragableCanvas.EVENT_MOVE,onMove);
            }
         }
         else
         {
            super.visible = false;
         }
      }
      
      private function updateFairSkinView() : void
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:Image = null;
         var _loc14_:Image = null;
         var _loc15_:CharactorShowCanvas = null;
         var _loc16_:String = null;
         var _loc17_:Button = null;
         var _loc18_:SimpleCanvas = null;
         var _loc1_:Array = GameData.d[GamePredef.TBL_FAIRY_TEMPALTE];
         _loc2_ = new Array();
         for(_loc3_ in _loc1_)
         {
            _loc2_.push(_loc1_[_loc3_]);
         }
         for(_loc3_ in _loc2_)
         {
            if(_loc2_[_loc3_])
            {
               _loc2_[_loc3_].isHad = 2;
               for(_loc11_ in _core.player.fairyList)
               {
                  if(Boolean(_core.player.fairyList[_loc11_].tData) && _core.player.fairyList[_loc11_].tData.id == _loc2_[_loc3_].id)
                  {
                     _loc2_[_loc3_].isHad = 1;
                     break;
                  }
               }
            }
         }
         if(_fairyResList)
         {
            for(_loc3_ in _loc2_)
            {
               if(_loc2_[_loc3_])
               {
                  for(_loc12_ in _fairyResList)
                  {
                     if(_loc2_[_loc3_].id == Number(_fairyResList[_loc12_]))
                     {
                        _loc2_[_loc3_].isHad = 1;
                        break;
                     }
                  }
               }
            }
         }
         _loc2_.sortOn(["isHad","id"],Array.NUMERIC);
         var _loc4_:Array = imageCanvas.getChildren();
         if((Boolean(_loc4_)) && _loc4_.length > 0)
         {
            imageCanvas.removeAllChildren();
         }
         var _loc5_:int = 147;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = 0.3086;
         var _loc9_:Number = 0.694;
         var _loc10_:Number = 0.082;
         if(btnDict)
         {
            for(_loc3_ in btnDict)
            {
               delete btnDict[_loc3_];
            }
         }
         for(_loc3_ in _loc2_)
         {
            if(_loc2_[_loc3_])
            {
               _loc13_ = new Image();
               _loc13_.source = FAIRY_BACKGROUND;
               _loc14_ = new Image();
               _loc14_.source = FAIRY_BINDED;
               _loc15_ = new CharactorShowCanvas();
               _loc16_ = ResManager.getResUrl(_loc2_[_loc3_].rc);
               _loc15_.url = _loc16_;
               _loc15_.color = _loc2_[_loc3_].cc;
               _loc17_ = new Button();
               _loc17_.name = _loc2_[_loc3_].id;
               _loc17_.id = "btn" + _loc2_[_loc3_].id;
               btnDict[_loc17_.id] = _loc17_;
               _loc17_.addEventListener(MouseEvent.CLICK,clickBtn);
               if(_fairyActive == _loc2_[_loc3_].id)
               {
                  _loc17_.label = Language.FAIRY_MANAGER_PANEL_U[90];
               }
               else
               {
                  _loc17_.label = Language.FAIRY_MANAGER_PANEL_U[91];
               }
               _loc17_.styleName = "BtnStdRed";
               _loc18_ = new SimpleCanvas();
               _loc18_.verticalScrollPolicy = "off";
               _loc18_.id = "scanvas" + _loc2_[_loc3_].id;
               _loc18_.addChild(_loc13_);
               _loc18_.addChild(_loc15_);
               _loc18_.addChild(_loc14_);
               _loc18_.addChild(_loc17_);
               if(_loc5_ == 5)
               {
                  _loc5_ = 147;
               }
               else if(_loc5_ == 147)
               {
                  _loc5_ = 5;
               }
               if(_loc7_ == 0)
               {
                  _loc6_ = 6;
               }
               else if(_loc7_ / 2)
               {
                  _loc6_ = Math.floor(_loc7_ / 2) * 135 + 6;
               }
               _loc14_.x = 5;
               _loc14_.y = 5;
               _loc14_.width = 29;
               _loc14_.height = 90;
               _loc13_.x = 5;
               _loc13_.y = 5;
               _loc13_.width = 128;
               _loc13_.height = 128;
               _loc15_.x = 95;
               _loc15_.y = 170;
               _loc15_.width = 10;
               _loc15_.height = 13;
               _loc17_.x = 90;
               _loc17_.y = 105;
               _loc18_.x = _loc5_;
               if(_loc6_ == 6)
               {
                  _loc18_.y = 5;
               }
               else
               {
                  _loc18_.y = _loc6_;
               }
               _loc18_.height = 135;
               _loc18_.width = 135;
               _loc18_.styleName = "CanvasBorder";
               imageCanvas.addChild(_loc18_);
               if(Boolean(_loc2_[_loc3_].isHad) && _loc2_[_loc3_].isHad == 1)
               {
                  _loc13_.filters = [];
               }
               else
               {
                  _loc14_.visible = false;
                  _loc17_.label = Language.FAIRY_MANAGER_PANEL_U[92];
               }
               _loc7_++;
            }
         }
         _fairyCount = _loc7_;
      }
      
      public function set fairySkillTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._647326148fairySkillTitle;
         if(_loc2_ !== param1)
         {
            this._647326148fairySkillTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairySkillTitle",_loc2_,param1));
         }
      }
   }
}

