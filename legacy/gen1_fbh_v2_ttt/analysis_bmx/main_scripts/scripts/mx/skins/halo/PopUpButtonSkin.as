package mx.skins.halo
{
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import mx.core.IFlexDisplayObject;
   import mx.core.IProgrammaticSkin;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.styles.StyleManager;
   import mx.utils.ColorUtil;
   
   use namespace mx_internal;
   
   public class PopUpButtonSkin extends UIComponent implements IProgrammaticSkin
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private static var cache:Object = {};
      
      public function PopUpButtonSkin()
      {
         super();
         mouseEnabled = false;
      }
      
      private static function calcDerivedStyles(param1:uint, param2:uint, param3:uint) : Object
      {
         var _loc5_:Object = null;
         var _loc4_:String = HaloColors.getCacheKey(param1,param2,param3);
         if(!cache[_loc4_])
         {
            _loc5_ = cache[_loc4_] = {};
            HaloColors.addHaloColors(_loc5_,param1,param2,param3);
         }
         return cache[_loc4_];
      }
      
      private function getRadius(param1:Number, param2:Boolean) : Object
      {
         return param2 ? {
            "br":0,
            "bl":param1,
            "tr":0,
            "tl":param1
         } : {
            "br":param1,
            "bl":0,
            "tr":param1,
            "tl":0
         };
      }
      
      override public function get measuredHeight() : Number
      {
         return DEFAULT_MEASURED_MIN_HEIGHT;
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc18_:Array = null;
         var _loc19_:Array = null;
         var _loc20_:Array = null;
         var _loc21_:Array = null;
         var _loc22_:Class = null;
         var _loc23_:Array = null;
         var _loc24_:Array = null;
         super.updateDisplayList(param1,param2);
         var _loc3_:uint = getStyle("iconColor");
         var _loc4_:uint = getStyle("borderColor");
         var _loc5_:Number = getStyle("cornerRadius");
         var _loc6_:Array = getStyle("fillAlphas");
         var _loc7_:Array = getStyle("fillColors");
         StyleManager.getColorNames(_loc7_);
         var _loc8_:Array = getStyle("highlightAlphas");
         var _loc9_:uint = getStyle("themeColor");
         var _loc10_:Object = calcDerivedStyles(_loc9_,_loc7_[0],_loc7_[1]);
         var _loc11_:Number = ColorUtil.adjustBrightness2(_loc4_,-50);
         var _loc12_:Number = ColorUtil.adjustBrightness2(_loc9_,-25);
         var _loc13_:IFlexDisplayObject = IFlexDisplayObject(getChildByName("popUpIcon"));
         if(!_loc13_)
         {
            _loc22_ = Class(getStyle("popUpIcon"));
            _loc13_ = new _loc22_();
            DisplayObject(_loc13_).name = "popUpIcon";
            addChild(DisplayObject(_loc13_));
            DisplayObject(_loc13_).visible = true;
         }
         var _loc14_:Number = Math.max(getStyle("arrowButtonWidth"),_loc13_.width + 3 + 1);
         var _loc15_:Number = param1 - _loc14_;
         _loc13_.move(param1 - (_loc14_ + _loc13_.width) / 2,(param2 - _loc13_.height) / 2);
         var _loc16_:Number = Math.max(0,_loc5_);
         var _loc17_:Number = Math.max(0,_loc5_ - 1);
         graphics.clear();
         switch(name)
         {
            case "upSkin":
               _loc18_ = [_loc7_[0],_loc7_[1]];
               _loc19_ = [_loc6_[0],_loc6_[1]];
               drawRoundRect(0,0,param1,param2,_loc16_,[_loc4_,_loc11_],1,verticalGradientMatrix(0,0,param1,param2),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":param1 - 2,
                  "h":param2 - 2,
                  "r":_loc5_ - 1
               });
               drawRoundRect(_loc15_,1,1,param2 - 2,0,[_loc4_,_loc11_],1,verticalGradientMatrix(0,0,param1,param2));
               drawRoundRect(1,1,param1 - 2,param2 - 2,_loc17_,_loc18_,_loc19_,verticalGradientMatrix(1,1,param1 - 2,param2 - 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":param2 - 2,
                  "r":0
               });
               drawRoundRect(1,1,param1 - 2,(param2 - 2) / 2,{
                  "tl":_loc17_,
                  "tr":_loc17_,
                  "bl":0,
                  "br":0
               },[16777215,16777215],_loc8_,verticalGradientMatrix(1,1,param1 - 2,(param2 - 2) / 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":(param2 - 2) / 2,
                  "r":0
               });
               drawRoundRect(_loc15_ - 1,1,1,param2 - 2,0,_loc4_,0);
               drawRoundRect(_loc15_ + 1,1,1,param2 - 2,0,_loc4_,0);
               break;
            case "overSkin":
               _loc18_ = [_loc7_[0],_loc7_[1]];
               _loc19_ = [_loc6_[0],_loc6_[1]];
               if(_loc7_.length > 2)
               {
                  _loc20_ = [_loc7_[2],_loc7_[3]];
               }
               else
               {
                  _loc20_ = [_loc7_[0],_loc7_[1]];
               }
               if(_loc6_.length > 2)
               {
                  _loc21_ = [_loc6_[2],_loc6_[3]];
               }
               else
               {
                  _loc21_ = [_loc6_[0],_loc6_[1]];
               }
               drawRoundRect(0,0,param1,param2,_loc16_,[_loc9_,_loc12_],1,verticalGradientMatrix(0,0,param1,param2),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":param1 - 2,
                  "h":param2 - 2,
                  "r":_loc5_ - 1
               });
               drawRoundRect(_loc15_,1,1,param2 - 2,0,[_loc9_,_loc12_],1,verticalGradientMatrix(0,0,param1,param2));
               drawRoundRect(1,1,param1 - 2,param2 - 2,_loc17_,_loc18_,_loc19_,verticalGradientMatrix(1,1,param1 - 2,param2 - 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":param2 - 2,
                  "r":getRadius(_loc17_,true)
               });
               drawRoundRect(1,1,param1 - _loc14_ - 2,param2 - 2,getRadius(_loc17_,true),_loc20_,_loc21_,verticalGradientMatrix(1,1,_loc15_ - 2,param2 - 2));
               drawRoundRect(1,1,param1 - 2,(param2 - 2) / 2,{
                  "tl":_loc17_,
                  "tr":_loc17_,
                  "bl":0,
                  "br":0
               },[16777215,16777215],_loc8_,verticalGradientMatrix(1,1,param1 - 2,(param2 - 2) / 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":(param2 - 2) / 2,
                  "r":0
               });
               drawRoundRect(_loc15_ - 1,1,1,param2 - 2,0,_loc9_,0.35);
               break;
            case "popUpOverSkin":
               _loc18_ = [_loc7_[0],_loc7_[1]];
               _loc19_ = [_loc6_[0],_loc6_[1]];
               if(_loc7_.length > 2)
               {
                  _loc20_ = [_loc7_[2],_loc7_[3]];
               }
               else
               {
                  _loc20_ = [_loc7_[0],_loc7_[1]];
               }
               if(_loc6_.length > 2)
               {
                  _loc21_ = [_loc6_[2],_loc6_[3]];
               }
               else
               {
                  _loc21_ = [_loc6_[0],_loc6_[1]];
               }
               drawRoundRect(0,0,param1,param2,_loc16_,[_loc9_,_loc12_],1,verticalGradientMatrix(0,0,param1,param2),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":param1 - 2,
                  "h":param2 - 2,
                  "r":_loc5_ - 1
               });
               drawRoundRect(_loc15_,1,1,param2 - 2,0,[_loc9_,_loc12_],1,verticalGradientMatrix(0,0,param1,param2));
               drawRoundRect(1,1,param1 - 2,param2 - 2,getRadius(_loc17_,true),_loc18_,_loc19_,verticalGradientMatrix(1,1,param1 - 2,param2 - 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":_loc14_ - 1,
                  "h":param2 - 2,
                  "r":getRadius(_loc17_,true)
               });
               drawRoundRect(_loc15_ + 1,1,_loc14_ - 2,param2 - 2,getRadius(_loc17_,false),_loc20_,_loc21_,verticalGradientMatrix(_loc15_,0,_loc14_ - 1,param2 - 2));
               drawRoundRect(1,1,param1 - 2,(param2 - 2) / 2,{
                  "tl":_loc17_,
                  "tr":_loc17_,
                  "bl":0,
                  "br":0
               },[16777215,16777215],_loc8_,verticalGradientMatrix(1,1,param1 - 2,(param2 - 2) / 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":(param2 - 2) / 2,
                  "r":0
               });
               drawRoundRect(_loc15_ + 1,1,1,param2 - 2,0,_loc9_,0.35);
               break;
            case "downSkin":
               _loc18_ = [_loc7_[0],_loc7_[1]];
               _loc19_ = [_loc6_[0],_loc6_[1]];
               drawRoundRect(0,0,param1,param2,_loc16_,[_loc9_,_loc12_],1,verticalGradientMatrix(0,0,param1,param2),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":param1 - 2,
                  "h":param2 - 2,
                  "r":_loc5_ - 1
               });
               drawRoundRect(_loc15_,1,1,param2 - 2,0,[_loc9_,_loc12_],1,verticalGradientMatrix(0,0,param1,param2));
               drawRoundRect(1,1,param1 - 2,param2 - 2,_loc17_,_loc18_,_loc19_,verticalGradientMatrix(1,1,param1 - 2,param2 - 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":param2 - 2,
                  "r":0
               });
               drawRoundRect(1,1,param1 - _loc14_ - 2,param2 - 2,getRadius(_loc17_,true),[_loc10_.fillColorPress1,_loc10_.fillColorPress2],1,verticalGradientMatrix(1,1,_loc15_ - 2,param2 - 2));
               drawRoundRect(1,1,param1 - 2,(param2 - 2) / 2,{
                  "tl":_loc17_,
                  "tr":_loc17_,
                  "bl":0,
                  "br":0
               },[16777215,16777215],_loc8_,verticalGradientMatrix(1,1,param1 - 2,(param2 - 2) / 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":(param2 - 2) / 2,
                  "r":0
               });
               drawRoundRect(_loc15_ - 1,1,1,param2 - 2,0,_loc12_,0.3);
               drawRoundRect(_loc15_ + 1,1,1,param2 - 2,0,_loc4_,0);
               break;
            case "popUpDownSkin":
               _loc18_ = [_loc7_[0],_loc7_[1]];
               _loc19_ = [_loc6_[0],_loc6_[1]];
               drawRoundRect(0,0,param1,param2,_loc16_,[_loc9_,_loc12_],1,verticalGradientMatrix(0,0,param1,param2),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":param1 - 2,
                  "h":param2 - 2,
                  "r":_loc5_ - 1
               });
               drawRoundRect(_loc15_,1,1,param2 - 2,0,[_loc9_,_loc12_],1,verticalGradientMatrix(0,0,param1,param2));
               drawRoundRect(1,1,param1 - 2,param2 - 2,_loc17_,_loc18_,_loc19_,verticalGradientMatrix(1,1,param1 - 2,param2 - 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":param2 - 2,
                  "r":0
               });
               drawRoundRect(_loc15_ + 1,1,_loc14_ - 2,param2 - 2,getRadius(_loc17_,false),[_loc10_.fillColorPress1,_loc10_.fillColorPress2],1,verticalGradientMatrix(_loc15_,0,_loc14_ - 1,param2 - 2));
               drawRoundRect(1,1,param1 - 2,(param2 - 2) / 2,{
                  "tl":_loc17_,
                  "tr":_loc17_,
                  "bl":0,
                  "br":0
               },[16777215,16777215],_loc8_,verticalGradientMatrix(1,1,param1 - 2,(param2 - 2) / 2),GradientType.LINEAR,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":(param2 - 2) / 2,
                  "r":0
               });
               drawRoundRect(_loc15_ - 1,1,1,param2 - 2,0,_loc4_,0);
               drawRoundRect(_loc15_ + 1,1,1,param2 - 2,0,_loc12_,0.3);
               break;
            case "disabledSkin":
               _loc3_ = getStyle("disabledIconColor");
               _loc23_ = [_loc7_[0],_loc7_[1]];
               _loc24_ = [Math.max(0,_loc6_[0] - 0.15),Math.max(0,_loc6_[1] - 0.15)];
               drawRoundRect(0,0,param1,param2,_loc5_,[_loc4_,_loc11_],0.5,verticalGradientMatrix(0,0,param1,param2),GradientType.LINEAR,null,{
                  "x":1,
                  "y":1,
                  "w":param1 - 2,
                  "h":param2 - 2,
                  "r":_loc5_ - 1
               });
               drawRoundRect(_loc15_,1,1,param2 - 2,0,[_loc4_,_loc11_],0.5);
               drawRoundRect(1,1,param1 - 2,param2 - 2,_loc17_,_loc23_,_loc24_,verticalGradientMatrix(1,1,param1 - 2,param2 - 2),null,null,{
                  "x":_loc15_,
                  "y":1,
                  "w":1,
                  "h":param2 - 2,
                  "r":0
               });
         }
         if(_loc13_ is PopUpIcon)
         {
            PopUpIcon(_loc13_).mx_internal::arrowColor = _loc3_;
         }
      }
      
      override public function get measuredWidth() : Number
      {
         return DEFAULT_MEASURED_MIN_WIDTH;
      }
   }
}

