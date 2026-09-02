package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipMount extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3059440con2:Canvas;
      
      private var _1699273611basicPro4:Label;
      
      private var _buffType:Array = ["lifeBasic","phyAttackBasic","magAttackBasic","phyDefenseBasic","magDefenseBasic","debuffBasic","lifePer","phyAttackPer","magAttackPer","phyDefensePer","magDefensePer","debuffPer"];
      
      mx_internal var _watchers:Array = [];
      
      public var _TipMount_Label1:Label;
      
      public var _TipMount_Label8:Label;
      
      private var _1699273612basicPro3:Label;
      
      private var _1148692632addPro4:Label;
      
      private var _1148692635addPro1:Label;
      
      private var _1139881950topText:RoundedLabel;
      
      private var _1148692631addPro5:Label;
      
      private var _1699273609basicPro6:Label;
      
      private var _1699273613basicPro2:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1148692634addPro2:Label;
      
      private var _1148692630addPro6:Label;
      
      private var _3059439con1:Canvas;
      
      private var _1699273614basicPro1:Label;
      
      private var _1699273610basicPro5:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _3079825desc:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {
               "width":250,
               "height":332,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"topText",
                  "stylesFactory":function():void
                  {
                     this.top = "5";
                     this.left = "5";
                     this.fontSize = 16;
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"htmlText":""};
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___TipMount_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "5";
                     this.top = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnToolTipClose",
                        "width":15,
                        "height":15
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"desc",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"坐骑描述",
                        "includeInLayout":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"con1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":30,
                        "height":142,
                        "width":238,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_TipMount_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 15116365;
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":50,
                                 "y":0,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"basicPro1",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":20,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"basicPro2",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":40,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"basicPro3",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":60,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"basicPro4",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":80,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"basicPro5",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":100,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"basicPro6",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":120,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"con2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":180,
                        "width":238,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_TipMount_Label8",
                           "stylesFactory":function():void
                           {
                              this.color = 15116365;
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":50,
                                 "y":0,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"addPro1",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":20,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"addPro2",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":40,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"addPro3",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":60,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"addPro4",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":80,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"addPro5",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":100,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"addPro6",
                           "stylesFactory":function():void
                           {
                              this.color = 1961723;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":120,
                                 "width":213,
                                 "height":20,
                                 "text":""
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1148692633addPro3:Label;
      
      public function TipMount()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.width = 250;
         this.height = 332;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("resize",___TipMount_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipMount._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro5() : Label
      {
         return this._1699273610basicPro5;
      }
      
      public function ___TipMount_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro2() : Label
      {
         return this._1699273613basicPro2;
      }
      
      private function _TipMount_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMount_Label1.text = param1;
         },"_TipMount_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _TipMount_Label1.filters = param1;
         },"_TipMount_Label1.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOUNTPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipMount_Label8.text = param1;
         },"_TipMount_Label8.text");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _TipMount_Label8.filters = param1;
         },"_TipMount_Label8.filters");
         result[3] = binding;
         return result;
      }
      
      public function set basicPro5(param1:Label) : void
      {
         var _loc2_:Object = this._1699273610basicPro5;
         if(_loc2_ !== param1)
         {
            this._1699273610basicPro5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro5",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipMount = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipMount_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipMountWatcherSetupUtil");
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
      public function get con1() : Canvas
      {
         return this._3059439con1;
      }
      
      public function ___TipMount_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function set basicPro6(param1:Label) : void
      {
         var _loc2_:Object = this._1699273609basicPro6;
         if(_loc2_ !== param1)
         {
            this._1699273609basicPro6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get desc() : Text
      {
         return this._3079825desc;
      }
      
      public function set desc(param1:Text) : void
      {
         var _loc2_:Object = this._3079825desc;
         if(_loc2_ !== param1)
         {
            this._3079825desc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",_loc2_,param1));
         }
      }
      
      public function set basicPro4(param1:Label) : void
      {
         var _loc2_:Object = this._1699273611basicPro4;
         if(_loc2_ !== param1)
         {
            this._1699273611basicPro4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topText() : RoundedLabel
      {
         return this._1139881950topText;
      }
      
      public function set topText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1139881950topText;
         if(_loc2_ !== param1)
         {
            this._1139881950topText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topText",_loc2_,param1));
         }
      }
      
      public function set addPro4(param1:Label) : void
      {
         var _loc2_:Object = this._1148692632addPro4;
         if(_loc2_ !== param1)
         {
            this._1148692632addPro4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro4",_loc2_,param1));
         }
      }
      
      public function set addPro1(param1:Label) : void
      {
         var _loc2_:Object = this._1148692635addPro1;
         if(_loc2_ !== param1)
         {
            this._1148692635addPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro1",_loc2_,param1));
         }
      }
      
      public function set addPro6(param1:Label) : void
      {
         var _loc2_:Object = this._1148692630addPro6;
         if(_loc2_ !== param1)
         {
            this._1148692630addPro6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro6",_loc2_,param1));
         }
      }
      
      public function set addPro3(param1:Label) : void
      {
         var _loc2_:Object = this._1148692633addPro3;
         if(_loc2_ !== param1)
         {
            this._1148692633addPro3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro3",_loc2_,param1));
         }
      }
      
      public function set addPro5(param1:Label) : void
      {
         var _loc2_:Object = this._1148692631addPro5;
         if(_loc2_ !== param1)
         {
            this._1148692631addPro5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro5",_loc2_,param1));
         }
      }
      
      public function set con1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3059439con1;
         if(_loc2_ !== param1)
         {
            this._3059439con1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"con1",_loc2_,param1));
         }
      }
      
      private function _TipMount_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MOUNTPANEL_U[12];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MOUNTPANEL_U[13];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      public function set addPro2(param1:Label) : void
      {
         var _loc2_:Object = this._1148692634addPro2;
         if(_loc2_ !== param1)
         {
            this._1148692634addPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPro2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro1() : Label
      {
         return this._1148692635addPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro2() : Label
      {
         return this._1148692634addPro2;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro3() : Label
      {
         return this._1148692633addPro3;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro4() : Label
      {
         return this._1148692632addPro4;
      }
      
      public function set basicPro3(param1:Label) : void
      {
         var _loc2_:Object = this._1699273612basicPro3;
         if(_loc2_ !== param1)
         {
            this._1699273612basicPro3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro5() : Label
      {
         return this._1148692631addPro5;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPro6() : Label
      {
         return this._1148692630addPro6;
      }
      
      public function set basicPro1(param1:Label) : void
      {
         var _loc2_:Object = this._1699273614basicPro1;
         if(_loc2_ !== param1)
         {
            this._1699273614basicPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro1",_loc2_,param1));
         }
      }
      
      public function set basicPro2(param1:Label) : void
      {
         var _loc2_:Object = this._1699273613basicPro2;
         if(_loc2_ !== param1)
         {
            this._1699273613basicPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro6() : Label
      {
         return this._1699273609basicPro6;
      }
      
      public function set con2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3059440con2;
         if(_loc2_ !== param1)
         {
            this._3059440con2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"con2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro1() : Label
      {
         return this._1699273614basicPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro3() : Label
      {
         return this._1699273612basicPro3;
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro4() : Label
      {
         return this._1699273611basicPro4;
      }
      
      public function set object(param1:Object) : void
      {
         var _loc8_:Number = NaN;
         if(!param1)
         {
            visible = false;
            return;
         }
         var _loc2_:Object = GameData.d[GamePredef.TBL_MOUNT_DRESS][int(param1.id)];
         topText.htmlText = _loc2_.name + "     " + Language.MOUNTPANEL_U[54] + ":" + _loc2_.effectiveTime / 24 + Language.MOUNTPANEL_U[55];
         desc.htmlText = _loc2_.description;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         while(_loc4_ <= 5)
         {
            this["basicPro" + ToolKit.add(_loc4_,1)].text = "";
            if(Boolean(_loc2_[_buffType[_loc4_]]) && Number(_loc2_[_buffType[_loc4_]]) >= 0)
            {
               if(!_loc3_ || _loc3_ == 0)
               {
                  _loc3_ = 1;
               }
               _loc8_ = 56 + _loc4_;
               this["basicPro" + _loc3_].text = Language.MOUNTPANEL_U[_loc8_] + ":" + _loc2_[_buffType[_loc4_]];
               _loc3_++;
            }
            _loc4_++;
         }
         con2.y = _loc3_ * 20 + 50;
         var _loc5_:Number = 0;
         var _loc6_:Number = 6;
         while(_loc6_ <= 11)
         {
            this["addPro" + ToolKit.add(ToolKit.minus(_loc6_,11),6)].text = "";
            if(Boolean(_loc2_[_buffType[_loc6_]]) && Number(_loc2_[_buffType[_loc6_]]) >= 0)
            {
               if(!_loc5_ || _loc5_ == 0)
               {
                  _loc5_ = 1;
               }
               _loc8_ = 56 + _loc6_;
               this["addPro" + _loc5_].text = Language.MOUNTPANEL_U[_loc8_] + ":" + _loc2_[_buffType[_loc6_]] + "%";
               _loc5_++;
            }
            _loc6_++;
         }
         var _loc7_:Number = ToolKit.add(100,ToolKit.add(_loc3_,_loc5_) * 20);
         this.height = _loc7_;
         setPos();
         visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get con2() : Canvas
      {
         return this._3059440con2;
      }
   }
}

