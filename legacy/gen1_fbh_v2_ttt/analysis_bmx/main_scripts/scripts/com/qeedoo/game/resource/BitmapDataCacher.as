package com.qeedoo.game.resource
{
   import com.qeedoo.game.config.Version;
   import flash.display.BitmapData;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Matrix;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   
   public class BitmapDataCacher extends EventDispatcher
   {
      
      public static var _instance:BitmapDataCacher;
      
      private static const WING_FRAME_SUPP:Array = [];
      
      public static var default_data:BitmapData2 = new BitmapData2(200,200,true,16777215);
      
      WING_FRAME_SUPP[441] = {"f":265};
      WING_FRAME_SUPP[450] = {"f":274};
      WING_FRAME_SUPP[456] = {"f":280};
      WING_FRAME_SUPP[462] = {"f":286};
      WING_FRAME_SUPP[529] = {"f":177};
      WING_FRAME_SUPP[538] = {"f":186};
      WING_FRAME_SUPP[544] = {"f":192};
      WING_FRAME_SUPP[550] = {"f":198};
      WING_FRAME_SUPP[617] = {"f":89};
      WING_FRAME_SUPP[626] = {"f":98};
      WING_FRAME_SUPP[632] = {"f":104};
      WING_FRAME_SUPP[638] = {"f":110};
      
      public var RES_MAP:Dictionary = new Dictionary();
      
      public function BitmapDataCacher()
      {
         super();
      }
      
      public static function getInstance() : BitmapDataCacher
      {
         if(!_instance)
         {
            _instance = new BitmapDataCacher();
            default_data.xoff = 0;
            default_data.yoff = 0;
         }
         return _instance;
      }
      
      public function getBmd(param1:String, param2:int, param3:Boolean = false) : BitmapData
      {
         var _loc8_:BitmapData = null;
         var _loc9_:Class = null;
         var _loc10_:Boolean = false;
         var _loc11_:Class = null;
         var _loc12_:Matrix = null;
         var _loc13_:BitmapData = null;
         if(RES_MAP[param1 + param2] != null)
         {
            return RES_MAP[param1 + param2];
         }
         var _loc4_:String = param1;
         var _loc5_:String = param1.substr(-32);
         if(Version.ASSETS_VERSION[_loc5_])
         {
            _loc4_ += "?v=" + Version.VERSION.slice(-3);
         }
         var _loc6_:Object = ResCacher.getInstance().getRes(_loc4_);
         if(_loc6_ == null)
         {
            return default_data;
         }
         var _loc7_:Boolean = ApplicationDomain.currentDomain.hasDefinition("ClassA" + param1.substr(-32) + param2);
         if(_loc7_)
         {
            _loc9_ = ApplicationDomain.currentDomain.getDefinition("ClassA" + param1.substr(-32) + param2) as Class;
            _loc8_ = new _loc9_(0,0);
         }
         else if(param3 && Boolean(WING_FRAME_SUPP[param2]))
         {
            _loc10_ = ApplicationDomain.currentDomain.hasDefinition("ClassA" + param1.substr(-32) + WING_FRAME_SUPP[param2].f);
            if(_loc10_)
            {
               if(param3 && Boolean(WING_FRAME_SUPP[param2]))
               {
                  _loc11_ = ApplicationDomain.currentDomain.getDefinition("ClassA" + param1.substr(-32) + WING_FRAME_SUPP[param2].f) as Class;
                  _loc8_ = new _loc11_(0,0);
                  if(_loc8_)
                  {
                     _loc12_ = new Matrix();
                     _loc12_.scale(-1,1);
                     _loc12_.translate(_loc8_.width,0);
                     _loc8_["xoff"] = _loc8_["xoff"] + _loc8_.width + 2 * (98 - _loc8_["xoff"] - _loc8_.width);
                     _loc13_ = _loc8_.clone();
                     _loc8_.fillRect(_loc8_.rect,0);
                     _loc8_.draw(_loc13_,_loc12_);
                  }
               }
            }
         }
         RES_MAP[param1 + param2] = _loc8_;
         return _loc8_;
      }
      
      public function clear() : void
      {
         RES_MAP = new Dictionary();
      }
      
      public function getBmdNew(param1:String, param2:int, param3:Number, param4:Number) : BitmapData
      {
         if(RES_MAP[param1 + param2] != null)
         {
            return RES_MAP[param1 + param2];
         }
         var _loc5_:String = param1;
         var _loc6_:String = param1.substr(-32);
         if(Version.ASSETS_VERSION[_loc6_])
         {
            _loc5_ += "?v=" + Version.VERSION.slice(-3);
         }
         var _loc7_:MovieClip = ResCacher.getInstance().getRes(param1) as MovieClip;
         if(_loc7_ == null)
         {
            return default_data;
         }
         _loc7_.gotoAndStop(param2);
         var _loc8_:BitmapData = new BitmapData(param3,param4,true,16777215);
         _loc8_.draw(_loc7_);
         RES_MAP[param1 + param2] = _loc8_;
         return _loc8_;
      }
      
      public function onLoadComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         RES_MAP[_loc2_.url] = _loc2_.content;
      }
   }
}

