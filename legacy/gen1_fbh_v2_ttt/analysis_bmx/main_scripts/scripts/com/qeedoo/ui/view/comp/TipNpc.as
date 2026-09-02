package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.states.RemoveChild;
   import mx.states.State;
   import mx.styles.*;
   import mx.utils.ObjectProxy;
   
   use namespace mx_internal;
   
   public class TipNpc extends BasicToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var nid:Number = -1;
      
      mx_internal var _watchers:Array = [];
      
      private var _95064_vo:ObjectProxy = new ObjectProxy();
      
      public var _TipNpc_Text2:Text;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipNpc_RemoveChild1:RemoveChild;
      
      public var _TipNpc_RemoveChild2:RemoveChild;
      
      public var _TipNpc_RemoveChild3:RemoveChild;
      
      public var _TipNpc_RemoveChild4:RemoveChild;
      
      public var _TipNpc_Label1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1656229167levelText:Text;
      
      private var _3560141time:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "stylesFactory":function():void
               {
                  this.verticalGap = 0;
                  this.paddingLeft = 5;
                  this.paddingRight = 5;
                  this.paddingTop = 5;
                  this.paddingBottom = 5;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":30,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_TipNpc_Label1",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "center";
                                    this.color = 65280;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {"percentWidth":100};
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"levelText",
                        "stylesFactory":function():void
                        {
                           this.color = 16708542;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "text":"等级:",
                              "x":45,
                              "y":23
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipNpc_Text2",
                        "stylesFactory":function():void
                        {
                           this.color = 16708542;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"产量:"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"time",
                        "stylesFactory":function():void
                        {
                           this.color = 16708542;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"时间:"};
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      public function TipNpc()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.states = [_TipNpc_State1_c(),_TipNpc_State2_c(),_TipNpc_State3_c(),_TipNpc_State4_c()];
         this.addEventListener("resize",___TipNpc_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipNpc._watcherSetupUtil = param1;
      }
      
      private function _TipNpc_State4_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "gather";
         _loc1_.overrides = [_TipNpc_RemoveChild3_i(),_TipNpc_RemoveChild4_i()];
         return _loc1_;
      }
      
      override public function show(param1:Object = null) : void
      {
         super.show(param1);
         addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
      }
      
      private function _TipNpc_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "herb";
         _loc1_.overrides = [_TipNpc_RemoveChild1_i()];
         return _loc1_;
      }
      
      public function set gatherData(param1:Object) : void
      {
         if(param1)
         {
            _vo.name = param1.name;
            _vo.amountTxt = Language.TIP_NPC_U[7].toString().replace("{amount}",param1.remain);
         }
         currentState = "gather";
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipNpc = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipNpc_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipNpcWatcherSetupUtil");
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
      
      private function _TipNpc_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = time;
         _loc1_ = time;
         _loc1_ = levelText;
         _loc1_ = time;
         _loc1_ = _vo.name;
         _loc1_ = Language.TIPSKILL_S[10];
         _loc1_ = _vo.lvTxt;
         _loc1_ = _vo.amountTxt;
         _loc1_ = _vo.timeTxt;
      }
      
      public function set time(param1:Text) : void
      {
         var _loc2_:Object = this._3560141time;
         if(_loc2_ !== param1)
         {
            this._3560141time = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",_loc2_,param1));
         }
      }
      
      public function set levelText(param1:Text) : void
      {
         var _loc2_:Object = this._1656229167levelText;
         if(_loc2_ !== param1)
         {
            this._1656229167levelText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelText",_loc2_,param1));
         }
      }
      
      private function set _vo(param1:ObjectProxy) : void
      {
         var _loc2_:Object = this._95064_vo;
         if(_loc2_ !== param1)
         {
            this._95064_vo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_vo",_loc2_,param1));
         }
      }
      
      public function set fishPoolData(param1:Object) : void
      {
         if(param1)
         {
            _vo.lvTxt = Language.TIP_NPC_U[6].toString().replace("{level}",param1.level);
            _vo.amountTxt = Language.TIP_NPC_U[7].toString().replace("{amount}",param1.remain);
            _vo.name = param1.name;
         }
         currentState = "fish";
      }
      
      private function _TipNpc_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipNpc_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_TipNpc_RemoveChild2",_TipNpc_RemoveChild2);
         return _loc1_;
      }
      
      override public function hide() : void
      {
         super.hide();
         removeEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
         nid = -1;
      }
      
      private function _TipNpc_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "plant";
         return _loc1_;
      }
      
      private function _TipNpc_State3_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "fish";
         _loc1_.overrides = [_TipNpc_RemoveChild2_i()];
         return _loc1_;
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get time() : Text
      {
         return this._3560141time;
      }
      
      private function _TipNpc_RemoveChild4_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipNpc_RemoveChild4 = _loc1_;
         BindingManager.executeBindings(this,"_TipNpc_RemoveChild4",_TipNpc_RemoveChild4);
         return _loc1_;
      }
      
      public function ___TipNpc_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      [Bindable(event="propertyChange")]
      public function get levelText() : Text
      {
         return this._1656229167levelText;
      }
      
      private function _TipNpc_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return time;
         },function(param1:DisplayObject):void
         {
            _TipNpc_RemoveChild1.target = param1;
         },"_TipNpc_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return time;
         },function(param1:DisplayObject):void
         {
            _TipNpc_RemoveChild2.target = param1;
         },"_TipNpc_RemoveChild2.target");
         result[1] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return levelText;
         },function(param1:DisplayObject):void
         {
            _TipNpc_RemoveChild3.target = param1;
         },"_TipNpc_RemoveChild3.target");
         result[2] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return time;
         },function(param1:DisplayObject):void
         {
            _TipNpc_RemoveChild4.target = param1;
         },"_TipNpc_RemoveChild4.target");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipNpc_Label1.htmlText = param1;
         },"_TipNpc_Label1.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPSKILL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipNpc_Label1.text = param1;
         },"_TipNpc_Label1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _vo.lvTxt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            levelText.htmlText = param1;
         },"levelText.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _vo.amountTxt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipNpc_Text2.htmlText = param1;
         },"_TipNpc_Text2.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _vo.timeTxt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            time.htmlText = param1;
         },"time.htmlText");
         result[8] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get _vo() : ObjectProxy
      {
         return this._95064_vo;
      }
      
      public function set plantData(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(param1)
         {
            _vo.lvTxt = Language.TIP_NPC_U[0].toString().replace("{level}",param1.level);
            _vo.amountTxt = Language.TIP_NPC_U[1].toString().replace("{amount}",param1.remain + " / " + param1.total);
            _loc2_ = BasicToolTip.COLOR_ANY.replace("{colorStr}","#8BC9FE").replace("{str}",param1.name);
            _vo.name = Language.TIP_NPC_U[8].toString().replace("{ownerName}",param1.ownerName).replace("{plantName}",_loc2_);
            _loc3_ = param1.state == 3 ? Language.TIP_NPC_U[2] : Language.TIP_NPC_U[3];
            if(Number(param1.timeLeft) >= 1000 * 60)
            {
               _loc4_ = Language.TIP_NPC_U[4].toString().replace("{value}",Math.floor(param1.timeLeft / (1000 * 60)));
            }
            else
            {
               _loc4_ = Language.TIP_NPC_U[5].toString().replace("{value}",Math.floor(param1.timeLeft / 1000));
            }
            _vo.timeTxt = _loc3_ + _loc4_;
         }
         currentState = "plant";
      }
      
      public function set herbData(param1:Object) : void
      {
         if(param1)
         {
            _vo.lvTxt = Language.TIP_NPC_U[6].toString().replace("{level}",param1.level);
            _vo.amountTxt = Language.TIP_NPC_U[7].toString().replace("{amount}",param1.remain);
            _vo.name = param1.name;
         }
         currentState = "herb";
      }
      
      private function _TipNpc_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipNpc_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_TipNpc_RemoveChild1",_TipNpc_RemoveChild1);
         return _loc1_;
      }
      
      private function _TipNpc_RemoveChild3_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipNpc_RemoveChild3 = _loc1_;
         BindingManager.executeBindings(this,"_TipNpc_RemoveChild3",_TipNpc_RemoveChild3);
         return _loc1_;
      }
   }
}

