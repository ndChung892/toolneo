package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.utils.Timer;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import mx.controls.Image;
   import mx.core.UIComponent;
   
   public class AddItemEffectLayer extends UIComponent
   {
      
      private var _timer:Timer;
      
      private var _ctf_alphaDynamic:ColorTransform = new ColorTransform(1,1,1,1);
      
      private var _iconDic:Object = {};
      
      private var _lastItemParticle:ItemParticle = null;
      
      private var _bmp:Bitmap;
      
      private var _type:Number;
      
      private var _ctf_alpha0:ColorTransform = new ColorTransform(1,1,1,0);
      
      private var _matrix:Matrix = new Matrix();
      
      private var _requestHandler:Number = 0;
      
      private var _index:Number = 1;
      
      private var _itemId:Number;
      
      private var _bmd:BitmapData;
      
      private var _core:Core = Core.getInstance();
      
      public function AddItemEffectLayer()
      {
         super();
         this.width = 50;
         this.height = 200;
         this.mouseEnabled = false;
         _bmd = new BitmapData(width,height);
         _bmp = new Bitmap(_bmd);
         _bmd.colorTransform(_bmd.rect,_ctf_alpha0);
         addChild(_bmp);
         _timer = new Timer(30);
      }
      
      public function addItem(param1:Number, param2:Number) : void
      {
         var _loc3_:Object = null;
         _type = param1;
         _itemId = param2;
         _loc3_ = _core.getTemplateData(param1,param2,false);
         var _loc4_:Image = new Image();
         _loc4_.width = 32;
         _loc4_.height = 32;
         _loc4_.scaleContent = true;
         if(_loc3_)
         {
            _loc4_.source = ResManager.getIconUrl(_loc3_.iconCode);
            ResManager.setColorCode(_loc4_,_loc3_.colorCode);
            _loc4_.load();
            _loc4_.addEventListener(Event.COMPLETE,onSrcLoadComplete);
         }
         else
         {
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1 + "_" + param2,imgDataLoaded);
            _requestHandler = setTimeout(requestData,300);
         }
      }
      
      private function requestData() : void
      {
         if(_requestHandler > 0)
         {
            clearTimeout(_requestHandler);
            _requestHandler = 0;
         }
         _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _type + "_" + _itemId,imgDataLoaded);
         _core.data.getGameData(_type,_itemId);
      }
      
      private function onSrcLoadComplete(param1:Event) : void
      {
         var _loc3_:ItemParticle = null;
         param1.target.removeEventListener(Event.COMPLETE,onSrcLoadComplete);
         var _loc2_:Bitmap = Bitmap(param1.target.content);
         if(_loc2_)
         {
            _loc2_.filters = param1.target.filters;
            _loc3_ = new ItemParticle(_loc2_,++_index,_lastItemParticle);
            _lastItemParticle = _loc3_;
            _iconDic[_index] = _loc3_;
            if(!_timer.hasEventListener(TimerEvent.TIMER))
            {
               trace("没有监听器，新建");
               this.visible = true;
               _timer.addEventListener(TimerEvent.TIMER,onTimer);
               _timer.start();
            }
         }
      }
      
      private function onTimer(param1:Event) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Boolean = false;
         var _loc2_:Boolean = false;
         _bmd.lock();
         _bmd.colorTransform(_bmd.rect,_ctf_alpha0);
         for(_loc3_ in _iconDic)
         {
            _loc4_ = _iconDic[_loc3_];
            if(_loc4_)
            {
               _loc2_ = true;
               _loc5_ = ItemParticle(_loc4_).update(this);
               if(_loc5_)
               {
                  _matrix.tx = _loc4_.x;
                  _matrix.ty = _loc4_.y;
                  _ctf_alphaDynamic.alphaMultiplier = _loc4_.alpha;
                  _bmd.draw(_loc4_.bmp,_matrix,_ctf_alphaDynamic);
               }
            }
         }
         _bmd.unlock();
         if(!_loc2_)
         {
            _timer.removeEventListener(TimerEvent.TIMER,onTimer);
            _timer.stop();
            this.visible = false;
            trace("移除监听器");
         }
      }
      
      public function removeItem(param1:Number) : void
      {
         delete _iconDic[param1];
      }
      
      private function imgDataLoaded(param1:GameDataEvent) : void
      {
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,imgDataLoaded);
         addItem(param1.data.type,param1.data.index);
      }
   }
}

import flash.display.Bitmap;

class ItemParticle
{
   
   private var _x:Number;
   
   private var _img:Bitmap;
   
   private var _alive:Number;
   
   private var _index:Number;
   
   private var _before:ItemParticle;
   
   private var _alpha:Number = 1;
   
   private var _a:Number = 6;
   
   private var _b:Number = 30;
   
   private var _y:Number;
   
   public function ItemParticle(param1:Bitmap, param2:Number, param3:ItemParticle)
   {
      super();
      _img = param1;
      _alive = 0;
      _x = 0;
      _y = _b;
      _index = param2;
      _before = param3;
   }
   
   public function get bmp() : Bitmap
   {
      return _img;
   }
   
   public function update(param1:AddItemEffectLayer) : Boolean
   {
      if(_before == null || _before.alive > 5)
      {
         ++_alive;
         _x = _alive;
         _y = _a * _x + _b;
         if(_x > 15)
         {
            _x = 15;
         }
         if(_y > param1.height - _img.height)
         {
            _y = param1.height - _img.height;
            _alpha -= 0.1;
         }
         if(_alpha < 0.1)
         {
            param1.removeItem(_index);
         }
         return true;
      }
      return false;
   }
   
   private function get alive() : Number
   {
      return _alive;
   }
   
   public function get alpha() : Number
   {
      return _alpha;
   }
   
   public function get x() : Number
   {
      return _x;
   }
   
   public function get y() : Number
   {
      return _y;
   }
}
