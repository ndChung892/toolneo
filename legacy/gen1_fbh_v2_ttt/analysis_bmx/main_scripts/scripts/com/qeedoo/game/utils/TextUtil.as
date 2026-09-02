package com.qeedoo.game.utils
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import mx.collections.ArrayCollection;
   
   public class TextUtil
   {
      
      private static var _core:Core = Core.getInstance();
      
      public function TextUtil()
      {
         super();
      }
      
      private static function decodeOut() : String
      {
         var _loc5_:String = null;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:Object = null;
         var _loc14_:int = 0;
         var _loc2_:String = GamePredef.MSG_ITEM_COLOR[arguments[4]];
         var _loc3_:String = arguments[5];
         var _loc4_:String = arguments[6];
         if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_NPC])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[0];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_SKILL])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[4];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_SCENEITEM_INSTANCE])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[5];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_SCENEITEM_TEMPLATE])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[5];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[1];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CREATURE])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[3];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_MAP])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[5];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[1000])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[1];
            arguments[2] = _core.player.id;
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[1001])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[0];
            arguments[2] = _core.target.id;
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_POS])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[0];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[1005])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[7];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[1006])
         {
            _loc2_ = GamePredef.MSG_EVENTTEXT_COLOR[7];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ACHIEVEMENT])
         {
            _loc9_ = GameData.d[GamePredef.TBL_ACHIEVEMENT][arguments[2]];
            if(_loc9_)
            {
               _loc2_ = GamePredef.MSG_ITEM_COLOR[_loc9_.color];
            }
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET_SOUL])
         {
            _loc10_ = GameData.d[GamePredef.TBL_PET_SOUL][arguments[2]];
            _loc2_ = GamePredef.MSG_ITEM_COLOR[_loc10_.color];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_MEDAL])
         {
            _loc11_ = GameData.d[GamePredef.TBL_MEDAL][arguments[2]];
            _loc2_ = GamePredef.MSG_ITEM_COLOR[int(_loc11_.q)];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET_TALENT])
         {
            _loc12_ = GameData.d[GamePredef.TBL_PET_TALENT][arguments[2]];
            _loc2_ = GamePredef.MSG_ITEM_COLOR[int(Math.floor(_loc12_.sid / 10000))];
         }
         else if(arguments[1] == GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_RECIPE])
         {
            _loc13_ = GameData.d[GamePredef.TBL_RECIPE][arguments[2]];
            _loc14_ = _loc13_ ? int(_loc13_.color) : 0;
            if(!_loc14_ || _loc14_ < 0)
            {
               _loc14_ = 0;
            }
            _loc2_ = GamePredef.MSG_ITEM_COLOR[_loc14_];
         }
         if(int(_loc4_) >= 1 && int(_loc4_) <= 6)
         {
            _loc5_ = GamePredef.PRE_EQU_NAME[_loc3_] + arguments[3] + "*" + GamePredef.ELEMENT_NAME[_loc4_];
         }
         else
         {
            _loc5_ = GamePredef.PRE_EQU_NAME[_loc3_] + arguments[3];
         }
         var _loc6_:* = _loc5_;
         if(int(_loc4_) >= 7)
         {
            _loc5_ += Language.TEXTUTIL_S[18].replace("{num}",int(_loc4_) - 6);
         }
         var _loc7_:RegExp = /^【(.*)】$/;
         var _loc8_:Boolean = _loc7_.test(_loc5_);
         if(!_loc8_)
         {
            _loc6_ = "[" + _loc6_ + "]";
         }
         if(arguments[1] == GamePredef.LINK_TYPE_ARRAY["Hongbao"])
         {
            _loc6_ = "[" + Language.RE_PANEL[8] + "]";
         }
         return "<font color=\'" + _loc2_ + "\'><a href=\'event:L_" + arguments[1] + "|" + arguments[2] + "|" + _loc5_ + "\'>" + _loc6_ + "</a></font>";
      }
      
      public static function getMapHtml(param1:int) : String
      {
         if(param1 <= 0 || !param1)
         {
            return "";
         }
         return decode("[@MA|" + param1 + "|" + GameData.d[GamePredef.TBL_MAP][param1].name + "|0|0|0] ");
      }
      
      public static function encodeChatMsg(param1:int, param2:String) : Object
      {
         var _loc6_:Array = null;
         param2 = param2.replace(GamePredef.MSG_EXP_TEXT,"$1");
         param2 = param2.replace(GamePredef.MSG_EXP_BLACK,"$1");
         param2 = param2.replace(GamePredef.MSG_EXP_WHITE,"$1");
         param2 = param2.replace(GamePredef.MSG_EXP_WHITE,"$1");
         if(param2.indexOf("@PET") > 0)
         {
            param2 = param2.replace(/@PET/g,"@pet");
         }
         if(param2.indexOf("@IT") > 0)
         {
            param2 = param2.replace(/@IT/g,"@it");
         }
         if(param2.indexOf("@EQ") > 0)
         {
            param2 = param2.replace(/@EQ/g,"@eq");
         }
         if(param2.indexOf("@HB") > 0)
         {
            param2 = param2.replace(/@HB/g,"@hb");
         }
         var _loc3_:RegExp = /(\/w )(.*?) (.*)$/;
         var _loc4_:Object = new Object();
         var _loc5_:Boolean = _loc3_.test(param2);
         if(_loc5_ == false)
         {
            _loc4_.channelId = param1;
            _loc4_.status = GamePredef.MSG_STATUS_TRUE;
            _loc4_.type = GamePredef.MSG_TYPE_NORMAL;
            _loc4_.sourceId = _core.player.id;
            _loc4_.sourceName = _core.player.name;
            _loc4_.text = encode(param2);
         }
         else if(_loc5_ == true)
         {
            _loc6_ = _loc3_.exec(param2);
            _loc4_.channelId = -1;
            _loc4_.type = GamePredef.MSG_TYPE_WISPER;
            _loc4_.sourceId = _core.player.id;
            _loc4_.sourceName = _core.player.name;
            _loc4_.targetName = _loc6_[2];
            _loc4_.text = encode(_loc6_[3]);
         }
         return _loc4_;
      }
      
      public static function encode(param1:String) : String
      {
         var _loc2_:RegExp = /<a href=['\"]event:L_(\w{1,8})\|(\d+?)\|(.+?)['\"].+?>(.+?)<\/a>/gi;
         return param1.replace(_loc2_,"[@$1|$2|$3]");
      }
      
      public static function decodeChatMsg(param1:Object) : String
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc2_:String = new String();
         var _loc3_:RegExp = /(<font .+?>)|(<\/font>)/g;
         if(param1.sourceIdType == GamePredef.TBL_CHARACTOR)
         {
            if(param1.type == GamePredef.MSG_TYPE_NORMAL)
            {
               if(param1.channelId == GamePredef.MSG_CHANNEL_AREA)
               {
                  _loc2_ = decode(param1.text).replace(_loc3_,"");
               }
               else
               {
                  if(param1.channelId == GamePredef.MSG_CHANNEL_HEADLINE)
                  {
                     _loc2_ = "<div><font color=\'" + GamePredef.MSG_CHANNEL_COLOR[10] + "\'>";
                  }
                  else
                  {
                     _loc2_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[param1.channelId] + "\'>";
                  }
                  _loc2_ += "<a href=\'event:L_C|" + param1.channelId + "\'>[" + ArrayUtil.getElement(GamePredef.MSG_CHANNEL,"index",param1.channelId).label + "]</a>" + GamePredef.PM_CHAT_FLAG[param1.pmLevel] + "<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[1] + "\'>" + "<a href=\'event:L_PID|" + param1.sourceId + "|" + param1.sourceName + "\'>[" + param1.sourceName + "]</a></font>:" + decode(param1.text) + "</font>";
                  if(param1.channelId == GamePredef.MSG_CHANNEL_HEADLINE)
                  {
                     _loc2_ += "</div>";
                  }
               }
            }
            else if(param1.type == GamePredef.MSG_TYPE_WISPER)
            {
               if(param1.sourceId == _core.player.id)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[5] + Language.TEXTUTIL_S[15] + "<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[1] + "\'>" + "<a href=\'event:L_PID|" + param1.targetId + "|" + param1.targetName + "\'>[" + param1.targetName + Language.TEXTUTIL_S[16] + decode(param1.text) + "</font>";
               }
               else if(param1.targetId == _core.player.id)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[5] + Language.TEXTUTIL_S[17] + "<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[1] + "\'>" + "<a href=\'event:L_PID|" + param1.sourceId + "|" + param1.sourceName + "\'>[" + param1.sourceName + "]</a></font>:" + decode(param1.text) + "</font>";
               }
            }
         }
         else
         {
            _loc4_ = new String();
            _loc5_ = new String();
            _loc6_ = new String();
            if(param1.sourceIdType == GamePredef.TBL_CREATURE)
            {
               _loc7_ = _core.data.getGameData(GamePredef.TBL_CREATURE,param1.sourceId);
               if(_loc7_)
               {
                  _loc4_ = _loc7_.name;
                  _loc5_ = "M";
                  _loc6_ = GamePredef.MSG_EVENTTEXT_COLOR[3];
               }
            }
            else if(param1.sourceIdType == GamePredef.TBL_NPC)
            {
               _loc4_ = _core.getNpcData(param1.sourceId).name;
               _loc5_ = "N";
               _loc6_ = GamePredef.MSG_EVENTTEXT_COLOR[0];
            }
            else if(param1.sourceIdType == GamePredef.TBL_PET)
            {
               _loc8_ = _core.data.getGameData(GamePredef.TBL_PET,param1.sourceId);
               if(_loc8_)
               {
                  _loc4_ = _loc8_.name;
                  _loc5_ = "PET";
                  _loc6_ = GamePredef.MSG_EVENTTEXT_COLOR[2];
               }
            }
            _loc2_ = "<font color=\'" + GamePredef.MSG_CHANNEL_COLOR[param1.channelId] + "\'>" + "<a href=\'event:L_C|" + param1.channelId + "\'>[" + GamePredef.MSG_CHANNEL[param1.channelId].label + "]</a>" + "<font color=\'" + _loc6_ + "\'>" + "<a href=\'event:L_" + _loc5_ + "|" + param1.sourceId + "|" + _loc4_ + "\'>[" + _loc4_ + "]</a></font>:" + decode(param1.text) + "</font>";
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : String
      {
         var _loc4_:RegExp = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         _loc2_.addItem({
            "pid":ViewManager.PANEL_CHARACTOR,
            "name":Language.TEXTUTIL_S[0]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_BAG,
            "name":Language.TEXTUTIL_S[1]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_GUILD,
            "name":Language.TEXTUTIL_S[2]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_QUESTMANAGER,
            "name":Language.TEXTUTIL_S[3]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_IM,
            "name":Language.TEXTUTIL_S[4]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_PETMANAGER,
            "name":Language.TEXTUTIL_S[5]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_SKILLMANAGER,
            "name":Language.TEXTUTIL_S[6]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_MAP,
            "name":Language.TEXTUTIL_S[7]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_GUILD,
            "name":Language.TEXTUTIL_S[9]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_HELP,
            "name":Language.TEXTUTIL_S[10]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_SYSTEM,
            "name":Language.TEXTUTIL_S[11]
         });
         _loc2_.addItem({
            "pid":ViewManager.POPU_WORLDMAP,
            "name":Language.TEXTUTIL_S[12]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_SYSTEM_SHOP,
            "name":Language.TEXTUTIL_S[13]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_BATTLESET,
            "name":Language.TEXTUTIL_S[14]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_MARRIAGE,
            "name":Language.TEXTUTIL_S[19]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_GAMEINTRO,
            "name":Language.TEXTUTIL_S[20]
         });
         _loc2_.addItem({
            "pid":ViewManager.PANEL_ASTROLOGIC,
            "name":Language.TEXTUTIL_S[21]
         });
         if(param1 == null)
         {
            return "";
         }
         var _loc3_:RegExp = /\[@([A-Z]+?)\|(\d*?)\|(.+?)\|(.+?)\|(.+?)\|(.+?)\]/g;
         var _loc5_:String = param1.replace(_loc3_,decodeOut);
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_.length)
         {
            _loc4_ = new RegExp("\\[" + _loc2_[_loc6_].name + "\\]","g");
            if(_loc5_.match(_loc4_).length > 0)
            {
               _loc5_ = _loc5_.replace(_loc4_,"<font color=\'#00ff00\'><a href=\'event:L_P|" + _loc2_[_loc6_].pid + "|" + _loc2_[_loc6_].name + "\'>[" + _loc2_[_loc6_].name + "]</a></font>");
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      public static function getCodeByTypeId(param1:int, param2:Number) : String
      {
         var _loc3_:Object = _core.data.getData(param1,param2);
         var _loc4_:String = "";
         var _loc5_:int = 0;
         if(_loc3_)
         {
            if(_loc3_.name)
            {
               _loc4_ = _loc3_.name;
            }
            if(_loc3_.color)
            {
               _loc5_ = int(_loc3_.color);
            }
         }
         return "[@" + GamePredef.LINK_TYPE_ARRAY[param1] + "|" + param2 + "|" + _loc4_ + "|" + _loc5_ + "|0|0]";
      }
   }
}

