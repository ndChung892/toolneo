package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.vo.ToolTipVO;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipSkill extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var SKILL_KIND_POSIVE:int = 2;
      
      private var _core:Core;
      
      private var dm:DataManager;
      
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
                              "height":43,
                              "horizontalScrollPolicy":"off",
                              "verticalScrollPolicy":"off",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_TipSkill_Label1",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 9161214;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":45,
                                       "y":5
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipSkill_Image1",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":5,
                                       "y":5,
                                       "width":32,
                                       "height":32
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Button,
                                 "id":"_TipSkill_Button1",
                                 "events":{"click":"___TipSkill_Button1_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "0";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":0,
                                       "styleName":"BtnToolTipClose",
                                       "width":15,
                                       "height":15
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Text,
                                 "id":"_TipSkill_Text1",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 12243454;
                                    this.textAlign = "right";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":153,
                                       "y":23
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Text,
                                 "id":"_TipSkill_Text2",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "left";
                                    this.color = 16708542;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":45,
                                       "y":23
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipSkill_Text3"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipSkill_Text4"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipSkill_Text5",
                        "stylesFactory":function():void
                        {
                           this.color = 16773307;
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipSkill_Text6",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      mx_internal var _watchers:Array = [];
      
      private var SKILL_KIND_BUFF:int = 3;
      
      public var _TipSkill_Text1:Text;
      
      public var _TipSkill_Text2:Text;
      
      public var _TipSkill_Text3:Text;
      
      public var _TipSkill_Text4:Text;
      
      public var _TipSkill_Text5:Text;
      
      public var _TipSkill_Text6:Text;
      
      private var BUFF_DEFIANCE:String = "BUFF200241";
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipSkill_Button1:Button;
      
      private var _3769vo:ToolTipVO;
      
      public var _TipSkill_Image1:Image;
      
      mx_internal var _bindings:Array = [];
      
      public var _TipSkill_Label1:Label;
      
      private var BUFF_HUNTER_CONFUSE:String = "BUFF200331";
      
      private var SKILL_KIND_RING:int = 5;
      
      public function TipSkill()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipSkill_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipSkill._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipSkill = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipSkill_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipSkillWatcherSetupUtil");
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
      
      private function _TipSkill_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = vo.name;
         _loc1_ = Language.TIPSKILL_S[10];
         _loc1_ = vo.urlIcon;
         _loc1_ = vo.btnVisible;
         _loc1_ = vo.consume;
         _loc1_ = Language.TIPSKILL_S[11];
         _loc1_ = vo.level;
         _loc1_ = Language.TIPSKILL_S[0].toString().replace("{level}","1");
         _loc1_ = vo.type;
         _loc1_ = Language.TIPSKILL_S[12];
         _loc1_ = vo.targetNum;
         _loc1_ = Language.TIPSKILL_S[2] + "1";
         _loc1_ = vo.targetNum != "";
         _loc1_ = vo.targetNum != "";
         _loc1_ = vo.description;
         _loc1_ = Language.TIPSKILL_S[13];
         _loc1_ = vo.maker;
         _loc1_ = Language.TIPSKILL_S[14];
      }
      
      public function set object(param1:Object) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         vo = new ToolTipVO();
         vo.btnVisible = param1.btnVisible;
         vo.name = param1.temp.name;
         vo.level = Language.TIPSKILL_S[0].toString().replace("{level}",param1.temp.level);
         vo.urlIcon = ResManager.getIconUrl(param1.temp.iconCode);
         vo.description = param1.temp.description;
         vo.info = param1.temp.info;
         if(ToolKit.isEqual(param1.temp.useEnv,4))
         {
            vo.type = Language.TIPSKILL_S[1] + GamePredef.SKILL_KIND_NAME[2] + "-" + Language.GAMEPREDEF_S[335];
         }
         else
         {
            vo.type = Language.TIPSKILL_S[1] + GamePredef.SKILL_KIND_NAME[param1.temp.kind] + "-" + GamePredef.SKILL_TYPE_NAME[param1.temp.type];
         }
         if(param1.temp.targetNum >= 1 && param1.temp.kind == 1)
         {
            vo.targetNum = Language.TIPSKILL_S[2] + param1.temp.targetNum;
            if(param1.temp.areaAttack > 0)
            {
               vo.targetNum += " [" + GamePredef.SKILL_AREA_TYPE[param1.temp.areaAttack] + "]";
            }
         }
         else
         {
            vo.targetNum = "";
         }
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(param1.temp.useMp > 0)
         {
            if(param1.temp.useMp < 1)
            {
               _loc4_ = int(param1.temp.useMp * 100);
               _loc3_ = _loc3_ = Language.TIPSKILL_S[3] + _loc4_ + "%";
            }
            else
            {
               _loc5_ = int(param1.temp.useMp);
               _loc3_ = Language.TIPSKILL_S[3] + _loc5_;
            }
         }
         else if(param1.temp.useSp > 0)
         {
            if(param1.temp.useSp < 1)
            {
               _loc4_ = int(param1.temp.useSp * 100);
               _loc3_ = Language.TIPSKILL_S[15] + _loc4_ + "%";
            }
            else
            {
               _loc5_ = int(param1.temp.useSp);
               _loc3_ = Language.TIPSKILL_S[15] + _loc5_;
            }
         }
         if(param1.slotType == Slot.SLOT_SKILL)
         {
            if(param1.temp.useMp > _core.player.currentMp)
            {
               _loc3_ = FONT_COLOR_RED_PROP + _loc3_ + FONT_COLOR_SUF_PROP;
            }
         }
         _loc2_ = _loc3_;
         if(_loc2_.length > 0)
         {
            vo.consume = _loc2_;
         }
         if(param1.temp.reqLevel)
         {
            vo.reqLevel = Language.TIPSKILL_S[4] + param1.temp.reqLevel;
            if(ToolKit.isSmallThan(_core.player.level,param1.temp.reqLevel))
            {
               vo.reqLevel = FONT_COLOR_RED_PROP + vo.reqLevel + FONT_COLOR_SUF_PROP;
            }
         }
         vo.maker = "";
         if(param1.temp.buffId)
         {
            _loc6_ = _core.data.getData(GamePredef.TBL_BUFF,param1.temp.buffId);
            if(_loc6_)
            {
               if(param1.temp.kind != SKILL_KIND_POSIVE && param1.temp.kind != SKILL_KIND_RING)
               {
                  vo.maker = Language.TIPSKILL_S[5].toString().replace("{buffName}",_loc6_.name);
               }
               vo.maker += Language.TIPSKILL_S[7].toString().replace("{buffDescription}",_loc6_.description);
               if(param1.temp.kind != SKILL_KIND_POSIVE && param1.temp.kind != SKILL_KIND_RING)
               {
                  vo.maker += Language.TIPSKILL_S[8].toString().replace("{buffRound}",param1.temp.buffRound);
                  if(param1.temp.kind != SKILL_KIND_BUFF)
                  {
                     if(GamePredef.notDeleteBuff[_loc6_.codeName] == 1)
                     {
                        vo.maker += Language.TIPSKILL_S[9].toString().replace("{buffRate}",param1.temp.buffRate);
                     }
                     else if(_loc6_.buff == 0)
                     {
                        if(_loc6_.codeName != null && (_loc6_.codeName == BUFF_DEFIANCE || _loc6_.codeName == BUFF_HUNTER_CONFUSE))
                        {
                           vo.maker += Language.TIPSKILL_S[9].toString().replace("{buffRate}",param1.temp.buffRate) + Language.TIPSKILL_S[17];
                        }
                        else
                        {
                           vo.maker += Language.TIPSKILL_S[9].toString().replace("{buffRate}",param1.temp.buffRate) + Language.TIPSKILL_S[16];
                        }
                     }
                     else
                     {
                        vo.maker += Language.TIPSKILL_S[9].toString().replace("{buffRate}",param1.temp.buffRate);
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      private function _TipSkill_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Label1.htmlText = param1;
         },"_TipSkill_Label1.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPSKILL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Label1.text = param1;
         },"_TipSkill_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.urlIcon;
         },function(param1:Object):void
         {
            _TipSkill_Image1.source = param1;
         },"_TipSkill_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.btnVisible;
         },function(param1:Boolean):void
         {
            _TipSkill_Button1.visible = param1;
         },"_TipSkill_Button1.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.consume;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text1.htmlText = param1;
         },"_TipSkill_Text1.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPSKILL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text1.text = param1;
         },"_TipSkill_Text1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text2.htmlText = param1;
         },"_TipSkill_Text2.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPSKILL_S[0].toString().replace("{level}","1");
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text2.text = param1;
         },"_TipSkill_Text2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.type;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text3.htmlText = param1;
         },"_TipSkill_Text3.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPSKILL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text3.text = param1;
         },"_TipSkill_Text3.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.targetNum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text4.htmlText = param1;
         },"_TipSkill_Text4.htmlText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPSKILL_S[2] + "1";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text4.text = param1;
         },"_TipSkill_Text4.text");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.targetNum != "";
         },function(param1:Boolean):void
         {
            _TipSkill_Text4.visible = param1;
         },"_TipSkill_Text4.visible");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.targetNum != "";
         },function(param1:Boolean):void
         {
            _TipSkill_Text4.includeInLayout = param1;
         },"_TipSkill_Text4.includeInLayout");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text5.htmlText = param1;
         },"_TipSkill_Text5.htmlText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPSKILL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text5.text = param1;
         },"_TipSkill_Text5.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.maker;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text6.htmlText = param1;
         },"_TipSkill_Text6.htmlText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPSKILL_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipSkill_Text6.text = param1;
         },"_TipSkill_Text6.text");
         result[17] = binding;
         return result;
      }
      
      public function ___TipSkill_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      public function ___TipSkill_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function set vo(param1:ToolTipVO) : void
      {
         var _loc2_:Object = this._3769vo;
         if(_loc2_ !== param1)
         {
            this._3769vo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vo",_loc2_,param1));
         }
      }
      
      override public function show(param1:Object = null) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Array = Canvas(parent).getChildren();
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc3_ is TipCre))
            {
               _loc3_.visible = false;
            }
         }
         setPos();
         visible = true;
      }
   }
}

