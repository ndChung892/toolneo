package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.CrossTeamFightPanel;
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
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossTeamFightResultInfo extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var arr:Object = {
         8:[4,0],
         9:[4,1],
         10:[4,2],
         11:[4,3],
         12:[3,0],
         13:[3,1],
         14:[2,0]
      };
      
      private var _112797rep:BasicDelayButton;
      
      private var _746483037areaTxt:Label;
      
      private var _data:Object;
      
      private var rid:String = "";
      
      private var _3469809rImg:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _469523524repArray:ArrayCollection = new ArrayCollection();
      
      private var _104387img:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _index:int = -1;
      
      private var _1721941989nameTxt:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":146,
               "height":65,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":146,
                        "height":46,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"nameTxt",
                           "stylesFactory":function():void
                           {
                              this.left = "3";
                              this.top = "4";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":160};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"areaTxt",
                           "stylesFactory":function():void
                           {
                              this.left = "3";
                              this.bottom = "4";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":160};
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"rImg",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":0
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"rep",
                  "events":{"click":"__rep_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "styleName":"BtnNormalRed",
                        "height":24,
                        "x":0,
                        "y":43
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":90,
                        "y":35,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function CrossTeamFightResultInfo()
      {
         super();
         mx_internal::_document = this;
         this.width = 146;
         this.height = 65;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___CrossTeamFightResultInfo_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossTeamFightResultInfo._watcherSetupUtil = param1;
      }
      
      private function toLookRep() : void
      {
         if(rid)
         {
            _core.remote.call("applyReplayInfoByBid",new Responder(onLookRep),rid);
         }
      }
      
      public function __rep_click(param1:MouseEvent) : void
      {
         toLookRep();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossTeamFightResultInfo = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossTeamFightResultInfo_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_CrossTeamFightResultInfoWatcherSetupUtil");
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
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rep() : BasicDelayButton
      {
         return this._112797rep;
      }
      
      public function init() : void
      {
         nameTxt.text = "";
         areaTxt.text = "";
         rep.visible = false;
         rImg.source = "";
         _data = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get areaTxt() : Label
      {
         return this._746483037areaTxt;
      }
      
      public function set index(param1:int) : void
      {
         _index = param1;
      }
      
      private function onLookRep(param1:Object) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      private function get repArray() : ArrayCollection
      {
         return this._469523524repArray;
      }
      
      public function ___CrossTeamFightResultInfo_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set rep(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._112797rep;
         if(_loc2_ !== param1)
         {
            this._112797rep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rep",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function set areaTxt(param1:Label) : void
      {
         var _loc2_:Object = this._746483037areaTxt;
         if(_loc2_ !== param1)
         {
            this._746483037areaTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaTxt",_loc2_,param1));
         }
      }
      
      public function set nameTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1721941989nameTxt;
         if(_loc2_ !== param1)
         {
            this._1721941989nameTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameTxt",_loc2_,param1));
         }
      }
      
      public function refresh(param1:Object, param2:Object) : void
      {
         _data = param1;
         if(!param1)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         if(_index == 14)
         {
            if(!_data.team1)
            {
               _loc4_ = _data.team2;
            }
            else if(!_data.team2)
            {
               _loc4_ = _data.team1;
            }
            else
            {
               _loc4_ = _data.win == _data.team1.leaderId ? _data.team1 : _data.team2;
               _loc5_ = _data.win != _data.team1.leaderId ? _data.team1 : _data.team2;
            }
         }
         else if(_index % 2 == 0)
         {
            _loc4_ = _data.team1;
            _loc5_ = _data.team2;
         }
         else
         {
            _loc4_ = _data.team2;
            _loc5_ = _data.team1;
         }
         if(!_loc4_)
         {
            return;
         }
         nameTxt.text = Language.CROSS_FIGHT_PANEL_U[52] + _loc4_.teamName;
         areaTxt.text = Language.CROSS_FIGHT_PANEL_U[25] + _loc4_.area;
         var _loc6_:int = CrossTeamFightPanel.TEAM_CROSSPK_STATE;
         if(_data.status == 4 && !param1.win)
         {
            rImg.source = ResManager.getIconUrl(4130220000281);
         }
         else if(Boolean(_loc5_) && Boolean(_data.status == 4) && Number(_loc5_.leaderId) == param1.win)
         {
            rImg.source = ResManager.getIconUrl(4130220000281);
         }
         else if(!_loc5_)
         {
            if(_index == 14)
            {
               rImg.source = ResManager.getIconUrl(4130220000282);
            }
            else
            {
               rImg.source = ResManager.getIconUrl(4130220000280);
            }
         }
         else if(Number(_loc4_.leaderId) == param1.win)
         {
            if(_index == 14)
            {
               if(CrossTeamFightPanel.TEAM_CROSSPK_GROUP == CrossTeamFightPanel.tabSelect)
               {
                  if(_loc6_ == 1 || _loc6_ > 5)
                  {
                     rImg.source = ResManager.getIconUrl(4130220000279);
                  }
                  else
                  {
                     rImg.source = ResManager.getIconUrl(4130220000282);
                  }
               }
               else
               {
                  rImg.source = ResManager.getIconUrl(4130220000279);
               }
            }
            else
            {
               rImg.source = ResManager.getIconUrl(4130220000226);
            }
         }
         else if(Boolean(_loc5_) && Number(_loc5_.leaderId) == param1.win)
         {
            if(CrossTeamFightPanel.TEAM_CROSSPK_GROUP == CrossTeamFightPanel.tabSelect)
            {
               if(_loc6_ <= 5 && _loc6_ > 2 && (_index == 13 || _index == 12))
               {
                  rImg.source = ResManager.getIconUrl(4130220000282);
               }
               else
               {
                  rImg.source = ResManager.getIconUrl(4130220000227);
               }
            }
            else
            {
               rImg.source = ResManager.getIconUrl(4130220000227);
            }
         }
         else
         {
            rImg.source = null;
         }
         if(CrossTeamFightPanel.TEAM_CROSSPK_GROUP == CrossTeamFightPanel.tabSelect)
         {
            if(_loc6_ <= 5 || !param2)
            {
               rep.visible = false;
               return;
            }
         }
         var _loc7_:Array = arr[_index];
         if((Boolean(_loc7_)) && Boolean(param2) && Boolean(param2[_loc7_[0]]) && Boolean(param2[_loc7_[0]][_loc7_[1]]) && Boolean(param2[_loc7_[0]][_loc7_[1]].rid))
         {
            rid = param2[_loc7_[0]][_loc7_[1]].rid.toString();
            rep.visible = true;
         }
         else
         {
            rep.visible = false;
         }
      }
      
      public function set rImg(param1:Image) : void
      {
         var _loc2_:Object = this._3469809rImg;
         if(_loc2_ !== param1)
         {
            this._3469809rImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameTxt() : Label
      {
         return this._1721941989nameTxt;
      }
      
      private function getReps() : void
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         repArray.removeAll();
         if(Boolean(_data) && Boolean(_data.rid) && _data.rid.toString().length > 0)
         {
            _loc1_ = _data.rid;
            _loc2_ = _loc1_.split("#");
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               repArray.addItem({
                  "label":Language.CROSS_FIGHT_PANEL_U[56] + Language.GAMEPREDEF_S[544 + _loc3_] + Language.CROSS_FIGHT_PANEL_U[57],
                  "data":_loc2_[_loc3_]
               });
               _loc3_++;
            }
         }
      }
      
      private function _CrossTeamFightResultInfo_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rep.label = param1;
         },"rep.label");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get rImg() : Image
      {
         return this._3469809rImg;
      }
      
      private function set repArray(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._469523524repArray;
         if(_loc2_ !== param1)
         {
            this._469523524repArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"repArray",_loc2_,param1));
         }
      }
      
      private function _CrossTeamFightResultInfo_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[14];
      }
   }
}

