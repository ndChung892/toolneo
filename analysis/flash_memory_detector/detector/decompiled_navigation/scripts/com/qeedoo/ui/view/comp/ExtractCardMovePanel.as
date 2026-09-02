package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ExtractCardMovePanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var time_step:Number = 60;
      
      private static var cost:int = 20;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      private var imgs:Array = [];
      
      private var _3574721txt1:RoundedLabel;
      
      private var hnum:int = 5;
      
      private var pList:Array = [];
      
      private var isCut:Boolean = false;
      
      private var swidth:Number = 10;
      
      private var bg:MovieClip;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var time:Timer;
      
      private var img1:UIComponent;
      
      private var vnum:int = 4;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var turn_step:int = 0;
      
      private var _97420bg1:Image;
      
      private var sheight:Number = 10;
      
      private var load:Loader;
      
      private var m:Matrix = new Matrix();
      
      private var turnS:Sprite = null;
      
      private var _410956671container:UIComponent;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":450,
               "height":361,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":UIComponent,
                  "id":"container",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"bg1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "x":-42
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"txt1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 40;
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "x":-42
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function ExtractCardMovePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 450;
         this.height = 361;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ExtractCardMovePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : UIComponent
      {
         return this._410956671container;
      }
      
      public function set container(param1:UIComponent) : void
      {
         var _loc2_:Object = this._410956671container;
         if(_loc2_ !== param1)
         {
            this._410956671container = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
         }
      }
      
      public function set txt1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3574721txt1;
         if(_loc2_ !== param1)
         {
            this._3574721txt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bg1() : Image
      {
         return this._97420bg1;
      }
      
      public function init() : void
      {
         img1 = new UIComponent();
         img1.mouseEnabled = false;
         img1.mouseChildren = false;
         img1.addChild(bg1);
         img1.addChild(txt1);
         addChild(img1);
         img1.visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ExtractCardMovePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ExtractCardMovePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ExtractCardMovePanelWatcherSetupUtil");
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
      
      private function _ExtractCardMovePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getResUrl(2080130101002);
      }
      
      private function mouseRollOut(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         if(_loc2_)
         {
            _loc2_.filters = [];
         }
      }
      
      public function set bg1(param1:Image) : void
      {
         var _loc2_:Object = this._97420bg1;
         if(_loc2_ !== param1)
         {
            this._97420bg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg1",_loc2_,param1));
         }
      }
      
      public function showGet(param1:String, param2:int) : void
      {
         var _loc3_:Sprite = imgs[param2];
         pList.push({
            "c":param1,
            "s":_loc3_
         });
         if(turn_step == 0)
         {
            showEffect();
         }
      }
      
      private function mouseRollOver(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         if(_loc2_)
         {
            _loc2_.filters = [new GlowFilter(16776960,0.5,6,6,8)];
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc2_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("bbb") as Class;
         bg = new _loc2_();
         init();
         cut();
      }
      
      [Bindable(event="propertyChange")]
      public function get txt1() : RoundedLabel
      {
         return this._3574721txt1;
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" load Error ");
      }
      
      private function cut() : void
      {
         var _loc4_:Sprite = null;
         var _loc5_:Bitmap = null;
         var _loc6_:BitmapData = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(isCut)
         {
            return;
         }
         isCut = true;
         while(container.numChildren)
         {
            container.removeChildAt(container.numChildren - 1);
         }
         imgs.length = 0;
         swidth = bg.width / hnum;
         sheight = bg.height / vnum;
         var _loc1_:Number = (width - bg.width) / (hnum + 1);
         var _loc2_:Number = (height - bg.height) / (vnum + 1);
         var _loc3_:int = 0;
         while(_loc3_ < hnum * vnum)
         {
            _loc4_ = new Sprite();
            _loc4_.addEventListener(MouseEvent.ROLL_OVER,mouseRollOver);
            _loc4_.addEventListener(MouseEvent.ROLL_OUT,mouseRollOut);
            _loc4_.addEventListener(MouseEvent.CLICK,toSelect);
            _loc4_.buttonMode = true;
            _loc5_ = new Bitmap();
            _loc6_ = new BitmapData(swidth,sheight,true,16777215);
            _loc5_.bitmapData = _loc6_;
            _loc7_ = _loc3_ % hnum;
            _loc8_ = int(_loc3_ / hnum);
            _loc9_ = _loc1_ * (_loc7_ + 1) + _loc7_ * swidth;
            _loc10_ = _loc2_ * (_loc8_ + 1) + _loc8_ * sheight;
            _loc5_.x = -swidth / 2;
            _loc4_.x = _loc9_ + swidth / 2;
            _loc4_.y = _loc10_;
            m.tx = -(_loc7_ * swidth);
            m.ty = -(_loc8_ * sheight);
            _loc6_.draw(bg,m);
            imgs.push(_loc4_);
            _loc4_.addChild(_loc5_);
            container.addChild(_loc4_);
            _loc3_++;
         }
      }
      
      private function _ExtractCardMovePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getResUrl(2080130101002);
         },function(param1:Object):void
         {
            bg1.source = param1;
         },"bg1.source");
         result[0] = binding;
         return result;
      }
      
      private function toSelect(param1:MouseEvent) : void
      {
         var func:Function;
         var index:int = 0;
         var str:String = null;
         var e:MouseEvent = param1;
         var s:Sprite = e.currentTarget as Sprite;
         index = imgs.indexOf(s);
         var view:Object = _core.view.getUI(ViewManager.PANEL_EXTRACT_CARD_ACTIVITY);
         if(!view)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("extractCardActivityExtract",null,index);
            }
         };
         if(view.alertCheck.selected)
         {
            _core.remote.call("extractCardActivityExtract",null,index);
         }
         else
         {
            str = Language.EXTRACT_CARD_PANEL_U[6];
            if(view.checkFree())
            {
               str = Language.EXTRACT_CARD_PANEL_U[21];
            }
            Alert.show(str,"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      private function start(param1:TimerEvent) : void
      {
         if(turn_step == 1)
         {
            turnS.scaleX -= 0.2;
            if(turnS.scaleX <= 0)
            {
               img1.scaleX = 0;
               img1.visible = true;
               bg1.visible = true;
               txt1.visible = true;
               turn_step = 2;
            }
         }
         else if(turn_step == 2)
         {
            img1.scaleX += 0.2;
            if(img1.scaleX >= 1)
            {
               img1.scaleX = 1;
               turnS.scaleX = 1;
               turn_step = 0;
               turnS.mouseChildren = true;
               turnS.mouseEnabled = true;
               showEffect();
            }
         }
      }
      
      public function getRes() : void
      {
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130101001)));
         }
         else
         {
            cut();
         }
      }
      
      private function showEffect() : void
      {
         var _loc1_:Object = null;
         if(!time)
         {
            time = new Timer(time_step);
            time.addEventListener(TimerEvent.TIMER,start);
         }
         if(pList.length == 0)
         {
            time.stop();
            return;
         }
         _loc1_ = pList.shift();
         turnS = _loc1_.s;
         turnS.scaleX = 1;
         img1.x = turnS.x;
         img1.y = turnS.y;
         img1.visible = false;
         txt1.text = _loc1_.c;
         bg1.visible = false;
         txt1.visible = false;
         turnS.mouseChildren = false;
         turnS.mouseEnabled = false;
         turn_step = 1;
         if(!time.running)
         {
            time.start();
         }
      }
      
      public function close() : void
      {
         turn_step = 0;
         if(turnS)
         {
            turnS.scaleX = 1;
            turnS.mouseChildren = true;
            turnS.mouseEnabled = true;
         }
         if(img1)
         {
            img1.visible = false;
         }
         bg1.visible = false;
         txt1.visible = false;
         pList.length = 0;
         if(Boolean(time) && time.running)
         {
            time.stop();
            time.reset();
         }
      }
   }
}

