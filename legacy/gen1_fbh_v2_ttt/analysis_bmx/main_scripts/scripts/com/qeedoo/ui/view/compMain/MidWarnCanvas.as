package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class MidWarnCanvas extends SimpleCanvas implements IMainUI
   {
      
      private var currentWarn:*;
      
      private var _1768633739warnImage:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":50,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"warnImage",
                  "events":{"click":"__warnImage_click"},
                  "stylesFactory":function():void
                  {
                     this.themeColor = 2782887;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100
                     };
                  }
               })]
            };
         }
      });
      
      private var warnArray:Array = new Array();
      
      private var _core:Core = Core.getInstance();
      
      public function MidWarnCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 50;
         this.height = 50;
         this.cacheAsBitmap = true;
      }
      
      public function addWarn(param1:Object) : void
      {
         this.x = (this.parent.width - this.width) / 2;
         this.y = (this.parent.height - this.height) / 2 - 150;
         warnArray.push(param1);
         visible = true;
         initView();
      }
      
      public function reset() : void
      {
         warnArray = new Array();
         warnImage.source = null;
         visible = false;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function delThisImage() : *
      {
         var _loc1_:Object = null;
         for each(_loc1_ in warnArray)
         {
            if(_loc1_.warnType == GamePredef.WARN_TYPE_ROBBER)
            {
               delete warnArray[warnArray.indexOf(_loc1_)];
               currentWarn = undefined;
            }
         }
         initView();
      }
      
      public function update() : void
      {
      }
      
      public function initView() : void
      {
         var _loc2_:* = 0;
         var _loc1_:String = "";
         if(warnArray.length != 0)
         {
            _loc2_ = int(warnArray.length - 1);
            while(_loc2_ >= 0)
            {
               if(warnArray[_loc2_])
               {
                  currentWarn = warnArray[_loc2_];
                  break;
               }
               _loc2_--;
            }
            if(currentWarn)
            {
               visible = true;
               switch(currentWarn.warnType)
               {
                  case GamePredef.WARN_TYPE_ROBBER:
                     warnImage.source = ResManager.ICON_GLOBAL_000009;
                     _loc1_ = Language.WARNCANVAS_S[7];
                     warnImage.toolTip = _loc1_;
               }
            }
            else
            {
               visible = false;
            }
         }
         else
         {
            visible = false;
         }
      }
      
      public function __warnImage_click(param1:MouseEvent) : void
      {
         imageClick();
      }
      
      public function set warnImage(param1:Image) : void
      {
         var _loc2_:Object = this._1768633739warnImage;
         if(_loc2_ !== param1)
         {
            this._1768633739warnImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warnImage",_loc2_,param1));
         }
      }
      
      private function imageClick() : void
      {
         var _loc1_:String = "";
         switch(currentWarn.warnType)
         {
            case GamePredef.WARN_TYPE_ROBBER:
               _core.sysMidNote(Language.WARNCANVAS_S[8]);
               delThisImage();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get warnImage() : Image
      {
         return this._1768633739warnImage;
      }
   }
}

