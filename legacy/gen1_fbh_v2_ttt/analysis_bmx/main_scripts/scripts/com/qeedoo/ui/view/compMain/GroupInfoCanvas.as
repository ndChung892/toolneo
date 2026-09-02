package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.GroupMemberCanvas;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.collections.ArrayCollection;
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Menu;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GroupInfoCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _GroupInfoCanvas_GroupMemberCanvas1:Array;
      
      private var _3646rp:Repeater;
      
      private var _1174397725_GroupInfoCanvas_VBox1:VBox;
      
      private var _90794110_core:Core = Core.getInstance();
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1482965868groupVBox:VBox;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "id":"groupVBox",
               "stylesFactory":function():void
               {
                  this.verticalGap = 3;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Repeater,
                        "id":"rp",
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":GroupMemberCanvas,
                              "id":"_GroupInfoCanvas_GroupMemberCanvas1",
                              "events":{"click":"___GroupInfoCanvas_GroupMemberCanvas1_click"}
                           })]};
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      public function GroupInfoCanvas()
      {
         super();
         mx_internal::_document = this;
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupInfoCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get groupVBox() : VBox
      {
         return this._1482965868groupVBox;
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      public function set _GroupInfoCanvas_VBox1(param1:VBox) : void
      {
         var _loc2_:Object = this._1174397725_GroupInfoCanvas_VBox1;
         if(_loc2_ !== param1)
         {
            this._1174397725_GroupInfoCanvas_VBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_GroupInfoCanvas_VBox1",_loc2_,param1));
         }
      }
      
      private function _GroupInfoCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _core.player.groupAC;
         _loc1_ = rp.currentItem;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupInfoCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupInfoCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_GroupInfoCanvasWatcherSetupUtil");
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
      
      public function refresh() : void
      {
         rp.dataProvider = _core.player.groupAC;
      }
      
      private function onClickHandler(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(!_core.player.isLeader)
         {
            if(_core.player.groupAfk)
            {
               menuPop([{
                  "id":3,
                  "label":Language.GROUPPANEL_U[11]
               },{
                  "id":0,
                  "label":GamePredef.SELF_MENU_LEAVE_G
               }]);
            }
            else
            {
               menuPop([{
                  "id":3,
                  "label":Language.GROUPPANEL_U[12]
               },{
                  "id":0,
                  "label":GamePredef.SELF_MENU_LEAVE_G
               }]);
            }
         }
         else
         {
            _loc2_ = param1.currentTarget;
            if(_loc2_.isLeader)
            {
               menuPop([{
                  "id":0,
                  "label":GamePredef.SELF_MENU_LEAVE_G
               }]);
            }
            else if(_core.groupMemberListArr)
            {
               if(Boolean(_core.groupMemberListArr[_loc2_.cid]) && !_core.groupMemberListArr[_loc2_.cid].groupAfk)
               {
                  menuPop([{
                     "id":2,
                     "cid":_loc2_.cid,
                     "label":Language.GROUPPANEL_U[0]
                  },{
                     "id":1,
                     "cid":_loc2_.cid,
                     "label":GamePredef.CHAR_MENU_KICK
                  }]);
               }
               if(Boolean(_core.groupMemberListArr[_loc2_.cid]) && Boolean(_core.groupMemberListArr[_loc2_.cid].groupAfk))
               {
                  menuPop([{
                     "id":1,
                     "cid":_loc2_.cid,
                     "label":GamePredef.CHAR_MENU_KICK
                  }]);
               }
            }
            else
            {
               menuPop([{
                  "id":2,
                  "cid":_loc2_.cid,
                  "label":Language.GROUPPANEL_U[0]
               },{
                  "id":1,
                  "cid":_loc2_.cid,
                  "label":GamePredef.CHAR_MENU_KICK
               }]);
            }
         }
      }
      
      public function ___GroupInfoCanvas_GroupMemberCanvas1_click(param1:MouseEvent) : void
      {
         onClickHandler(param1);
      }
      
      private function groupAfk() : void
      {
         var groupAc:ArrayCollection = null;
         var leader:Charactor = null;
         var i:* = undefined;
         var can_back:Boolean = false;
         var dis:Number = NaN;
         var func:Function = null;
         if(!_core.player.groupAfk)
         {
            _core.remote.call("groupAFK",null);
         }
         else
         {
            groupAc = _core.player.groupAC;
            for(i in groupAc)
            {
               if(Boolean(groupAc[i]) && Boolean(groupAc[i].isLeader))
               {
                  if(groupAc[i].id)
                  {
                     leader = _core.getCharactor(groupAc[i].id);
                  }
                  else
                  {
                     leader = Charactor(groupAc[i]);
                  }
               }
            }
            can_back = false;
            if(leader)
            {
               if(leader.posMapId == _core.player.posMapId)
               {
                  dis = ToolKit.getDisByXY(_core.player.posX,_core.player.posY,leader.posX,leader.posY);
                  if(dis < GamePredef.AFK_CAN_BACK_DIS)
                  {
                     can_back = true;
                  }
               }
            }
            if(!can_back)
            {
               if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[_core.cid]) && Boolean(_core.groupMemberListArr[_core.cid].groupAfk))
               {
                  _core.player.groupAfk = _core.groupMemberListArr[_core.cid].groupAfk;
               }
               if(!_core.player.groupAfk)
               {
                  _core.sysMidNote(Language.GROUPPANEL_U[15]);
                  return;
               }
               if(Boolean(_core.player.state) && (_core.player.state == GamePredef.ST_BATTLE || _core.player.state == GamePredef.ST_WATCH))
               {
                  _core.sysMidNote(Language.GROUPPANEL_U[17]);
                  return;
               }
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("unGroupAFK",null,false);
                  }
               };
               Alert.show(Language.GROUPPANEL_U[13],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               _core.remote.call("unGroupAFK",null,true);
            }
         }
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         var _loc2_:Object = param1.target.selectedItem;
         switch(_loc2_.id)
         {
            case 0:
               _core.remote.call("groupLeave",null);
               break;
            case 1:
               if(_loc2_.cid > 0)
               {
                  _core.remote.call("groupKick",null,_loc2_.cid);
               }
               break;
            case 2:
               if(_loc2_.cid > 0)
               {
                  _core.remote.call("groupGiveLeader",null,_loc2_.cid);
               }
               break;
            case 3:
               groupAfk();
         }
         Menu(param1.target).removeEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      [Bindable(event="propertyChange")]
      public function get _GroupInfoCanvas_VBox1() : VBox
      {
         return this._1174397725_GroupInfoCanvas_VBox1;
      }
      
      public function set groupVBox(param1:VBox) : void
      {
         var _loc2_:Object = this._1482965868groupVBox;
         if(_loc2_ !== param1)
         {
            this._1482965868groupVBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupVBox",_loc2_,param1));
         }
      }
      
      private function menuPop(param1:Object) : void
      {
         var _loc2_:Menu = CustomMenu.createMenu(null,param1);
         _loc2_.show(stage.mouseX,stage.mouseY);
         _loc2_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      private function _GroupInfoCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return _core.player.groupAC;
         },function(param1:Object):void
         {
            rp.dataProvider = param1;
         },"rp.dataProvider");
         result[0] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Charactor
         {
            return rp.mx_internal::getItemAt(param2[0]);
         },function(param1:Charactor, param2:Array):void
         {
            _GroupInfoCanvas_GroupMemberCanvas1[param2[0]].player = param1;
         },"_GroupInfoCanvas_GroupMemberCanvas1.player");
         result[1] = binding;
         return result;
      }
      
      public function set rp(param1:Repeater) : void
      {
         var _loc2_:Object = this._3646rp;
         if(_loc2_ !== param1)
         {
            this._3646rp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rp() : Repeater
      {
         return this._3646rp;
      }
   }
}

