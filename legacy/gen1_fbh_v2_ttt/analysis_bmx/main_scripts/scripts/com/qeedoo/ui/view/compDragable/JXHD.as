package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.LinkEventUtil;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.JXHDAwardItem;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.LinkButton;
   import mx.controls.List;
   import mx.controls.Text;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class JXHD extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _JXHD_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _567321895content2:Text;
      
      public var _JXHD_RoundedLabel4:RoundedLabel;
      
      private var _1793702779datetime:RoundedLabel;
      
      private var _1064741693pointnoticeDetailBtn:LinkButton;
      
      public var _JXHD_RoundedLabel3:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _PointNoticeDetailText:*;
      
      private var _211967513gotobtn:Button;
      
      private var _nowPanel:*;
      
      private var _1860721589suitTree:List;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _351979078itemListBox:VBox;
      
      private var _nowGo:*;
      
      private var JXHDICONLIST:* = {
         "LimitTimeShop":{"n":"xianshiqianggou"},
         "xcds":{"n":"xcds"},
         "mczd":{"n":"mczd"},
         "Gailv":{"n":"gailvtisheng"},
         "Goldman":{"n":"jingzishangreng"},
         "MonthWelfare":{"n":"licaifanhuan"},
         "SystemShopDiscount":{"n":"shangdiandazhe"},
         "ConsumeAward":{"n":"xiaofeileiji"},
         "Wawagame":{"n":"wawaji"},
         "PointAward":{"n":"duihuanhuodong"},
         "ComboShop":{"n":"rqzh"},
         "JewelRemove":{"n":"baoshizhaichu"},
         "Juhuasuan":{"n":"srdg"},
         "Treasurebowl":{"n":"jbp"},
         "VipShop":{"n":"zssc"},
         "Dailysignin":{"n":"xsss"},
         "Happyline":{"n":"yxq"},
         "PointNotice":{"n":"czth"},
         "dmbk":{"n":"dmbk"},
         "tkyyh":{"n":"tkyyh"},
         "asi":{"n":"asi"}
      };
      
      private var goldManAList:* = [2839,4824,3961,3382,3380,4822,4873,3609,4030,3395,3396,3397,3398,3394,4991,4994,4990,4993,4989,4992,4919,4918,5230,5231,5229,6199,3900];
      
      private var _3197470hdac:ArrayCollection = new ArrayCollection();
      
      private var _567321896content1:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":689,
               "height":474,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_JXHD_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasJXHD1",
                        "mouseEnabled":false,
                        "percentHeight":100,
                        "percentWidth":100,
                        "y":32,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "x":1,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "500";
                              this.top = "10";
                              this.bottom = "16";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"suitTree",
                                    "events":{
                                       "itemClick":"__suitTree_itemClick",
                                       "mouseDown":"__suitTree_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.left = "4";
                                       this.top = "7";
                                       this.bottom = "4";
                                       this.right = "4";
                                       this.selectionColor = 5458828;
                                       this.rollOverColor = 11775705;
                                       this.useRollOver = false;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"itemRenderer":_JXHD_ClassFactory1_c()};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasJXHD2",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "height":416,
                                 "y":10,
                                 "width":489,
                                 "x":189,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"title",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 24;
                                       this.color = 16777215;
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":24,
                                          "text":"标题"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"datetime",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "30";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":67,
                                          "text":"时间:"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_JXHD_RoundedLabel3",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "30";
                                       this.fontSize = 12;
                                       this.fontWeight = "bold";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":95};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_JXHD_RoundedLabel4",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "30";
                                       this.fontSize = 12;
                                       this.fontWeight = "bold";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":164};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"content1",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "44";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":118,
                                          "text":"内容1",
                                          "width":418,
                                          "height":44
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"content2",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "44";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":192,
                                          "text":"内容2",
                                          "width":418,
                                          "height":158
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"gotobtn",
                                    "events":{"click":"__gotobtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":358,
                                          "width":121,
                                          "height":39,
                                          "styleName":"BtnJXHDGOTO"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"itemListBox",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "44";
                                       this.verticalGap = 1;
                                       this.paddingLeft = 10;
                                       this.paddingTop = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "y":192,
                                          "width":418,
                                          "height":158
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"pointnoticeDetailBtn",
                                    "events":{"click":"__pointnoticeDetailBtn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":390,
                                          "y":165,
                                          "visible":false
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
      
      private var _110371416title:RoundedLabel;
      
      private var JXHDCHECKLIST:* = {
         "LimitTimeShop":{
            "lv":"0",
            "r":"Ưu đãi mua sắm",
            "u":"550",
            "n":"Mua sắm ưu đãi",
            "d":"Gói quà giá trị mở bán trong thời gian giới hạn, số lượng có hạn, nhanh tay sở hữu!"
         },
         "xcds":{
            "lv":"50",
            "r":"xcds",
            "u":"989",
            "n":"Đại tiêu trừ",
            "d":"Loại bỏ các khối để giành điểm sự kiện, đổi quà phong phú và cạnh tranh giải thưởng xếp hạng!"
         },
         "mczd":{
            "lv":"35",
            "r":"mczd",
            "u":"996",
            "n":"Đấu pet",
            "d":"Thuần thú thần mạnh mẽ, sắp xếp chiến lược đội hình, đánh bại đối thủ và trở thành bậc thầy đấu trí!"
         },
         "Gailv":{
            "lv":"0",
            "r":"Tăng tỉ lệ giới hạn",
            "u":"-1",
            "n":"Tăng tỉ lệ",
            "d":"Tỷ lệ tăng giới hạn thời gian, cơ hội không thể bỏ lỡ!"
         },
         "Goldman":{
            "lv":"0",
            "r":"Goldman",
            "u":"-1",
            "n":"Thương nhân vàng",
            "d":"Thương nhân vàng đã xuất hiện tại Đông Huyền Thành, mau đến Đông Huyền Thành tìm ông ấy để mua vật phẩm quý hiếm giá rẻ!"
         },
         "MonthWelfare":{
            "lv":"0",
            "r":"Hoàn trả vàng và phần thưởng giá trị",
            "u":"841",
            "n":"Hoàn trả tài chính",
            "d":"Dùng điểm để đầu tư vào các gói tài chính, nhận hoàn trả vàng và phần thưởng phong phú!"
         },
         "SystemShopDiscount":{
            "lv":"0",
            "r":"Bán giảm giá nhiều vật phẩm",
            "u":"550",
            "n":"Giảm giá shop",
            "d":"Nhiều vật phẩm được chọn bán giảm giá tại cửa hàng, hãy nhanh ghé xem!"
         },
         "ConsumeAward":{
            "lv":"0",
            "r":"ConsumeAward",
            "u":"824",
            "n":"Tích lũy tiêu phí",
            "d":"Tiêu vàng và điểm để nhận thưởng thêm phong phú, tiêu càng nhiều thưởng càng lớn, nhanh chóng tiêu phí ngay!"
         },
         "Wawagame":{
            "lv":"0",
            "r":"Wawagame",
            "u":"933",
            "n":"Máy gắp thú",
            "d":"Trải nghiệm cảm giác hồi hộp của máy gắp thú và nhận quà tặng đặc biệt!"
         },
         "PointAward":{
            "lv":"0",
            "r":"PointAward",
            "u":"824",
            "n":"Sự kiện đổi",
            "d":"Đổi một lần đạt đủ số điểm nhất định sẽ nhận được quà tặng tương ứng, nhanh chọn quà theo ý thích của bạn nhé!"
         },
         "ComboShop":{
            "lv":"0",
            "r":"ComboShop",
            "u":"847",
            "n":"Sao lấp lánh",
            "d":"Mua combo quà tặng phổ biến với giá siêu ưu đãi, hãy nhanh chọn gói combo yêu thích nhé!"
         },
         "JewelRemove":{
            "lv":"0",
            "r":"Giảm 30% gỡ bảo thạch",
            "u":"460",
            "n":"Giảm 30% khi gỡ bảo thạch",
            "d":"Trong thời gian diễn ra sự kiện, gỡ bảo thạch sẽ được giảm giá!！"
         },
         "Juhuasuan":{
            "lv":"0",
            "r":"Juhuasuan",
            "u":"938",
            "n":"Đặt hàng",
            "d":"Đặt mua nhiều đặc quyền, nhận quà giới hạn thời gian, mua một lần nhận phúc lợi trong 10 ngày!"
         },
         "Treasurebowl":{
            "lv":"0",
            "r":"Treasurebowl",
            "u":"906",
            "n":"Đoạt bảo hộp",
            "d":"Nhiều sản phẩm giảm giá bán giới hạn, làm mới liên tục với nhiều bất ngờ!"
         },
         "VipShop":{
            "lv":"0",
            "r":"VipShop",
            "u":"855",
            "n":"Shop kim cương",
            "d":"Nhiều gói quà giới hạn thời gian, sản phẩm siêu giá trị với ưu đãi đặc biệt!"
         },
         "Dailysignin":{
            "lv":"0",
            "r":"Phần thưởng hoàn tiền cao, bùng nổ nhiều phần thưởng",
            "u":"967",
            "n":"Điểm danh nhận quà",
            "d":"Đăng nhập mỗi ngày nhận thưởng lớn, nạp đổi nhận hoàn tiền cao!"
         },
         "Happyline":{
            "lv":"0",
            "r":"Happyline",
            "u":"959",
            "n":"Niềm vui kết nối",
            "d":"Thắp sáng các con số, tạo kết nối, nhận nhiều phần thưởng!"
         },
         "PointNotice":{
            "lv":"0",
            "r":"PointNotice",
            "u":"988",
            "n":"Tích lũy nạp",
            "d":"Nạp tích lũy nhận quà giá trị, phần thưởng phong phú chờ bạn nhận!"
         },
         "dmbk":{
            "lv":"0",
            "r":"dmbk",
            "u":"-100",
            "n":"Truy tìm kho báu",
            "d":"Một điều tra viên thần bí xuất hiện tại Hư Không Mạc. Hoàn thành phụ bản giới hạn thời gian “Kho Báu Đại Mạc [Sự kiện] có thể nhận vật phẩm  sự kiện đặc biệt, và đổi thưởng phong phú tại chỗ của điều tra viên."
         },
         "tkyyh":{
            "lv":"50",
            "r":"tkyyh",
            "u":"-1",
            "n":"Lễ hội công viên trên không",
            "d":"Người chơi cấp 50 trở lên có thể lập đội đến Đại Sứ Quảng Bá Hội Vui Chơi tại Tinh Linh Thành để tham gia sự kiện, nhận vé du hội và đổi các vật phẩm yêu thích tại Sứ giả tuyên truyền! (Sau khi sự kiện kết thúc, vé sẽ bị mất, vui lòng đổi thưởng kịp thời trước khi kết thúc)."
         },
         "asi":{
            "lv":"0",
            "r":"asi",
            "u":"1004",
            "n":"Điểm danh kỷ niệm",
            "d":"Trong thời gian sự kiện, điểm danh mỗi ngày có thể nhận phần thưởng, hoàn thành toàn bộ điểm danh sẽ được thêm một Tiểu Tinh Linh mới — Cặp Ma Thuật!"
         }
      };
      
      private var _core:Core = Core.getInstance();
      
      public function JXHD()
      {
         super();
         mx_internal::_document = this;
         this.width = 689;
         this.height = 474;
         this.styleName = "StandardContent";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         JXHD._watcherSetupUtil = param1;
      }
      
      public function __gotobtn_click(param1:MouseEvent) : void
      {
         gotoHandler();
      }
      
      [Bindable(event="propertyChange")]
      public function get suitTree() : List
      {
         return this._1860721589suitTree;
      }
      
      public function set datetime(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1793702779datetime;
         if(_loc2_ !== param1)
         {
            this._1793702779datetime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"datetime",_loc2_,param1));
         }
      }
      
      public function set pointnoticeDetailBtn(param1:LinkButton) : void
      {
         var _loc2_:Object = this._1064741693pointnoticeDetailBtn;
         if(_loc2_ !== param1)
         {
            this._1064741693pointnoticeDetailBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointnoticeDetailBtn",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      private function _JXHD_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JXHD_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _JXHD_BasicTitleCanvas1.text = param1;
         },"_JXHD_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return hdac;
         },function(param1:Object):void
         {
            suitTree.dataProvider = param1;
         },"suitTree.dataProvider");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            title.filters = param1;
         },"title.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            datetime.filters = param1;
         },"datetime.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JXHD_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _JXHD_RoundedLabel3.text = param1;
         },"_JXHD_RoundedLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            _JXHD_RoundedLabel3.filters = param1;
         },"_JXHD_RoundedLabel3.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JXHD_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _JXHD_RoundedLabel4.text = param1;
         },"_JXHD_RoundedLabel4.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            _JXHD_RoundedLabel4.filters = param1;
         },"_JXHD_RoundedLabel4.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            content1.filters = param1;
         },"content1.filters");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            content2.filters = param1;
         },"content2.filters");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JXHD_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pointnoticeDetailBtn.label = param1;
         },"pointnoticeDetailBtn.label");
         result[10] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get datetime() : RoundedLabel
      {
         return this._1793702779datetime;
      }
      
      public function set itemListBox(param1:VBox) : void
      {
         var _loc2_:Object = this._351979078itemListBox;
         if(_loc2_ !== param1)
         {
            this._351979078itemListBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemListBox",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:JXHD = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _JXHD_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_JXHDWatcherSetupUtil");
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
      public function get gotobtn() : Button
      {
         return this._211967513gotobtn;
      }
      
      public function onGetJXHDAward(param1:*) : void
      {
         if(!param1 || !param1[1] || param1[1].length < 1)
         {
            return;
         }
         var _loc2_:* = param1[0];
         if(JXHDICONLIST[_loc2_])
         {
            JXHDICONLIST[_loc2_].award = param1[1];
         }
      }
      
      protected function pointnoticeDetailBtn_clickHandler(param1:MouseEvent) : void
      {
         Alert.show(_PointNoticeDetailText);
      }
      
      public function __suitTree_itemClick(param1:ListEvent) : void
      {
         list_itemClickHandler();
      }
      
      private function clearRightContent() : void
      {
         title.text = "";
         datetime.text = "";
         content1.text = "";
         content2.text = "";
         itemListBox.visible = false;
         pointnoticeDetailBtn.visible = false;
      }
      
      public function set content1(param1:Text) : void
      {
         var _loc2_:Object = this._567321896content1;
         if(_loc2_ !== param1)
         {
            this._567321896content1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content1",_loc2_,param1));
         }
      }
      
      public function set content2(param1:Text) : void
      {
         var _loc2_:Object = this._567321895content2;
         if(_loc2_ !== param1)
         {
            this._567321895content2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content2",_loc2_,param1));
         }
      }
      
      public function set title(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      public function set suitTree(param1:List) : void
      {
         var _loc2_:Object = this._1860721589suitTree;
         if(_loc2_ !== param1)
         {
            this._1860721589suitTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suitTree",_loc2_,param1));
         }
      }
      
      public function set gotobtn(param1:Button) : void
      {
         var _loc2_:Object = this._211967513gotobtn;
         if(_loc2_ !== param1)
         {
            this._211967513gotobtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gotobtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemListBox() : VBox
      {
         return this._351979078itemListBox;
      }
      
      private function set hdac(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._3197470hdac;
         if(_loc2_ !== param1)
         {
            this._3197470hdac = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hdac",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get hdac() : ArrayCollection
      {
         return this._3197470hdac;
      }
      
      [Bindable(event="propertyChange")]
      public function get pointnoticeDetailBtn() : LinkButton
      {
         return this._1064741693pointnoticeDetailBtn;
      }
      
      public function __suitTree_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function setAwardItem(param1:*, param2:*) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:JXHDAwardItem = null;
         var _loc6_:* = undefined;
         if(param2.award)
         {
            itemListBox.removeAllChildren();
            _loc3_ = param2.award;
            for(_loc4_ in _loc3_)
            {
               if(_loc3_[_loc4_])
               {
                  _loc5_ = new JXHDAwardItem();
                  if(Boolean(_loc3_[_loc4_].list) && _loc3_[_loc4_].list.length > 9)
                  {
                     _loc6_ = Math.floor(_loc3_[_loc4_].list.length / 9);
                     if(_loc3_[_loc4_].list.length % 9 > 0)
                     {
                        _loc6_ += 1;
                     }
                     _loc5_.height += 40 * (_loc6_ - 1);
                  }
                  itemListBox.addChild(_loc5_);
                  if(Boolean(_loc3_[_loc4_].list) && _loc3_[_loc4_].list.length > 0)
                  {
                     _loc5_.setData(_loc3_[_loc4_]);
                  }
               }
            }
         }
      }
      
      private function list_itemClickHandler(param1:* = null) : void
      {
         var _loc2_:* = undefined;
         clearRightContent();
         if(param1)
         {
            _loc2_ = param1;
         }
         else
         {
            _loc2_ = suitTree.selectedItem;
         }
         if(!_loc2_)
         {
            return;
         }
         title.text = _loc2_.n;
         if(_loc2_.s > 0)
         {
            datetime.text = Language.JXHD_PANEL[3].replace("{start}",TimeUtil.dateTimeToString(new Date(Number(_loc2_.s)))).replace("{end}",TimeUtil.dateTimeToString(new Date(Number(_loc2_.e))));
         }
         else if(_loc2_.icon != "shangdiandazhe" && _loc2_.e > 0)
         {
            datetime.text = Language.JXHD_PANEL[5].replace("{end}",TimeUtil.dateTimeToString(new Date(Number(_loc2_.e))));
         }
         else
         {
            datetime.text = Language.JXHD_PANEL[11];
         }
         if(_loc2_.icon == "czth")
         {
            content1.htmlText = _loc2_.d;
            pointnoticeDetailBtn.visible = true;
         }
         else
         {
            content1.text = _loc2_.d;
         }
         content2.text = "";
         if(_loc2_.u > 0)
         {
            _nowPanel = _loc2_.u;
            gotobtn.visible = true;
         }
         else
         {
            _nowPanel = -1;
            gotobtn.visible = false;
            _nowGo = _loc2_.u;
            if(_nowGo == -100)
            {
               gotobtn.visible = true;
            }
         }
         switch(_loc2_.r)
         {
            case "xcds":
            case "mczd":
            case "Goldman":
            case "ConsumeAward":
            case "Wawagame":
            case "PointAward":
            case "ComboShop":
            case "Juhuasuan":
            case "Treasurebowl":
            case "VipShop":
            case "Happyline":
            case "PointNotice":
            case "dmbk":
            case "tkyyh":
            case "asi":
               setAwardItem(_loc2_.r,JXHDICONLIST[_loc2_.r]);
               itemListBox.visible = true;
               content2.visible = false;
               break;
            default:
               content2.text = _loc2_.r;
               itemListBox.visible = false;
               content2.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get content1() : Text
      {
         return this._567321896content1;
      }
      
      [Bindable(event="propertyChange")]
      public function get content2() : Text
      {
         return this._567321895content2;
      }
      
      override public function initView() : void
      {
         _core.remote.call("getJXHDList",new Responder(onGetJXHDList));
      }
      
      private function genJXHDAward(param1:*) : *
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         switch(String(param1))
         {
            case "xcds":
               _loc2_ = _core.view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY);
               if(_loc2_)
               {
                  _loc3_ = {};
                  _loc3_.title = Language.JXHD_PANEL[6];
                  _loc3_.list = [];
                  _loc4_ = _loc2_.XCDSAwardConfig;
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     _loc6_ = {};
                     _loc6_.t = 29;
                     _loc6_.n = 1;
                     _loc6_.ii = _loc4_[_loc5_];
                     _loc3_.list[_loc5_] = _loc6_;
                     _loc5_++;
                  }
                  JXHDICONLIST[param1].award = [];
                  JXHDICONLIST[param1].award[0] = _loc3_;
               }
               break;
            case "mczd":
               _loc2_ = _core.view.getUI(ViewManager.PANEL_MCZD_ALL_RANK);
               if(_loc2_)
               {
                  _loc4_ = _loc2_.MCZD_ALLRANK_AWARD;
                  JXHDICONLIST[param1].award = [];
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     _loc7_ = 1;
                     while(_loc7_ < 7)
                     {
                        if(_loc7_ != 5)
                        {
                           _loc3_ = {};
                           _loc3_.title = Language.JXHD_PANEL[7].replace("{re}",_loc2_.MCZDRegion_str(_loc5_)).replace("{rank}",_loc2_.MCZDRank_str(_loc7_));
                           _loc3_.list = [];
                           for(_loc8_ in _loc4_[_loc5_][_loc7_])
                           {
                              _loc6_ = {};
                              _loc6_.t = 29;
                              _loc6_.n = int(_loc4_[_loc5_][_loc7_][_loc8_]);
                              _loc6_.ii = int(_loc8_);
                              _loc3_.list.push(_loc6_);
                           }
                           JXHDICONLIST[param1].award.push(_loc3_);
                        }
                        _loc7_++;
                     }
                     _loc5_++;
                  }
               }
               break;
            case "Goldman":
               _loc3_ = {};
               _loc3_.title = Language.JXHD_PANEL[8];
               _loc3_.list = [];
               for(_loc5_ in goldManAList)
               {
                  _loc6_ = {};
                  _loc6_.t = 29;
                  _loc6_.n = -1;
                  _loc6_.ii = goldManAList[_loc5_];
                  _loc3_.list.push(_loc6_);
               }
               JXHDICONLIST[param1].award = [];
               JXHDICONLIST[param1].award[0] = _loc3_;
               break;
            case "VipShop":
               _loc3_ = {};
               _loc3_.title = Language.JXHD_PANEL[9];
               _loc3_.list = [];
               for(_loc5_ in GameData.d[GamePredef.TBL_SHOP_SLOT])
               {
                  if(GameData.d[GamePredef.TBL_SHOP_SLOT][_loc5_].sid == 99)
                  {
                     _loc6_ = {};
                     _loc6_.t = GameData.d[GamePredef.TBL_SHOP_SLOT][_loc5_].type;
                     _loc6_.n = -1;
                     _loc6_.ii = GameData.d[GamePredef.TBL_SHOP_SLOT][_loc5_].itemId;
                     _loc3_.list.push(_loc6_);
                  }
               }
               JXHDICONLIST[param1].award = [];
               JXHDICONLIST[param1].award[0] = _loc3_;
               break;
            case "dmbk":
               _loc3_ = {};
               _loc3_.title = Language.JXHD_PANEL[2];
               _loc3_.list = [];
               for(_loc5_ in GameData.d[GamePredef.TBL_CREDIT])
               {
                  if(GameData.d[GamePredef.TBL_CREDIT][_loc5_].shopId == 8)
                  {
                     _loc6_ = {};
                     _loc6_.t = GameData.d[GamePredef.TBL_CREDIT][_loc5_].type;
                     _loc6_.n = -1;
                     _loc6_.ii = GameData.d[GamePredef.TBL_CREDIT][_loc5_].itemId;
                     _loc3_.list.push(_loc6_);
                  }
               }
               JXHDICONLIST[param1].award = [];
               JXHDICONLIST[param1].award[0] = _loc3_;
               break;
            case "tkyyh":
               _loc3_ = {};
               _loc3_.title = Language.JXHD_PANEL[2];
               _loc3_.list = [];
               for(_loc5_ in GameData.d[GamePredef.TBL_CREDIT])
               {
                  if(GameData.d[GamePredef.TBL_CREDIT][_loc5_].shopId == 9)
                  {
                     _loc6_ = {};
                     _loc6_.t = GameData.d[GamePredef.TBL_CREDIT][_loc5_].type;
                     _loc6_.n = -1;
                     _loc6_.ii = GameData.d[GamePredef.TBL_CREDIT][_loc5_].itemId;
                     _loc3_.list.push(_loc6_);
                  }
               }
               JXHDICONLIST[param1].award = [];
               JXHDICONLIST[param1].award[0] = _loc3_;
               break;
            case "asi":
               _loc2_ = _core.view.getUI(ViewManager.PANEL_ANNIVERSARYSIGNIN);
               if(_loc2_)
               {
                  _loc9_ = _loc2_.ASI_SIGNIN_AWARD_MAP;
                  _loc3_ = {};
                  _loc3_.title = "Phần thưởng điểm danh hằng ngày";
                  _loc3_.list = [];
                  _loc6_ = {};
                  _loc6_.t = 29;
                  _loc6_.n = _loc9_[0].n;
                  _loc6_.ii = _loc9_[0].i;
                  _loc3_.list.push(_loc6_);
                  JXHDICONLIST[param1].award = [];
                  JXHDICONLIST[param1].award[0] = _loc3_;
                  _loc10_ = {};
                  _loc10_.title = "Phần thưởng hoàn thành toàn bộ điểm danh";
                  _loc10_.list = [];
                  _loc11_ = {};
                  _loc11_.t = 29;
                  _loc11_.n = 1;
                  _loc11_.ii = _loc2_.ASI_SIGNIN_BIGAWARD;
                  _loc10_.list.push(_loc11_);
                  JXHDICONLIST[param1].award[1] = _loc10_;
               }
               break;
            case "ConsumeAward":
            case "Wawagame":
            case "PointAward":
            case "ComboShop":
            case "Juhuasuan":
            case "Treasurebowl":
            case "Happyline":
            case "PointNotice":
               _core.remote.call("getJXHDAward",new Responder(onGetJXHDAward),param1);
         }
      }
      
      private function gotoHandler() : void
      {
         var _loc1_:Object = null;
         if(_nowPanel > 0)
         {
            switch(_nowPanel)
            {
               case ViewManager.PANEL_SYSTEM_SHOP:
                  _core.view.changeVisible(ViewManager.PANEL_SYSTEM_SHOP);
                  break;
               case ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY);
                  if(_loc1_)
                  {
                     _loc1_.showPanel();
                  }
                  break;
               case ViewManager.PANEL_MCZD:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_MCZD);
                  if(_loc1_)
                  {
                     _loc1_.showPanel();
                  }
                  break;
               case ViewManager.PANEL_WELFARE:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_WELFARE);
                  if(Boolean(_loc1_) && Boolean(_loc1_.isInited))
                  {
                     _loc1_.init();
                     _loc1_.visible = true;
                  }
                  else
                  {
                     _core.view.show(ViewManager.PANEL_WELFARE);
                  }
                  break;
               case ViewManager.PANEL_GAMEINTRO:
                  _core.view.getUI(ViewManager.PANEL_GAMEINTRO).visible = true;
                  break;
               case ViewManager.PANEL_SENDCOMBINE:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_SENDCOMBINE);
                  if(_loc1_)
                  {
                     _loc1_.init();
                     _loc1_.visible = true;
                  }
                  break;
               case ViewManager.PANEL_EQUIPTFUNC:
                  if(!_core.battleServer.inBattleServer)
                  {
                     _core.view.changeVisible(ViewManager.PANEL_EQUIPTFUNC);
                  }
                  break;
               case ViewManager.PANEL_JUHUASUAN:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_JUHUASUAN);
                  if(_loc1_)
                  {
                     _loc1_.showPanel();
                  }
                  break;
               case ViewManager.PANEL_TREASURE_BOWL:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_TREASURE_BOWL);
                  if(_loc1_)
                  {
                     _loc1_.initTreasurePanel();
                  }
                  break;
               case ViewManager.PANEL_VIP_SHOP:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_VIP_SHOP);
                  if(_loc1_)
                  {
                     _loc1_.initPanel();
                     _loc1_.visible = true;
                  }
                  break;
               case ViewManager.PANEL_DAILYSIGNINACT:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_DAILYSIGNINACT);
                  if(_loc1_)
                  {
                     _loc1_.showPanel();
                  }
                  break;
               case ViewManager.PANEL_HAPPYFRONTLINE:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_HAPPYFRONTLINE);
                  if(_loc1_)
                  {
                     _loc1_.showPanel();
                  }
                  break;
               case ViewManager.PANEL_CONSUME_NOTICE_ACTIVITY:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_CONSUME_NOTICE_ACTIVITY);
                  if(_loc1_)
                  {
                     _loc1_.showPanel();
                  }
                  break;
               case ViewManager.PANEL_WAWA_GAME:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_WAWA_GAME);
                  if(_loc1_)
                  {
                     _loc1_.showPanel();
                  }
               case ViewManager.PANEL_ANNIVERSARYSIGNIN:
                  _loc1_ = _core.view.getUI(ViewManager.PANEL_ANNIVERSARYSIGNIN);
                  if(_loc1_)
                  {
                     _loc1_.showPanel();
                  }
            }
         }
         else if(_nowGo == -100)
         {
            LinkEventUtil.linkTextHandler("L_N|2596",null);
         }
      }
      
      private function _JXHD_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = JXHD_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function _JXHD_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.JXHD_PANEL[0];
         _loc1_ = hdac;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.JXHD_PANEL[1];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.JXHD_PANEL[2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.JXHD_PANEL[10];
      }
      
      public function __pointnoticeDetailBtn_click(param1:MouseEvent) : void
      {
         pointnoticeDetailBtn_clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : RoundedLabel
      {
         return this._110371416title;
      }
      
      public function onGetJXHDList(param1:*) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = new Date().getTime() + 86400000;
         if(Boolean(hdac) && hdac.length > 0)
         {
            hdac.removeAll();
         }
         var _loc3_:* = 0;
         for(_loc4_ in param1)
         {
            if(JXHDCHECKLIST[_loc4_])
            {
               if(int(_core.player.level) >= int(JXHDCHECKLIST[_loc4_].lv))
               {
                  _loc5_ = {};
                  _loc5_.n = JXHDCHECKLIST[_loc4_].n;
                  _loc5_.d = JXHDCHECKLIST[_loc4_].d;
                  if(_loc4_ == "PointNotice" && Boolean(param1[_loc4_].text))
                  {
                     _loc5_.d = param1[_loc4_].text;
                     _PointNoticeDetailText = param1[_loc4_].text2;
                  }
                  _loc5_.s = param1[_loc4_].startTime;
                  _loc5_.e = param1[_loc4_].endTime;
                  _loc5_.icon = JXHDICONLIST[_loc4_].n;
                  _loc5_.u = int(JXHDCHECKLIST[_loc4_].u);
                  _loc5_.r = JXHDCHECKLIST[_loc4_].r;
                  if(_loc4_ == "Gailv" && Boolean(param1[_loc4_].notice))
                  {
                     _loc5_.r = param1[_loc4_].notice.replace("<font color=\'#00FF00\'>","").replace("</font>","");
                  }
                  if(_loc2_ > _loc5_.e && _loc4_ != "SystemShopDiscount")
                  {
                     _loc5_.c = true;
                  }
                  else
                  {
                     _loc5_.c = false;
                  }
                  if(!JXHDICONLIST[_loc4_].award)
                  {
                     genJXHDAward(_loc4_);
                  }
                  hdac.addItem(_loc5_);
                  _loc3_++;
               }
            }
         }
         if(_loc3_ > 0)
         {
            list_itemClickHandler(hdac.getItemAt(0));
         }
      }
   }
}

