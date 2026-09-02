package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FilterButton;
   import com.qeedoo.ui.view.comp.FilterTextArea;
   import com.qeedoo.ui.view.comp.HButtonTab;
   import com.qeedoo.ui.view.compGameStage.NPCView;
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
   import mx.containers.ViewStack;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class TripleTownPanel extends DragableCanvas implements IBindingClient
   {
      
      public static var bombDict:*;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private const ALPHA_ADD:Number = 0.03;
      
      private var _1584105757viewStack:ViewStack;
      
      private var triplePlaza:Object;
      
      private const INST_DICT:Object = {
         0:[{
            "x":810,
            "y":790
         },{
            "x":888,
            "y":746
         },{
            "x":967,
            "y":703
         },{
            "x":1046,
            "y":660
         },{
            "x":1125,
            "y":617
         },{
            "x":1204,
            "y":574
         }],
         1:[{
            "x":888,
            "y":833
         },{
            "x":967,
            "y":790
         },{
            "x":1046,
            "y":746
         },{
            "x":1125,
            "y":703
         },{
            "x":1204,
            "y":660
         },{
            "x":1283,
            "y":617
         }],
         2:[{
            "x":967,
            "y":876
         },{
            "x":1046,
            "y":833
         },{
            "x":1125,
            "y":790
         },{
            "x":1204,
            "y":746
         },{
            "x":1283,
            "y":703
         },{
            "x":1362,
            "y":660
         }],
         3:[{
            "x":1046,
            "y":919
         },{
            "x":1125,
            "y":876
         },{
            "x":1204,
            "y":833
         },{
            "x":1283,
            "y":790
         },{
            "x":1362,
            "y":746
         },{
            "x":1441,
            "y":703
         }],
         4:[{
            "x":1125,
            "y":962
         },{
            "x":1204,
            "y":919
         },{
            "x":1283,
            "y":876
         },{
            "x":1362,
            "y":833
         },{
            "x":1441,
            "y":790
         },{
            "x":1520,
            "y":746
         }],
         5:[{
            "x":1204,
            "y":1005
         },{
            "x":1283,
            "y":962
         },{
            "x":1362,
            "y":919
         },{
            "x":1441,
            "y":876
         },{
            "x":1520,
            "y":833
         },{
            "x":1599,
            "y":790
         }]
      };
      
      private const RIGHT_DICT:Object = {
         0:[{
            "x":1367,
            "y":485
         },{
            "x":1446,
            "y":442
         },{
            "x":1604,
            "y":356
         }],
         1:[{
            "x":1446,
            "y":528
         },{
            "x":1525,
            "y":485
         },{
            "x":1683,
            "y":399
         }],
         2:[{
            "x":1525,
            "y":571
         },{
            "x":1604,
            "y":528
         },{
            "x":1762,
            "y":442
         }],
         3:[{
            "x":1604,
            "y":615
         },{
            "x":1683,
            "y":571
         },{
            "x":1841,
            "y":485
         }],
         4:[{
            "x":1683,
            "y":658
         },{
            "x":1762,
            "y":615
         },{
            "x":1920,
            "y":528
         }],
         5:[{
            "x":1762,
            "y":701
         },{
            "x":1841,
            "y":658
         },{
            "x":1999,
            "y":571
         }]
      };
      
      private var _rankArray:Array;
      
      public var _TripleTownPanel_FilterButton1:FilterButton;
      
      public var _TripleTownPanel_FilterButton2:FilterButton;
      
      private var tripleConfig:Object;
      
      public var _TripleTownPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private const BOTTOM_DICT:Object = {
         0:[{
            "x":1362,
            "y":1092
         },{
            "x":1441,
            "y":1048
         },{
            "x":1520,
            "y":1005
         },{
            "x":1599,
            "y":962
         },{
            "x":1678,
            "y":919
         },{
            "x":1757,
            "y":876
         }],
         1:[{
            "x":1441,
            "y":1135
         },{
            "x":1520,
            "y":1092
         },{
            "x":1599,
            "y":1048
         },{
            "x":1678,
            "y":1005
         },{
            "x":1757,
            "y":962
         },{
            "x":1836,
            "y":919
         }],
         2:[{
            "x":1599,
            "y":1221
         },{
            "x":1678,
            "y":1178
         },{
            "x":1757,
            "y":1135
         },{
            "x":1836,
            "y":1092
         },{
            "x":1915,
            "y":1048
         },{
            "x":1994,
            "y":1005
         }]
      };
      
      private var _killCombo:int;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1497492550myScore:Label;
      
      private var _moveNpcDict:Object = {};
      
      private var _803559802pageTab:HButtonTab;
      
      private const TOP_DICT:Object = {
         0:[{
            "x":652,
            "y":703
         },{
            "x":731,
            "y":660
         },{
            "x":810,
            "y":617
         },{
            "x":888,
            "y":574
         },{
            "x":967,
            "y":531
         },{
            "x":1046,
            "y":487
         }],
         1:[{
            "x":573,
            "y":660
         },{
            "x":652,
            "y":617
         },{
            "x":731,
            "y":574
         },{
            "x":810,
            "y":531
         },{
            "x":888,
            "y":487
         },{
            "x":967,
            "y":444
         }],
         2:[{
            "x":494,
            "y":617
         },{
            "x":573,
            "y":574
         },{
            "x":652,
            "y":531
         },{
            "x":731,
            "y":487
         },{
            "x":810,
            "y":444
         },{
            "x":888,
            "y":401
         }]
      };
      
      private var _core:Core = Core.getInstance();
      
      private var _tripleKilling:Boolean;
      
      private var _978073671rankBar:List;
      
      public var _TripleTownPanel_FilterTextArea1:FilterTextArea;
      
      mx_internal var _watchers:Array = [];
      
      private const STATE_DICT:Object = [0,GamePredef.ST_TRIPLE_TOWN_BOMB,GamePredef.ST_TRIPLE_TOWN_DOUBLE,GamePredef.ST_TRIPLE_TOWN_TOP,GamePredef.ST_TRIPLE_TOWN_LEFT,GamePredef.ST_TRIPLE_TOWN_BOTTOM,GamePredef.ST_TRIPLE_TOWN_RIGHT];
      
      private const RANK_LIMIT:int = 10;
      
      private var _broadInfo:Object;
      
      private var _loadState:int;
      
      private var COMBO_CODE_ARRAY:Array = [0,2060090400043,2060090400044,2060090400045,2060090400046,2060090400047,2060090400048,2060090400049,2060090400050,2060090400051,2060090400052,2060090400053,2060090400054,2060090400055,2060090400056,2060090400057,2060090400058,2060090400059,2060090400060,2060090400061,2060090400062,2060090400063,2060090400064,2060090400065,2060090400066,2060090400067,2060090400068,2060090400069,2060090400070,2060090400071,2060090400072];
      
      private const EFFECT_CODE:Number = 2080130101005;
      
      private var _tripleArray:Array;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private const CHANGABLE_DICT:Object = {
         0:{
            "x":0,
            "y":-1
         },
         1:{
            "x":0,
            "y":1
         },
         2:{
            "x":-1,
            "y":0
         },
         3:{
            "x":1,
            "y":0
         }
      };
      
      public var _TripleTownPanel_Label1:Label;
      
      public var _TripleTownPanel_Label3:Label;
      
      public var _TripleTownPanel_Label4:Label;
      
      public var _TripleTownPanel_Label5:Label;
      
      public var _TripleTownPanel_Label6:Label;
      
      private const LEFT_DICT:Object = {
         0:[{
            "x":647,
            "y":878
         },{
            "x":568,
            "y":921
         },{
            "x":489,
            "y":964
         }],
         1:[{
            "x":726,
            "y":921
         },{
            "x":647,
            "y":964
         },{
            "x":568,
            "y":1008
         }],
         2:[{
            "x":805,
            "y":964
         },{
            "x":726,
            "y":1008
         },{
            "x":647,
            "y":1051
         }],
         3:[{
            "x":884,
            "y":1008
         },{
            "x":805,
            "y":1051
         },{
            "x":726,
            "y":1094
         }],
         4:[{
            "x":963,
            "y":1051
         },{
            "x":884,
            "y":1094
         },{
            "x":805,
            "y":1137
         }],
         5:[{
            "x":1042,
            "y":1094
         },{
            "x":963,
            "y":1137
         },{
            "x":884,
            "y":1180
         }]
      };
      
      public var _TripleTownPanel_Label2:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_TripleTownPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":23,
                        "y":47,
                        "selectedIndex":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"viewStack",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":67,
                        "width":480,
                        "height":340,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "width":480,
                                 "height":325,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "clipContent":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_TripleTownPanel_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.color = 16776960;
                                       this.fontSize = 14;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":8};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":FilterTextArea,
                                    "id":"_TripleTownPanel_FilterTextArea1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.borderStyle = "none";
                                       this.backgroundAlpha = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":38,
                                          "width":445,
                                          "height":260,
                                          "selectable":false,
                                          "editable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":FilterButton,
                                    "id":"_TripleTownPanel_FilterButton1",
                                    "events":{"click":"___TripleTownPanel_FilterButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":331,
                                          "width":60,
                                          "height":22,
                                          "styleName":"BtnStdGreen"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "width":480,
                                 "height":340,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "clipContent":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_TripleTownPanel_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.color = 16776960;
                                       this.fontSize = 14;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":8};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":30,
                                          "y":29,
                                          "clipContent":false,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_TripleTownPanel_Label3",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalCenter = "0";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"width":70};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_TripleTownPanel_Label4",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalCenter = "0";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":70,
                                                   "width":164
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_TripleTownPanel_Label5",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalCenter = "0";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":234,
                                                   "width":96
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_TripleTownPanel_Label6",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalCenter = "0";
                                                this.textAlign = "center";
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":330,
                                                   "width":70
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":List,
                                    "id":"rankBar",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":30,
                                          "y":47,
                                          "width":430,
                                          "height":260,
                                          "selectable":false,
                                          "itemRenderer":_TripleTownPanel_ClassFactory1_c()
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myIndex",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":33,
                                          "y":311
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myScore",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":160,
                                          "y":311
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":FilterButton,
                                    "id":"_TripleTownPanel_FilterButton2",
                                    "events":{"click":"___TripleTownPanel_FilterButton2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":343,
                                          "y":311,
                                          "width":60,
                                          "height":22,
                                          "styleName":"BtnStdGreen"
                                       };
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
      
      private var _1488574086myIndex:Label;
      
      public function TripleTownPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 430;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TripleTownPanel._watcherSetupUtil = param1;
      }
      
      public function tripleTwonTurnInfo(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(!triplePlaza || !triplePlaza.instDict || !param1)
         {
            return;
         }
         if(param1.hasOwnProperty("npcDir") && param1.npcDir != triplePlaza.npcDir)
         {
            triplePlaza.npcDir = param1.npcDir;
            tripleChangeDir();
         }
         for(_loc2_ in param1)
         {
            if(triplePlaza.hasOwnProperty(_loc2_))
            {
               triplePlaza[_loc2_] = param1[_loc2_];
            }
         }
         _loc3_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TURN);
         _loc3_ && _loc3_.updateView(triplePlaza);
      }
      
      public function set myIndex(param1:Label) : void
      {
         var _loc2_:Object = this._1488574086myIndex;
         if(_loc2_ !== param1)
         {
            this._1488574086myIndex = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myIndex",_loc2_,param1));
         }
      }
      
      public function set pageTab(param1:HButtonTab) : void
      {
         var _loc2_:Object = this._803559802pageTab;
         if(_loc2_ !== param1)
         {
            this._803559802pageTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageTab",_loc2_,param1));
         }
      }
      
      private function makeAndMoveNpc(param1:Object, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         if(param2 >= 0 && param3 >= 0 && param2 < tripleConfig.npcLen && param3 < tripleConfig.npcLen)
         {
            param1.xpos = param2;
            param1.ypos = param3;
            param1.isStandBy = false;
            triplePlaza.instDict[param1.instId] = param1;
            _loc4_ = INST_DICT[param2][param3];
         }
         if(triplePlaza.npcDir == 1)
         {
            _loc5_ = TOP_DICT[tripleConfig.standLen][param3];
         }
         else if(triplePlaza.npcDir == 5)
         {
            _loc5_ = BOTTOM_DICT[tripleConfig.standLen][param3];
         }
         else if(triplePlaza.npcDir == 3)
         {
            _loc5_ = LEFT_DICT[param2][tripleConfig.standLen];
         }
         else if(triplePlaza.npcDir == 7)
         {
            _loc5_ = RIGHT_DICT[param2][tripleConfig.standLen];
         }
         createTripleTownNpc(param1,_loc5_.x,_loc5_.y,triplePlaza.npcDir);
         var _loc6_:NPCView = _core.view.getN(param1.instId) as NPCView;
         if(!_loc6_)
         {
            return;
         }
         _loc6_.alpha = 0;
         _loc6_.addEventListener(Event.ENTER_FRAME,gradiantHandler);
         if(param2 < 0)
         {
            param2 = Math.abs(param2 + 1);
            _loc4_ = TOP_DICT[param2][param3];
         }
         else if(param2 >= tripleConfig.npcLen)
         {
            param2 -= int(tripleConfig.npcLen);
            _loc4_ = BOTTOM_DICT[param2][param3];
         }
         else if(param3 < 0)
         {
            param3 = Math.abs(param3 + 1);
            _loc4_ = LEFT_DICT[param2][param3];
         }
         else if(param3 >= tripleConfig.npcLen)
         {
            param3 -= int(tripleConfig.npcLen);
            _loc4_ = RIGHT_DICT[param2][param3];
         }
         NpcViewWlakTo(_loc6_,_loc4_.x,_loc4_.y);
      }
      
      private function loadEffect() : void
      {
         if(_loadState != 0)
         {
            return;
         }
         _loadState = 1;
         var _loc1_:Loader = new Loader();
         _loc1_.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoadEffect);
         _loc1_.load(new URLRequest(ResManager.getResUrl(EFFECT_CODE)));
      }
      
      private function updateTripleNpcPos(param1:Object, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         if(param2.oldDir != triplePlaza.npcDir)
         {
            triplePlaza.npcDir = param2.oldDir;
            tripleChangeDir();
         }
         if(triplePlaza.npcDir == 1)
         {
            _loc4_ = 0;
            while(_loc4_ < tripleConfig.standLen)
            {
               _loc6_ = -(_loc4_ + 1);
               param1[_loc6_] = {};
               _loc7_ = 0;
               while(_loc7_ < tripleConfig.npcLen)
               {
                  param1[_loc6_][_loc7_] = triplePlaza.topDict[_loc4_][_loc7_];
                  _loc7_++;
               }
               _loc4_++;
            }
            _loc5_ = 0;
            while(_loc5_ < tripleConfig.npcLen)
            {
               _loc8_ = 0;
               _loc9_ = int(tripleConfig.npcLen - 1);
               while(_loc9_ >= -tripleConfig.standLen)
               {
                  if(!param1[_loc9_] || !param1[_loc9_][_loc5_])
                  {
                     _loc3_ = true;
                     _loc8_++;
                  }
                  else if(_loc8_ > 0)
                  {
                     _loc12_ = _loc9_ + _loc8_;
                     _loc13_ = param1[_loc9_][_loc5_];
                     moveNpcViewTo(_loc13_,_loc12_,_loc5_);
                     param1[_loc12_][_loc5_] = _loc13_;
                     param1[_loc9_][_loc5_] = null;
                  }
                  _loc9_--;
               }
               _loc11_ = _loc10_ = _loc8_ - tripleConfig.standLen - 1;
               while(_loc11_ >= -tripleConfig.standLen)
               {
                  if(_loc11_ >= 0)
                  {
                     _loc14_ = npcByPosition(param2.instDict,_loc11_,_loc5_);
                  }
                  else
                  {
                     _loc15_ = Math.abs(-(_loc11_ + 1));
                     _loc14_ = param2.topDict[_loc15_][_loc5_];
                  }
                  makeAndMoveNpc(_loc14_,_loc11_,_loc5_);
                  param1[_loc11_][_loc5_] = _loc14_;
                  _loc11_--;
               }
               _loc5_++;
            }
            triplePlaza.topDict = param2.topDict;
         }
         else if(triplePlaza.npcDir == 5)
         {
            _loc4_ = 0;
            while(_loc4_ < tripleConfig.standLen)
            {
               _loc17_ = tripleConfig.npcLen + _loc4_;
               param1[_loc17_] = {};
               _loc7_ = 0;
               while(_loc7_ < tripleConfig.npcLen)
               {
                  param1[_loc17_][_loc7_] = triplePlaza.bottomDict[_loc4_][_loc7_];
                  _loc7_++;
               }
               _loc4_++;
            }
            _loc16_ = tripleConfig.npcLen + tripleConfig.standLen;
            _loc5_ = 0;
            while(_loc5_ < tripleConfig.npcLen)
            {
               _loc8_ = 0;
               _loc9_ = 0;
               while(_loc9_ < _loc16_)
               {
                  if(!param1[_loc9_] || !param1[_loc9_][_loc5_])
                  {
                     _loc3_ = true;
                     _loc8_++;
                  }
                  else if(_loc8_ > 0)
                  {
                     _loc12_ = _loc9_ - _loc8_;
                     _loc13_ = param1[_loc9_][_loc5_];
                     moveNpcViewTo(_loc13_,_loc12_,_loc5_);
                     param1[_loc12_][_loc5_] = _loc13_;
                     param1[_loc9_][_loc5_] = null;
                  }
                  _loc9_++;
               }
               _loc11_ = _loc10_ = _loc16_ - _loc8_;
               while(_loc11_ < _loc16_)
               {
                  if(_loc11_ < tripleConfig.npcLen)
                  {
                     _loc14_ = npcByPosition(param2.instDict,_loc11_,_loc5_);
                  }
                  else
                  {
                     _loc15_ = _loc11_ - tripleConfig.npcLen;
                     _loc14_ = param2.bottomDict[_loc15_][_loc5_];
                  }
                  makeAndMoveNpc(_loc14_,_loc11_,_loc5_);
                  param1[_loc11_][_loc5_] = _loc14_;
                  _loc11_++;
               }
               _loc5_++;
            }
            triplePlaza.bottomDict = param2.bottomDict;
         }
         if(triplePlaza.npcDir == 3)
         {
            _loc4_ = 0;
            while(_loc4_ < tripleConfig.npcLen)
            {
               _loc7_ = 0;
               while(_loc7_ < tripleConfig.standLen)
               {
                  _loc18_ = -(_loc7_ + 1);
                  param1[_loc4_][_loc18_] = triplePlaza.leftDict[_loc4_][_loc7_];
                  _loc7_++;
               }
               _loc4_++;
            }
            _loc5_ = 0;
            while(_loc5_ < tripleConfig.npcLen)
            {
               _loc8_ = 0;
               _loc9_ = int(tripleConfig.npcLen - 1);
               while(_loc9_ >= -tripleConfig.standLen)
               {
                  if(!param1[_loc5_] || !param1[_loc5_][_loc9_])
                  {
                     _loc3_ = true;
                     _loc8_++;
                  }
                  else if(_loc8_ > 0)
                  {
                     _loc12_ = _loc9_ + _loc8_;
                     _loc13_ = param1[_loc5_][_loc9_];
                     moveNpcViewTo(_loc13_,_loc5_,_loc12_);
                     param1[_loc5_][_loc12_] = _loc13_;
                     param1[_loc5_][_loc9_] = null;
                  }
                  _loc9_--;
               }
               _loc11_ = _loc10_ = _loc8_ - tripleConfig.standLen - 1;
               while(_loc11_ >= -tripleConfig.standLen)
               {
                  if(_loc11_ >= 0)
                  {
                     _loc14_ = npcByPosition(param2.instDict,_loc5_,_loc11_);
                  }
                  else
                  {
                     _loc19_ = Math.abs(-(_loc11_ + 1));
                     _loc14_ = param2.leftDict[_loc5_][_loc19_];
                  }
                  makeAndMoveNpc(_loc14_,_loc5_,_loc11_);
                  param1[_loc5_][_loc11_] = _loc14_;
                  _loc11_--;
               }
               _loc5_++;
            }
            triplePlaza.leftDict = param2.leftDict;
         }
         if(triplePlaza.npcDir == 7)
         {
            _loc4_ = 0;
            while(_loc4_ < tripleConfig.npcLen)
            {
               _loc7_ = 0;
               while(_loc7_ < tripleConfig.standLen)
               {
                  _loc18_ = tripleConfig.npcLen + _loc7_;
                  param1[_loc4_][_loc18_] = triplePlaza.rightDict[_loc4_][_loc7_];
                  _loc7_++;
               }
               _loc4_++;
            }
            _loc16_ = tripleConfig.npcLen + tripleConfig.standLen;
            _loc5_ = 0;
            while(_loc5_ < tripleConfig.npcLen)
            {
               _loc8_ = 0;
               _loc9_ = 0;
               while(_loc9_ < _loc16_)
               {
                  if(!param1[_loc5_] || !param1[_loc5_][_loc9_])
                  {
                     _loc3_ = true;
                     _loc8_++;
                  }
                  else if(_loc8_ > 0)
                  {
                     _loc12_ = _loc9_ - _loc8_;
                     _loc13_ = param1[_loc5_][_loc9_];
                     moveNpcViewTo(_loc13_,_loc5_,_loc12_);
                     param1[_loc5_][_loc12_] = _loc13_;
                     param1[_loc5_][_loc9_] = null;
                  }
                  _loc9_++;
               }
               _loc11_ = _loc10_ = _loc16_ - _loc8_;
               while(_loc11_ < _loc16_)
               {
                  if(_loc11_ < tripleConfig.npcLen)
                  {
                     _loc14_ = npcByPosition(param2.instDict,_loc5_,_loc11_);
                  }
                  else
                  {
                     _loc19_ = _loc11_ - tripleConfig.npcLen;
                     _loc14_ = param2.rightDict[_loc5_][_loc19_];
                  }
                  makeAndMoveNpc(_loc14_,_loc5_,_loc11_);
                  param1[_loc5_][_loc11_] = _loc14_;
                  _loc11_++;
               }
               _loc5_++;
            }
            triplePlaza.rightDict = param2.rightDict;
         }
         _broadInfo = param2;
         triplePlaza.instDict = param2.instDict;
         !_loc3_ && checkContinue();
      }
      
      public function onTripleKill(param1:Object) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:Object = null;
         var _loc20_:int = 0;
         var _loc21_:Object = null;
         if(!triplePlaza || !triplePlaza.instDict)
         {
            return;
         }
         if(_tripleKilling)
         {
            _tripleArray = _tripleArray || [];
            _tripleArray.push(param1);
            return;
         }
         ++_killCombo;
         _tripleKilling = true;
         var _loc2_:Object = {};
         var _loc3_:int = 0;
         while(_loc3_ < int(tripleConfig.npcLen))
         {
            _loc2_[_loc3_] = {};
            _loc3_++;
         }
         var _loc4_:Object = triplePlaza.instDict;
         for(_loc5_ in _loc4_)
         {
            _loc8_ = _loc4_[_loc5_];
            if(_loc8_)
            {
               _loc2_[_loc8_.xpos][_loc8_.ypos] = _loc8_;
            }
         }
         _loc6_ = {};
         _loc7_ = 0;
         while(_loc7_ < tripleConfig.npcLen)
         {
            _loc9_ = 0;
            while(_loc9_ < tripleConfig.npcLen - 2)
            {
               if(equalByPos(_loc2_,_loc7_,_loc9_,_loc7_,_loc9_ + 1) && equalByPos(_loc2_,_loc7_,_loc9_,_loc7_,_loc9_ + 2))
               {
                  _loc6_[_loc2_[_loc7_][_loc9_].instId] = true;
                  _loc6_[_loc2_[_loc7_][_loc9_ + 1].instId] = true;
                  _loc6_[_loc2_[_loc7_][_loc9_ + 2].instId] = true;
                  if(_loc9_ + 3 >= tripleConfig.npcLen)
                  {
                     break;
                  }
                  _loc9_ += 2;
                  _loc10_ = _loc9_ + 1;
                  while(equalByPos(_loc2_,_loc7_,_loc9_,_loc7_,_loc10_))
                  {
                     _loc9_ = _loc10_;
                     _loc6_[_loc2_[_loc7_][_loc10_].instId] = true;
                     if(_loc10_ + 1 >= tripleConfig.npcLen)
                     {
                        break;
                     }
                     _loc10_++;
                  }
               }
               _loc9_++;
            }
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < tripleConfig.npcLen)
         {
            _loc9_ = 0;
            while(_loc9_ < tripleConfig.npcLen - 2)
            {
               if(equalByPos(_loc2_,_loc9_,_loc7_,_loc9_ + 1,_loc7_) && equalByPos(_loc2_,_loc9_,_loc7_,_loc9_ + 2,_loc7_))
               {
                  _loc6_[_loc2_[_loc9_][_loc7_].instId] = true;
                  _loc6_[_loc2_[_loc9_ + 1][_loc7_].instId] = true;
                  _loc6_[_loc2_[_loc9_ + 2][_loc7_].instId] = true;
                  if(_loc9_ + 3 >= tripleConfig.npcLen)
                  {
                     break;
                  }
                  _loc9_ += 2;
                  _loc10_ = _loc9_ + 1;
                  while(equalByPos(_loc2_,_loc9_,_loc7_,_loc10_,_loc7_))
                  {
                     _loc9_ = _loc10_;
                     _loc6_[_loc2_[_loc10_][_loc7_].instId] = true;
                     if(_loc10_ + 1 >= tripleConfig.npcLen)
                     {
                        break;
                     }
                     _loc10_++;
                  }
               }
               _loc9_++;
            }
            _loc7_++;
         }
         for(_loc5_ in _loc6_)
         {
            _loc11_ = _loc4_[_loc5_];
            _loc12_ = int(_loc11_.specType);
            _loc13_ = int(_loc11_.xpos);
            _loc14_ = int(_loc11_.ypos);
            if(_loc12_ == 1)
            {
               _loc15_ = -1;
               while(_loc15_ <= 1)
               {
                  _loc16_ = -1;
                  while(_loc16_ <= 1)
                  {
                     _loc17_ = _loc13_ + _loc15_;
                     _loc18_ = _loc13_ + _loc16_;
                     if(!(_loc17_ == _loc13_ && _loc18_ == _loc14_))
                     {
                        _loc19_ = this.tripleNpcByPos(_loc17_,_loc18_);
                        if(!(!_loc19_ || Boolean(_loc6_[_loc19_.instId])))
                        {
                           removeNpcByInstId(_loc19_.instId);
                           _loc2_[_loc19_.xpos][_loc19_.ypos] = null;
                        }
                     }
                     _loc16_++;
                  }
                  _loc15_++;
               }
            }
            removeNpcByInstId(int(_loc5_));
            _loc2_[_loc13_][_loc14_] = null;
         }
         if(_killCombo >= 1)
         {
            _loc20_ = _killCombo - 1;
            _loc21_ = _core.view.getUI(ViewManager.MAIN_CNOTICE);
            _loc21_.addNotice({
               "delay":2000,
               "effect":COMBO_CODE_ARRAY[_loc20_],
               "msg":""
            });
         }
         this.updateTripleNpcPos(_loc2_,param1);
      }
      
      public function tripleSwapNpc(param1:int) : void
      {
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc12_:Object = null;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         var _loc15_:String = null;
         var _loc16_:String = null;
         var _loc2_:Object = triplePlaza.instDict;
         var _loc3_:* = _loc2_[param1];
         if(!_loc3_ || Boolean(_loc3_.isLockUp))
         {
            return;
         }
         var _loc4_:int = int(_loc3_.xpos);
         var _loc5_:int = int(_loc3_.ypos);
         var _loc6_:Array = [];
         for(_loc7_ in CHANGABLE_DICT)
         {
            _loc12_ = CHANGABLE_DICT[_loc7_];
            _loc13_ = tripleNpcByPos(_loc4_ + _loc12_.x,_loc5_ + _loc12_.y);
            if(!(!_loc13_ || Boolean(_loc13_.isLockUp)))
            {
               _loc14_ = GameData.d[GamePredef.TBL_NPC][_loc13_.npcId];
               _loc15_ = _loc14_.name + _loc13_.index;
               _loc16_ = LanguageUtil.replace(Language.TRIPLE_TOWN_PANEL[14],{"name":_loc15_});
               _loc6_.push({
                  "func":"tripleTownNpcSwap",
                  "label":_loc16_,
                  "param":_loc13_.instId
               });
            }
         }
         _loc8_ = GameData.d[GamePredef.TBL_NPC][_loc3_.npcId];
         _loc9_ = _loc8_ ? _loc8_.onServiceText : "";
         var _loc10_:String = _loc8_.name + _loc3_.index;
         var _loc11_:Object = _core.view.getUI(ViewManager.PANEL_NPCSCRIPT);
         _loc11_.setInfo(param1,_loc10_,_loc9_,_loc6_);
      }
      
      public function onSyncRankList(param1:Array) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         if(!this.initialized)
         {
            this.callLater(onSyncRankList,[param1]);
            return;
         }
         if(_tripleKilling)
         {
            _rankArray = param1;
            return;
         }
         _rankArray = null;
         var _loc2_:Array = [];
         var _loc3_:String = "";
         var _loc4_:String = "";
         var _loc5_:String = triplePlaza ? triplePlaza.leaderId : null;
         if(Boolean(param1) && param1.length > 0)
         {
            _loc6_ = int(param1.length);
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               _loc8_ = param1[_loc7_];
               if(Boolean(_loc5_) && _loc8_.leaderId == _loc5_)
               {
                  _loc3_ = String(_loc7_ + 1);
                  _loc4_ = _loc8_.score;
               }
               if(_loc2_.length < RANK_LIMIT)
               {
                  _loc9_ = {
                     "id":_loc7_ + 1,
                     "leader":_loc8_.leader,
                     "member":_loc8_.member,
                     "score":_loc8_.score
                  };
                  _loc2_.push(_loc9_);
               }
               _loc7_++;
            }
         }
         myIndex.htmlText = Language.TRIPLE_TOWN_PANEL[10] + _loc3_;
         myScore.htmlText = Language.TRIPLE_TOWN_PANEL[11] + _loc4_;
         rankBar.dataProvider = _loc2_;
      }
      
      public function ___TripleTownPanel_FilterButton2_click(param1:MouseEvent) : void
      {
         gainHandler(param1);
      }
      
      public function createTripleTownNpc(param1:Object, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Object = GameData.d[GamePredef.TBL_NPC][param1.npcId];
         if(!_loc5_)
         {
            return;
         }
         var _loc6_:Object = ObjectUtil.copy(_loc5_);
         _loc6_.id = param1.instId;
         _loc6_.type = GamePredef.NPC_TYPE_TRIPLE_TOWN;
         _loc6_.posX = param2;
         _loc6_.posY = param3;
         _loc6_.nid = param1.npcId;
         _loc6_.busy = false;
         _loc6_.name += param1.index;
         _core.createNpc(_loc6_);
         var _loc7_:Npc = _core.getNpc(param1.instId);
         if(!_loc7_)
         {
            return;
         }
         _loc7_.tripleNpc = param1;
         _loc7_.state = STATE_DICT[param1.specType];
         var _loc8_:NPCView = _core.view.getN(_loc7_.id) as NPCView;
         (_loc8_) && _loc8_.dotaFaceTo(param4);
      }
      
      public function removeNpcByInstId(param1:Number) : void
      {
         if(Boolean(triplePlaza.instDict) && Boolean(triplePlaza.instDict[param1]))
         {
            triplePlaza.instDict[param1] = null;
            delete triplePlaza.instDict[param1];
         }
         var _loc2_:NPCView = _core.view.getN(param1) as NPCView;
         _loc2_ && _loc2_.hulaDead(3);
         _core.view.removeN(param1);
      }
      
      private function _TripleTownPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = TripleTownItemRenderer;
         return _loc1_;
      }
      
      private function _TripleTownPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TRIPLE_TOWN_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[1];
         _loc1_ = pageTab.selectedIndex;
         _loc1_ = Language.TRIPLE_TOWN_PANEL[2];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[3];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[4];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[5];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[6];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[7];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[8];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[9];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[10];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[11];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[12];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
      }
      
      private function swapHandler(param1:NPCView) : void
      {
         param1.moveEndCall = null;
         param1.dotaFaceTo(triplePlaza.npcDir);
      }
      
      private function NpcViewWlakTo(param1:NPCView, param2:int, param3:int) : void
      {
         var _loc4_:Object = param1.gameObject.tripleNpc;
         _moveNpcDict[_loc4_.instId] = param1;
         param1.moveEndCall = stopHandler;
         param1.walkTo(param2,param3);
      }
      
      private function _TripleTownPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_BasicTitleCanvas1.text = param1;
         },"_TripleTownPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            pageTab.filters = param1;
         },"pageTab.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return Language.TRIPLE_TOWN_PANEL[1];
         },function(param1:Array):void
         {
            pageTab.dataArray = param1;
         },"pageTab.dataArray");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return pageTab.selectedIndex;
         },function(param1:int):void
         {
            viewStack.selectedIndex = param1;
         },"viewStack.selectedIndex");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_Label1.text = param1;
         },"_TripleTownPanel_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_Label1.filters = param1;
         },"_TripleTownPanel_Label1.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_FilterTextArea1.htmlText = param1;
         },"_TripleTownPanel_FilterTextArea1.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_FilterTextArea1.filters = param1;
         },"_TripleTownPanel_FilterTextArea1.filters");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_FilterButton1.label = param1;
         },"_TripleTownPanel_FilterButton1.label");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_FilterButton1.filters = param1;
         },"_TripleTownPanel_FilterButton1.filters");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_Label2.text = param1;
         },"_TripleTownPanel_Label2.text");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_Label2.filters = param1;
         },"_TripleTownPanel_Label2.filters");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_Label3.filters = param1;
         },"_TripleTownPanel_Label3.filters");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_Label3.text = param1;
         },"_TripleTownPanel_Label3.text");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_Label4.filters = param1;
         },"_TripleTownPanel_Label4.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_Label4.text = param1;
         },"_TripleTownPanel_Label4.text");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_Label5.filters = param1;
         },"_TripleTownPanel_Label5.filters");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_Label5.text = param1;
         },"_TripleTownPanel_Label5.text");
         result[17] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_Label6.filters = param1;
         },"_TripleTownPanel_Label6.filters");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_Label6.text = param1;
         },"_TripleTownPanel_Label6.text");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            myIndex.filters = param1;
         },"myIndex.filters");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myIndex.htmlText = param1;
         },"myIndex.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            myScore.filters = param1;
         },"myScore.filters");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myScore.htmlText = param1;
         },"myScore.htmlText");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TripleTownPanel_FilterButton2.label = param1;
         },"_TripleTownPanel_FilterButton2.label");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _TripleTownPanel_FilterButton2.filters = param1;
         },"_TripleTownPanel_FilterButton2.filters");
         result[25] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get myScore() : Label
      {
         return this._1497492550myScore;
      }
      
      public function tripleNpcScript(param1:Number, param2:Object) : void
      {
         if(_tripleKilling)
         {
            _core.sysMsg(Language.TRIPLE_TOWN_PANEL[15]);
            return;
         }
         var _loc3_:String = param2.func;
         if(_loc3_ == "changePrompt")
         {
            tripleSwapNpc(param1);
            return;
         }
         _core.remote.call(_loc3_,null,param1,param2.param);
      }
      
      private function enterHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         _core.remote.call("tripleTownEnter",null);
      }
      
      private function onLoadEffect(param1:Event) : void
      {
         var _loc6_:BitmapData = null;
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         if(!_loc2_)
         {
            return;
         }
         _loc2_.removeEventListener(Event.COMPLETE,onLoadEffect);
         bombDict = [];
         var _loc3_:Class = _loc2_.applicationDomain.getDefinition("bomb") as Class;
         var _loc4_:MovieClip = new _loc3_();
         var _loc5_:int = 1;
         while(_loc5_ <= _loc4_.totalFrames)
         {
            _loc4_.gotoAndStop(_loc5_);
            _loc6_ = new BitmapData(160,160,true,16777215);
            _loc6_.draw(_loc4_);
            bombDict.push(_loc6_);
            _loc5_++;
         }
         _loadState = 2;
      }
      
      [Bindable(event="propertyChange")]
      public function get rankBar() : List
      {
         return this._978073671rankBar;
      }
      
      private function npcByPosition(param1:Object, param2:uint, param3:uint) : Object
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         for(_loc4_ in param1)
         {
            _loc5_ = param1[_loc4_];
            if(_loc5_)
            {
               if(_loc5_.xpos == param2 && _loc5_.ypos == param3)
               {
                  return _loc5_;
               }
            }
         }
         return null;
      }
      
      private function onTripleSyncRankList(param1:Object) : void
      {
         var _loc2_:Array = param1.rankList;
         if(param1.hasOwnProperty("leaderId"))
         {
            triplePlaza = triplePlaza || {};
            triplePlaza.leaderId = param1["leaderId"];
         }
         onSyncRankList(_loc2_);
      }
      
      private function moveNpcViewTo(param1:Object, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Number = Number(param1.instId);
         if(param2 >= 0 && param3 >= 0 && param2 < tripleConfig.npcLen && param3 < tripleConfig.npcLen)
         {
            param1.xpos = param2;
            param1.ypos = param3;
            param1.isStandBy = false;
            triplePlaza.instDict[_loc5_] = param1;
            _loc4_ = INST_DICT[param2][param3];
         }
         var _loc6_:NPCView = _core.view.getN(_loc5_) as NPCView;
         if(!_loc6_)
         {
            return;
         }
         if(_loc6_.gameObject)
         {
            _loc6_.gameObject.tripleNpc = param1;
         }
         if(param2 < 0)
         {
            param2 = Math.abs(param2 + 1);
            _loc4_ = TOP_DICT[param2][param3];
         }
         else if(param2 >= tripleConfig.npcLen)
         {
            param2 -= int(tripleConfig.npcLen);
            _loc4_ = BOTTOM_DICT[param2][param3];
         }
         else if(param3 < 0)
         {
            param3 = Math.abs(param3 + 1);
            _loc4_ = LEFT_DICT[param2][param3];
         }
         else if(param3 >= tripleConfig.npcLen)
         {
            param3 -= int(tripleConfig.npcLen);
            _loc4_ = RIGHT_DICT[param2][param3];
         }
         NpcViewWlakTo(_loc6_,_loc4_.x,_loc4_.y);
      }
      
      private function gradiantHandler(param1:Event) : void
      {
         var _loc2_:NPCView = param1.currentTarget as NPCView;
         var _loc3_:Number = _loc2_.alpha + ALPHA_ADD;
         if(_loc3_ >= 1)
         {
            _loc3_ = 1;
            _loc2_.removeEventListener(Event.ENTER_FRAME,gradiantHandler);
         }
         _loc2_.alpha = _loc3_;
      }
      
      [Bindable(event="propertyChange")]
      public function get myIndex() : Label
      {
         return this._1488574086myIndex;
      }
      
      public function set myScore(param1:Label) : void
      {
         var _loc2_:Object = this._1497492550myScore;
         if(_loc2_ !== param1)
         {
            this._1497492550myScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myScore",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      public function set rankBar(param1:List) : void
      {
         var _loc2_:Object = this._978073671rankBar;
         if(_loc2_ !== param1)
         {
            this._978073671rankBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankBar",_loc2_,param1));
         }
      }
      
      private function tripleNpcByPos(param1:uint, param2:uint) : Object
      {
         if(!triplePlaza || !triplePlaza.instDict)
         {
            return null;
         }
         var _loc3_:Object = triplePlaza.instDict;
         return npcByPosition(_loc3_,param1,param2);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TripleTownPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TripleTownPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TripleTownPanelWatcherSetupUtil");
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
      
      public function onSwapTripleNpc(param1:Object) : void
      {
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         if(!triplePlaza || !triplePlaza.instDict)
         {
            return;
         }
         var _loc2_:Object = triplePlaza.instDict;
         var _loc3_:Object = param1.tripleNpc;
         var _loc4_:Object = param1.swapNpc;
         _loc2_[_loc3_.instId] = _loc3_;
         _loc2_[_loc4_.instId] = _loc4_;
         var _loc5_:NPCView = _core.view.getN(_loc3_.instId) as NPCView;
         if(_loc5_)
         {
            if(_loc5_.gameObject)
            {
               _loc5_.gameObject.tripleNpc = _loc3_;
            }
            _loc7_ = INST_DICT[_loc3_.xpos][_loc3_.ypos];
            _loc5_.moveEndCall = swapHandler;
            _loc5_.walkTo(_loc7_.x,_loc7_.y);
         }
         var _loc6_:NPCView = _core.view.getN(_loc4_.instId) as NPCView;
         if(_loc6_)
         {
            if(_loc6_.gameObject)
            {
               _loc6_.gameObject.tripleNpc = _loc4_;
            }
            _loc8_ = INST_DICT[_loc4_.xpos][_loc4_.ypos];
            _loc6_.moveEndCall = swapHandler;
            _loc6_.walkTo(_loc8_.x,_loc8_.y);
         }
      }
      
      private function equalByPos(param1:Object, param2:int, param3:int, param4:int, param5:int) : Boolean
      {
         if(!param1[param2] || !param1[param2][param3] || !param1[param4] || !param1[param4][param5])
         {
            return false;
         }
         var _loc6_:Number = Number(param1[param2][param3].npcId);
         var _loc7_:Number = Number(param1[param4][param5].npcId);
         return _loc6_ == _loc7_;
      }
      
      private function gainHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         _core.remote.call("tripleTownTakeAward",null);
      }
      
      public function set viewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1584105757viewStack;
         if(_loc2_ !== param1)
         {
            this._1584105757viewStack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewStack",_loc2_,param1));
         }
      }
      
      private function checkContinue() : void
      {
         var _loc1_:Object = null;
         tripleTwonTurnInfo(_broadInfo);
         _moveNpcDict = {};
         _broadInfo = null;
         _tripleKilling = false;
         if(Boolean(_tripleArray) && _tripleArray.length > 0)
         {
            _loc1_ = _tripleArray.shift();
            this.onTripleKill(_loc1_);
         }
         else
         {
            _killCombo = 0;
            _rankArray && onSyncRankList(_rankArray);
            _core.sysMsg(Language.TRIPLE_TOWN_PANEL[28]);
         }
      }
      
      public function tripleTownBattleEnd(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!triplePlaza || !triplePlaza.instDict)
         {
            return;
         }
         if(param1.npcDir != triplePlaza.npcDir)
         {
            triplePlaza.npcDir = param1.npcDir;
            tripleChangeDir();
            _loc2_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TURN);
            _loc2_ && _loc2_.updateView(triplePlaza);
         }
         removeNpcByInstId(param1.instId);
      }
      
      public function tripleTwonSync(param1:Object) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:* = undefined;
         var _loc15_:Object = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:Object = null;
         var _loc19_:Object = null;
         _killCombo = 0;
         _tripleKilling = false;
         _broadInfo = null;
         _tripleArray = null;
         _rankArray = null;
         _moveNpcDict = {};
         this.loadEffect();
         triplePlaza = param1.plaza;
         tripleConfig = param1.config;
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_TRIPLE_TURN);
         _loc2_ && _loc2_.updateView(triplePlaza);
         var _loc3_:Object = triplePlaza.instDict;
         for(_loc4_ in _loc3_)
         {
            _loc10_ = _loc3_[_loc4_];
            if(_loc10_)
            {
               _loc11_ = INST_DICT[_loc10_.xpos][_loc10_.ypos];
               createTripleTownNpc(_loc10_,_loc11_.x,_loc11_.y,triplePlaza.npcDir);
            }
         }
         _loc5_ = triplePlaza.topDict;
         _loc6_ = triplePlaza.bottomDict;
         _loc7_ = 0;
         while(_loc7_ < int(tripleConfig.standLen))
         {
            _loc12_ = 0;
            while(_loc12_ < int(tripleConfig.npcLen))
            {
               if(!(!_loc5_[_loc7_] || !_loc5_[_loc7_][_loc12_]))
               {
                  _loc14_ = _loc5_[_loc7_][_loc12_];
                  _loc11_ = TOP_DICT[_loc7_][_loc12_];
                  createTripleTownNpc(_loc14_,_loc11_.x,_loc11_.y,1);
               }
               _loc12_++;
            }
            _loc13_ = 0;
            while(_loc13_ < int(tripleConfig.npcLen))
            {
               if(!(!_loc6_[_loc7_] || !_loc6_[_loc7_][_loc13_]))
               {
                  _loc15_ = _loc6_[_loc7_][_loc13_];
                  _loc11_ = BOTTOM_DICT[_loc7_][_loc13_];
                  createTripleTownNpc(_loc15_,_loc11_.x,_loc11_.y,5);
               }
               _loc13_++;
            }
            _loc7_++;
         }
         var _loc8_:Object = triplePlaza.leftDict;
         var _loc9_:Object = triplePlaza.rightDict;
         _loc7_ = 0;
         while(_loc7_ < int(tripleConfig.npcLen))
         {
            _loc16_ = 0;
            while(_loc16_ < int(tripleConfig.standLen))
            {
               if(!(!_loc8_[_loc7_] || !_loc8_[_loc7_][_loc16_]))
               {
                  _loc18_ = _loc8_[_loc7_][_loc16_];
                  _loc11_ = LEFT_DICT[_loc7_][_loc16_];
                  createTripleTownNpc(_loc18_,_loc11_.x,_loc11_.y,3);
               }
               _loc16_++;
            }
            _loc17_ = 0;
            while(_loc17_ < int(tripleConfig.standLen))
            {
               if(!(!_loc9_[_loc7_] || !_loc9_[_loc7_][_loc17_]))
               {
                  _loc19_ = _loc9_[_loc7_][_loc17_];
                  _loc11_ = RIGHT_DICT[_loc7_][_loc17_];
                  createTripleTownNpc(_loc19_,_loc11_.x,_loc11_.y,7);
               }
               _loc17_++;
            }
            _loc7_++;
         }
      }
      
      private function stopHandler(param1:NPCView) : void
      {
         var _loc4_:String = null;
         var _loc5_:NPCView = null;
         var _loc2_:Object = param1.gameObject.tripleNpc;
         _moveNpcDict[_loc2_.instId] = null;
         delete _moveNpcDict[_loc2_.instId];
         param1.moveEndCall = null;
         var _loc3_:int = 0;
         for(_loc4_ in _moveNpcDict)
         {
            _loc5_ = _moveNpcDict[_loc4_];
            if(_loc5_)
            {
               if(!_loc5_.isWalking)
               {
                  _loc5_.moveEndCall = null;
                  _moveNpcDict[_loc4_] = null;
                  delete _moveNpcDict[_loc4_];
               }
               else
               {
                  _loc3_++;
               }
            }
         }
         _loc3_ <= 0 && checkContinue();
      }
      
      public function ___TripleTownPanel_FilterButton1_click(param1:MouseEvent) : void
      {
         enterHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get viewStack() : ViewStack
      {
         return this._1584105757viewStack;
      }
      
      override public function show() : void
      {
         super.show();
         _core.remote.call("tripleSyncRankList",new Responder(onTripleSyncRankList));
      }
      
      public function tripleChangeDir() : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:NPCView = null;
         var _loc1_:int = int(triplePlaza.npcDir);
         var _loc2_:Object = triplePlaza.instDict;
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_];
            if(_loc4_)
            {
               _loc5_ = _core.view.getN(Number(_loc3_)) as NPCView;
               (_loc5_) && _loc5_.dotaFaceTo(_loc1_);
            }
         }
      }
   }
}

