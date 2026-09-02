package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class texunkechengRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1727756308stackNum2:int;
      
      private var _493282933advlocker:Image;
      
      private var _109532659slot1:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _661568106slotData2:Object;
      
      private var _1986315925advlockerVis:Boolean;
      
      private var _3007235awd1:Boolean;
      
      private var _3007236awd2:Boolean;
      
      private var _109532660slot2:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _texunkechengRenderer_Image1:Image;
      
      private var _98354772giid1:int;
      
      private var _2125486345levlabel:Label;
      
      private var _403869721levLabelTxt:String;
      
      private var _1727756307stackNum1:int;
      
      mx_internal var _bindings:Array = [];
      
      private var _98354773giid2:int;
      
      private var _661568105slotData1:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":62,
               "height":171,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_texunkechengRenderer_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":0,
                        "percentWidth":100,
                        "percentHeight":100,
                        "x":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"slot2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "-49";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "showStackNum":true,
                        "width":32,
                        "height":32,
                        "acceptable":false,
                        "type":29,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"advlocker",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":28,
                        "height":28,
                        "x":4,
                        "y":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"levlabel",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "5";
                     this.horizontalCenter = "0";
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.color = 16777215;
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"slot1",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "53";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "showStackNum":true,
                        "width":32,
                        "height":32,
                        "acceptable":false,
                        "type":29,
                        "movable":false
                     };
                  }
               })]
            };
         }
      });
      
      public function texunkechengRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 62;
         this.height = 171;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.styleName = "CanvasBorder";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         texunkechengRenderer._watcherSetupUtil = param1;
      }
      
      private function set slotData2(param1:Object) : void
      {
         var _loc2_:Object = this._661568106slotData2;
         if(_loc2_ !== param1)
         {
            this._661568106slotData2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotData2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ItemSlot
      {
         return this._109532659slot1;
      }
      
      [Bindable(event="propertyChange")]
      private function get awd1() : Boolean
      {
         return this._3007235awd1;
      }
      
      [Bindable(event="propertyChange")]
      private function get awd2() : Boolean
      {
         return this._3007236awd2;
      }
      
      private function set awd1(param1:Boolean) : void
      {
         var _loc2_:Object = this._3007235awd1;
         if(_loc2_ !== param1)
         {
            this._3007235awd1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awd1",_loc2_,param1));
         }
      }
      
      private function set awd2(param1:Boolean) : void
      {
         var _loc2_:Object = this._3007236awd2;
         if(_loc2_ !== param1)
         {
            this._3007236awd2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awd2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advlocker() : Image
      {
         return this._493282933advlocker;
      }
      
      [Bindable(event="propertyChange")]
      private function get giid1() : int
      {
         return this._98354772giid1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:texunkechengRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _texunkechengRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_texunkechengRendererWatcherSetupUtil");
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
      private function get stackNum1() : int
      {
         return this._1727756307stackNum1;
      }
      
      [Bindable(event="propertyChange")]
      private function get advlockerVis() : Boolean
      {
         return this._1986315925advlockerVis;
      }
      
      public function set advlocker(param1:Image) : void
      {
         var _loc2_:Object = this._493282933advlocker;
         if(_loc2_ !== param1)
         {
            this._493282933advlocker = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advlocker",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get levLabelTxt() : String
      {
         return this._403869721levLabelTxt;
      }
      
      [Bindable(event="propertyChange")]
      private function get stackNum2() : int
      {
         return this._1727756308stackNum2;
      }
      
      private function set giid2(param1:int) : void
      {
         var _loc2_:Object = this._98354773giid2;
         if(_loc2_ !== param1)
         {
            this._98354773giid2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giid2",_loc2_,param1));
         }
      }
      
      private function set stackNum1(param1:int) : void
      {
         var _loc2_:Object = this._1727756307stackNum1;
         if(_loc2_ !== param1)
         {
            this._1727756307stackNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stackNum1",_loc2_,param1));
         }
      }
      
      private function _texunkechengRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getIconUrl(4130220003335);
         _loc1_ = slotData2;
         _loc1_ = stackNum2;
         _loc1_ = awd2;
         _loc1_ = giid2;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = ResManager.getIconUrl(4130220003337);
         _loc1_ = advlockerVis;
         _loc1_ = levLabelTxt;
         _loc1_ = slotData1;
         _loc1_ = stackNum1;
         _loc1_ = awd1;
         _loc1_ = giid1;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
      }
      
      private function set advlockerVis(param1:Boolean) : void
      {
         var _loc2_:Object = this._1986315925advlockerVis;
         if(_loc2_ !== param1)
         {
            this._1986315925advlockerVis = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advlockerVis",_loc2_,param1));
         }
      }
      
      private function set levLabelTxt(param1:String) : void
      {
         var _loc2_:Object = this._403869721levLabelTxt;
         if(_loc2_ !== param1)
         {
            this._403869721levLabelTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levLabelTxt",_loc2_,param1));
         }
      }
      
      private function set stackNum2(param1:int) : void
      {
         var _loc2_:Object = this._1727756308stackNum2;
         if(_loc2_ !== param1)
         {
            this._1727756308stackNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stackNum2",_loc2_,param1));
         }
      }
      
      private function set giid1(param1:int) : void
      {
         var _loc2_:Object = this._98354772giid1;
         if(_loc2_ !== param1)
         {
            this._98354772giid1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giid1",_loc2_,param1));
         }
      }
      
      private function _texunkechengRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003335);
         },function(param1:Object):void
         {
            _texunkechengRenderer_Image1.source = param1;
         },"_texunkechengRenderer_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return slotData2;
         },function(param1:Object):void
         {
            slot2.slotData = param1;
         },"slot2.slotData");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return stackNum2;
         },function(param1:int):void
         {
            slot2.stackNum = param1;
         },"slot2.stackNum");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return awd2;
         },function(param1:Boolean):void
         {
            slot2.enabled = param1;
         },"slot2.enabled");
         result[3] = binding;
         binding = new Binding(this,function():Number
         {
            return giid2;
         },function(param1:Number):void
         {
            slot2.giid = param1;
         },"slot2.giid");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003337);
         },function(param1:Object):void
         {
            advlocker.source = param1;
         },"advlocker.source");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return advlockerVis;
         },function(param1:Boolean):void
         {
            advlocker.visible = param1;
         },"advlocker.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = levLabelTxt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            levlabel.text = param1;
         },"levlabel.text");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return slotData1;
         },function(param1:Object):void
         {
            slot1.slotData = param1;
         },"slot1.slotData");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return stackNum1;
         },function(param1:int):void
         {
            slot1.stackNum = param1;
         },"slot1.stackNum");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return awd1;
         },function(param1:Boolean):void
         {
            slot1.enabled = param1;
         },"slot1.enabled");
         result[11] = binding;
         binding = new Binding(this,function():Number
         {
            return giid1;
         },function(param1:Number):void
         {
            slot1.giid = param1;
         },"slot1.giid");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[13] = binding;
         return result;
      }
      
      private function set slotData1(param1:Object) : void
      {
         var _loc2_:Object = this._661568105slotData1;
         if(_loc2_ !== param1)
         {
            this._661568105slotData1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotData1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get giid2() : int
      {
         return this._98354773giid2;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         super.data = param1;
         if(param1)
         {
            _loc2_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1.a1.i];
            _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1.a2.i];
            slotData1 = _loc2_;
            stackNum1 = param1.a1.n;
            giid1 = param1.a1.i;
            awd1 = !param1.awd1;
            slotData2 = _loc3_;
            stackNum2 = param1.a2.n;
            giid2 = param1.a2.i;
            awd2 = !param1.awd2;
            if(param1.p == 0)
            {
               advlockerVis = true;
            }
            if(param1.p == 1)
            {
               advlockerVis = false;
            }
            levLabelTxt = param1.lev;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get slotData1() : Object
      {
         return this._661568105slotData1;
      }
      
      [Bindable(event="propertyChange")]
      private function get slotData2() : Object
      {
         return this._661568106slotData2;
      }
      
      public function set levlabel(param1:Label) : void
      {
         var _loc2_:Object = this._2125486345levlabel;
         if(_loc2_ !== param1)
         {
            this._2125486345levlabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levlabel",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ItemSlot
      {
         return this._109532660slot2;
      }
      
      public function set slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levlabel() : Label
      {
         return this._2125486345levlabel;
      }
   }
}

