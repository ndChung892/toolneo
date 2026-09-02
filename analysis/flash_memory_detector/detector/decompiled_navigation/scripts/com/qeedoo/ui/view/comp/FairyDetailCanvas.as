package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.logic.FairyLogic;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairyDetailCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _FairyDetailCanvas_BasicTxtButton4:BasicTxtButton;
      
      public var _FairyDetailCanvas_BasicTxtButton5:BasicTxtButton;
      
      private var _96515agi:Label;
      
      private var _3117846ener:Label;
      
      mx_internal var _watchers:Array = [];
      
      public var _FairyDetailCanvas_BasicTxtButton2:BasicTxtButton;
      
      private var _3237462inte:Label;
      
      public var _FairyDetailCanvas_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _114225str:Label;
      
      private var _114208sta:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _fairy:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var _p:DragableCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":230,
               "height":190,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FairyDetailCanvas_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"str",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "width":60,
                        "x":135,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyDetailCanvas_BasicTxtButton1",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                     this.right = "110";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"sta",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":65,
                        "width":60,
                        "x":135,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyDetailCanvas_BasicTxtButton2",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                     this.right = "110";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":65,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"agi",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":90,
                        "width":60,
                        "x":135,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyDetailCanvas_BasicTxtButton3",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                     this.right = "110";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":90,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"inte",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":115,
                        "width":60,
                        "x":135,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyDetailCanvas_BasicTxtButton4",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                     this.right = "110";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":115,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"ener",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":140,
                        "width":60,
                        "x":135,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"_FairyDetailCanvas_BasicTxtButton5",
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 1;
                     this.paddingRight = 1;
                     this.right = "110";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":140,
                        "height":18
                     };
                  }
               })]
            };
         }
      });
      
      public var _FairyDetailCanvas_BasicTxtButton1:BasicTxtButton;
      
      public var _FairyDetailCanvas_BasicTxtButton3:BasicTxtButton;
      
      public function FairyDetailCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 230;
         this.height = 190;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairyDetailCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get agi() : Label
      {
         return this._96515agi;
      }
      
      public function set str(param1:Label) : void
      {
         var _loc2_:Object = this._114225str;
         if(_loc2_ !== param1)
         {
            this._114225str = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"str",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FairyDetailCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairyDetailCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FairyDetailCanvasWatcherSetupUtil");
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
      
      public function set agi(param1:Label) : void
      {
         var _loc2_:Object = this._96515agi;
         if(_loc2_ !== param1)
         {
            this._96515agi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"agi",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ener() : Label
      {
         return this._3117846ener;
      }
      
      private function initCre(param1:FlexEvent) : void
      {
         this.fairy = _fairy;
         _fairy = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get sta() : Label
      {
         return this._114208sta;
      }
      
      public function set fairy(param1:Object) : void
      {
         if(!initialized)
         {
            _fairy = param1;
            this.addEventListener(FlexEvent.CREATION_COMPLETE,initCre);
            return;
         }
         var _loc2_:int = FairyLogic.gexpToLv(param1.gexp);
         var _loc3_:int = Math.round(param1.doh / 100);
         var _loc4_:Number = GamePredef.FAIRY_COLOR_EFFECT[Math.floor((_loc2_ == 0 ? 0 : _loc2_ - 1) / 10)] * (1 - (75 > _loc3_ ? 75 - _loc3_ : 0) / 75) / 100;
         str.text = "+ " + String(Math.round(_loc4_ * (Number(param1.ste) + (FairyLogic.expToLv(param1.exp) - 1) * (param1.steG - -0.2 * _loc2_))));
         sta.text = "+ " + String(Math.round(_loc4_ * (Number(param1.sta) + (FairyLogic.expToLv(param1.exp) - 1) * (param1.staG - -0.2 * _loc2_))));
         agi.text = "+ " + String(Math.round(_loc4_ * (Number(param1.agi) + (FairyLogic.expToLv(param1.exp) - 1) * (param1.agiG - -0.2 * _loc2_))));
         inte.text = "+ " + String(Math.round(_loc4_ * (Number(param1.inte) + (FairyLogic.expToLv(param1.exp) - 1) * (param1.inteG - -0.2 * _loc2_))));
         ener.text = "+ " + String(Math.round(_loc4_ * (Number(param1.ener) + (FairyLogic.expToLv(param1.exp) - 1) * (param1.enerG - -0.2 * _loc2_))));
      }
      
      private function _FairyDetailCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyDetailCanvas_BasicTitleCanvas1.text = param1;
         },"_FairyDetailCanvas_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyDetailCanvas_BasicTxtButton1.label = param1;
         },"_FairyDetailCanvas_BasicTxtButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyDetailCanvas_BasicTxtButton2.label = param1;
         },"_FairyDetailCanvas_BasicTxtButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyDetailCanvas_BasicTxtButton3.label = param1;
         },"_FairyDetailCanvas_BasicTxtButton3.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyDetailCanvas_BasicTxtButton4.label = param1;
         },"_FairyDetailCanvas_BasicTxtButton4.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyDetailCanvas_BasicTxtButton5.label = param1;
         },"_FairyDetailCanvas_BasicTxtButton5.label");
         result[5] = binding;
         return result;
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
      
      public function set sta(param1:Label) : void
      {
         var _loc2_:Object = this._114208sta;
         if(_loc2_ !== param1)
         {
            this._114208sta = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sta",_loc2_,param1));
         }
      }
      
      public function hide() : void
      {
         this.visible = false;
      }
      
      public function set ener(param1:Label) : void
      {
         var _loc2_:Object = this._3117846ener;
         if(_loc2_ !== param1)
         {
            this._3117846ener = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ener",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get str() : Label
      {
         return this._114225str;
      }
      
      public function set inte(param1:Label) : void
      {
         var _loc2_:Object = this._3237462inte;
         if(_loc2_ !== param1)
         {
            this._3237462inte = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inte",_loc2_,param1));
         }
      }
      
      private function onMove(param1:Event) : void
      {
         this.x = _p.x + _p.width;
         this.y = _p.y;
      }
      
      [Bindable(event="propertyChange")]
      public function get inte() : Label
      {
         return this._3237462inte;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(_p)
         {
            super.visible = param1;
            if(param1)
            {
               follow(_p);
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
      
      private function _FairyDetailCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[31];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[11];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[9];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[13];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[15];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[53] + Language.FAIRY_MANAGER_PANEL_U[17];
      }
   }
}

