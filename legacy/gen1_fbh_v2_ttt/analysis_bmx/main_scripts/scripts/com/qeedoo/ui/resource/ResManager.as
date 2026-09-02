package com.qeedoo.ui.resource
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Version;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import flash.system.ApplicationDomain;
   import mx.controls.SWFLoader;
   import mx.events.PropertyChangeEvent;
   
   public class ResManager implements IEventDispatcher
   {
      
      private static var _122792981TOTEM_CHARACTER:Class;
      
      private static var _1564422932TOTEM_MAGIC_WEAPON:Class;
      
      private static var _1276666768TOTEM_PET_FUNC2:Class;
      
      private static var _1183117610sincereWishPicture:Class;
      
      private static var _loadingFuncQueue:Array;
      
      private static var _ed:EventDispatcher;
      
      private static var _122049518candleBG:Class;
      
      private static var _577672949meteorWishPicture:Class;
      
      private static var _UIDict:Object;
      
      private static var _445967631meteorBG:Class;
      
      private static var _CDict:Object;
      
      private static var _1275631026TOTEM_PET_EQUIP:Class;
      
      private static var _1606083981TOTEM_TREASURE:Class;
      
      private static var _1121747654paperCraneWishPicture:Class;
      
      private static var _1615127566sincereBG:Class;
      
      private static var _68584714candleWishPicture:Class;
      
      public static var candleWishFlash:Class;
      
      public static var sincereWishFlash:Class;
      
      private static var _1276666767TOTEM_PET_FUNC1:Class;
      
      public static var paperCraneWishFlash:Class;
      
      private static var _169590242paperCraneBG:Class;
      
      public static var meteorWishFlash:Class;
      
      private static const ROOT_RES:String = "resource/";
      
      private static const ROOT_ICON:String = "icon/";
      
      private static const ROOT_HASH:String = "res/";
      
      private static const URL_WORD_EXT:Number = 1000000000000;
      
      private static const URL_WORD_1:Number = 1000000000;
      
      private static const URL_WORD_2:Number = 1000000;
      
      private static const URL_NUM_LENGTH:int = 6;
      
      private static var _loader:Loader = new Loader();
      
      private static var _loader_new:Loader = new Loader();
      
      public static var STATE_ICON:Object = {};
      
      public static var BATTLE_CMD:Object = null;
      
      public static const VIEW_SHADOW:Class = ResManager_VIEW_SHADOW;
      
      public static const VIEW_BATTLE_CLOUD:Class = ResManager_VIEW_BATTLE_CLOUD;
      
      public static const MOUSE_ACTION_BIND:Class = ResManager_MOUSE_ACTION_BIND;
      
      public static const MOUSE_ACTION_USE:Class = ResManager_MOUSE_ACTION_USE;
      
      public static const MOUSE_ACTION_DROP:Class = ResManager_MOUSE_ACTION_DROP;
      
      public static const MOUSE_ACTION_DIVIDE:Class = ResManager_MOUSE_ACTION_DIVIDE;
      
      public static const MOUSE_ACTION_REPAIR:Class = ResManager_MOUSE_ACTION_REPAIR;
      
      public static const MOUSE_ACTION_PK:Class = ResManager_MOUSE_ACTION_PK;
      
      public static const MOUSE_ACTION_OBSERVE:Class = ResManager_MOUSE_ACTION_OBSERVE;
      
      public static const MOUSE_ACTION_TRADE:Class = ResManager_MOUSE_ACTION_TRADE;
      
      public static const MOUSE_ACTION_PLANT_JG:Class = ResManager_MOUSE_ACTION_PLANT_JG;
      
      public static const MOUSE_ACTION_PLANT_YG:Class = ResManager_MOUSE_ACTION_PLANT_YG;
      
      public static const MOUSE_ACTION_PLANT_SJ:Class = ResManager_MOUSE_ACTION_PLANT_SJ;
      
      public static const MOUSE_ACTION_PLANT_SZ:Class = ResManager_MOUSE_ACTION_PLANT_SZ;
      
      public static const MOUSE_ACTION_PLANT_JX:Class = ResManager_MOUSE_ACTION_PLANT_JX;
      
      public static const MOUSE_ACTION_PLANT_BUILD:Class = ResManager_MOUSE_ACTION_PLANT_BUILD;
      
      public static const MOUSE_ACTION_PLANT_WAIT:Class = ResManager_MOUSE_ACTION_PLANT_WAIT;
      
      public static const MOUSE_ACTION_CAN_STEAL:Class = ResManager_MOUSE_ACTION_CAN_STEAL;
      
      public static const MOUSE_ACTION_CLEAR_PLANT:Class = ResManager_MOUSE_ACTION_CLEAR_PLANT;
      
      public static const MOUSE_ACTION_REAP_MINE:Class = ResManager_MOUSE_ACTION_REAP_MINE;
      
      public static const MOUSE_ACTION_REAP_ALL:Class = ResManager_MOUSE_ACTION_REAP_ALL;
      
      public static const MOUSE_ACTION_IMG:Object = {};
      
      public static const ICON_WARN_REDENVELOPE:Class = ResManager_ICON_WARN_REDENVELOPE;
      
      public static const ICON_WARN_WISPERMIN:Class = ResManager_ICON_WARN_WISPERMIN;
      
      public static const ICON_WARN_WISPER:Class = ResManager_ICON_WARN_WISPER;
      
      public static const ICON_WARN_MAIL:Class = ResManager_ICON_WARN_MAIL;
      
      public static const ICON_SYSTEM_WARN_MAIL:Class = ResManager_ICON_SYSTEM_WARN_MAIL;
      
      public static const ICON_ALL_SYSTEM_WARN_MAIL:Class = ResManager_ICON_ALL_SYSTEM_WARN_MAIL;
      
      public static const ICON_WARN_FTEACHER:Class = ResManager_ICON_WARN_FTEACHER;
      
      public static const ICON_WARN_FSTUDENT:Class = ResManager_ICON_WARN_FSTUDENT;
      
      public static const ICON_WARN_AWARD:Class = ResManager_ICON_WARN_AWARD;
      
      public static const ICON_WARN_AWARD1:Class = ResManager_ICON_WARN_AWARD1;
      
      public static const ICON_WARN_GROUP_INVITE:Class = ResManager_ICON_WARN_GROUP_INVITE;
      
      public static const ICON_WARN_QUESTION:Class = ResManager_ICON_WARN_QUESTION;
      
      public static const ICON_WARN_FARM_RIPE:Class = ResManager_ICON_WARN_FARM_RIPE;
      
      public static const ICON_WARN_QUESTION1:Class = ResManager_ICON_WARN_QUESTION1;
      
      public static const ICON_WARN_REGISTER:Class = ResManager_ICON_WARN_REGISTER;
      
      public static const ICON_WARN_GM_MSG:Class = ResManager_ICON_WARN_GM_MSG;
      
      public static const ICON_WARN_GM_MSG_MIN:Class = ResManager_ICON_WARN_GM_MSG_MIN;
      
      public static const ICON_GROUP_LEADER:Class = ResManager_ICON_GROUP_LEADER;
      
      public static const ICON_CHAT_BLACK:Class = ResManager_ICON_CHAT_BLACK;
      
      public static const ICON_CHAT_CURRENT:Class = ResManager_ICON_CHAT_CURRENT;
      
      public static const ICON_CHAT_FRIEND:Class = ResManager_ICON_CHAT_FRIEND;
      
      public static const ICON_CURRENCY_GOLD:Class = ResManager_ICON_CURRENCY_GOLD;
      
      public static const ICON_CURRENCY_GOLD_BIND:Class = ResManager_ICON_CURRENCY_GOLD_BIND;
      
      public static const ICON_CURRENCY_GOLD_ALL:Class = ResManager_ICON_CURRENCY_GOLD_ALL;
      
      public static const ICON_CURRENCY_MONEY:Class = ResManager_ICON_CURRENCY_MONEY;
      
      public static const ICON_CURRENCY_MONEY_BIND:Class = ResManager_ICON_CURRENCY_MONEY_BIND;
      
      public static const ICON_CURRENCY_MONEY_ALL:Class = ResManager_ICON_CURRENCY_MONEY_ALL;
      
      public static const ICON_CURRENCY_EXPBATTLE:Class = ResManager_ICON_CURRENCY_EXPBATTLE;
      
      public static const ICON_CURRENCY_ACTPOINT:Class = ResManager_ICON_CURRENCY_ACTPOINT;
      
      public static const ICON_CURRENCY_EXPOINT:Class = ResManager_ICON_CURRENCY_EXPOINT;
      
      public static const ICON_CURRENCY_BTPOINT:Class = ResManager_ICON_CURRENCY_BTPOINT;
      
      public static const ICON_CURRENCY_DOGMEDAL:Class = ResManager_ICON_CURRENCY_DOGMEDAL;
      
      public static const ICON_MAGIC_SOULPNT:Class = ResManager_ICON_MAGIC_SOULPNT;
      
      public static const ICON_PVP_DOGMEDAL:Class = ResManager_ICON_PVP_DOGMEDAL;
      
      public static const ICON_WORLD_CUP:Class = ResManager_ICON_WORLD_CUP;
      
      public static const ICON_WORLD_CUP_GOLD:Class = ResManager_ICON_WORLD_CUP_GOLD;
      
      public static const ICON_BATTLE_EXP:Class = ResManager_ICON_BATTLE_EXP;
      
      public static const ICON_ELEMENT:Class = ResManager_ICON_ELEMENT;
      
      public static const ICON_REBIRTH_1:Class = ResManager_ICON_REBIRTH_1;
      
      public static const ICON_REBIRTH_2:Class = ResManager_ICON_REBIRTH_2;
      
      public static const ICON_REBIRTH_3:Class = ResManager_ICON_REBIRTH_3;
      
      public static const ICON_REBIRTH_4:Class = ResManager_ICON_REBIRTH_4;
      
      public static const ICON_REBIRTH_5:Class = ResManager_ICON_REBIRTH_5;
      
      public static const ICON_REBIRTH_6:Class = ResManager_ICON_REBIRTH_6;
      
      public static const ICON_CURRENCY_ACHILLESMEDAL:Class = ResManager_ICON_CURRENCY_ACHILLESMEDAL;
      
      public static const ICON_COMMINGSOON:Class = ResManager_ICON_COMMINGSOON;
      
      public static const ICON_CURRENCY_FESTIVALPOINT:Class = ResManager_ICON_CURRENCY_FESTIVALPOINT;
      
      public static const ICON_ACHIEVE_GRAIN:Class = ResManager_ICON_ACHIEVE_GRAIN;
      
      public static const ICON_CURRENCY_HONOR:Class = ResManager_ICON_CURRENCY_HONOR;
      
      public static const ICON_CURRENCY_SKILL:Class = ResManager_ICON_CURRENCY_SKILL;
      
      public static const ICON_CURRENCY_EXP:Class = ResManager_ICON_CURRENCY_EXP;
      
      public static const ICON_MAIL_NORMAL:Class = ResManager_ICON_MAIL_NORMAL;
      
      public static const ICON_MAIL_OPENED:Class = ResManager_ICON_MAIL_OPENED;
      
      public static const ICON_MAIL_ITEM_NORMAL:Class = ResManager_ICON_MAIL_ITEM_NORMAL;
      
      public static const ICON_MAIL_ITEM_OPENED:Class = ResManager_ICON_MAIL_ITEM_OPENED;
      
      public static const ICON_MINIMAP_IP:Class = ResManager_ICON_MINIMAP_IP;
      
      public static const ICON_MINIMAP_NPC:Class = ResManager_ICON_MINIMAP_NPC;
      
      public static const ICON_MINIMAP_PC:Class = ResManager_ICON_MINIMAP_PC;
      
      public static const ICON_PET_BATTLE:Class = ResManager_ICON_PET_BATTLE;
      
      public static const ICON_PET_DEL:Class = ResManager_ICON_PET_DEL;
      
      public static const ICON_PET_FOLLOW:Class = ResManager_ICON_PET_FOLLOW;
      
      public static const ICON_PET_STANDBY:Class = ResManager_ICON_PET_STANDBY;
      
      public static const ICON_CLASS_1:Class = ResManager_ICON_CLASS_1;
      
      public static const ICON_CLASS_2:Class = ResManager_ICON_CLASS_2;
      
      public static const ICON_CLASS_3:Class = ResManager_ICON_CLASS_3;
      
      public static const ICON_CLASS_4:Class = ResManager_ICON_CLASS_4;
      
      public static const ICON_CLASS_5:Class = ResManager_ICON_CLASS_5;
      
      public static const ICON_CLASS_6:Class = ResManager_ICON_CLASS_6;
      
      public static const ICON_QUEST_STATE_101:Class = ResManager_ICON_QUEST_STATE_101;
      
      public static const ICON_QUEST_STATE_102:Class = ResManager_ICON_QUEST_STATE_102;
      
      public static const ICON_QUEST_STATE_103:Class = ResManager_ICON_QUEST_STATE_103;
      
      public static const ICON_QUEST_STATE_104:Class = ResManager_ICON_QUEST_STATE_104;
      
      public static const ICON_QUEST_AWARD:Class = ResManager_ICON_QUEST_AWARD;
      
      public static const ICON_EXP:Class = ResManager_ICON_EXP;
      
      public static const ICON_BIND_YES:Class = ResManager_ICON_BIND_YES;
      
      public static const ICON_BIND_NO:Class = ResManager_ICON_BIND_NO;
      
      public static const ICON_TITLE_YES:Class = ResManager_ICON_TITLE_YES;
      
      public static const ICON_TITLE_NO:Class = ResManager_ICON_TITLE_NO;
      
      public static const CREATURE_CLASS_HUMAN:Class = ResManager_CREATURE_CLASS_HUMAN;
      
      public static const CREATURE_CLASS_MONSTER:Class = ResManager_CREATURE_CLASS_MONSTER;
      
      public static const CREATURE_CLASS_PLANT:Class = ResManager_CREATURE_CLASS_PLANT;
      
      public static const CREATURE_CLASS_MACHINE:Class = ResManager_CREATURE_CLASS_MACHINE;
      
      public static const CREATURE_CLASS_DEVIL:Class = ResManager_CREATURE_CLASS_DEVIL;
      
      public static const CREATURE_CLASS_DRAGON:Class = ResManager_CREATURE_CLASS_DRAGON;
      
      public static var CREATURE_CLASS:Object = {};
      
      public static const ELEMENT_LIGHT:Class = ResManager_ELEMENT_LIGHT;
      
      public static const ELEMENT_DARK:Class = ResManager_ELEMENT_DARK;
      
      public static const ELEMENT_WIND:Class = ResManager_ELEMENT_WIND;
      
      public static const ELEMENT_THUNDER:Class = ResManager_ELEMENT_THUNDER;
      
      public static const ELEMENT_WATER:Class = ResManager_ELEMENT_WATER;
      
      public static const ELEMENT_FIRE:Class = ResManager_ELEMENT_FIRE;
      
      public static var ELEMENT_KIND:Object = {};
      
      public static const ICON_EQUIP_STAR:Class = ResManager_ICON_EQUIP_STAR;
      
      public static const ICON_PET_STAR_LIGHT:Class = ResManager_ICON_PET_STAR_LIGHT;
      
      public static const ICON_PET_STAR_DARK:Class = ResManager_ICON_PET_STAR_DARK;
      
      public static const ICON_EQUIP_HOLE:Class = ResManager_ICON_EQUIP_HOLE;
      
      public static const ICON_EQUIP_JEWEL_1:Class = ResManager_ICON_EQUIP_JEWEL_1;
      
      public static const ICON_EQUIP_JEWEL_2:Class = ResManager_ICON_EQUIP_JEWEL_2;
      
      public static const ICON_EQUIP_JEWEL_3:Class = ResManager_ICON_EQUIP_JEWEL_3;
      
      public static const ICON_EQUIP_JEWEL_4:Class = ResManager_ICON_EQUIP_JEWEL_4;
      
      public static const ICON_EQUIP_JEWEL_5:Class = ResManager_ICON_EQUIP_JEWEL_5;
      
      public static const ICON_EQUIP_JEWEL_6:Class = ResManager_ICON_EQUIP_JEWEL_6;
      
      public static const ICON_EQUIP_JEWEL_7:Class = ResManager_ICON_EQUIP_JEWEL_7;
      
      public static const ICON_EQUIP_JEWEL_8:Class = ResManager_ICON_EQUIP_JEWEL_8;
      
      public static const ICON_EQUIP_JEWEL_9:Class = ResManager_ICON_EQUIP_JEWEL_9;
      
      public static const ICON_EQUIP_JEWEL_10:Class = ResManager_ICON_EQUIP_JEWEL_10;
      
      public static const ICON_EQUIP_JEWEL_11:Class = ResManager_ICON_EQUIP_JEWEL_11;
      
      public static const ICON_EQUIP_JEWEL_12:Class = ResManager_ICON_EQUIP_JEWEL_12;
      
      public static const ICON_EQUIP_JEWEL_13:Class = ResManager_ICON_EQUIP_JEWEL_13;
      
      public static const ICON_EQUIP_JEWEL_14:Class = ResManager_ICON_EQUIP_JEWEL_14;
      
      public static const ICON_EQUIP_JEWEL_15:Class = ResManager_ICON_EQUIP_JEWEL_15;
      
      public static const ICON_EQUIP_JEWEL_16:Class = ResManager_ICON_EQUIP_JEWEL_16;
      
      public static const ICON_EQUIP_WING_HOLE:Class = ResManager_ICON_EQUIP_WING_HOLE;
      
      public static const ICON_EQUIP_WING_FEATHER:Class = ResManager_ICON_EQUIP_WING_FEATHER;
      
      public static const UI_LEADER_FLAG:Class = ResManager_UI_LEADER_FLAG;
      
      public static const ST_ICON_STATE:Class = ResManager_ST_ICON_STATE;
      
      public static const NEW_ICON_STATE:Class = ResManager_NEW_ICON_STATE;
      
      public static const DEFAULT_CRE:Class = ResManager_DEFAULT_CRE;
      
      public static const SERVER_DOMAIN_CONFIG:Class = ResManager_SERVER_DOMAIN_CONFIG;
      
      public static const LEAGUE_ICON_RED:Class = ResManager_LEAGUE_ICON_RED;
      
      public static const LEAGUE_ICON_BLUE:Class = ResManager_LEAGUE_ICON_BLUE;
      
      public static const CLOUD1:Class = ResManager_CLOUD1;
      
      public static const CLOUD2:Class = ResManager_CLOUD2;
      
      public static const CLOUD3:Class = ResManager_CLOUD3;
      
      public static const TRIPLE_TOWN_ICON_STATE:Class = ResManager_TRIPLE_TOWN_ICON_STATE;
      
      public static const PET_PENTAGON:Class = ResManager_PET_PENTAGON;
      
      public static const IMG_LOGO:Class = ResManager_IMG_LOGO;
      
      public static const ICON_ACHIEVEMENT:Class = ResManager_ICON_ACHIEVEMENT;
      
      public static const ICON_ACHIEVEMENT_DISABLED:Class = ResManager_ICON_ACHIEVEMENT_DISABLED;
      
      public static const IMG_STARS_BACKGROUND:Class = ResManager_IMG_STARS_BACKGROUND;
      
      public static const IMG_STARS_INS_LIGHT:Class = ResManager_IMG_STARS_INS_LIGHT;
      
      public static const IMG_STARS_INS_DARK:Class = ResManager_IMG_STARS_INS_DARK;
      
      public static const IMG_STARS_LEVEL_LIGHT:Class = ResManager_IMG_STARS_LEVEL_LIGHT;
      
      public static const LABEL_CHAR_CRE_1:Class = ResManager_LABEL_CHAR_CRE_1;
      
      public static const LABEL_CHAR_CRE_2:Class = ResManager_LABEL_CHAR_CRE_2;
      
      public static const LABEL_CHAR_CRE_3:Class = ResManager_LABEL_CHAR_CRE_3;
      
      public static const LABEL_CHAR_CRE_4:Class = ResManager_LABEL_CHAR_CRE_4;
      
      public static const LABEL_CHAR_CRE_5:Class = ResManager_LABEL_CHAR_CRE_5;
      
      public static const LABEL_CHAR_CRE_6:Class = ResManager_LABEL_CHAR_CRE_6;
      
      public static const ANI_CHAR_CRE:Class = ResManager_ANI_CHAR_CRE;
      
      public static const PET_DEFAULT_ICON:Class = ResManager_PET_DEFAULT_ICON;
      
      public static const FAIRY_PANEL_BUTTON:Class = ResManager_FAIRY_PANEL_BUTTON;
      
      public static const STAR_BUILDER_AIRES:Class = ResManager_STAR_BUILDER_AIRES;
      
      public static const STAR_BUILDER_TAURUS:Class = ResManager_STAR_BUILDER_TAURUS;
      
      public static const STAR_BUILDER_GEMINI:Class = ResManager_STAR_BUILDER_GEMINI;
      
      public static const STAR_BUILDER_CANCER:Class = ResManager_STAR_BUILDER_CANCER;
      
      public static const STAR_BUILDER_LEO:Class = ResManager_STAR_BUILDER_LEO;
      
      public static const STAR_BUILDER_VIRGO:Class = ResManager_STAR_BUILDER_VIRGO;
      
      public static const STAR_BUILDER_LIBRA:Class = ResManager_STAR_BUILDER_LIBRA;
      
      public static const STAR_BUILDER_SCORPIO:Class = ResManager_STAR_BUILDER_SCORPIO;
      
      public static const STAR_BUILDER_SAGITTARIUS:Class = ResManager_STAR_BUILDER_SAGITTARIUS;
      
      public static const STAR_BUILDER_CAPRICORN:Class = ResManager_STAR_BUILDER_CAPRICORN;
      
      public static const STAR_BUILDER_AQUARIUS:Class = ResManager_STAR_BUILDER_AQUARIUS;
      
      public static const STAR_BUILDER_PISCES:Class = ResManager_STAR_BUILDER_PISCES;
      
      public static const PM_ZUAN1:Class = ResManager_PM_ZUAN1;
      
      public static const PM_ZUAN2:Class = ResManager_PM_ZUAN2;
      
      public static const PM_ZUAN3:Class = ResManager_PM_ZUAN3;
      
      public static const PM_ZUAN4:Class = ResManager_PM_ZUAN4;
      
      public static const PM_ZUAN5:Class = ResManager_PM_ZUAN5;
      
      public static const PM_ZUAN6:Class = ResManager_PM_ZUAN6;
      
      public static const PM_ZUAN7:Class = ResManager_PM_ZUAN7;
      
      public static const PM_ZUAN8:Class = ResManager_PM_ZUAN8;
      
      public static const PM_ZUAN9:Class = ResManager_PM_ZUAN9;
      
      public static const NEW_GRADE1:Class = ResManager_NEW_GRADE1;
      
      public static const NEW_GRADE2:Class = ResManager_NEW_GRADE2;
      
      public static const NEW_GRADE3:Class = ResManager_NEW_GRADE3;
      
      public static const ICON_GLOBAL_000009:Class = ResManager_ICON_GLOBAL_000009;
      
      public static const STAR_BUILDER_ARRAY:Array = [0,STAR_BUILDER_AIRES,STAR_BUILDER_TAURUS,STAR_BUILDER_GEMINI,STAR_BUILDER_CANCER,STAR_BUILDER_LEO,STAR_BUILDER_VIRGO,STAR_BUILDER_LIBRA,STAR_BUILDER_SCORPIO,STAR_BUILDER_SAGITTARIUS,STAR_BUILDER_CAPRICORN,STAR_BUILDER_AQUARIUS,STAR_BUILDER_PISCES];
      
      public static const MCZDMATCHING:Class = ResManager_MCZDMATCHING;
      
      public static const ST_ICON_QUEST_CANTAKE_BRA:Class = ResManager_ST_ICON_QUEST_CANTAKE_BRA;
      
      public static const ST_ICON_QUEST_ISTAKE_BRA:Class = ResManager_ST_ICON_QUEST_ISTAKE_BRA;
      
      public static const ST_ICON_QUEST_CANFINISH_BRA:Class = ResManager_ST_ICON_QUEST_CANFINISH_BRA;
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
      
      MOUSE_ACTION_IMG[GamePredef.ACTION_ITEM] = MOUSE_ACTION_USE;
      MOUSE_ACTION_IMG[GamePredef.ACTION_OBSERVE] = MOUSE_ACTION_OBSERVE;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PK] = MOUSE_ACTION_PK;
      MOUSE_ACTION_IMG[GamePredef.ACTION_BIND] = MOUSE_ACTION_BIND;
      MOUSE_ACTION_IMG[GamePredef.ACTION_TRADE] = MOUSE_ACTION_TRADE;
      MOUSE_ACTION_IMG[GamePredef.ACTION_DROP] = MOUSE_ACTION_DROP;
      MOUSE_ACTION_IMG[GamePredef.ACTION_DIVIDE] = MOUSE_ACTION_DIVIDE;
      MOUSE_ACTION_IMG[GamePredef.ACTION_REPAIR_NOWEAR] = MOUSE_ACTION_REPAIR;
      MOUSE_ACTION_IMG[GamePredef.ACTION_REPAIR_MAGIC_WEAPON] = MOUSE_ACTION_REPAIR;
      MOUSE_ACTION_IMG[GamePredef.ACTION_REPAIR_NORMAL] = MOUSE_ACTION_REPAIR;
      MOUSE_ACTION_IMG[GamePredef.ACTION_CLEAR_PLANT] = MOUSE_ACTION_CLEAR_PLANT;
      MOUSE_ACTION_IMG[GamePredef.ACTION_REAP_MINE] = MOUSE_ACTION_REAP_MINE;
      MOUSE_ACTION_IMG[GamePredef.ACTION_REAP_ALL] = MOUSE_ACTION_REAP_ALL;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_JG1] = MOUSE_ACTION_PLANT_JG;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_JG2] = MOUSE_ACTION_PLANT_JG;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_YG1] = MOUSE_ACTION_PLANT_YG;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_YG2] = MOUSE_ACTION_PLANT_YG;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_SJ1] = MOUSE_ACTION_PLANT_SJ;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_SJ2] = MOUSE_ACTION_PLANT_SJ;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_SZ1] = MOUSE_ACTION_PLANT_SZ;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_SZ2] = MOUSE_ACTION_PLANT_SZ;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_JX1] = MOUSE_ACTION_PLANT_JX;
      MOUSE_ACTION_IMG[GamePredef.ACTION_PLANT_JX2] = MOUSE_ACTION_PLANT_JX;
      CREATURE_CLASS[GamePredef.CREATURE_CLASS_HUMAN] = CREATURE_CLASS_HUMAN;
      CREATURE_CLASS[GamePredef.CREATURE_CLASS_MONSTER] = CREATURE_CLASS_MONSTER;
      CREATURE_CLASS[GamePredef.CREATURE_CLASS_PLANT] = CREATURE_CLASS_PLANT;
      CREATURE_CLASS[GamePredef.CREATURE_CLASS_MACHINE] = CREATURE_CLASS_MACHINE;
      CREATURE_CLASS[GamePredef.CREATURE_CLASS_DEVIL] = CREATURE_CLASS_DEVIL;
      CREATURE_CLASS[GamePredef.CREATURE_CLASS_DRAGON] = CREATURE_CLASS_DRAGON;
      ELEMENT_KIND[GamePredef.ELEMENT_LIGHT] = ELEMENT_LIGHT;
      ELEMENT_KIND[GamePredef.ELEMENT_DARK] = ELEMENT_DARK;
      ELEMENT_KIND[GamePredef.ELEMENT_WIND] = ELEMENT_WIND;
      ELEMENT_KIND[GamePredef.ELEMENT_THUNDER] = ELEMENT_THUNDER;
      ELEMENT_KIND[GamePredef.ELEMENT_WATER] = ELEMENT_WATER;
      ELEMENT_KIND[GamePredef.ELEMENT_FIRE] = ELEMENT_FIRE;
      STATE_ICON[GamePredef.ST_QUEST_CANTAKE] = ST_ICON_QUEST_CANTAKE_BRA;
      STATE_ICON[GamePredef.ST_QUEST_ISTAKE] = ST_ICON_QUEST_ISTAKE_BRA;
      STATE_ICON[GamePredef.ST_QUEST_CANFINISH] = ST_ICON_QUEST_CANFINISH_BRA;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      public function ResManager()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public static function get candleBG() : Class
      {
         return ResManager._122049518candleBG;
      }
      
      public static function fix(param1:Number, param2:int) : String
      {
         var _loc5_:int = 0;
         var _loc3_:String = param1.toString();
         var _loc4_:int = _loc3_.length;
         if(_loc4_ < param2)
         {
            _loc5_ = 0;
            while(_loc5_ < param2 - _loc4_)
            {
               _loc3_ = "0" + _loc3_;
               _loc5_++;
            }
         }
         return _loc3_;
      }
      
      public static function set candleBG(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._122049518candleBG;
         if(_loc2_ !== param1)
         {
            ResManager._122049518candleBG = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"candleBG",_loc2_,param1));
            }
         }
      }
      
      private static function loadLotto() : void
      {
         var _core:Core;
         var hash:String;
         var swfLoader:SWFLoader = null;
         var setClass:Function = null;
         var onIO_ERROR:Function = null;
         var onSECURITY_ERROR:Function = null;
         trace("---------------------加载许愿面板资源");
         hash = ResManager.hash(GamePredef.RES_LOTTO);
         swfLoader = new SWFLoader();
         setClass = function(param1:Event):void
         {
            var appDomain:ApplicationDomain = null;
            var SkinLottoClazz:Class = null;
            var skin:Object = null;
            var e:Event = param1;
            swfLoader.removeEventListener(Event.INIT,setClass);
            try
            {
               appDomain = swfLoader.loaderContext.applicationDomain;
               SkinLottoClazz = appDomain.getDefinition("SkinLotto") as Class;
               skin = new SkinLottoClazz();
               sincereBG = skin.sincereBG as Class;
               candleBG = skin.candleBG as Class;
               paperCraneBG = skin.paperCraneBG as Class;
               meteorBG = skin.meteorBG as Class;
               sincereWishFlash = skin.sincereWishFlash as Class;
               candleWishFlash = skin.candleWishFlash as Class;
               paperCraneWishFlash = skin.paperCraneWishFlash as Class;
               meteorWishFlash = skin.meteorWishFlash as Class;
               sincereWishPicture = skin.sincereWishPicture as Class;
               candleWishPicture = skin.candleWishPicture as Class;
               paperCraneWishPicture = skin.paperCraneWishPicture as Class;
               meteorWishPicture = skin.meteorWishPicture as Class;
            }
            catch(e:Object)
            {
            }
            trace("---------------------加载许愿面板资源完毕");
         };
         onIO_ERROR = function():void
         {
            swfLoader.removeEventListener(IOErrorEvent.IO_ERROR,onIO_ERROR);
         };
         onSECURITY_ERROR = function():void
         {
            swfLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSECURITY_ERROR);
         };
         swfLoader.addEventListener(Event.INIT,setClass);
         swfLoader.addEventListener(IOErrorEvent.IO_ERROR,onIO_ERROR);
         swfLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSECURITY_ERROR);
         swfLoader.load(hash);
         _core = Core.getInstance();
         _core.allowMusic = true;
         _core.playMusic(_core.currentMusicId);
      }
      
      public static function applyFilter(param1:DisplayObject, param2:Array) : void
      {
         var _loc3_:ColorMatrixFilter = new ColorMatrixFilter(param2);
         var _loc4_:Array = new Array();
         _loc4_.push(_loc3_);
         param1.filters = _loc4_;
      }
      
      public static function getIconUrlNoHash(param1:Number) : String
      {
         return ROOT_ICON + getUrl(param1);
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      public static function cleanValue(param1:Number, param2:Number) : Number
      {
         return Math.min(param2,Math.max(-param2,param1));
      }
      
      private static function loadMagicTotom() : void
      {
         var hash:String;
         var swfLoader:SWFLoader = null;
         var setClass:Function = null;
         var onIO_ERROR:Function = null;
         var onSECURITY_ERROR:Function = null;
         trace("---------------------加载魔法图资源");
         hash = ResManager.hash(GamePredef.RES_MAGIC_TOTEM);
         swfLoader = new SWFLoader();
         setClass = function(param1:Event):void
         {
            var appDomain:ApplicationDomain = null;
            var SkinMagicTotemClazz:Class = null;
            var skin:Object = null;
            var e:Event = param1;
            swfLoader.removeEventListener(Event.INIT,setClass);
            try
            {
               appDomain = swfLoader.loaderContext.applicationDomain;
               SkinMagicTotemClazz = appDomain.getDefinition("SkinMagicTotem") as Class;
               skin = new SkinMagicTotemClazz();
               TOTEM_CHARACTER = skin.TOTEM_CHARACTER as Class;
               TOTEM_MAGIC_WEAPON = skin.TOTEM_MAGIC_WEAPON as Class;
               TOTEM_PET_EQUIP = skin.TOTEM_PET_EQUIP as Class;
               TOTEM_PET_FUNC1 = skin.TOTEM_PET_FUNC1 as Class;
               TOTEM_PET_FUNC2 = skin.TOTEM_PET_FUNC2 as Class;
               TOTEM_TREASURE = skin.TOTEM_TREASURE as Class;
            }
            catch(e:Object)
            {
            }
            loadLotto();
         };
         onIO_ERROR = function():void
         {
            swfLoader.removeEventListener(IOErrorEvent.IO_ERROR,onIO_ERROR);
            loadLotto();
         };
         onSECURITY_ERROR = function():void
         {
            swfLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSECURITY_ERROR);
            loadLotto();
         };
         swfLoader.addEventListener(Event.INIT,setClass);
         swfLoader.addEventListener(IOErrorEvent.IO_ERROR,onIO_ERROR);
         swfLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSECURITY_ERROR);
         swfLoader.load(hash);
      }
      
      [Bindable(event="propertyChange")]
      public static function get TOTEM_MAGIC_WEAPON() : Class
      {
         return ResManager._1564422932TOTEM_MAGIC_WEAPON;
      }
      
      [Bindable(event="propertyChange")]
      public static function get meteorWishPicture() : Class
      {
         return ResManager._577672949meteorWishPicture;
      }
      
      public static function hash(param1:String) : String
      {
         var _loc2_:String = MD5.hash(param1);
         if(!Version.ASSETS_VERSION[_loc2_] || param1.indexOf("_NEW.swf") > 0)
         {
            return GamePredef.SERVER_ADD_RES + ROOT_HASH + _loc2_;
         }
         return GamePredef.SERVER_ADD_RES + ROOT_HASH + _loc2_ + "?v=" + Version.VERSION.slice(-3);
      }
      
      public static function init() : void
      {
         _UIDict = {};
         _CDict = {};
         _loader.contentLoaderInfo.addEventListener(Event.INIT,onLoaderInit);
         _loader.loadBytes(new ST_ICON_STATE());
         _loader_new.contentLoaderInfo.addEventListener(Event.INIT,onLoaderInit2);
         _loader_new.loadBytes(new NEW_ICON_STATE());
         var _loc1_:* = new Loader();
         _loc1_.contentLoaderInfo.addEventListener(Event.INIT,tripleLoaderInit);
         _loc1_.loadBytes(new TRIPLE_TOWN_ICON_STATE());
      }
      
      [Bindable(event="propertyChange")]
      public static function get candleWishPicture() : Class
      {
         return ResManager._68584714candleWishPicture;
      }
      
      [Bindable(event="propertyChange")]
      public static function get sincereWishPicture() : Class
      {
         return ResManager._1183117610sincereWishPicture;
      }
      
      [Bindable(event="propertyChange")]
      public static function get paperCraneWishPicture() : Class
      {
         return ResManager._1121747654paperCraneWishPicture;
      }
      
      public static function onLoaderInit2(param1:Event) : void
      {
         var _loc2_:Class = _loader_new.contentLoaderInfo.applicationDomain.getDefinition("NanXin") as Class;
         var _loc3_:Class = _loader_new.contentLoaderInfo.applicationDomain.getDefinition("NvXin") as Class;
         var _loc4_:* = _loader_new.contentLoaderInfo.applicationDomain.getDefinition("wanzhongzhumu") as Class;
         var _loc5_:* = _loader_new.contentLoaderInfo.applicationDomain.getDefinition("renqijuxing") as Class;
         var _loc6_:* = _loader_new.contentLoaderInfo.applicationDomain.getDefinition("renjianrenai") as Class;
         var _loc7_:* = _loader_new.contentLoaderInfo.applicationDomain.getDefinition("molizhixing") as Class;
         STATE_ICON[GamePredef.ST_PK_WINNER_MALE] = _loc2_;
         STATE_ICON[GamePredef.ST_PK_WINNER_FEMALE] = _loc3_;
         STATE_ICON[GamePredef.ST_SHOWTIME_A] = _loc4_;
         STATE_ICON[GamePredef.ST_SHOWTIME_B] = _loc5_;
         STATE_ICON[GamePredef.ST_SHOWTIME_C] = _loc6_;
         STATE_ICON[GamePredef.ST_SHOWTIME_D] = _loc7_;
         var _loc8_:* = _loader_new.contentLoaderInfo.applicationDomain.getDefinition("zhongqiuguanghuan") as Class;
         STATE_ICON[GamePredef.ST_ZHONGQIU2019] = _loc8_;
      }
      
      [Bindable(event="propertyChange")]
      public static function get TOTEM_TREASURE() : Class
      {
         return ResManager._1606083981TOTEM_TREASURE;
      }
      
      public static function delC(param1:String) : void
      {
         delete _CDict[param1];
      }
      
      public static function setColorCode(param1:DisplayObject, param2:int) : void
      {
         param2 = cleanValue(param2,180) / 180 * Math.PI;
         if(param2 == 0 || isNaN(param2))
         {
            if(param1)
            {
               param1.filters = [];
            }
            return;
         }
         var _loc3_:Number = Math.cos(param2);
         var _loc4_:Number = Math.sin(param2);
         var _loc5_:Number = 0.213;
         var _loc6_:Number = 0.715;
         var _loc7_:Number = 0.072;
         var _loc8_:Array = [_loc5_ + _loc3_ * (1 - _loc5_) + _loc4_ * -_loc5_,_loc6_ + _loc3_ * -_loc6_ + _loc4_ * -_loc6_,_loc7_ + _loc3_ * -_loc7_ + _loc4_ * (1 - _loc7_),0,0,_loc5_ + _loc3_ * -_loc5_ + _loc4_ * 0.143,_loc6_ + _loc3_ * (1 - _loc6_) + _loc4_ * 0.14,_loc7_ + _loc3_ * -_loc7_ + _loc4_ * -0.283,0,0,_loc5_ + _loc3_ * -_loc5_ + _loc4_ * -(1 - _loc5_),_loc6_ + _loc3_ * -_loc6_ + _loc4_ * _loc6_,_loc7_ + _loc3_ * (1 - _loc7_) + _loc4_ * _loc7_,0,0,0,0,0,1,0,0,0,0,0,1];
         param1.filters = [new ColorMatrixFilter(_loc8_)];
      }
      
      [Bindable(event="propertyChange")]
      public static function get TOTEM_PET_EQUIP() : Class
      {
         return ResManager._1275631026TOTEM_PET_EQUIP;
      }
      
      public static function set TOTEM_MAGIC_WEAPON(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._1564422932TOTEM_MAGIC_WEAPON;
         if(_loc2_ !== param1)
         {
            ResManager._1564422932TOTEM_MAGIC_WEAPON = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"TOTEM_MAGIC_WEAPON",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get paperCraneBG() : Class
      {
         return ResManager._169590242paperCraneBG;
      }
      
      public static function set meteorBG(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._445967631meteorBG;
         if(_loc2_ !== param1)
         {
            ResManager._445967631meteorBG = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"meteorBG",_loc2_,param1));
            }
         }
      }
      
      public static function getIconUrl(param1:Number) : String
      {
         return hash(getIconUrlNoHash(param1));
      }
      
      public static function setBrightCode(param1:DisplayObject, param2:Number) : void
      {
         if(param2 != 0)
         {
            param1.transform.colorTransform = new ColorTransform(param2 / 100,param2 / 100,param2 / 100);
         }
         else
         {
            param1.transform.colorTransform = new ColorTransform(1,1,1);
         }
      }
      
      public static function set meteorWishPicture(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._577672949meteorWishPicture;
         if(_loc2_ !== param1)
         {
            ResManager._577672949meteorWishPicture = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"meteorWishPicture",_loc2_,param1));
            }
         }
      }
      
      public static function set candleWishPicture(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._68584714candleWishPicture;
         if(_loc2_ !== param1)
         {
            ResManager._68584714candleWishPicture = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"candleWishPicture",_loc2_,param1));
            }
         }
      }
      
      public static function getUrl(param1:Number) : String
      {
         var _loc2_:int = int(param1 / URL_WORD_EXT);
         param1 %= URL_WORD_EXT;
         var _loc3_:int = int(param1 / URL_WORD_1);
         param1 %= URL_WORD_1;
         var _loc4_:int = int(param1 / URL_WORD_2);
         var _loc5_:String = param1.toString();
         _loc5_ = _loc5_.substr(_loc5_.length - URL_NUM_LENGTH);
         return GamePredef.RES_URL_FOLDER[_loc3_] + GamePredef.RES_URL_WORD1[_loc3_] + GamePredef.RES_URL_WORD2[_loc4_] + _loc5_ + GamePredef.RES_URL_EXT[_loc2_];
      }
      
      public static function getResUrlNoHash(param1:Number) : String
      {
         return ROOT_RES + getUrl(param1);
      }
      
      public static function getResCode(param1:String) : Number
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Array = param1.split(".");
         var _loc3_:Array = _loc2_[0].split("_");
         var _loc4_:String = _loc2_[1];
         var _loc5_:String = _loc3_[0];
         var _loc8_:Number = 1;
         var _loc9_:Number = Number(GamePredef.RES_URL_WORD1TOCODE[_loc5_]);
         var _loc10_:Number = 10;
         if(_loc3_[2] != null)
         {
            _loc7_ = _loc3_[2];
            _loc6_ = _loc3_[1];
            _loc10_ = Number(GamePredef.RES_URL_WORD2TOCODE[_loc6_]);
         }
         else
         {
            _loc7_ = _loc3_[1];
         }
         if(_loc4_)
         {
            _loc8_ = Number(GamePredef.RES_URL_EXTTOCODE[_loc4_]);
         }
         return Number(_loc8_.toString() + fix(_loc9_,3) + fix(_loc10_,3) + _loc7_);
      }
      
      public static function set paperCraneWishPicture(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._1121747654paperCraneWishPicture;
         if(_loc2_ !== param1)
         {
            ResManager._1121747654paperCraneWishPicture = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"paperCraneWishPicture",_loc2_,param1));
            }
         }
      }
      
      public static function set sincereWishPicture(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._1183117610sincereWishPicture;
         if(_loc2_ !== param1)
         {
            ResManager._1183117610sincereWishPicture = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"sincereWishPicture",_loc2_,param1));
            }
         }
      }
      
      public static function tripleLoaderInit(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         if(!_loc2_)
         {
            return;
         }
         _loc2_.removeEventListener(Event.INIT,tripleLoaderInit);
         var _loc3_:Class = _loc2_.applicationDomain.getDefinition("fangxiang1") as Class;
         var _loc4_:Class = _loc2_.applicationDomain.getDefinition("fangxiang2") as Class;
         var _loc5_:Class = _loc2_.applicationDomain.getDefinition("fangxiang3") as Class;
         var _loc6_:Class = _loc2_.applicationDomain.getDefinition("fangxiang4") as Class;
         var _loc7_:Class = _loc2_.applicationDomain.getDefinition("cheng2") as Class;
         var _loc8_:Class = _loc2_.applicationDomain.getDefinition("zhadan") as Class;
         STATE_ICON[GamePredef.ST_TRIPLE_TOWN_TOP] = _loc3_;
         STATE_ICON[GamePredef.ST_TRIPLE_TOWN_LEFT] = _loc6_;
         STATE_ICON[GamePredef.ST_TRIPLE_TOWN_BOTTOM] = _loc5_;
         STATE_ICON[GamePredef.ST_TRIPLE_TOWN_RIGHT] = _loc4_;
         STATE_ICON[GamePredef.ST_TRIPLE_TOWN_DOUBLE] = _loc7_;
         STATE_ICON[GamePredef.ST_TRIPLE_TOWN_BOMB] = _loc8_;
      }
      
      public static function hashNov(param1:String) : String
      {
         var _loc2_:String = MD5.hash(param1);
         return GamePredef.SERVER_ADD_RES + ROOT_HASH + _loc2_;
      }
      
      public static function applyGray(param1:DisplayObject) : void
      {
         var _loc2_:Array = new Array();
         _loc2_ = _loc2_.concat([0.3086,0.6094,0.082,0,0]);
         _loc2_ = _loc2_.concat([0.3086,0.6094,0.082,0,0]);
         _loc2_ = _loc2_.concat([0.3086,0.6094,0.082,0,0]);
         _loc2_ = _loc2_.concat([0,0,0,1,0]);
         applyFilter(param1,_loc2_);
      }
      
      public static function onLoaderInit(param1:Event) : void
      {
         var _loc2_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.levelup") as Class;
         var _loc3_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.battle") as Class;
         var _loc4_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.product") as Class;
         var _loc5_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.trade") as Class;
         var _loc6_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.busy") as Class;
         var _loc7_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.watch") as Class;
         var _loc8_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.battlecmd") as Class;
         var _loc9_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("钓鱼状态图标") as Class;
         var _loc10_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("收获") as Class;
         var _loc11_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("采草药") as Class;
         var _loc12_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.star3Vip") as Class;
         var _loc13_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.star4Vip") as Class;
         var _loc14_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.star5Vip") as Class;
         var _loc15_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.star6Vip") as Class;
         var _loc16_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("com.qeedoo.star7Vip") as Class;
         var _loc17_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("冠军") as Class;
         var _loc18_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("亚军") as Class;
         var _loc19_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("季军") as Class;
         var _loc20_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("魔力宝贝") as Class;
         var _loc21_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("状态1红") as Class;
         var _loc22_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("状态4黄") as Class;
         var _loc23_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("状态5蓝") as Class;
         var _loc24_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("状态3") as Class;
         var _loc25_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("圈光线1") as Class;
         var _loc26_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("圈光线1") as Class;
         var _loc27_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("圈光线1") as Class;
         var _loc28_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("圈光线2") as Class;
         var _loc29_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("圈光线3") as Class;
         var _loc30_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("圈5") as Class;
         var _loc31_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("称号特效蝴蝶") as Class;
         var _loc32_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("称号特效爱心") as Class;
         var _loc33_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("称号特效星") as Class;
         var _loc34_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("称号特效蝴蝶深蓝") as Class;
         var _loc35_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("称号特效爱心蓝色") as Class;
         var _loc36_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("称号特效星黄色") as Class;
         var _loc37_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("圈光线1") as Class;
         var _loc38_:Class = _loader.contentLoaderInfo.applicationDomain.getDefinition("PK赛冠军") as Class;
         var _loc39_:Class = ResManager_CROSS_PK_A;
         var _loc40_:Class = ResManager_CROSS_PK_B;
         var _loc41_:Class = ResManager_CROSS_PK_C;
         var _loc42_:Class = ResManager_CROSS_PK_D;
         var _loc43_:Class = ResManager_MOLI2020_1;
         var _loc44_:Class = ResManager_MOLI2020_2;
         var _loc45_:Class = ResManager_MOLI2020_3;
         var _loc46_:Class = ResManager_XCDS_1;
         var _loc47_:Class = ResManager_XCDS_2;
         var _loc48_:Class = ResManager_XCDS_3;
         var _loc49_:Class = ResManager_YSXG_1;
         var _loc50_:Class = ResManager_TXKC_RE;
         var _loc51_:Class = ResManager_QL2101;
         var _loc52_:Class = ResManager_QL2102;
         var _loc53_:Class = ResManager_QL2103;
         var _loc54_:Class = ResManager_XZ202201;
         var _loc55_:Class = ResManager_XZ202207;
         var _loc56_:Class = ResManager_buyer2208;
         var _loc57_:Class = ResManager_buyer2212;
         var _loc58_:Class = ResManager_chunrihuakai;
         var _loc59_:Class = ResManager_tongxintongqu;
         var _loc60_:Class = ResManager_Halloween;
         var _loc61_:Class = ResManager_Halloween1;
         var _loc62_:Class = ResManager_mczdtitle1;
         var _loc63_:Class = ResManager_mczdtitle2;
         var _loc64_:Class = ResManager_mczdtitle3;
         var _loc65_:Class = ResManager_lover1;
         var _loc66_:Class = ResManager_lover2;
         var _loc67_:Class = ResManager_lover3;
         var _loc68_:Class = ResManager_sixiangshouhu;
         var _loc69_:Class = ResManager_mitangzhilian;
         var _loc70_:Class = ResManager_nuanxiangzuiren;
         var _loc71_:Class = ResManager_chaojibianju;
         var _loc72_:Class = ResManager_zuijiabiandao;
         var _loc73_:Class = ResManager_moliqilv;
         var _loc74_:Class = ResManager_xingguangcuican;
         var _loc75_:Class = ResManager_xiuchangjiaodian;
         var _loc76_:Class = ResManager_meiliwutai;
         var _loc77_:Class = ResManager_fengshangzhixing;
         var _loc78_:Class = ResManager_shenshenghuiguang;
         var _loc79_:Class = ResManager_qiquwanjia;
         var _loc80_:Class = ResManager_Magic;
         BATTLE_CMD = _loc8_;
         STATE_ICON[GamePredef.ST_BATTLE] = _loc3_;
         STATE_ICON[GamePredef.ST_WATCH] = _loc7_;
         STATE_ICON[GamePredef.ST_PRODUCT] = _loc4_;
         STATE_ICON[GamePredef.ST_TRADE] = _loc5_;
         STATE_ICON[GamePredef.ST_LEVELUP] = _loc2_;
         STATE_ICON[GamePredef.ST_BUSY] = _loc6_;
         STATE_ICON[GamePredef.ST_VIP3] = _loc12_;
         STATE_ICON[GamePredef.ST_VIP4] = _loc13_;
         STATE_ICON[GamePredef.ST_VIP5] = _loc14_;
         STATE_ICON[GamePredef.ST_VIP6] = _loc15_;
         STATE_ICON[GamePredef.ST_VIP7] = _loc16_;
         STATE_ICON[GamePredef.ST_F1] = _loc17_;
         STATE_ICON[GamePredef.ST_F2] = _loc18_;
         STATE_ICON[GamePredef.ST_F3] = _loc19_;
         STATE_ICON[GamePredef.ST_F4] = _loc20_;
         STATE_ICON[GamePredef.ST_FISHING] = _loc9_;
         STATE_ICON[GamePredef.ST_HARVEST] = _loc10_;
         STATE_ICON[GamePredef.ST_HERB] = _loc11_;
         STATE_ICON[GamePredef.ST_DF1] = _loc21_;
         STATE_ICON[GamePredef.ST_DF2] = _loc22_;
         STATE_ICON[GamePredef.ST_DF3] = _loc23_;
         STATE_ICON[GamePredef.ST_GATHER1] = _loc11_;
         STATE_ICON[GamePredef.ST_GATHER2] = _loc4_;
         STATE_ICON[GamePredef.ST_RICH] = _loc24_;
         STATE_ICON[GamePredef.ST_LIGHT_WUYO] = _loc25_;
         STATE_ICON[GamePredef.ST_MOLI_SCHOLAR] = _loc26_;
         STATE_ICON[GamePredef.ST_REVENGE_SOUL] = _loc27_;
         STATE_ICON[GamePredef.ST_PK_WINNER] = _loc38_;
         STATE_ICON[GamePredef.ST_GODDESS_BLESS] = _loc28_;
         STATE_ICON[GamePredef.ST_UNDYING_BIRD] = _loc30_;
         STATE_ICON[GamePredef.ST_ANGRY_SOUL] = _loc29_;
         STATE_ICON[GamePredef.ST_MOLI_BABY_1] = _loc31_;
         STATE_ICON[GamePredef.ST_MOLI_BABY_2] = _loc32_;
         STATE_ICON[GamePredef.ST_MOLI_BABY_3] = _loc33_;
         STATE_ICON[GamePredef.ST_MOLI_MAN_1] = _loc34_;
         STATE_ICON[GamePredef.ST_MOLI_MAN_2] = _loc35_;
         STATE_ICON[GamePredef.ST_MOLI_MAN_3] = _loc36_;
         STATE_ICON[GamePredef.ST_ACADEMIC_SUCCESS] = _loc37_;
         STATE_ICON[GamePredef.ST_CROSS_PK_A] = _loc39_;
         STATE_ICON[GamePredef.ST_CROSS_PK_B] = _loc40_;
         STATE_ICON[GamePredef.ST_CROSS_PK_C] = _loc41_;
         STATE_ICON[GamePredef.ST_CROSS_PK_D] = _loc42_;
         STATE_ICON[GamePredef.ST_MOLI_2020_1] = _loc43_;
         STATE_ICON[GamePredef.ST_MOLI_2020_2] = _loc44_;
         STATE_ICON[GamePredef.ST_MOLI_2020_3] = _loc45_;
         STATE_ICON[GamePredef.ST_XCDS_1] = _loc46_;
         STATE_ICON[GamePredef.ST_XCDS_2] = _loc47_;
         STATE_ICON[GamePredef.ST_XCDS_3] = _loc48_;
         STATE_ICON[GamePredef.ST_YSXG_1] = _loc49_;
         STATE_ICON[GamePredef.ST_ML_12] = _loc50_;
         STATE_ICON[GamePredef.ST_TXKC] = _loc50_;
         STATE_ICON[GamePredef.ST_QL_2101] = _loc51_;
         STATE_ICON[GamePredef.ST_QL_2102] = _loc52_;
         STATE_ICON[GamePredef.ST_QL_2103] = _loc53_;
         STATE_ICON[GamePredef.ST_XZ_2201] = _loc54_;
         STATE_ICON[GamePredef.ST_XZ_2207] = _loc55_;
         STATE_ICON[GamePredef.ST_BUYER_2208] = _loc56_;
         STATE_ICON[GamePredef.ST_BUYER_2212] = _loc57_;
         STATE_ICON[GamePredef.ST_CHUNRIHUAKAI] = _loc58_;
         STATE_ICON[GamePredef.ST_TONGXINTONGQU] = _loc59_;
         STATE_ICON[GamePredef.ST_WSJ2301] = _loc60_;
         STATE_ICON[GamePredef.ST_WSJ2302] = _loc61_;
         STATE_ICON[GamePredef.ST_MCZDTITLE1] = _loc62_;
         STATE_ICON[GamePredef.ST_MCZDTITLE2] = _loc63_;
         STATE_ICON[GamePredef.ST_MCZDTITLE3] = _loc64_;
         STATE_ICON[GamePredef.ST_LOVER20241] = _loc66_;
         STATE_ICON[GamePredef.ST_LOVER20242] = _loc65_;
         STATE_ICON[GamePredef.ST_LOVER20243] = _loc67_;
         STATE_ICON[GamePredef.ST_SIXIANGSHOUHU] = _loc68_;
         STATE_ICON[GamePredef.ST_MITANGZHILIAN] = _loc69_;
         STATE_ICON[GamePredef.ST_NUANXIANGZUIREN] = _loc70_;
         STATE_ICON[GamePredef.ST_CHAOJIBIANJU] = _loc71_;
         STATE_ICON[GamePredef.ST_ZUIJIABIANDAO] = _loc72_;
         STATE_ICON[GamePredef.ST_MOLIQILV] = _loc73_;
         STATE_ICON[GamePredef.ST_XINGGUANGCUICAN] = _loc74_;
         STATE_ICON[GamePredef.ST_XIUCHANGJIAODIAN] = _loc75_;
         STATE_ICON[GamePredef.ST_MEILIWUTAI] = _loc76_;
         STATE_ICON[GamePredef.ST_FENGSHANGZHIXING] = _loc77_;
         STATE_ICON[GamePredef.ST_SHENSHENGHUIGUANG] = _loc78_;
         STATE_ICON[GamePredef.ST_QIQUWANJIA] = _loc79_;
         STATE_ICON[GamePredef.ST_MOLIZHUIGUANG] = _loc80_;
      }
      
      public static function loadTxtFields() : void
      {
         var hash:String;
         var swfLoader:SWFLoader = null;
         var onTxtDataInit:Function = null;
         var onIO_ERROR:Function = null;
         var onSECURITY_ERROR:Function = null;
         if(GameData.d[29][1].description != "")
         {
            return;
         }
         trace("开始加载文本数据.....................................");
         hash = ResManager.hash(GamePredef.RES_CHFIELDS);
         swfLoader = new SWFLoader();
         onTxtDataInit = function(param1:Event):void
         {
            var appDomain:ApplicationDomain = null;
            var DataClazz:Class = null;
            var chData:Object = null;
            var errArr:Array = null;
            var _core:Core = null;
            var nDic:Object = null;
            var i:* = undefined;
            var npc:Npc = null;
            var e:Event = param1;
            swfLoader.removeEventListener(Event.INIT,onTxtDataInit);
            try
            {
               appDomain = swfLoader.loaderContext.applicationDomain;
               DataClazz = appDomain.getDefinition("ChFields") as Class;
               chData = new DataClazz();
               errArr = chData.setData(GameData.d) as Array;
               _core = Core.getInstance();
               nDic = _core.view.nDict;
               for(i in nDic)
               {
                  npc = nDic[i].gameObject as Npc;
                  if(Boolean(npc) && Boolean(npc.nid))
                  {
                     npc.onServiceText = GameData.d[GamePredef.TBL_NPC][npc.nid].onServiceText;
                  }
               }
            }
            catch(e:Object)
            {
            }
            loadMagicTotom();
         };
         onIO_ERROR = function(param1:Event):void
         {
            swfLoader.removeEventListener(IOErrorEvent.IO_ERROR,onIO_ERROR);
            loadMagicTotom();
         };
         onSECURITY_ERROR = function(param1:Event):void
         {
            swfLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSECURITY_ERROR);
            loadMagicTotom();
         };
         swfLoader.addEventListener(Event.INIT,onTxtDataInit);
         swfLoader.addEventListener(IOErrorEvent.IO_ERROR,onIO_ERROR);
         swfLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSECURITY_ERROR);
         swfLoader.load(hash);
      }
      
      [Bindable(event="propertyChange")]
      public static function get meteorBG() : Class
      {
         return ResManager._445967631meteorBG;
      }
      
      public static function set TOTEM_TREASURE(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._1606083981TOTEM_TREASURE;
         if(_loc2_ !== param1)
         {
            ResManager._1606083981TOTEM_TREASURE = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"TOTEM_TREASURE",_loc2_,param1));
            }
         }
      }
      
      public static function set TOTEM_PET_FUNC1(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._1276666767TOTEM_PET_FUNC1;
         if(_loc2_ !== param1)
         {
            ResManager._1276666767TOTEM_PET_FUNC1 = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"TOTEM_PET_FUNC1",_loc2_,param1));
            }
         }
      }
      
      public static function set TOTEM_PET_FUNC2(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._1276666768TOTEM_PET_FUNC2;
         if(_loc2_ !== param1)
         {
            ResManager._1276666768TOTEM_PET_FUNC2 = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"TOTEM_PET_FUNC2",_loc2_,param1));
            }
         }
      }
      
      public static function set TOTEM_PET_EQUIP(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._1275631026TOTEM_PET_EQUIP;
         if(_loc2_ !== param1)
         {
            ResManager._1275631026TOTEM_PET_EQUIP = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"TOTEM_PET_EQUIP",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get TOTEM_PET_FUNC1() : Class
      {
         return ResManager._1276666767TOTEM_PET_FUNC1;
      }
      
      [Bindable(event="propertyChange")]
      public static function get TOTEM_PET_FUNC2() : Class
      {
         return ResManager._1276666768TOTEM_PET_FUNC2;
      }
      
      public static function getResUrl(param1:Number) : String
      {
         return hash(getResUrlNoHash(param1));
      }
      
      public static function getC(param1:String) : Object
      {
         return _CDict[param1];
      }
      
      public static function addC(param1:String, param2:Object) : void
      {
      }
      
      public static function set paperCraneBG(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._169590242paperCraneBG;
         if(_loc2_ !== param1)
         {
            ResManager._169590242paperCraneBG = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"paperCraneBG",_loc2_,param1));
            }
         }
      }
      
      public static function set TOTEM_CHARACTER(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._122792981TOTEM_CHARACTER;
         if(_loc2_ !== param1)
         {
            ResManager._122792981TOTEM_CHARACTER = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"TOTEM_CHARACTER",_loc2_,param1));
            }
         }
      }
      
      public static function set sincereBG(param1:Class) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = ResManager._1615127566sincereBG;
         if(_loc2_ !== param1)
         {
            ResManager._1615127566sincereBG = param1;
            _loc3_ = ResManager.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(ResManager,"sincereBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get TOTEM_CHARACTER() : Class
      {
         return ResManager._122792981TOTEM_CHARACTER;
      }
      
      [Bindable(event="propertyChange")]
      public static function get sincereBG() : Class
      {
         return ResManager._1615127566sincereBG;
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(param1);
      }
   }
}

