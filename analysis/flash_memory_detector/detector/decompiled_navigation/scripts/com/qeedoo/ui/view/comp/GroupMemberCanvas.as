package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Charactor;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GroupMemberCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const GROUPAFKIMG:Class = GroupMemberCanvas_GROUPAFKIMG;
      
      private var _level:String;
      
      mx_internal var _watchers:Array = [];
      
      private var _1528665424_is_Afk:Boolean;
      
      private var _100313435image:Canvas;
      
      private var _memberMapInfo:GroupMemberMapInfoCanvas;
      
      private var _2946224_url:String;
      
      private var _873613749tipAfk:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1916551235imgHead:Image;
      
      private var _is_Leader:Boolean;
      
      private var _lastCallTime:Number = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _name:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Canvas,
               "id":"image",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "width":38,
                     "height":38,
                     "styleName":"CanvasGroupMember",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Image,
                        "id":"imgHead",
                        "events":{
                           "rollOver":"__imgHead_rollOver",
                           "rollOut":"__imgHead_rollOut"
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "useHandCursor":true,
                              "buttonMode":true,
                              "x":3,
                              "y":3,
                              "width":32,
                              "height":32
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Image,
                        "id":"tipAfk",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":2,
                              "y":2
                           };
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      private var _class:String;
      
      private var _core:Core = Core.getInstance();
      
      private var _cid:Number;
      
      public function GroupMemberCanvas()
      {
         super();
         mx_internal::_document = this;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupMemberCanvas._watcherSetupUtil = param1;
      }
      
      public function set imgHead(param1:Image) : void
      {
         var _loc2_:Object = this._1916551235imgHead;
         if(_loc2_ !== param1)
         {
            this._1916551235imgHead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgHead",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupMemberCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupMemberCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_GroupMemberCanvasWatcherSetupUtil");
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
      
      private function updateMemberInfo() : void
      {
         player = _core.player.getGroupMemberByCid(_cid);
         if(!_memberMapInfo)
         {
            _memberMapInfo = new GroupMemberMapInfoCanvas();
            this.parent.addChildAt(_memberMapInfo,this.parent.numChildren);
         }
         if(!_memberMapInfo || !_memberMapInfo.inCreateComplete)
         {
            return;
         }
         _memberMapInfo.x = 40.3;
         _memberMapInfo.y = this.y;
         _memberMapInfo.height = 60;
         _memberMapInfo.width = 125;
         _memberMapInfo.charName = _name;
         _memberMapInfo.charclass = _class;
         _memberMapInfo.level = _level;
         if(_memberMapInfo.tip)
         {
            _memberMapInfo.tip.visible = true;
            _memberMapInfo.tip.includeInLayout = true;
         }
         _memberMapInfo.visible = true;
         var _loc1_:Date = new Date();
         var _loc2_:Number = _loc1_.time;
         if(_loc2_ - _lastCallTime >= 1000 && _cid != _core.player.id)
         {
            _core.remote.call("getGroupMemberPosistion",new Responder(onGetGroupMemberInfo),_cid);
            _lastCallTime = _loc2_;
         }
      }
      
      public function set tipAfk(param1:Image) : void
      {
         var _loc2_:Object = this._873613749tipAfk;
         if(_loc2_ !== param1)
         {
            this._873613749tipAfk = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipAfk",_loc2_,param1));
         }
      }
      
      private function set _is_Afk(param1:Boolean) : void
      {
         var _loc2_:Object = this._1528665424_is_Afk;
         if(_loc2_ !== param1)
         {
            this._1528665424_is_Afk = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_is_Afk",_loc2_,param1));
         }
      }
      
      private function _GroupMemberCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return _url;
         },function(param1:Object):void
         {
            imgHead.source = param1;
         },"imgHead.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return GROUPAFKIMG;
         },function(param1:Object):void
         {
            tipAfk.source = param1;
         },"tipAfk.source");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _is_Afk;
         },function(param1:Boolean):void
         {
            tipAfk.visible = param1;
         },"tipAfk.visible");
         result[2] = binding;
         return result;
      }
      
      private function _GroupMemberCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _url;
         _loc1_ = GROUPAFKIMG;
         _loc1_ = _is_Afk;
      }
      
      public function setColorRed() : void
      {
      }
      
      public function __imgHead_rollOut(param1:MouseEvent) : void
      {
         hidenMemberInfo();
      }
      
      public function set image(param1:Canvas) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _url() : String
      {
         return this._2946224_url;
      }
      
      public function set player(param1:Charactor) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:Core = Core.getInstance();
         _cid = param1.id;
         _url = ResManager.getIconUrl(param1.iconCode);
         _is_Leader = param1.isLeader;
         _is_Afk = param1.groupAfk;
         _name = param1.name;
         _class = _loc2_.getClassName(param1.classId);
         _level = Language.GROUPMEMBERCANVAS_S[0] + param1.level;
         if(param1.groupAfk)
         {
            _loc3_ = 0.3086;
            _loc4_ = 0.694;
            _loc5_ = 0.082;
            this.imgHead.filters = [new ColorMatrixFilter([_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,0,0,0,1,0])];
         }
         else
         {
            this.imgHead.filters = [];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imgHead() : Image
      {
         return this._1916551235imgHead;
      }
      
      public function get cid() : Number
      {
         return _cid;
      }
      
      private function showInfo() : void
      {
         var _loc1_:Core = Core.getInstance();
         _loc1_.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(_cid);
      }
      
      public function __imgHead_rollOver(param1:MouseEvent) : void
      {
         updateMemberInfo();
      }
      
      public function onGetGroupMemberInfo(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            if(param1.map)
            {
               _loc2_ = _core.data.gameData[GamePredef.TBL_MAP][param1.map].name;
               if(_loc2_)
               {
                  _memberMapInfo.map = _loc2_;
               }
            }
            if(Boolean(param1.x) && Boolean(param1.y))
            {
               _memberMapInfo.xy = Math.floor(param1.x / 10) + "," + Math.floor(param1.y / 10);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tipAfk() : Image
      {
         return this._873613749tipAfk;
      }
      
      public function get isLeader() : Boolean
      {
         return _is_Leader;
      }
      
      private function set _url(param1:String) : void
      {
         var _loc2_:Object = this._2946224_url;
         if(_loc2_ !== param1)
         {
            this._2946224_url = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_url",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _is_Afk() : Boolean
      {
         return this._1528665424_is_Afk;
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : Canvas
      {
         return this._100313435image;
      }
      
      public function hidenMemberInfo() : void
      {
         if(!_memberMapInfo)
         {
            _memberMapInfo = new GroupMemberMapInfoCanvas();
            this.parent.addChildAt(_memberMapInfo,this.parent.numChildren);
         }
         if(!_memberMapInfo || !_memberMapInfo.inCreateComplete)
         {
            return;
         }
         _memberMapInfo.visible = false;
         if(_memberMapInfo.tip)
         {
            _memberMapInfo.tip.visible = false;
            _memberMapInfo.tip.includeInLayout = false;
         }
      }
   }
}

