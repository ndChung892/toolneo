package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BossDailyRect;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
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
   import mx.controls.RadioButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BossDailyPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var total_num:int = 10;
      
      private var _3586r4:RadioButton;
      
      private var _3088b2:BossDailyRect;
      
      private var _3091b5:BossDailyRect;
      
      private var selectIndex:int = -1;
      
      private var _3585r3:RadioButton;
      
      public var _BossDailyPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3087b1:BossDailyRect;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3589r7:RadioButton;
      
      private var _3090b4:BossDailyRect;
      
      private var _55427583leftNum:Label;
      
      private var flag:Object;
      
      private var _3584r2:RadioButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _3588r6:RadioButton;
      
      private var _3086b0:BossDailyRect;
      
      private var ITEM_COUNT_PER_PAGE:int = 8;
      
      mx_internal var _watchers:Array = [];
      
      public var _BossDailyPanel_Image1:Image;
      
      public var _BossDailyPanel_Image2:Image;
      
      private var _607339634pageSelector:PageSelector;
      
      private var _3093b7:BossDailyRect;
      
      private var _1718255140leftNumC:Canvas;
      
      private var _3583r1:RadioButton;
      
      private var _3587r5:RadioButton;
      
      private var _3089b3:BossDailyRect;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var bosses:Array = new Array();
      
      private var BOSS_DAILY_CONFIG_WILD_LIST:Array = [2262,2263,2264,2269,2270,2271,2272,2273,2274,2275,2468];
      
      private var _3590r8:RadioButton;
      
      private var BOSS_DAILY_CONFIG:Object = BOSS_DAILY_CONFIG = {
         2204:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý"
         },
         2205:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý"
         },
         2206:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý"
         },
         2207:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý"
         },
         2208:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý"
         },
         2209:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý"
         },
         2210:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý"
         },
         2211:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý"
         },
         2212:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý"
         },
         2213:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý"
         },
         2214:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý"
         },
         2215:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý"
         },
         2216:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý"
         },
         2217:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý"
         },
         2218:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2219:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2220:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2221:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2222:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2223:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2224:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2225:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2226:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2227:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2228:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2229:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2230:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2231:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2232:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2233:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2234:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2235:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2236:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2237:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2238:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2239:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2240:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2241:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2242:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2243:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2244:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2245:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2246:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2247:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2248:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2249:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2250:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2251:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2252:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2253:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2254:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2255:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2256:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2257:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2258:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2259:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2260:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2261:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item quý\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2262:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2263:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":0.7,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2264:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2265:{
            "type":2,
            "isSuper":1,
            "step":3 * 24 * 60 * 60 * 1000,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2266:{
            "type":2,
            "isSuper":1,
            "step":3 * 24 * 60 * 60 * 1000,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2267:{
            "type":2,
            "isSuper":1,
            "step":3 * 24 * 60 * 60 * 1000,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2268:{
            "type":2,
            "isSuper":1,
            "step":3 * 24 * 60 * 60 * 1000,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2269:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Item quý, Thần khí phụ, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2270:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2271:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2272:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Item quý, Thần khí phụ, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2273:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Item quý, Thần khí phụ, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2274:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Item quý, Thần khí phụ, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2275:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Có cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item quý, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2455:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item hiếm\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2456:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item hiếm\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2457:{
            "type":1,
            "isSuper":0,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item hiếm\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2458:{
            "type":1,
            "isSuper":0,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Cơ hội nhận:\n    Nguyên liệu, Lông vũ, Thần khí phụ, Item hiếm\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2468:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item hiếm, Cánh Ánh Sáng\n    Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2567:{
            "type":1,
            "isSuper":1,
            "num":4,
            "s":1,
            "x":1,
            "y":0,
            "award":"Cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item hiếm, Cánh Ánh Sáng \n Bụi Vô Hạn, Bụi Ma Pháp"
         },
         2568:{
            "type":1,
            "isSuper":1,
            "num":2,
            "s":1,
            "x":1,
            "y":0,
            "award":"Cơ hội nhận:\n    Nguyên liệu, Bảo thạch, Item hiếm, Cánh Ánh Sáng \nBụi Vô Hạn, Bụi Ma Pháp"
         }
      };
      
      private var _3092b6:BossDailyRect;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":660,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_BossDailyPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":36,
                        "width":640,
                        "height":445,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_BossDailyPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":1,
                                 "y":1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"leftNumC",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":38,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_BossDailyPanel_Image2"
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"leftNum",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":158,
                                          "y":2
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":41,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BossDailyRect,
                                    "id":"b4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":180
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BossDailyRect,
                                    "id":"b5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":125,
                                          "y":180
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BossDailyRect,
                                    "id":"b6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":250,
                                          "y":180
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BossDailyRect,
                                    "id":"b7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":375,
                                          "y":180
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BossDailyRect,
                                    "id":"b0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BossDailyRect,
                                    "id":"b1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":125,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BossDailyRect,
                                    "id":"b2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":250,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BossDailyRect,
                                    "id":"b3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":375,
                                          "y":0
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"x":200};
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":500,
                                 "y":30,
                                 "width":135,
                                 "height":435,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r0",
                                    "events":{"click":"__r0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":48,
                                          "selected":true,
                                          "groupName":"select"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r1",
                                    "events":{"click":"__r1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":78,
                                          "groupName":"select"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r2",
                                    "events":{"click":"__r2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":108,
                                          "groupName":"select"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r3",
                                    "events":{"click":"__r3_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":138,
                                          "groupName":"select"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r4",
                                    "events":{"click":"__r4_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":168,
                                          "groupName":"select"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r5",
                                    "events":{"click":"__r5_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":198,
                                          "groupName":"select"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r6",
                                    "events":{"click":"__r6_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":228,
                                          "groupName":"select"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r7",
                                    "events":{"click":"__r7_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":258,
                                          "groupName":"select"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"r8",
                                    "events":{"click":"__r8_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":12,
                                          "y":288,
                                          "groupName":"select"
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _3582r0:RadioButton;
      
      public function BossDailyPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 660;
         this.height = 500;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___BossDailyPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BossDailyPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get r2() : RadioButton
      {
         return this._3584r2;
      }
      
      public function set r0(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3582r0;
         if(_loc2_ !== param1)
         {
            this._3582r0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r0",_loc2_,param1));
         }
      }
      
      public function set r4(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3586r4;
         if(_loc2_ !== param1)
         {
            this._3586r4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r0() : RadioButton
      {
         return this._3582r0;
      }
      
      [Bindable(event="propertyChange")]
      public function get r1() : RadioButton
      {
         return this._3583r1;
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get r3() : RadioButton
      {
         return this._3585r3;
      }
      
      public function set r3(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3585r3;
         if(_loc2_ !== param1)
         {
            this._3585r3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r6() : RadioButton
      {
         return this._3588r6;
      }
      
      public function set r1(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3583r1;
         if(_loc2_ !== param1)
         {
            this._3583r1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get b0() : BossDailyRect
      {
         return this._3086b0;
      }
      
      [Bindable(event="propertyChange")]
      public function get b1() : BossDailyRect
      {
         return this._3087b1;
      }
      
      [Bindable(event="propertyChange")]
      public function get b3() : BossDailyRect
      {
         return this._3089b3;
      }
      
      [Bindable(event="propertyChange")]
      public function get b4() : BossDailyRect
      {
         return this._3090b4;
      }
      
      [Bindable(event="propertyChange")]
      public function get b5() : BossDailyRect
      {
         return this._3091b5;
      }
      
      [Bindable(event="propertyChange")]
      public function get b6() : BossDailyRect
      {
         return this._3092b6;
      }
      
      [Bindable(event="propertyChange")]
      public function get b7() : BossDailyRect
      {
         return this._3093b7;
      }
      
      [Bindable(event="propertyChange")]
      public function get b2() : BossDailyRect
      {
         return this._3088b2;
      }
      
      public function set r7(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3589r7;
         if(_loc2_ !== param1)
         {
            this._3589r7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r5() : RadioButton
      {
         return this._3587r5;
      }
      
      public function set b0(param1:BossDailyRect) : void
      {
         var _loc2_:Object = this._3086b0;
         if(_loc2_ !== param1)
         {
            this._3086b0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"b0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r7() : RadioButton
      {
         return this._3589r7;
      }
      
      public function set b1(param1:BossDailyRect) : void
      {
         var _loc2_:Object = this._3087b1;
         if(_loc2_ !== param1)
         {
            this._3087b1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"b1",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.setNextBtnStyle("bossDailyButton");
         pageSelector.setLastBtnStyle("bossDailyButton");
         pageSelector.setMidTextStyle("PageIndicator1");
      }
      
      public function set b2(param1:BossDailyRect) : void
      {
         var _loc2_:Object = this._3088b2;
         if(_loc2_ !== param1)
         {
            this._3088b2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"b2",_loc2_,param1));
         }
      }
      
      public function set b3(param1:BossDailyRect) : void
      {
         var _loc2_:Object = this._3089b3;
         if(_loc2_ !== param1)
         {
            this._3089b3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"b3",_loc2_,param1));
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      public function set b4(param1:BossDailyRect) : void
      {
         var _loc2_:Object = this._3090b4;
         if(_loc2_ !== param1)
         {
            this._3090b4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"b4",_loc2_,param1));
         }
      }
      
      public function set b5(param1:BossDailyRect) : void
      {
         var _loc2_:Object = this._3091b5;
         if(_loc2_ !== param1)
         {
            this._3091b5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"b5",_loc2_,param1));
         }
      }
      
      public function __r1_click(param1:MouseEvent) : void
      {
         selectChange(2);
      }
      
      public function set b7(param1:BossDailyRect) : void
      {
         var _loc2_:Object = this._3093b7;
         if(_loc2_ !== param1)
         {
            this._3093b7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"b7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leftNumC() : Canvas
      {
         return this._1718255140leftNumC;
      }
      
      public function set r2(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3584r2;
         if(_loc2_ !== param1)
         {
            this._3584r2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r2",_loc2_,param1));
         }
      }
      
      public function set r8(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3590r8;
         if(_loc2_ !== param1)
         {
            this._3590r8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r8",_loc2_,param1));
         }
      }
      
      public function set b6(param1:BossDailyRect) : void
      {
         var _loc2_:Object = this._3092b6;
         if(_loc2_ !== param1)
         {
            this._3092b6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"b6",_loc2_,param1));
         }
      }
      
      public function __r5_click(param1:MouseEvent) : void
      {
         selectChange(6);
      }
      
      public function set r6(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3588r6;
         if(_loc2_ !== param1)
         {
            this._3588r6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r4() : RadioButton
      {
         return this._3586r4;
      }
      
      private function getVisibleBossByAward() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         bosses.length = 0;
         var _loc1_:int = _core.player.level;
         for(_loc2_ in BOSS_DAILY_CONFIG)
         {
            _loc3_ = BOSS_DAILY_CONFIG[_loc2_];
            _loc4_ = GameData.d[GamePredef.TBL_NPC][_loc2_];
            if(_loc1_ - int(_loc4_.lv) <= 10)
            {
               bosses.push({"id":_loc2_});
            }
         }
         bosses.sortOn("id",Array.NUMERIC);
      }
      
      public function onGetData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         selectIndex = -1;
         r0.selected = true;
         var _loc2_:int = 1;
         while(_loc2_ < 9)
         {
            this["r" + _loc2_].selected = false;
            _loc2_++;
         }
         flag = param1["data"];
         total_num = int(param1["total"]);
         flag["now"] = param1["t"];
         var _loc3_:int = int(param1["total"]) - int(flag["n"]);
         leftNum.text = _loc3_ < 0 ? "0" : _loc3_.toString();
         selectChange(1);
         visible = true;
      }
      
      public function set leftNumC(param1:Canvas) : void
      {
         var _loc2_:Object = this._1718255140leftNumC;
         if(_loc2_ !== param1)
         {
            this._1718255140leftNumC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftNumC",_loc2_,param1));
         }
      }
      
      public function set r5(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3587r5;
         if(_loc2_ !== param1)
         {
            this._3587r5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r8() : RadioButton
      {
         return this._3590r8;
      }
      
      private function getVisibleBossByLevel(param1:int, param2:int) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         bosses.length = 0;
         for(_loc3_ in BOSS_DAILY_CONFIG)
         {
            _loc4_ = BOSS_DAILY_CONFIG[_loc3_];
            _loc5_ = GameData.d[GamePredef.TBL_NPC][_loc3_];
            if(int(_loc5_.lv) >= param1 && int(_loc5_.lv) <= param2)
            {
               bosses.push({"id":_loc3_});
            }
         }
         bosses.sortOn("id",Array.NUMERIC);
      }
      
      public function __r6_click(param1:MouseEvent) : void
      {
         selectChange(7);
      }
      
      public function __r2_click(param1:MouseEvent) : void
      {
         selectChange(3);
      }
      
      private function _BossDailyPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BossDailyPanel_BasicTitleCanvas1.text = param1;
         },"_BossDailyPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000490);
         },function(param1:Object):void
         {
            _BossDailyPanel_Image1.source = param1;
         },"_BossDailyPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000491);
         },function(param1:Object):void
         {
            _BossDailyPanel_Image2.source = param1;
         },"_BossDailyPanel_Image2.source");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            leftNum.filters = param1;
         },"leftNum.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r0.label = param1;
         },"r0.label");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r0.filters = param1;
         },"r0.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r1.label = param1;
         },"r1.label");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r1.filters = param1;
         },"r1.filters");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r2.label = param1;
         },"r2.label");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r2.filters = param1;
         },"r2.filters");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r3.label = param1;
         },"r3.label");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r3.filters = param1;
         },"r3.filters");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r4.label = param1;
         },"r4.label");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r4.filters = param1;
         },"r4.filters");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r5.label = param1;
         },"r5.label");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r5.filters = param1;
         },"r5.filters");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r6.label = param1;
         },"r6.label");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r6.filters = param1;
         },"r6.filters");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r7.label = param1;
         },"r7.label");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r7.filters = param1;
         },"r7.filters");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BOSS_DAILY_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            r8.label = param1;
         },"r8.label");
         result[20] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            r8.filters = param1;
         },"r8.filters");
         result[21] = binding;
         return result;
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            this["b" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BossDailyPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BossDailyPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_BossDailyPanelWatcherSetupUtil");
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
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      private function getVisibleBossByBoss() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         bosses.length = 0;
         for(_loc1_ in BOSS_DAILY_CONFIG)
         {
            _loc2_ = BOSS_DAILY_CONFIG[_loc1_];
            if(_loc2_["isSuper"] == 1)
            {
               bosses.push({"id":_loc1_});
            }
         }
         bosses.sortOn("id",Array.NUMERIC);
      }
      
      public function __r7_click(param1:MouseEvent) : void
      {
         selectChange(8);
      }
      
      public function __r3_click(param1:MouseEvent) : void
      {
         selectChange(4);
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < ITEM_COUNT_PER_PAGE)
         {
            _loc4_ = bosses[_loc3_ + param1];
            if(_loc4_)
            {
               this["b" + _loc3_].refresh(_loc4_,flag,BOSS_DAILY_CONFIG[_loc4_["id"]]);
            }
            else
            {
               this["b" + _loc3_].clean();
            }
            _loc3_++;
         }
      }
      
      private function selectChange(param1:int) : void
      {
         if(selectIndex == param1)
         {
            return;
         }
         selectIndex = param1;
         if(param1 == 1)
         {
            getVisibleBossByAward();
         }
         else if(param1 == 2)
         {
            getVisibleBossByBoss();
         }
         else if(param1 == 3)
         {
            getVisibleBossByLevel(0,49);
         }
         else if(param1 == 4)
         {
            getVisibleBossByLevel(50,79);
         }
         else if(param1 == 5)
         {
            getVisibleBossByLevel(80,99);
         }
         else if(param1 == 6)
         {
            getVisibleBossByLevel(100,119);
         }
         else if(param1 == 7)
         {
            getVisibleBossByLevel(120,139);
         }
         else if(param1 == 8)
         {
            getVisibleBossByLevel(140,150);
         }
         else if(param1 == 9)
         {
            getVisibleBossByLevel(151,170);
         }
         onPageChanged(0,bosses.length % ITEM_COUNT_PER_PAGE);
         pageSelector.initPageSeletor(bosses.length,ITEM_COUNT_PER_PAGE);
      }
      
      public function ___BossDailyPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("bossDailyGetData",new Responder(onGetData));
      }
      
      public function __r0_click(param1:MouseEvent) : void
      {
         selectChange(1);
      }
      
      private function _BossDailyPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BOSS_DAILY_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220000490);
         _loc1_ = ResManager.getIconUrl(4130220000491);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[5];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[6];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[7];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[8];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[9];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[10];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[11];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[12];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BOSS_DAILY_PANEL[19];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      public function __r4_click(param1:MouseEvent) : void
      {
         selectChange(5);
      }
      
      public function __r8_click(param1:MouseEvent) : void
      {
         selectChange(9);
      }
      
      public function set leftNum(param1:Label) : void
      {
         var _loc2_:Object = this._55427583leftNum;
         if(_loc2_ !== param1)
         {
            this._55427583leftNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leftNum() : Label
      {
         return this._55427583leftNum;
      }
   }
}

