package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.containers.Canvas;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossTeamFightAwardRect extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var groupTypeKey:Array = ["A","B","C","D"];
      
      mx_internal var _watchers:Array = [];
      
      private var members:Object = {};
      
      private var _455921717getAwardBtn:BasicDelayButton;
      
      private var _33585252protectSlot1:ItemSlot;
      
      private var _33585253protectSlot2:ItemSlot;
      
      private var _33585254protectSlot3:ItemSlot;
      
      private var _33585255protectSlot4:ItemSlot;
      
      private var _33585256protectSlot5:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _index:int = -1;
      
      private var _1870010120titleTxt:String = "";
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":260,
               "height":70,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":45,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"t",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontWeight = "bold";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "width":60
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"protectSlot1",
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":80,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"protectSlot2",
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":115,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"protectSlot3",
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":150,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"protectSlot4",
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":185,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"protectSlot5",
                           "stylesFactory":function():void
                           {
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":220,
                                 "movable":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"getAwardBtn",
                  "events":{"click":"__getAwardBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "2";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalBlue",
                        "visible":true,
                        "y":45,
                        "width":75,
                        "height":20
                     };
                  }
               })]
            };
         }
      });
      
      private var _116t:Label;
      
      private var _core:Core = Core.getInstance();
      
      public function CrossTeamFightAwardRect()
      {
         super();
         mx_internal::_document = this;
         this.width = 260;
         this.height = 70;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossTeamFightAwardRect._watcherSetupUtil = param1;
      }
      
      private function getAllChampionMembers(param1:Object) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         if(!param1 || !param1.team || !param1.list)
         {
            return {};
         }
         var _loc2_:Object = {};
         for each(_loc3_ in param1.list)
         {
            if(Boolean(_loc3_) && Boolean(_loc3_[2]) && Boolean(_loc3_[2][0]))
            {
               _loc4_ = Number(_loc3_[2][0].win);
               _loc5_ = 0;
               while(_loc5_ < groupTypeKey.length)
               {
                  _loc6_ = groupTypeKey[_loc5_];
                  if(param1.team[_loc6_])
                  {
                     _loc7_ = param1.team[_loc6_][_loc4_];
                     if(!(!_loc7_ || !_loc7_.members))
                     {
                        if(!(!_loc7_.members[_core.player.id] || !_loc7_.members[_core.player.id].getAward))
                        {
                           objJoin(_loc2_,_loc7_.members);
                           break;
                        }
                     }
                  }
                  _loc5_++;
               }
            }
         }
         return _loc2_;
      }
      
      private function getFinalChampionMembers(param1:String, param2:Object) : Object
      {
         if(!param2 || !param2.team || !param2.list || !param2.list[param1] || !param2.list[param1][2] || !param2.list[param1][2][0])
         {
            return {};
         }
         var _loc3_:Number = Number(param2.list[param1][2][0].win);
         var _loc4_:Object = param2.team[param1][_loc3_];
         if(!_loc4_)
         {
            return {};
         }
         return _loc4_.members;
      }
      
      private function getAllFinalFour(param1:Object) : Object
      {
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc12_:int = 0;
         if(!param1 || !param1.team || !param1.list)
         {
            return {};
         }
         var _loc2_:Object = {};
         var _loc3_:Number = CrossTeamFightPanel.original_server_id * 1000000000000 + _core.player.id;
         for each(_loc4_ in param1.list)
         {
            if(!(!_loc4_ || !_loc4_[2] || !_loc4_[3]))
            {
               _loc5_ = Number(_loc4_[2][0][1]);
               _loc6_ = Number(_loc4_[2][0][2]);
               for each(_loc7_ in _loc4_[3])
               {
                  _loc8_ = Number(_loc7_[1]);
                  _loc9_ = Number(_loc7_[2]);
                  _loc12_ = 0;
                  while(_loc12_ < groupTypeKey.length)
                  {
                     _loc11_ = groupTypeKey[_loc12_];
                     if(_loc8_ != _loc5_ && _loc8_ != _loc6_)
                     {
                        if(param1.team[_loc11_])
                        {
                           _loc10_ = param1.team[_loc11_][_loc8_];
                           if(!(!_loc10_ || !_loc10_.members))
                           {
                              if(!(!_loc10_.members[_loc3_] || !_loc10_.members[_loc3_].getAward))
                              {
                                 if(_loc10_)
                                 {
                                    objJoin(_loc2_,_loc10_.members);
                                    break;
                                 }
                              }
                           }
                        }
                     }
                     _loc12_++;
                  }
                  _loc12_ = 0;
                  while(_loc12_ < groupTypeKey.length)
                  {
                     _loc11_ = groupTypeKey[_loc12_];
                     if(_loc9_ != _loc5_ && _loc9_ != _loc6_)
                     {
                        if(param1.team[_loc11_])
                        {
                           _loc10_ = param1.team[_loc11_][_loc9_];
                           if(!(!_loc10_ || !_loc10_.members))
                           {
                              if(!(!_loc10_.members[_loc3_] || !_loc10_.members[_loc3_].getAward))
                              {
                                 if(_loc10_)
                                 {
                                    objJoin(_loc2_,_loc10_.members);
                                    break;
                                 }
                              }
                           }
                        }
                     }
                     _loc12_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function getOid(param1:Object) : void
      {
      }
      
      private function getFinalAward() : void
      {
         _core.remote.call("teamCrossPKGetAward",new Responder(onGetFinalAward),_index + 1);
      }
      
      public function __getAwardBtn_click(param1:MouseEvent) : void
      {
         getFinalAward();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossTeamFightAwardRect = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossTeamFightAwardRect_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_CrossTeamFightAwardRectWatcherSetupUtil");
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
      
      public function set index(param1:int) : void
      {
         _index = param1;
      }
      
      public function refreshItems(param1:Object, param2:Object = null, param3:Object = null) : void
      {
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         reset();
         if(!param1)
         {
            param1 = {};
         }
         var _loc4_:Object = param1[_index] || {};
         var _loc5_:int = 1;
         for(_loc6_ in _loc4_)
         {
            if(_loc5_ > 5)
            {
               break;
            }
            _loc7_ = int(_loc4_[_loc6_]);
            if(_loc7_)
            {
               this["protectSlot" + _loc5_].type = GamePredef.TBL_ITEM_TEMPLATE;
               this["protectSlot" + _loc5_].giid = int(_loc6_);
               this["protectSlot" + _loc5_].enabled = true;
               this["protectSlot" + _loc5_].acceptable = false;
               this["protectSlot" + _loc5_].visible = true;
            }
            _loc5_++;
         }
         refreshWinner(param2,param3);
      }
      
      private function init() : void
      {
         refreshItems({});
      }
      
      [Bindable(event="propertyChange")]
      public function get getAwardBtn() : BasicDelayButton
      {
         return this._455921717getAwardBtn;
      }
      
      private function _CrossTeamFightAwardRect_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = titleTxt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t.text = param1;
         },"t.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot1.slotType = param1;
         },"protectSlot1.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot2.slotType = param1;
         },"protectSlot2.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot3.slotType = param1;
         },"protectSlot3.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot4.slotType = param1;
         },"protectSlot4.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot5.slotType = param1;
         },"protectSlot5.slotType");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[96];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getAwardBtn.label = param1;
         },"getAwardBtn.label");
         result[6] = binding;
         return result;
      }
      
      private function objJoin(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = null;
         if(!param1 || !param2)
         {
            return;
         }
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public function set protectSlot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._33585255protectSlot4;
         if(_loc2_ !== param1)
         {
            this._33585255protectSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot4",_loc2_,param1));
         }
      }
      
      private function reset() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 6)
         {
            this["protectSlot" + _loc1_].type = GamePredef.TBL_ITEM_TEMPLATE;
            this["protectSlot" + _loc1_].giid = -1;
            this["protectSlot" + _loc1_].enabled = true;
            this["protectSlot" + _loc1_].acceptable = false;
            this["protectSlot" + _loc1_].visible = false;
            _loc1_++;
         }
         getAwardBtn.enabled = false;
      }
      
      public function set protectSlot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._33585256protectSlot5;
         if(_loc2_ !== param1)
         {
            this._33585256protectSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot5",_loc2_,param1));
         }
      }
      
      public function set protectSlot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._33585253protectSlot2;
         if(_loc2_ !== param1)
         {
            this._33585253protectSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot2",_loc2_,param1));
         }
      }
      
      private function getAllSecondMembers(param1:Object, param2:Boolean) : Object
      {
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:Object = null;
         if(!param1 || !param1.team || !param1.list)
         {
            return {};
         }
         var _loc3_:Number = CrossTeamFightPanel.original_server_id * 1000000000000 + _core.player.id;
         if(!param2)
         {
            _loc3_ = _core.player.id;
         }
         var _loc4_:Object = {};
         for each(_loc5_ in param1.list)
         {
            if(Boolean(_loc5_) && Boolean(_loc5_[2]) && Boolean(_loc5_[2][0]))
            {
               _loc6_ = Number(_loc5_[2][0][1]);
               _loc7_ = Number(_loc5_[2][0][2]);
               _loc8_ = _loc5_[2][0].win == _loc6_ ? _loc7_ : _loc6_;
               _loc9_ = 0;
               while(_loc9_ < groupTypeKey.length)
               {
                  _loc10_ = groupTypeKey[_loc9_];
                  if(param1.team[_loc10_])
                  {
                     _loc11_ = param1.team[_loc10_][_loc8_];
                     if(!(!_loc11_ || !_loc11_.members))
                     {
                        if(!(!_loc11_.members[_loc3_] || !_loc11_.members[_loc3_].getAward))
                        {
                           objJoin(_loc4_,_loc11_.members);
                           break;
                        }
                     }
                  }
                  _loc9_++;
               }
            }
         }
         return _loc4_;
      }
      
      public function set protectSlot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._33585254protectSlot3;
         if(_loc2_ !== param1)
         {
            this._33585254protectSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot3",_loc2_,param1));
         }
      }
      
      public function onGetFinalAward(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            getAwardBtn.enabled = false;
         }
      }
      
      public function set protectSlot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._33585252protectSlot1;
         if(_loc2_ !== param1)
         {
            this._33585252protectSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot1() : ItemSlot
      {
         return this._33585252protectSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot2() : ItemSlot
      {
         return this._33585253protectSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot3() : ItemSlot
      {
         return this._33585254protectSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot4() : ItemSlot
      {
         return this._33585255protectSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot5() : ItemSlot
      {
         return this._33585256protectSlot5;
      }
      
      private function _CrossTeamFightAwardRect_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = titleTxt;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[96];
      }
      
      public function set getAwardBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._455921717getAwardBtn;
         if(_loc2_ !== param1)
         {
            this._455921717getAwardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getAwardBtn",_loc2_,param1));
         }
      }
      
      public function set t(param1:Label) : void
      {
         var _loc2_:Object = this._116t;
         if(_loc2_ !== param1)
         {
            this._116t = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t",_loc2_,param1));
         }
      }
      
      public function set titleTxt(param1:String) : void
      {
         var _loc2_:Object = this._1870010120titleTxt;
         if(_loc2_ !== param1)
         {
            this._1870010120titleTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t() : Label
      {
         return this._116t;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleTxt() : String
      {
         return this._1870010120titleTxt;
      }
      
      private function refreshWinner(param1:Object, param2:Object) : void
      {
         if(!param2)
         {
            param2 = {};
         }
         if(!param1)
         {
            param1 = {};
         }
         getAwardBtn.enabled = false;
         var _loc3_:int = -1;
         var _loc4_:Number = _core.player.id;
         if(_index >= 0 && _index <= 3)
         {
            members = getFinalChampionMembers(groupTypeKey[_index],param2);
            _loc3_ = 1;
            _loc4_ = CrossTeamFightPanel.original_server_id * 1000000000000 + _loc4_;
         }
         else if(_index == 4)
         {
            members = getAllSecondMembers(param2,true);
            _loc3_ = 2;
            _loc4_ = CrossTeamFightPanel.original_server_id * 1000000000000 + _loc4_;
         }
         else if(_index == 6)
         {
            members = getAllFinalFour(param2);
            _loc3_ = 4;
            _loc4_ = CrossTeamFightPanel.original_server_id * 1000000000000 + _loc4_;
         }
         else if(_index == 5)
         {
            members = getAllChampionMembers(param1);
            _loc3_ = 1;
         }
         else if(_index == 7)
         {
            members = getAllSecondMembers(param1,false);
            _loc3_ = 2;
         }
         if(Boolean(members[_loc4_]) && Boolean(members[_loc4_].getAward != null) && members[_loc4_].getAward == _loc3_)
         {
            getAwardBtn.enabled = true;
         }
         else
         {
            getAwardBtn.enabled = false;
         }
      }
   }
}

