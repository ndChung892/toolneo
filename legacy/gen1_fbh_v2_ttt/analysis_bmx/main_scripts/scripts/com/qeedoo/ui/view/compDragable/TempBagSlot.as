package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.Currency;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotTemp;
   import com.qeedoo.ui.view.comp.ItemSlotTempBag;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.Text;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TempBagSlot extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TempBagSlot_BasicDelayButton3:BasicDelayButton;
      
      public var _TempBagSlot_BasicDelayButton1:BasicDelayButton;
      
      private var _3773vs:ViewStack;
      
      public var _TempBagSlot_ItemSlotTemp1:Array;
      
      public var _TempBagSlot_ItemSlotTemp2:Array;
      
      public var last_selected:uint;
      
      private var _122708343mxbagSlot2:ItemSlotTempBag;
      
      private var _206080710btnOpen:BasicGlowButton;
      
      private var _2080952629bagSlot1:ItemSlotTempBag;
      
      private var _1509003505mxintroTxt:IntroText;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var tempItems:Object;
      
      private var _2080952625bagSlot5:ItemSlotTempBag;
      
      private var _2080952627bagSlot3:ItemSlotTempBag;
      
      public var mxlast_selected:uint;
      
      private var mxcurrentCost:uint;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _2113262145slotRep:Repeater;
      
      private var _1117107319mxslotTile:Tile;
      
      private var _122708346mxbagSlot5:ItemSlotTempBag;
      
      private var curr_bag_type:uint;
      
      private var _core:Core;
      
      private var curr_bag_arr:ArrayCollection;
      
      public var firstTimeFlag:Boolean = true;
      
      private var _554117445mxbtnOpen:BasicGlowButton;
      
      private var COST_ARR:Array;
      
      private var currentCost:uint;
      
      private var def_can_height:uint = 400;
      
      private var _122708344mxbagSlot3:ItemSlotTempBag;
      
      private var _dm:DataManager;
      
      private var _920352139mxnumTxt:Text;
      
      private var _1421506996mxslotRep:Repeater;
      
      private var _2080952628bagSlot2:ItemSlotTempBag;
      
      private var NUM_PER_PAGE:uint = 24;
      
      private var _915228088_TempBagSlot_Tile2:Tile;
      
      private var def_slot_height:uint = 174;
      
      private var _2080952626bagSlot4:ItemSlotTempBag;
      
      private var _956115763costCur:Currency;
      
      private var _1368045961cbDire:CheckBox;
      
      private var _582302820introTxt:IntroText;
      
      private var _122708342mxbagSlot1:ItemSlotTempBag;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _2050561200bagtitle:BasicTitleCanvas;
      
      private var _915228087_TempBagSlot_Tile1:Tile;
      
      mx_internal var _watchers:Array;
      
      private var slot_max:uint = 5;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1034376950numTxt:Text;
      
      private var _195917608mxcostCur:Currency;
      
      private var _122708345mxbagSlot4:ItemSlotTempBag;
      
      private var curr_bag_num:uint;
      
      private var mxcurr_bag_arr:ArrayCollection;
      
      private var _727277383mxpageSelector:PageSelector;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1086553652slotTile:Tile;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _TempBagSlot_BasicDelayButton2:BasicDelayButton;
      
      public function TempBagSlot()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":DragableCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":278,
                  "height":400,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":BasicTitleCanvas,
                     "id":"bagtitle"
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"tabBtn0",
                     "events":{"click":"__tabBtn0_click"},
                     "stylesFactory":function():void
                     {
                        this.top = "33";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":21,
                           "width":90,
                           "selected":true,
                           "styleName":"HorizontalTab",
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"tabBtn1",
                     "events":{"click":"__tabBtn1_click"},
                     "stylesFactory":function():void
                     {
                        this.top = "33";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":111,
                           "width":90,
                           "selected":false,
                           "styleName":"HorizontalTab",
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ViewStack,
                     "id":"vs",
                     "stylesFactory":function():void
                     {
                        this.top = "51.2";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":278,
                           "height":350,
                           "creationPolicy":"all",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"bagSlot1",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":15,
                                             "index":80
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"bagSlot2",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":50,
                                             "index":81
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"bagSlot3",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":85,
                                             "index":82
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"bagSlot4",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":120,
                                             "index":83
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"bagSlot5",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":155,
                                             "index":84
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicGlowButton,
                                       "id":"btnOpen",
                                       "events":{"click":"__btnOpen_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "189";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"BtnStdRed",
                                             "x":197,
                                             "width":50
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Currency,
                                       "id":"costCur",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "211";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":202,
                                             "width":71
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Tile,
                                       "id":"slotTile",
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 4;
                                          this.horizontalGap = 4;
                                          this.paddingTop = 12;
                                          this.paddingLeft = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":174,
                                             "styleName":"CanvasBorder",
                                             "y":158,
                                             "width":248,
                                             "x":15,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Repeater,
                                                "id":"slotRep",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "true";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotTemp,
                                                      "id":"_TempBagSlot_ItemSlotTemp1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "onDragDrop":onDragDropHandle,
                                                            "DoubleFunc":onDoubleClick
                                                         };
                                                      }
                                                   })]};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Text,
                                       "id":"numTxt",
                                       "stylesFactory":function():void
                                       {
                                          this.right = "10";
                                          this.bottom = "221";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"selectable":false};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":IntroText,
                                       "id":"introTxt",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "253.4";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":15,
                                             "width":248,
                                             "height":96
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicDelayButton,
                                       "id":"_TempBagSlot_BasicDelayButton1",
                                       "events":{"click":"___TempBagSlot_BasicDelayButton1_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "228";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "clickDelay":30000,
                                             "styleName":"BtnStdRed",
                                             "x":15
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":CheckBox,
                                       "id":"cbDire",
                                       "events":{"click":"__cbDire_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "226";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"x":80};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":PageSelector,
                                       "id":"pageSelector",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":322};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"mxbagSlot1",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":15,
                                             "index":100
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"mxbagSlot2",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":50,
                                             "index":101
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"mxbagSlot3",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":85,
                                             "index":102
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"mxbagSlot4",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":120,
                                             "index":103
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlotTempBag,
                                       "id":"mxbagSlot5",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "193";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":155,
                                             "index":104
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicGlowButton,
                                       "id":"mxbtnOpen",
                                       "events":{"click":"__mxbtnOpen_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "189";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"BtnStdRed",
                                             "x":197,
                                             "width":50
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Currency,
                                       "id":"mxcostCur",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "211";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":202,
                                             "width":71
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Tile,
                                       "id":"mxslotTile",
                                       "stylesFactory":function():void
                                       {
                                          this.verticalGap = 4;
                                          this.horizontalGap = 4;
                                          this.paddingTop = 12;
                                          this.paddingLeft = 12;
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"CanvasBorder",
                                             "height":174,
                                             "width":248,
                                             "y":158,
                                             "x":15,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Repeater,
                                                "id":"mxslotRep",
                                                "stylesFactory":function():void
                                                {
                                                   this.horizontalCenter = "true";
                                                },
                                                "propertiesFactory":function():Object
                                                {
                                                   return {"childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotTemp,
                                                      "id":"_TempBagSlot_ItemSlotTemp2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "onDragDrop":onmxDragDropHandle,
                                                            "DoubleFunc":onmxDoubleClick
                                                         };
                                                      }
                                                   })]};
                                                }
                                             })]
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Text,
                                       "id":"mxnumTxt",
                                       "stylesFactory":function():void
                                       {
                                          this.right = "10";
                                          this.bottom = "221";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"selectable":false};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":IntroText,
                                       "id":"mxintroTxt",
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "253";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":15,
                                             "width":248,
                                             "height":96
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicDelayButton,
                                       "id":"_TempBagSlot_BasicDelayButton2",
                                       "events":{"click":"___TempBagSlot_BasicDelayButton2_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "228";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "clickDelay":30000,
                                             "styleName":"BtnStdRed",
                                             "x":15
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicDelayButton,
                                       "id":"_TempBagSlot_BasicDelayButton3",
                                       "events":{"click":"___TempBagSlot_BasicDelayButton3_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.bottom = "228";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "clickDelay":1000,
                                             "styleName":"BtnStdRed",
                                             "x":55
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":PageSelector,
                                       "id":"mxpageSelector",
                                       "stylesFactory":function():void
                                       {
                                          this.horizontalCenter = "0";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":322};
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         COST_ARR = [10,50,100,200,500];
         _dm = DataManager.getInstance();
         curr_bag_arr = new ArrayCollection();
         mxcurr_bag_arr = new ArrayCollection();
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
            this.fontSize = 12;
         };
         this.width = 278;
         this.height = 400;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TempBagSlot._watcherSetupUtil = param1;
      }
      
      public function onDragDropHandle(param1:Event) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc2_:* = param1.target.dropSlot;
         if(_loc2_)
         {
            if(_loc2_.slotType == Slot.SLOT_BAG)
            {
               if(_core.player.tBag.ot)
               {
                  _core.sysMsg(Language.TEMP_BAG_U[2]);
                  return;
               }
               _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_.slotData.tid];
               if(Boolean(_loc3_) && ToolKit.ableToTemp(_loc3_))
               {
                  _loc4_ = param1.currentTarget.slotData;
                  if((Boolean(_loc4_)) && _loc4_.ii > 0)
                  {
                     if(_loc4_.ii == _loc3_.id)
                     {
                        _loc5_ = _core.data.getGameData(_loc2_.type,_loc2_.giid);
                        _loc6_ = _core.player.tBag.tempList[param1.currentTarget.posId];
                        if(Boolean(_loc5_) && Boolean(_loc6_))
                        {
                           if(_loc5_.binded == _loc6_.b && _loc5_.color == _loc6_.c && ToolKit.add(_loc2_.stackNum,_loc6_.n) <= _loc3_.stackMax)
                           {
                              _core.remote.addtItemFromBag(_loc2_.index,ToolKit.add(last_selected * 100,param1.currentTarget.posId));
                           }
                        }
                     }
                  }
                  else
                  {
                     _core.remote.addtItemFromBag(_loc2_.index,ToolKit.add(last_selected * 100,param1.currentTarget.posId));
                  }
               }
               else
               {
                  _core.sysMidNote(Language.TEMP_BAG_U[3]);
               }
            }
            else if(_loc2_.slotType == Slot.SLOT_TEMP_SLOT)
            {
               _loc7_ = uint(_loc2_.posId);
               _loc8_ = uint(param1.currentTarget.posId);
               if(_loc7_ == _loc8_)
               {
                  return;
               }
               _loc11_ = _core.player.tBag.tempList;
               if(Boolean(_loc11_[_loc7_]) && Boolean(_loc11_[_loc8_]))
               {
                  _loc9_ = _loc11_[_loc7_];
                  _loc10_ = _loc11_[_loc8_];
                  if(_loc9_.t == _loc10_.t && _loc9_.b == _loc10_.b && _loc9_.c == _loc10_.c)
                  {
                     _loc12_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc9_.t];
                     if(_loc12_)
                     {
                        if(_loc12_.stackMax >= ToolKit.add(_loc9_.n,_loc10_.n))
                        {
                           if(ToolKit.isSmallOrEqual(_loc12_.t,0))
                           {
                              _core.remote.moveItemBtwTemp(_loc2_.posId,param1.currentTarget.posId);
                           }
                        }
                     }
                  }
               }
               else if(_loc11_[_loc7_])
               {
                  _core.remote.moveItemBtwTemp(_loc2_.posId,param1.currentTarget.posId);
               }
            }
         }
      }
      
      private function onmxDoubleClick(param1:*) : void
      {
         var _loc2_:uint = 0;
         if(_core.player.enoughBag(1))
         {
            _loc2_ = uint(param1.data.currentTarget.posId);
            if(_loc2_ > 0)
            {
               _core.remote.mxtempToBag(_loc2_);
            }
         }
      }
      
      private function mxopenSlot() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("openmxTempSlot",new Responder(onmxOpenSlot));
            }
         };
         var str:String = Language.TEMP_BAG_U[1];
         str = str.replace("{cost}",mxcurrentCost);
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set numTxt(param1:Text) : void
      {
         var _loc2_:Object = this._1034376950numTxt;
         if(_loc2_ !== param1)
         {
            this._1034376950numTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numTxt",_loc2_,param1));
         }
      }
      
      public function set mxintroTxt(param1:IntroText) : void
      {
         var _loc2_:Object = this._1509003505mxintroTxt;
         if(_loc2_ !== param1)
         {
            this._1509003505mxintroTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxintroTxt",_loc2_,param1));
         }
      }
      
      public function set mxcostCur(param1:Currency) : void
      {
         var _loc2_:Object = this._195917608mxcostCur;
         if(_loc2_ !== param1)
         {
            this._195917608mxcostCur = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxcostCur",_loc2_,param1));
         }
      }
      
      private function initTempBag() : void
      {
         firstTimeFlag = false;
         cbDire.selected = Boolean(_core.player.tBag.dire);
         init();
         initBag();
      }
      
      public function set costCur(param1:Currency) : void
      {
         var _loc2_:Object = this._956115763costCur;
         if(_loc2_ !== param1)
         {
            this._956115763costCur = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costCur",_loc2_,param1));
         }
      }
      
      private function onOpenSlot(param1:uint) : void
      {
         _core.player.tBag.tempbagNum = param1;
         init();
      }
      
      public function ___TempBagSlot_BasicDelayButton3_click(param1:MouseEvent) : void
      {
         openAllMX();
      }
      
      [Bindable(event="propertyChange")]
      public function get introTxt() : IntroText
      {
         return this._582302820introTxt;
      }
      
      public function UpdatemxSlot(param1:uint, param2:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:* = undefined;
         var _loc7_:uint = 0;
         var _loc8_:* = undefined;
         if(!_core.player.tBag.mx)
         {
            return;
         }
         _core.player.tBag.mx.tempList[param1] = param2;
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateView();
         if(firstTimeFlag)
         {
            return;
         }
         if(param2)
         {
            if(param1 <= _core.player.tBag.mx.tempSlotNum)
            {
               _loc3_ = -1;
               if(mxpageSelector.pageNo)
               {
                  _loc3_ = param1 - mxpageSelector.pageNo * NUM_PER_PAGE - 1;
               }
               else
               {
                  _loc3_ = param1 - 1;
               }
               if(_loc3_ >= 0 && _loc3_ < NUM_PER_PAGE)
               {
                  _loc6_ = mxslotTile.getChildAt(_loc3_);
               }
               _loc4_ = new Object();
               _loc4_.type = GamePredef.TBL_ITEM_TEMPLATE;
               _loc4_.itemId = param2.t;
               _loc4_.num = param2.n;
               _loc4_.binded = param2.b;
               _loc4_.color = param2.c;
               _loc4_.sid = "tempSlot" + param1;
               _loc4_.idx = param1;
               _loc5_ = new Object();
               _loc5_.ti = GamePredef.TBL_ITEM_TEMPLATE;
               _loc5_.ii = param2.t;
               _loc5_.n = param2.n;
               _loc5_.q = param2.c * 5;
               _loc5_.b = param2.b;
               _loc4_.slotData = _loc5_;
               if(_loc6_)
               {
                  _loc6_.sData = _loc4_;
               }
               if(param1 <= mxcurr_bag_arr.length && Boolean(mxcurr_bag_arr[param1 - 1]))
               {
                  mxcurr_bag_arr[param1 - 1] = _loc4_;
               }
            }
         }
         else if(param1 > _core.player.tBag.mx.tempSlotNum)
         {
            if(mxpageSelector.pageNo)
            {
               if(mxpageSelector.pageNo * NUM_PER_PAGE > _core.player.tBag.mx.tempSlotNum)
               {
                  _loc7_ = 0;
                  while(_loc7_ <= NUM_PER_PAGE)
                  {
                     if(Boolean(mxslotTile[_loc7_]) && mxslotTile[_loc7_].posId == param1)
                     {
                        mxslotTile[_loc7_].clean();
                        if(mxcurr_bag_arr[_loc7_])
                        {
                           mxcurr_bag_arr[_loc7_].type = GamePredef.TBL_ITEM_TEMPLATE;
                           mxcurr_bag_arr[_loc7_].itemId = -1;
                           mxcurr_bag_arr[_loc7_].num = 0;
                           mxcurr_bag_arr[_loc7_].binded = 0;
                           mxcurr_bag_arr[_loc7_].color = 0;
                           mxcurr_bag_arr[_loc7_].slotData = new Object();
                           mxcurr_bag_arr[_loc7_].slotData.q = 0;
                        }
                        break;
                     }
                     _loc7_++;
                  }
               }
            }
            else if(NUM_PER_PAGE > _core.player.tBag.mx.tempSlotNum)
            {
               _loc7_ = 0;
               while(_loc7_ <= NUM_PER_PAGE)
               {
                  _loc8_ = mxslotTile.getChildAt(_loc7_);
                  if((Boolean(_loc8_)) && _loc8_.posId == param1)
                  {
                     _loc8_.clean();
                     if(mxcurr_bag_arr[_loc7_])
                     {
                        mxcurr_bag_arr[_loc7_].type = GamePredef.TBL_ITEM_TEMPLATE;
                        mxcurr_bag_arr[_loc7_].itemId = -1;
                        mxcurr_bag_arr[_loc7_].num = 0;
                        mxcurr_bag_arr[_loc7_].binded = 0;
                        mxcurr_bag_arr[_loc7_].color = 0;
                        mxcurr_bag_arr[_loc7_].slotData = new Object();
                        mxcurr_bag_arr[_loc7_].slotData.q = 0;
                     }
                     break;
                  }
                  _loc7_++;
               }
            }
         }
         else
         {
            _loc3_ = -1;
            if(mxpageSelector.pageNo)
            {
               _loc3_ = param1 - mxpageSelector.pageNo * NUM_PER_PAGE - 1;
            }
            else
            {
               _loc3_ = param1 - 1;
            }
            if(_loc3_ >= 0)
            {
               _loc6_ = mxslotTile.getChildAt(_loc3_);
            }
            if(_loc6_)
            {
               _loc6_.clean();
            }
            if(param1 <= mxcurr_bag_arr.length && Boolean(mxcurr_bag_arr[param1 - 1]))
            {
               mxcurr_bag_arr[param1 - 1].type = GamePredef.TBL_ITEM_TEMPLATE;
               mxcurr_bag_arr[param1 - 1].itemId = -1;
               mxcurr_bag_arr[param1 - 1].num = 0;
               mxcurr_bag_arr[param1 - 1].binded = 0;
               mxcurr_bag_arr[param1 - 1].color = 0;
               mxcurr_bag_arr[param1 - 1].slotData = new Object();
               mxcurr_bag_arr[param1 - 1].slotData.q = 0;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mxnumTxt() : Text
      {
         return this._920352139mxnumTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get cbDire() : CheckBox
      {
         return this._1368045961cbDire;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      public function updateBag() : void
      {
         var _loc1_:uint = 0;
         var _loc4_:* = undefined;
         var _loc7_:Object = null;
         var _loc8_:uint = 0;
         var _loc9_:Object = null;
         var _loc10_:int = 0;
         var _loc11_:ArrayCollection = null;
         if(Boolean(_core.player.tBag) && Boolean(_core.player.tBag.tempBag))
         {
            _loc1_ = 1;
            while(_loc1_ <= _core.player.tBag.tempbagNum)
            {
               if(Boolean(_core.player.tBag.tempBag[_loc1_]) && Boolean(_core.player.tBag.tempBag[_loc1_].tid))
               {
                  this["bagSlot" + _loc1_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["bagSlot" + _loc1_].giid = uint(_core.player.tBag.tempBag[_loc1_].tid);
                  if(_core.player.tBag.tempBag[_loc1_].ot)
                  {
                     this["bagSlot" + _loc1_].enabled = false;
                  }
                  else
                  {
                     this["bagSlot" + _loc1_].enabled = true;
                  }
               }
               _loc1_++;
            }
         }
         if(Boolean(_core.player.tBag) && Boolean(_core.player.tBag.mx.tempBag))
         {
            _loc1_ = 1;
            while(_loc1_ <= _core.player.tBag.mx.tempbagNum)
            {
               if(Boolean(_core.player.tBag.mx.tempBag[_loc1_]) && Boolean(_core.player.tBag.mx.tempBag[_loc1_].tid))
               {
                  this["mxbagSlot" + _loc1_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["mxbagSlot" + _loc1_].giid = uint(_core.player.tBag.mx.tempBag[_loc1_].tid);
                  if(_core.player.tBag.mx.tempBag[_loc1_].ot)
                  {
                     this["mxbagSlot" + _loc1_].enabled = false;
                  }
                  else
                  {
                     this["mxbagSlot" + _loc1_].enabled = true;
                  }
               }
               _loc1_++;
            }
         }
         curr_bag_arr = new ArrayCollection();
         _loc1_ = 1;
         while(_loc1_ <= _core.player.tBag.tempSlotNum)
         {
            _loc7_ = new Object();
            _loc7_.sid = "tempSlot" + _loc1_;
            _loc7_.idx = _loc1_;
            curr_bag_arr.addItem(_loc7_);
            _loc1_++;
         }
         var _loc2_:uint = uint(_core.player.tBag.tempSlotNum);
         var _loc3_:Object = _core.player.tBag.tempList;
         for(_loc4_ in _loc3_)
         {
            if(_loc3_[_loc4_])
            {
               _loc8_ = uint(_loc4_) - 1;
               if(_loc8_ < curr_bag_arr.length && Boolean(curr_bag_arr[_loc8_]))
               {
                  curr_bag_arr[_loc8_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  curr_bag_arr[_loc8_].itemId = _loc3_[_loc4_].t;
                  curr_bag_arr[_loc8_].num = _loc3_[_loc4_].n;
                  curr_bag_arr[_loc8_].binded = _loc3_[_loc4_].b;
                  curr_bag_arr[_loc8_].color = _loc3_[_loc4_].c;
                  _loc9_ = new Object();
                  _loc9_.ti = GamePredef.TBL_ITEM_TEMPLATE;
                  _loc9_.ii = _loc3_[_loc4_].t;
                  _loc9_.n = _loc3_[_loc4_].n;
                  _loc9_.q = _loc3_[_loc4_].c * 5;
                  _loc9_.b = _loc3_[_loc4_].b;
                  curr_bag_arr[_loc8_].slotData = _loc9_;
               }
               else
               {
                  _loc7_ = new Object();
                  _loc7_.sid = "tempSlot" + _loc4_;
                  _loc7_.idx = _loc4_;
                  _loc7_.en = true;
                  _loc7_.type = GamePredef.TBL_ITEM_TEMPLATE;
                  _loc7_.itemId = _loc3_[_loc4_].t;
                  _loc7_.num = _loc3_[_loc4_].n;
                  _loc7_.binded = _loc3_[_loc4_].b;
                  _loc7_.color = _loc3_[_loc4_].c;
                  _loc9_ = new Object();
                  _loc9_.ti = GamePredef.TBL_ITEM_TEMPLATE;
                  _loc9_.ii = _loc3_[_loc4_].t;
                  _loc9_.n = _loc3_[_loc4_].n;
                  _loc9_.q = _loc3_[_loc4_].c * 5;
                  _loc9_.b = _loc3_[_loc4_].b;
                  _loc7_.slotData = _loc9_;
                  curr_bag_arr.addItem(_loc7_);
                  _loc2_++;
               }
            }
         }
         if(_loc2_ > 0)
         {
            if(_loc2_ > NUM_PER_PAGE)
            {
               _loc2_ = NUM_PER_PAGE;
            }
            _loc10_ = Math.ceil(_loc2_ / 6) - 4;
            slotTile.height = def_slot_height + 38 * _loc10_;
         }
         else
         {
            slotTile.height = def_slot_height;
         }
         if(curr_bag_arr.length <= NUM_PER_PAGE)
         {
            slotRep.dataProvider = curr_bag_arr;
            pageSelector.visible = false;
         }
         else
         {
            _loc11_ = new ArrayCollection();
            _loc1_ = 0;
            while(_loc1_ < NUM_PER_PAGE)
            {
               _loc11_.addItem(curr_bag_arr[_loc1_]);
               _loc1_++;
            }
            slotRep.dataProvider = _loc11_;
            pageSelector.visible = true;
            pageSelector.initPageSeletor(curr_bag_arr.length,NUM_PER_PAGE);
         }
         mxcurr_bag_arr = new ArrayCollection();
         _loc1_ = 1;
         while(_loc1_ <= _core.player.tBag.mx.tempSlotNum)
         {
            _loc7_ = new Object();
            _loc7_.sid = "tempSlot" + _loc1_;
            _loc7_.idx = _loc1_;
            mxcurr_bag_arr.addItem(_loc7_);
            _loc1_++;
         }
         var _loc5_:uint = uint(_core.player.tBag.mx.tempSlotNum);
         var _loc6_:Object = _core.player.tBag.mx.tempList;
         for(_loc4_ in _loc6_)
         {
            if(_loc6_[_loc4_])
            {
               _loc8_ = uint(_loc4_) - 1;
               if(_loc8_ < mxcurr_bag_arr.length && Boolean(mxcurr_bag_arr[_loc8_]))
               {
                  mxcurr_bag_arr[_loc8_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  mxcurr_bag_arr[_loc8_].itemId = _loc6_[_loc4_].t;
                  mxcurr_bag_arr[_loc8_].num = _loc6_[_loc4_].n;
                  mxcurr_bag_arr[_loc8_].binded = _loc6_[_loc4_].b;
                  mxcurr_bag_arr[_loc8_].color = _loc6_[_loc4_].c;
                  _loc9_ = new Object();
                  _loc9_.ti = GamePredef.TBL_ITEM_TEMPLATE;
                  _loc9_.ii = _loc6_[_loc4_].t;
                  _loc9_.n = _loc6_[_loc4_].n;
                  _loc9_.q = _loc6_[_loc4_].c * 5;
                  _loc9_.b = _loc6_[_loc4_].b;
                  mxcurr_bag_arr[_loc8_].slotData = _loc9_;
               }
               else
               {
                  _loc7_ = new Object();
                  _loc7_.sid = "tempSlot" + _loc4_;
                  _loc7_.idx = _loc4_;
                  _loc7_.en = true;
                  _loc7_.type = GamePredef.TBL_ITEM_TEMPLATE;
                  _loc7_.itemId = _loc6_[_loc4_].t;
                  _loc7_.num = _loc6_[_loc4_].n;
                  _loc7_.binded = _loc6_[_loc4_].b;
                  _loc7_.color = _loc6_[_loc4_].c;
                  _loc9_ = new Object();
                  _loc9_.ti = GamePredef.TBL_ITEM_TEMPLATE;
                  _loc9_.ii = _loc6_[_loc4_].t;
                  _loc9_.n = _loc6_[_loc4_].n;
                  _loc9_.q = _loc6_[_loc4_].c * 5;
                  _loc9_.b = _loc6_[_loc4_].b;
                  _loc7_.slotData = _loc9_;
                  mxcurr_bag_arr.addItem(_loc7_);
                  _loc5_++;
               }
            }
         }
         if(_loc5_ > 0)
         {
            if(_loc5_ > NUM_PER_PAGE)
            {
               _loc5_ = NUM_PER_PAGE;
            }
            _loc10_ = Math.ceil(_loc5_ / 6) - 4;
            mxslotTile.height = def_slot_height + 38 * _loc10_;
         }
         else
         {
            mxslotTile.height = def_slot_height;
         }
         if(mxcurr_bag_arr.length <= NUM_PER_PAGE)
         {
            mxslotRep.dataProvider = mxcurr_bag_arr;
            mxpageSelector.visible = false;
         }
         else
         {
            _loc11_ = new ArrayCollection();
            _loc1_ = 0;
            while(_loc1_ < NUM_PER_PAGE)
            {
               _loc11_.addItem(mxcurr_bag_arr[_loc1_]);
               _loc1_++;
            }
            mxslotRep.dataProvider = _loc11_;
            mxpageSelector.visible = true;
            mxpageSelector.initPageSeletor(mxcurr_bag_arr.length,NUM_PER_PAGE);
         }
         setnTxt();
      }
      
      public function UpdateSlot(param1:uint, param2:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:* = undefined;
         var _loc7_:uint = 0;
         var _loc8_:* = undefined;
         if(!_core.player.tBag)
         {
            return;
         }
         _core.player.tBag.tempList[param1] = param2;
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateView();
         if(firstTimeFlag)
         {
            return;
         }
         if(param2)
         {
            if(param1 <= _core.player.tBag.tempSlotNum)
            {
               _loc3_ = -1;
               if(pageSelector.pageNo)
               {
                  _loc3_ = param1 - pageSelector.pageNo * NUM_PER_PAGE - 1;
               }
               else
               {
                  _loc3_ = param1 - 1;
               }
               if(_loc3_ >= 0 && _loc3_ < NUM_PER_PAGE)
               {
                  _loc6_ = slotTile.getChildAt(_loc3_);
               }
               _loc4_ = new Object();
               _loc4_.type = GamePredef.TBL_ITEM_TEMPLATE;
               _loc4_.itemId = param2.t;
               _loc4_.num = param2.n;
               _loc4_.binded = param2.b;
               _loc4_.color = param2.c;
               _loc4_.sid = "tempSlot" + param1;
               _loc4_.idx = param1;
               _loc5_ = new Object();
               _loc5_.ti = GamePredef.TBL_ITEM_TEMPLATE;
               _loc5_.ii = param2.t;
               _loc5_.n = param2.n;
               _loc5_.q = param2.c * 5;
               _loc5_.b = param2.b;
               _loc4_.slotData = _loc5_;
               if(_loc6_)
               {
                  _loc6_.sData = _loc4_;
               }
               if(param1 <= curr_bag_arr.length && Boolean(curr_bag_arr[param1 - 1]))
               {
                  curr_bag_arr[param1 - 1] = _loc4_;
               }
            }
         }
         else if(param1 > _core.player.tBag.tempSlotNum)
         {
            if(pageSelector.pageNo)
            {
               if(pageSelector.pageNo * NUM_PER_PAGE > _core.player.tBag.tempSlotNum)
               {
                  _loc7_ = 0;
                  while(_loc7_ <= NUM_PER_PAGE)
                  {
                     if(Boolean(slotTile[_loc7_]) && slotTile[_loc7_].posId == param1)
                     {
                        slotTile[_loc7_].clean();
                        if(curr_bag_arr[_loc7_])
                        {
                           curr_bag_arr[_loc7_].type = GamePredef.TBL_ITEM_TEMPLATE;
                           curr_bag_arr[_loc7_].itemId = -1;
                           curr_bag_arr[_loc7_].num = 0;
                           curr_bag_arr[_loc7_].binded = 0;
                           curr_bag_arr[_loc7_].color = 0;
                           curr_bag_arr[_loc7_].slotData = new Object();
                           curr_bag_arr[_loc7_].slotData.q = 0;
                        }
                        break;
                     }
                     _loc7_++;
                  }
               }
            }
            else if(NUM_PER_PAGE > _core.player.tBag.tempSlotNum)
            {
               _loc7_ = 0;
               while(_loc7_ <= NUM_PER_PAGE)
               {
                  _loc8_ = slotTile.getChildAt(_loc7_);
                  if((Boolean(_loc8_)) && _loc8_.posId == param1)
                  {
                     _loc8_.clean();
                     if(curr_bag_arr[_loc7_])
                     {
                        curr_bag_arr[_loc7_].type = GamePredef.TBL_ITEM_TEMPLATE;
                        curr_bag_arr[_loc7_].itemId = -1;
                        curr_bag_arr[_loc7_].num = 0;
                        curr_bag_arr[_loc7_].binded = 0;
                        curr_bag_arr[_loc7_].color = 0;
                        curr_bag_arr[_loc7_].slotData = new Object();
                        curr_bag_arr[_loc7_].slotData.q = 0;
                     }
                     break;
                  }
                  _loc7_++;
               }
            }
         }
         else
         {
            _loc3_ = -1;
            if(pageSelector.pageNo)
            {
               _loc3_ = param1 - pageSelector.pageNo * NUM_PER_PAGE - 1;
            }
            else
            {
               _loc3_ = param1 - 1;
            }
            if(_loc3_ >= 0)
            {
               _loc6_ = slotTile.getChildAt(_loc3_);
            }
            if(_loc6_)
            {
               _loc6_.clean();
            }
            if(param1 <= curr_bag_arr.length && Boolean(curr_bag_arr[param1 - 1]))
            {
               curr_bag_arr[param1 - 1].type = GamePredef.TBL_ITEM_TEMPLATE;
               curr_bag_arr[param1 - 1].itemId = -1;
               curr_bag_arr[param1 - 1].num = 0;
               curr_bag_arr[param1 - 1].binded = 0;
               curr_bag_arr[param1 - 1].color = 0;
               curr_bag_arr[param1 - 1].slotData = new Object();
               curr_bag_arr[param1 - 1].slotData.q = 0;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      private function onGetTBag(param1:Object) : void
      {
         _core.player.tBag = param1;
         initTempBag();
      }
      
      private function _TempBagSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BAGPANEL_U[14];
         _loc1_ = Language.TEMP_BAG_U[11];
         _loc1_ = Language.TEMP_BAG_U[12];
         _loc1_ = Language.TEMP_BAG_U[4];
         _loc1_ = Currency.TYPE_GOLDALL;
         _loc1_ = slotRep.currentItem;
         _loc1_ = Language.TEMP_BAG_U[7];
         _loc1_ = Language.TEMP_BAG_U[5];
         _loc1_ = Language.TEMP_BAG_U[6];
         _loc1_ = Language.TEMP_BAG_U[4];
         _loc1_ = Currency.TYPE_GOLDALL;
         _loc1_ = mxslotRep.currentItem;
         _loc1_ = Language.TEMP_BAG_U[7];
         _loc1_ = Language.TEMP_BAG_U[5];
         _loc1_ = Language.TEMP_BAG_U[8];
         _loc1_ = Language.TEMP_BAG_U[9];
      }
      
      [Bindable(event="propertyChange")]
      public function get mxslotTile() : Tile
      {
         return this._1117107319mxslotTile;
      }
      
      public function setnTxt() : void
      {
         var _loc1_:String = null;
         _loc1_ = uint(_core.player.tBag.curNum).toString() + "/" + _core.player.tBag.tempSlotNum;
         numTxt.text = _loc1_;
         if(ToolKit.isBigOrEqual(_core.player.tBag.curNum,_core.player.tBag.tempSlotNum))
         {
            numTxt.setStyle("color","0xFF0000");
            _core.player.tBag.ot = true;
         }
         else
         {
            numTxt.setStyle("color","0x00FF00");
            _core.player.tBag.ot = false;
         }
         _loc1_ = uint(_core.player.tBag.mx.curNum).toString() + "/" + _core.player.tBag.mx.tempSlotNum;
         mxnumTxt.text = _loc1_;
         if(ToolKit.isBigOrEqual(_core.player.tBag.mx.curNum,_core.player.tBag.mx.tempSlotNum))
         {
            mxnumTxt.setStyle("color","0xFF0000");
            _core.player.tBag.mx.ot = true;
         }
         else
         {
            mxnumTxt.setStyle("color","0x00FF00");
            _core.player.tBag.mx.ot = false;
         }
      }
      
      public function set bagtitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._2050561200bagtitle;
         if(_loc2_ !== param1)
         {
            this._2050561200bagtitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagtitle",_loc2_,param1));
         }
      }
      
      public function onmxDragDropHandle(param1:Event) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc2_:* = param1.target.dropSlot;
         if(_loc2_)
         {
            if(_loc2_.slotType == Slot.SLOT_BAG)
            {
               if(_core.player.tBag.mx.ot)
               {
                  _core.sysMsg(Language.TEMP_BAG_U[2]);
                  return;
               }
               _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_.slotData.tid];
               if(Boolean(_loc3_) && ToolKit.ableTomxTemp(_loc3_))
               {
                  _loc4_ = param1.currentTarget.slotData;
                  if((Boolean(_loc4_)) && _loc4_.ii > 0)
                  {
                     if(_loc4_.ii == _loc3_.id)
                     {
                        _loc5_ = _core.data.getGameData(_loc2_.type,_loc2_.giid);
                        _loc6_ = _core.player.tBag.mx.tempList[param1.currentTarget.posId];
                        if(Boolean(_loc5_) && Boolean(_loc6_))
                        {
                           if(_loc5_.binded == _loc6_.b && _loc5_.color == _loc6_.c && ToolKit.add(_loc2_.stackNum,_loc6_.n) <= _loc3_.stackMax)
                           {
                              _core.remote.addmxFromBag(_loc2_.index,ToolKit.add(mxlast_selected * 100,param1.currentTarget.posId));
                           }
                        }
                     }
                  }
                  else
                  {
                     _core.remote.addmxFromBag(_loc2_.index,ToolKit.add(mxlast_selected * 100,param1.currentTarget.posId));
                  }
               }
               else
               {
                  _core.sysMidNote(Language.TEMP_BAG_U[13]);
               }
            }
            else if(_loc2_.slotType == Slot.SLOT_TEMP_SLOT)
            {
               _loc7_ = uint(_loc2_.posId);
               _loc8_ = uint(param1.currentTarget.posId);
               if(_loc7_ == _loc8_)
               {
                  return;
               }
               _loc11_ = _core.player.tBag.mx.tempList;
               if(Boolean(_loc11_[_loc7_]) && Boolean(_loc11_[_loc8_]))
               {
                  _loc9_ = _loc11_[_loc7_];
                  _loc10_ = _loc11_[_loc8_];
                  if(_loc9_.t == _loc10_.t && _loc9_.b == _loc10_.b && _loc9_.c == _loc10_.c)
                  {
                     _loc12_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc9_.t];
                     if(_loc12_)
                     {
                        if(_loc12_.stackMax >= ToolKit.add(_loc9_.n,_loc10_.n))
                        {
                           if(ToolKit.isSmallOrEqual(_loc12_.t,0))
                           {
                              _core.remote.movemxBtwTemp(_loc2_.posId,param1.currentTarget.posId);
                           }
                        }
                     }
                  }
               }
               else if(_loc11_[_loc7_])
               {
                  _core.remote.movemxBtwTemp(_loc2_.posId,param1.currentTarget.posId);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mxpageSelector() : PageSelector
      {
         return this._727277383mxpageSelector;
      }
      
      [Bindable(event="propertyChange")]
      public function get mxbtnOpen() : BasicGlowButton
      {
         return this._554117445mxbtnOpen;
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      private function onPageCleared() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get btnOpen() : BasicGlowButton
      {
         return this._206080710btnOpen;
      }
      
      public function set introTxt(param1:IntroText) : void
      {
         var _loc2_:Object = this._582302820introTxt;
         if(_loc2_ !== param1)
         {
            this._582302820introTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bagSlot1() : ItemSlotTempBag
      {
         return this._2080952629bagSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagSlot2() : ItemSlotTempBag
      {
         return this._2080952628bagSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagSlot3() : ItemSlotTempBag
      {
         return this._2080952627bagSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagSlot4() : ItemSlotTempBag
      {
         return this._2080952626bagSlot4;
      }
      
      private function initBag() : void
      {
         updateBag();
      }
      
      [Bindable(event="propertyChange")]
      public function get bagSlot5() : ItemSlotTempBag
      {
         return this._2080952625bagSlot5;
      }
      
      private function onDoubleClick(param1:*) : void
      {
         var _loc2_:uint = 0;
         if(_core.player.enoughBag(1))
         {
            _loc2_ = uint(param1.data.currentTarget.posId);
            if(_loc2_ > 0)
            {
               _core.remote.tempToBag(_loc2_);
            }
         }
      }
      
      private function openAllMX() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("oneKeyOpenAllMXTemp",new Responder(onTBagSort));
            }
         };
         var str:String = Language.TEMP_BAG_U[14];
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            if(firstTimeFlag || !_core.player.tBag)
            {
               if(!_core.player.tBag)
               {
                  _core.remote.call("getTBag",new Responder(onGetTBag));
               }
               else
               {
                  initTempBag();
               }
               introTxt.htmlText = Language.TEMP_BAG_U[0];
               mxintroTxt.htmlText = Language.TEMP_BAG_U[10];
               pageSelector.onPageChanged = onPageChanged;
               pageSelector.onPageCleared = onPageCleared;
               mxpageSelector.onPageChanged = mxonPageChanged;
               mxpageSelector.onPageCleared = onPageCleared;
            }
         }
      }
      
      public function set mxbagSlot1(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._122708342mxbagSlot1;
         if(_loc2_ !== param1)
         {
            this._122708342mxbagSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxbagSlot1",_loc2_,param1));
         }
      }
      
      public function set mxbagSlot2(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._122708343mxbagSlot2;
         if(_loc2_ !== param1)
         {
            this._122708343mxbagSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxbagSlot2",_loc2_,param1));
         }
      }
      
      public function __btnOpen_click(param1:MouseEvent) : void
      {
         openSlot();
      }
      
      public function set mxnumTxt(param1:Text) : void
      {
         var _loc2_:Object = this._920352139mxnumTxt;
         if(_loc2_ !== param1)
         {
            this._920352139mxnumTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxnumTxt",_loc2_,param1));
         }
      }
      
      public function set mxbagSlot4(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._122708345mxbagSlot4;
         if(_loc2_ !== param1)
         {
            this._122708345mxbagSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxbagSlot4",_loc2_,param1));
         }
      }
      
      private function tabClick(param1:uint) : void
      {
         vs.selectedIndex = param1;
         tabBtn1.selected = param1 ? true : false;
         tabBtn0.selected = param1 ? false : true;
      }
      
      public function set mxbagSlot5(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._122708346mxbagSlot5;
         if(_loc2_ !== param1)
         {
            this._122708346mxbagSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxbagSlot5",_loc2_,param1));
         }
      }
      
      public function set cbDire(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1368045961cbDire;
         if(_loc2_ !== param1)
         {
            this._1368045961cbDire = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cbDire",_loc2_,param1));
         }
      }
      
      public function set mxbagSlot3(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._122708344mxbagSlot3;
         if(_loc2_ !== param1)
         {
            this._122708344mxbagSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxbagSlot3",_loc2_,param1));
         }
      }
      
      public function setDire() : void
      {
         _core.remote.setTbagDire(cbDire.selected);
      }
      
      public function set mxslotTile(param1:Tile) : void
      {
         var _loc2_:Object = this._1117107319mxslotTile;
         if(_loc2_ !== param1)
         {
            this._1117107319mxslotTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxslotTile",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numTxt() : Text
      {
         return this._1034376950numTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get mxintroTxt() : IntroText
      {
         return this._1509003505mxintroTxt;
      }
      
      private function init() : void
      {
         var _loc2_:uint = 0;
         var _loc1_:uint = uint(_core.player.tBag.tempbagNum);
         _loc2_ = 1;
         while(_loc2_ <= slot_max)
         {
            if(!_core.player.tBag.tempBag[_loc2_])
            {
               if(_loc2_ <= _loc1_)
               {
                  this["bagSlot" + _loc2_].enabled = true;
               }
               else
               {
                  this["bagSlot" + _loc2_].enabled = false;
               }
            }
            _loc2_++;
         }
         if(_loc1_ >= slot_max)
         {
            btnOpen.visible = false;
            costCur.visible = false;
            numTxt.y = 169;
         }
         else
         {
            btnOpen.visible = true;
            costCur.visible = true;
            currentCost = COST_ARR[_loc1_];
            costCur.value = COST_ARR[_loc1_];
            numTxt.y = 149;
         }
         var _loc3_:uint = uint(_core.player.tBag.mx.tempbagNum);
         _loc2_ = 1;
         while(_loc2_ <= slot_max)
         {
            if(!_core.player.tBag.mx.tempBag[_loc2_])
            {
               if(_loc2_ <= _loc3_)
               {
                  this["mxbagSlot" + _loc2_].enabled = true;
               }
               else
               {
                  this["mxbagSlot" + _loc2_].enabled = false;
               }
            }
            _loc2_++;
         }
         if(_loc3_ >= slot_max)
         {
            mxbtnOpen.visible = false;
            mxcostCur.visible = false;
            mxnumTxt.y = 169;
         }
         else
         {
            mxbtnOpen.visible = true;
            mxcostCur.visible = true;
            mxcurrentCost = COST_ARR[_loc3_];
            mxcostCur.value = COST_ARR[_loc3_];
            mxnumTxt.y = 149;
         }
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      private function _TempBagSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BAGPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bagtitle.text = param1;
         },"bagtitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnOpen.label = param1;
         },"btnOpen.label");
         result[3] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLDALL;
         },function(param1:uint):void
         {
            costCur.type = param1;
         },"costCur.type");
         result[4] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return slotRep.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _TempBagSlot_ItemSlotTemp1[param2[0]].sData = param1;
         },"_TempBagSlot_ItemSlotTemp1.sData");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TempBagSlot_BasicDelayButton1.toolTip = param1;
         },"_TempBagSlot_BasicDelayButton1.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TempBagSlot_BasicDelayButton1.label = param1;
         },"_TempBagSlot_BasicDelayButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cbDire.label = param1;
         },"cbDire.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mxbtnOpen.label = param1;
         },"mxbtnOpen.label");
         result[9] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLDALL;
         },function(param1:uint):void
         {
            mxcostCur.type = param1;
         },"mxcostCur.type");
         result[10] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return mxslotRep.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _TempBagSlot_ItemSlotTemp2[param2[0]].sData = param1;
         },"_TempBagSlot_ItemSlotTemp2.sData");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TempBagSlot_BasicDelayButton2.toolTip = param1;
         },"_TempBagSlot_BasicDelayButton2.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TempBagSlot_BasicDelayButton2.label = param1;
         },"_TempBagSlot_BasicDelayButton2.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TempBagSlot_BasicDelayButton3.toolTip = param1;
         },"_TempBagSlot_BasicDelayButton3.toolTip");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMP_BAG_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TempBagSlot_BasicDelayButton3.label = param1;
         },"_TempBagSlot_BasicDelayButton3.label");
         result[15] = binding;
         return result;
      }
      
      public function __mxbtnOpen_click(param1:MouseEvent) : void
      {
         mxopenSlot();
      }
      
      public function ___TempBagSlot_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         _core.remote.call("mxBagSort",new Responder(onTBagSort));
      }
      
      [Bindable(event="propertyChange")]
      public function get costCur() : Currency
      {
         return this._956115763costCur;
      }
      
      [Bindable(event="propertyChange")]
      public function get mxcostCur() : Currency
      {
         return this._195917608mxcostCur;
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get bagtitle() : BasicTitleCanvas
      {
         return this._2050561200bagtitle;
      }
      
      private function onmxOpenSlot(param1:uint) : void
      {
         _core.player.tBag.mx.tempbagNum = param1;
         init();
      }
      
      private function openSlot() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("openTempSlot",new Responder(onOpenSlot));
            }
         };
         var str:String = Language.TEMP_BAG_U[1];
         str = str.replace("{cost}",currentCost);
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set _TempBagSlot_Tile1(param1:Tile) : void
      {
         var _loc2_:Object = this._915228087_TempBagSlot_Tile1;
         if(_loc2_ !== param1)
         {
            this._915228087_TempBagSlot_Tile1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TempBagSlot_Tile1",_loc2_,param1));
         }
      }
      
      public function set mxslotRep(param1:Repeater) : void
      {
         var _loc2_:Object = this._1421506996mxslotRep;
         if(_loc2_ !== param1)
         {
            this._1421506996mxslotRep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxslotRep",_loc2_,param1));
         }
      }
      
      public function set _TempBagSlot_Tile2(param1:Tile) : void
      {
         var _loc2_:Object = this._915228088_TempBagSlot_Tile2;
         if(_loc2_ !== param1)
         {
            this._915228088_TempBagSlot_Tile2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TempBagSlot_Tile2",_loc2_,param1));
         }
      }
      
      public function set mxpageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._727277383mxpageSelector;
         if(_loc2_ !== param1)
         {
            this._727277383mxpageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxpageSelector",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mxbagSlot2() : ItemSlotTempBag
      {
         return this._122708343mxbagSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get mxbagSlot3() : ItemSlotTempBag
      {
         return this._122708344mxbagSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get mxbagSlot4() : ItemSlotTempBag
      {
         return this._122708345mxbagSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get mxbagSlot1() : ItemSlotTempBag
      {
         return this._122708342mxbagSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get mxbagSlot5() : ItemSlotTempBag
      {
         return this._122708346mxbagSlot5;
      }
      
      public function putmxDirect(param1:ItemSlot) : void
      {
         var _loc4_:* = undefined;
         if(_core.player.tBag.mx.ot)
         {
            _core.sysMsg(Language.TEMP_BAG_U[2]);
            return;
         }
         var _loc2_:* = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1.slotData.tid];
         var _loc3_:* = _core.data.getGameData(param1.type,param1.giid);
         if(Boolean(_loc2_) && Boolean(_loc3_) && ToolKit.ableTomxTemp(_loc2_))
         {
            for(_loc4_ in mxcurr_bag_arr)
            {
               if(Boolean(mxcurr_bag_arr[_loc4_]) && Boolean(mxcurr_bag_arr[_loc4_].idx) && (!mxcurr_bag_arr[_loc4_].type || mxcurr_bag_arr[_loc4_].itemId == -1))
               {
                  _core.remote.addmxFromBag(param1.index,mxcurr_bag_arr[_loc4_].idx);
                  break;
               }
               if(mxcurr_bag_arr[_loc4_].itemId == _loc2_.id)
               {
                  if(_loc3_.color == mxcurr_bag_arr[_loc4_].color && _loc3_.binded == mxcurr_bag_arr[_loc4_].binded && ToolKit.add(mxcurr_bag_arr[_loc4_].num,param1.slotData.stackNum) < _loc2_.stackMax)
                  {
                     _core.remote.addmxFromBag(param1.index,mxcurr_bag_arr[_loc4_].idx);
                     break;
                  }
               }
            }
         }
         else
         {
            _core.sysMsg(Language.TEMP_BAG_U[13]);
         }
      }
      
      public function set mxbtnOpen(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._554117445mxbtnOpen;
         if(_loc2_ !== param1)
         {
            this._554117445mxbtnOpen = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mxbtnOpen",_loc2_,param1));
         }
      }
      
      public function set vs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      public function set btnOpen(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._206080710btnOpen;
         if(_loc2_ !== param1)
         {
            this._206080710btnOpen = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnOpen",_loc2_,param1));
         }
      }
      
      public function set slotRep(param1:Repeater) : void
      {
         var _loc2_:Object = this._2113262145slotRep;
         if(_loc2_ !== param1)
         {
            this._2113262145slotRep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotRep",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TempBagSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TempBagSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TempBagSlotWatcherSetupUtil");
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
      
      public function set bagSlot3(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._2080952627bagSlot3;
         if(_loc2_ !== param1)
         {
            this._2080952627bagSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagSlot3",_loc2_,param1));
         }
      }
      
      public function set bagSlot4(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._2080952626bagSlot4;
         if(_loc2_ !== param1)
         {
            this._2080952626bagSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagSlot4",_loc2_,param1));
         }
      }
      
      public function set bagSlot1(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._2080952629bagSlot1;
         if(_loc2_ !== param1)
         {
            this._2080952629bagSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagSlot1",_loc2_,param1));
         }
      }
      
      public function __cbDire_click(param1:MouseEvent) : void
      {
         setDire();
      }
      
      public function set bagSlot5(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._2080952625bagSlot5;
         if(_loc2_ !== param1)
         {
            this._2080952625bagSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagSlot5",_loc2_,param1));
         }
      }
      
      public function set bagSlot2(param1:ItemSlotTempBag) : void
      {
         var _loc2_:Object = this._2080952628bagSlot2;
         if(_loc2_ !== param1)
         {
            this._2080952628bagSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagSlot2",_loc2_,param1));
         }
      }
      
      public function set slotTile(param1:Tile) : void
      {
         var _loc2_:Object = this._1086553652slotTile;
         if(_loc2_ !== param1)
         {
            this._1086553652slotTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotTile",_loc2_,param1));
         }
      }
      
      private function onTBagSort(param1:Object) : void
      {
         if(param1)
         {
            onGetTBag(param1);
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get mxslotRep() : Repeater
      {
         return this._1421506996mxslotRep;
      }
      
      [Bindable(event="propertyChange")]
      public function get _TempBagSlot_Tile1() : Tile
      {
         return this._915228087_TempBagSlot_Tile1;
      }
      
      [Bindable(event="propertyChange")]
      public function get _TempBagSlot_Tile2() : Tile
      {
         return this._915228088_TempBagSlot_Tile2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slotRep() : Repeater
      {
         return this._2113262145slotRep;
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:ArrayCollection = new ArrayCollection();
         var _loc4_:uint = 0;
         while(_loc4_ < param2)
         {
            if(curr_bag_arr[param1 + _loc4_])
            {
               _loc3_.addItem(curr_bag_arr[param1 + _loc4_]);
            }
            _loc4_++;
         }
         slotRep.dataProvider = _loc3_;
      }
      
      public function putDirect(param1:ItemSlot) : void
      {
         var _loc4_:* = undefined;
         if(_core.player.tBag.ot)
         {
            _core.sysMsg(Language.TEMP_BAG_U[2]);
            return;
         }
         var _loc2_:* = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1.slotData.tid];
         var _loc3_:* = _core.data.getGameData(param1.type,param1.giid);
         if(Boolean(_loc2_) && Boolean(_loc3_) && ToolKit.ableToTemp(_loc2_))
         {
            for(_loc4_ in curr_bag_arr)
            {
               if(Boolean(curr_bag_arr[_loc4_]) && Boolean(curr_bag_arr[_loc4_].idx) && (!curr_bag_arr[_loc4_].type || curr_bag_arr[_loc4_].itemId == -1))
               {
                  _core.remote.addtItemFromBag(param1.index,curr_bag_arr[_loc4_].idx);
                  break;
               }
               if(curr_bag_arr[_loc4_].itemId == _loc2_.id)
               {
                  if(_loc3_.color == curr_bag_arr[_loc4_].color && _loc3_.binded == curr_bag_arr[_loc4_].binded && ToolKit.add(curr_bag_arr[_loc4_].num,param1.slotData.stackNum) < _loc2_.stackMax)
                  {
                     _core.remote.addtItemFromBag(param1.index,curr_bag_arr[_loc4_].idx);
                     break;
                  }
               }
            }
         }
         else
         {
            _core.sysMsg(Language.TEMP_BAG_U[3]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slotTile() : Tile
      {
         return this._1086553652slotTile;
      }
      
      public function ___TempBagSlot_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         _core.remote.call("tempBagSort",new Responder(onTBagSort));
      }
      
      private function mxonPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:ArrayCollection = new ArrayCollection();
         var _loc4_:uint = 0;
         while(_loc4_ < param2)
         {
            if(mxcurr_bag_arr[param1 + _loc4_])
            {
               _loc3_.addItem(mxcurr_bag_arr[param1 + _loc4_]);
            }
            _loc4_++;
         }
         mxslotRep.dataProvider = _loc3_;
      }
   }
}

