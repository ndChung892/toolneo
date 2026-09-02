package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CrossContentionRankLine;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossContentionRank extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3613077vbox:VBox;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _102977279lines:Repeater;
      
      private var _2112780921_CrossContentionRank_VBox1:VBox;
      
      public var _CrossContentionRank_CrossContentionRankLine1:Array;
      
      private var _3106ac:ArrayCollection = new ArrayCollection();
      
      public var _CrossContentionRank_Label1:Label;
      
      public var _CrossContentionRank_Label2:Label;
      
      public var _CrossContentionRank_Label3:Label;
      
      public var _CrossContentionRank_Label4:Label;
      
      public var _CrossContentionRank_Label5:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":625,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "7";
                     this.right = "7";
                     this.top = "40";
                     this.bottom = "25";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionRank_Label1",
                           "stylesFactory":function():void
                           {
                              this.top = "25";
                              this.left = "35";
                              this.fontSize = 16;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":55};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionRank_Label2",
                           "stylesFactory":function():void
                           {
                              this.top = "25";
                              this.left = "120";
                              this.fontSize = 16;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":95};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionRank_Label3",
                           "stylesFactory":function():void
                           {
                              this.top = "25";
                              this.left = "230";
                              this.fontSize = 16;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":95};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionRank_Label4",
                           "stylesFactory":function():void
                           {
                              this.top = "25";
                              this.left = "330";
                              this.fontSize = 16;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":95};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossContentionRank_Label5",
                           "stylesFactory":function():void
                           {
                              this.top = "25";
                              this.left = "440";
                              this.fontSize = 16;
                              this.color = 16776960;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":95};
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "id":"vbox",
                           "stylesFactory":function():void
                           {
                              this.top = "60";
                              this.horizontalCenter = "0";
                              this.horizontalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":565,
                                 "height":355,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Repeater,
                                    "id":"lines",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":CrossContentionRankLine,
                                          "id":"_CrossContentionRank_CrossContentionRankLine1"
                                       })]};
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
      
      public function CrossContentionRank()
      {
         super();
         mx_internal::_document = this;
         this.width = 625;
         this.height = 500;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionRank_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionRank._watcherSetupUtil = param1;
      }
      
      public function ___CrossContentionRank_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox() : VBox
      {
         return this._3613077vbox;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionRank = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionRank_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionRankWatcherSetupUtil");
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
      private function get ac() : ArrayCollection
      {
         return this._3106ac;
      }
      
      private function init() : void
      {
      }
      
      public function set vbox(param1:VBox) : void
      {
         var _loc2_:Object = this._3613077vbox;
         if(_loc2_ !== param1)
         {
            this._3613077vbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      private function _CrossContentionRank_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[162];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[163];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[164];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[165];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[175];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[174];
         _loc1_ = ac;
         _loc1_ = lines.currentItem;
      }
      
      private function set ac(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._3106ac;
         if(_loc2_ !== param1)
         {
            this._3106ac = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ac",_loc2_,param1));
         }
      }
      
      private function _CrossContentionRank_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[162];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[163];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionRank_Label1.text = param1;
         },"_CrossContentionRank_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[164];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionRank_Label2.text = param1;
         },"_CrossContentionRank_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[165];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionRank_Label3.text = param1;
         },"_CrossContentionRank_Label3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[175];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionRank_Label4.text = param1;
         },"_CrossContentionRank_Label4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[174];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionRank_Label5.text = param1;
         },"_CrossContentionRank_Label5.text");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ac;
         },function(param1:Object):void
         {
            lines.dataProvider = param1;
         },"lines.dataProvider");
         result[6] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return lines.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _CrossContentionRank_CrossContentionRankLine1[param2[0]].refreshData = param1;
         },"_CrossContentionRank_CrossContentionRankLine1.refreshData");
         result[7] = binding;
         return result;
      }
      
      public function open(param1:Object, param2:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Object = null;
         var _loc16_:Object = null;
         if(!param2)
         {
            return;
         }
         if(!param1)
         {
            param1 = {};
         }
         super.visible = true;
         var _loc3_:Object = {};
         ac.removeAll();
         for(_loc4_ in param2)
         {
            _loc11_ = param2[_loc4_];
            if(_loc11_)
            {
               for(_loc12_ in _loc11_)
               {
                  _loc13_ = int(CrossContentionTotalPanel.CROSS_CONTENTION_UINT_ID[_loc12_]);
                  _loc14_ = int(_loc11_[_loc12_]);
                  if(!_loc3_[_loc13_])
                  {
                     _loc3_[_loc13_] = {
                        "uid":_loc13_,
                        "servers":{},
                        "areaNum":0,
                        "areas":"",
                        "num":0
                     };
                  }
                  if(!_loc3_[_loc13_].servers[_loc12_])
                  {
                     _loc3_[_loc13_].servers[_loc12_] = {"num":0};
                  }
                  _loc3_[_loc13_].servers[_loc12_].num += _loc14_;
                  _loc3_[_loc13_].num += _loc14_;
               }
            }
         }
         for(_loc5_ in param1)
         {
            _loc15_ = param1[_loc5_];
            if(_loc3_[_loc15_])
            {
               _loc3_[_loc15_].areaNum += 1;
               if(_loc3_[_loc15_].areas.length > 0)
               {
                  _loc3_[_loc15_].areas += "\n";
               }
               _loc3_[_loc15_].areas += GamePredef.CROSS_CONTENTION_MAP[_loc5_].name;
            }
         }
         _loc6_ = [];
         for(_loc7_ in _loc3_)
         {
            _loc6_.push(_loc3_[_loc7_]);
         }
         _loc6_.sort(sortByType);
         _loc8_ = 0;
         _loc9_ = 100000;
         _loc10_ = 0;
         while(_loc10_ < _loc6_.length)
         {
            _loc16_ = _loc6_[_loc10_];
            if(_loc16_.num < _loc9_)
            {
               _loc8_ = _loc10_ + 1;
               _loc9_ = int(_loc16_.num);
            }
            _loc16_.index = _loc8_;
            ac.addItem(_loc16_);
            _loc10_++;
         }
      }
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      private function sortByType(param1:Object, param2:Object) : Number
      {
         if(param1.num == param2.num)
         {
            return 0;
         }
         if(param1.num < param2.num)
         {
            return 1;
         }
         return -1;
      }
      
      public function set _CrossContentionRank_VBox1(param1:VBox) : void
      {
         var _loc2_:Object = this._2112780921_CrossContentionRank_VBox1;
         if(_loc2_ !== param1)
         {
            this._2112780921_CrossContentionRank_VBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CrossContentionRank_VBox1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CrossContentionRank_VBox1() : VBox
      {
         return this._2112780921_CrossContentionRank_VBox1;
      }
      
      public function set lines(param1:Repeater) : void
      {
         var _loc2_:Object = this._102977279lines;
         if(_loc2_ !== param1)
         {
            this._102977279lines = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lines",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lines() : Repeater
      {
         return this._102977279lines;
      }
   }
}

