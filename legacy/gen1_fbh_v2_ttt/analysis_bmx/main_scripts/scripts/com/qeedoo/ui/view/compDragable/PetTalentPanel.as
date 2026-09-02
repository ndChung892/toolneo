package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.comp.TalentSlot;
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
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetTalentPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3401l5:Image;
      
      private var _102472i10:TalentSlot;
      
      public var _PetTalentPanel_LinkButton1:LinkButton;
      
      public var _PetTalentPanel_LinkButton2:LinkButton;
      
      public var _PetTalentPanel_LinkButton3:LinkButton;
      
      private var _3398l2:Image;
      
      private var _3309i6:TalentSlot;
      
      private var _3317767left:BasicGlowButton;
      
      private var _114004u10:Button;
      
      private var _1184715790inText:IntroText;
      
      private var _3400l4:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3312i9:TalentSlot;
      
      private var _alert:Alert;
      
      private var _3684u9:Button;
      
      private var _3397l1:Image;
      
      private var _102473i11:TalentSlot;
      
      private var _3308i5:TalentSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _3311i8:TalentSlot;
      
      private var _105355l10:Image;
      
      private var _114005u11:Button;
      
      private var _needCheckProp:Array = [1,2,6,7,4,5,9,8,13,31,11,10,61,58,32,59,60,62,63];
      
      private var _pi:Number = 1;
      
      private var _1447937396_totalPowerL:Number = 0;
      
      private var _108511772right:BasicGlowButton;
      
      private var _688048580pTalentTitle:BasicTitleCanvas;
      
      private var _91227583_rate:Number = 0;
      
      private var _3307i4:TalentSlot;
      
      private var _3683u8:Button;
      
      private var _1468352367_point:Number = 0;
      
      private var _3679u4:Button;
      
      private var _imageResCode:Array = [4130220000334,4130220000335,4130220000336,4130220000337];
      
      private var _3310i7:TalentSlot;
      
      private var _3682u7:Button;
      
      private var _105356l11:Image;
      
      private var _3306i3:TalentSlot;
      
      private var _3678u3:Button;
      
      public var _firstLoadCid:Number = 0;
      
      private var _3405l9:Image;
      
      private var mianInfo:Object = new Object();
      
      private var _3681u6:Button;
      
      private var _3305i2:TalentSlot;
      
      private var _helpAlert:Alert;
      
      private var _100319048imgbg:Image;
      
      private var _3677u2:Button;
      
      private var panelInfoAdded:Boolean = false;
      
      private var _3404l8:Image;
      
      private var _3680u5:Button;
      
      private var _3304i1:TalentSlot;
      
      private var _3676u1:Button;
      
      private var _3403l7:Image;
      
      private var _goldPoint:Number = 0.06666666666666667;
      
      mx_internal var _watchers:Array = [];
      
      private var _148398364useGood:CheckBox;
      
      private var _1945386050infoCan:Canvas;
      
      private var power_rate:Array = [[850,10],[700,8],[400,6],[200,4],[100,2]];
      
      public var _PetTalentPanel_Label1:Label;
      
      private var _3399l3:Image;
      
      public var _PetTalentPanel_Label4:Label;
      
      public var _PetTalentPanel_Label5:Label;
      
      public var _PetTalentPanel_Label6:Label;
      
      public var _PetTalentPanel_Label2:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _3402l6:Image;
      
      public var _PetTalentPanel_Label3:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":600,
               "height":390,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"pTalentTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":30,
                        "width":600,
                        "height":360,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"imgbg",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":4,
                                 "y":3,
                                 "width":596,
                                 "height":352
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_PetTalentPanel_LinkButton1",
                           "events":{"click":"___PetTalentPanel_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16775802;
                              this.textDecoration = "underline";
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                              this.textAlign = "left";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":20,
                                 "x":7,
                                 "y":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_PetTalentPanel_LinkButton2",
                           "events":{"click":"___PetTalentPanel_LinkButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16775802;
                              this.textDecoration = "underline";
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":88,
                                 "height":20,
                                 "x":488,
                                 "y":326
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"right",
                           "events":{"click":"__right_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":542,
                                 "y":160,
                                 "height":45,
                                 "width":53,
                                 "styleName":"talentRightBtn"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetTalentPanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 16775802;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":20,
                                 "y":10,
                                 "width":88,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetTalentPanel_Label2",
                           "stylesFactory":function():void
                           {
                              this.color = 16775802;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":20,
                                 "y":32,
                                 "width":88,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetTalentPanel_Label3",
                           "stylesFactory":function():void
                           {
                              this.color = 16775802;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":20,
                                 "y":327,
                                 "width":88,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetTalentPanel_Label4",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":72,
                                 "y":327,
                                 "width":88,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetTalentPanel_Label5",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":104,
                                 "y":10,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_PetTalentPanel_LinkButton3",
                           "events":{"click":"___PetTalentPanel_LinkButton3_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16775802;
                              this.textDecoration = "underline";
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                              this.textAlign = "left";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":20,
                                 "x":7,
                                 "y":54
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":82,
                                 "y":136,
                                 "sid":10001,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u1",
                           "events":{"click":"__u1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":117,
                                 "y":139,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":117,
                                 "y":153,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":73,
                                 "y":274,
                                 "sid":10002,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u2",
                           "events":{"click":"__u2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":108,
                                 "y":277,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":108,
                                 "y":291,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":169,
                                 "y":65,
                                 "sid":10003,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u3",
                           "events":{"click":"__u3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":204,
                                 "y":69,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":204,
                                 "y":83,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":167,
                                 "y":208,
                                 "sid":10004,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u4",
                           "events":{"click":"__u4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":202,
                                 "y":211,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":202,
                                 "y":225,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":340,
                                 "y":135,
                                 "sid":10005,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u5",
                           "events":{"click":"__u5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":373,
                                 "y":138,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":373,
                                 "y":152,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":335,
                                 "y":273,
                                 "sid":10006,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u6",
                           "events":{"click":"__u6_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":370,
                                 "y":276,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":370,
                                 "y":290,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":428,
                                 "y":65,
                                 "sid":10007,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u7",
                           "events":{"click":"__u7_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":463,
                                 "y":69,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":463,
                                 "y":83,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":430,
                                 "y":208,
                                 "sid":10008,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u8",
                           "events":{"click":"__u8_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":465,
                                 "y":211,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":465,
                                 "y":225,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":488,
                                 "y":136,
                                 "sid":10009,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u9",
                           "events":{"click":"__u9_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":522,
                                 "y":139,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":522,
                                 "y":153,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":230,
                                 "y":135,
                                 "sid":10010
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u10",
                           "events":{"click":"__u10_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":265,
                                 "y":138,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":265,
                                 "y":152,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TalentSlot,
                           "id":"i11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":488,
                                 "y":274,
                                 "sid":10011
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"u11",
                           "events":{"click":"__u11_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"talentUpBtn",
                                 "x":522,
                                 "y":277,
                                 "width":14,
                                 "height":14
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"l11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":522,
                                 "y":292,
                                 "width":18,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"left",
                           "events":{"click":"__left_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":160,
                                 "height":45,
                                 "width":53,
                                 "styleName":"talentLeftBtn"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetTalentPanel_Label6",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":104,
                                 "y":32,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"useGood",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":184.8,
                                 "y":327,
                                 "width":228.2
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"infoCan",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":156,
                        "height":360,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"inText",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":160,
                        "height":354,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      public function PetTalentPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 600;
         this.height = 390;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetTalentPanel._watcherSetupUtil = param1;
      }
      
      private function _updateTalentDataTal(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            if(!_core.player.petTalentData)
            {
               _core.player.petTalentData = new Object();
            }
            if(!_core.player.petTalentData.tal)
            {
               _core.player.petTalentData.tal = new Object();
            }
            for(_loc2_ in param1)
            {
               if(param1[_loc2_])
               {
                  _core.player.petTalentData.tal[_loc2_] = Number(param1[_loc2_]);
               }
            }
         }
      }
      
      private function upTalentSlot(param1:Number) : void
      {
         var func:Function;
         var _index:Number = NaN;
         var _check:Boolean = false;
         var temp:Object = null;
         var index:Number = param1;
         _index = index;
         var str:String = Language.TALENT_PANEL_U[6];
         if(useGood.selected)
         {
            if(Boolean(_core.player.petTalentData) && (!_core.player.petTalentData.tal || !_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]))
            {
               temp = getNextTalentSlotData(_index,1);
               if(!temp)
               {
                  return;
               }
               str = Language.TALENT_PANEL_U[11].replace("{num}",Math.ceil(temp.upExp * _goldPoint));
            }
            else if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.tal) && Boolean(_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]))
            {
               temp = _core.data.gameData[GamePredef.TBL_PET_TALENT][_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]];
               temp = getNextTalentSlotData(_index,ToolKit.add(temp.lv,1));
               if(!temp)
               {
                  return;
               }
               str = Language.TALENT_PANEL_U[11].replace("{num}",Math.ceil(temp.upExp * _goldPoint));
            }
         }
         _check = useGood.selected;
         func = function(param1:CloseEvent):void
         {
            var _loc2_:Object = null;
            var _loc3_:Boolean = false;
            if(param1.detail == Alert.YES)
            {
               if(_check)
               {
                  if(Boolean(_core.player.petTalentData) && (!_core.player.petTalentData.tal || !_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]))
                  {
                     _loc2_ = getNextTalentSlotData(_index,1);
                     if(!_loc2_)
                     {
                        return;
                     }
                     if(_index == 10 || _index == 11)
                     {
                        _loc3_ = checkSpecSlotUp(_index);
                        if(!_loc3_)
                        {
                           return;
                        }
                     }
                  }
                  else if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.tal) && Boolean(_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]))
                  {
                     _loc2_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]];
                     _loc2_ = getNextTalentSlotData(_index,ToolKit.add(_loc2_.lv,1));
                     if(!_loc2_)
                     {
                        return;
                     }
                     if(_index == 10 || _index == 11)
                     {
                        _loc3_ = checkSpecSlotUp(_index);
                        if(!_loc3_)
                        {
                           return;
                        }
                     }
                  }
               }
               else if(Boolean(_core.player.petTalentData) && (!_core.player.petTalentData.tal || !_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]))
               {
                  _loc2_ = getNextTalentSlotData(_index,1);
                  if(!_loc2_)
                  {
                     return;
                  }
                  if(!_core.player.pvePoint || ToolKit.isSmallThan(_core.player.pvePoint,_loc2_.upExp))
                  {
                     _core.sysMidNote(Language.TALENT_PANEL_U[7]);
                     return;
                  }
                  if(_index == 10 || _index == 11)
                  {
                     _loc3_ = checkSpecSlotUp(_index);
                     if(!_loc3_)
                     {
                        return;
                     }
                  }
               }
               else if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.tal) && Boolean(_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]))
               {
                  _loc2_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_index)]];
                  _loc2_ = getNextTalentSlotData(_index,ToolKit.add(_loc2_.lv,1));
                  if(!_loc2_)
                  {
                     return;
                  }
                  if(!_core.player.pvePoint || ToolKit.isSmallThan(_core.player.pvePoint,_loc2_.upExp))
                  {
                     _core.sysMidNote(Language.TALENT_PANEL_U[7]);
                     return;
                  }
                  if(_index == 10 || _index == 11)
                  {
                     _loc3_ = checkSpecSlotUp(_index);
                     if(!_loc3_)
                     {
                        return;
                     }
                  }
               }
               _core.remote.call("upTalentSlotLv",new Responder(onUpTalentSlotLv),ToolKit.add(_pi * 10000,_index),_check);
            }
         };
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get left() : BasicGlowButton
      {
         return this._3317767left;
      }
      
      private function setPage(param1:Number) : void
      {
         right.visible = true;
         left.visible = true;
         if(ToolKit.isEqual(param1,1) && _pi < 4)
         {
            ++_pi;
            if(_pi == 4)
            {
               right.visible = false;
            }
         }
         else
         {
            if(!(ToolKit.isEqual(param1,2) && _pi >= 2))
            {
               return;
            }
            --_pi;
            if(_pi == 1)
            {
               left.visible = false;
            }
         }
         this.imgbg.source = ResManager.getIconUrl(_imageResCode[ToolKit.minus(_pi,1)]);
         freshPanelData(3);
      }
      
      public function set left(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3317767left;
         if(_loc2_ !== param1)
         {
            this._3317767left = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left",_loc2_,param1));
         }
      }
      
      private function _getTotalPower() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:Object = null;
         _totalPowerL = 0;
         if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.inTal))
         {
            for(_loc1_ in _core.player.petTalentData.inTal)
            {
               if(_core.player.petTalentData.inTal[_loc1_])
               {
                  _loc2_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][Number(_core.player.petTalentData.inTal[_loc1_])];
                  _totalPowerL = ToolKit.add(_totalPowerL,_loc2_.p);
               }
            }
         }
         _rate = 0;
         _loc1_ = 0;
         while(_loc1_ <= 4)
         {
            if(ToolKit.isBigOrEqual(_totalPowerL,power_rate[_loc1_][0]))
            {
               _rate = power_rate[_loc1_][1];
               return _rate;
            }
            _loc1_++;
         }
         return _rate;
      }
      
      public function __u6_click(param1:MouseEvent) : void
      {
         upTalentSlot(6);
      }
      
      private function _updateTalentDataInTal(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            if(!_core.player.petTalentData)
            {
               _core.player.petTalentData = new Object();
            }
            if(param1.a)
            {
               if(!_core.player.petTalentData.inTal)
               {
                  _core.player.petTalentData.inTal = new Object();
               }
               for(_loc2_ in param1.a)
               {
                  if(param1.a[_loc2_])
                  {
                     _core.player.petTalentData.inTal[_loc2_] = param1.a[_loc2_].tid;
                  }
               }
            }
            if(param1.d)
            {
               for(_loc2_ in param1.d)
               {
                  if(param1.d[_loc2_])
                  {
                     delete _core.player.petTalentData.inTal[_loc2_];
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get right() : BasicGlowButton
      {
         return this._108511772right;
      }
      
      private function onUpTalentSlotLv(param1:Object) : void
      {
         if(param1)
         {
            updateTalentDataTal(param1);
            updatePropData();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoCan() : Canvas
      {
         return this._1945386050infoCan;
      }
      
      [Bindable(event="propertyChange")]
      public function get pTalentTitle() : BasicTitleCanvas
      {
         return this._688048580pTalentTitle;
      }
      
      public function __u11_click(param1:MouseEvent) : void
      {
         upTalentSlot(11);
      }
      
      [Bindable(event="propertyChange")]
      public function get inText() : IntroText
      {
         return this._1184715790inText;
      }
      
      [Bindable(event="propertyChange")]
      public function get i11() : TalentSlot
      {
         return this._102473i11;
      }
      
      public function updatePoint() : void
      {
         if(initialized)
         {
            _point = _core.player.pvePoint ? _core.player.pvePoint : 0;
         }
      }
      
      public function ___PetTalentPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         showFuncPanel();
      }
      
      [Bindable(event="propertyChange")]
      public function get i10() : TalentSlot
      {
         return this._102472i10;
      }
      
      private function freshPanelData(param1:int) : void
      {
         var _loc2_:int = 0;
         if(param1 != 2)
         {
            _loc2_ = 1;
            while(_loc2_ <= 9)
            {
               this["i" + _loc2_].reset();
               this["i" + _loc2_].sid = ToolKit.add(_pi * 10000,_loc2_);
               _loc2_++;
            }
            _loc2_ = 10;
            while(_loc2_ <= 11)
            {
               this["i" + _loc2_].sid = ToolKit.add(_pi * 10000,_loc2_);
               if(!_core.player.petTalentData || !_core.player.petTalentData.inTal || !_core.player.petTalentData.inTal[this["i" + _loc2_].sid])
               {
                  this["i" + _loc2_].reset();
               }
               _loc2_++;
            }
            if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.tal))
            {
               freshTalentSlotData(_core.player.petTalentData.tal);
            }
            else
            {
               freshTalentSlotData(new Object());
            }
         }
         if(param1 != 1)
         {
            _loc2_ = 10;
            while(_loc2_ <= 11)
            {
               this["i" + _loc2_].reset();
               this["i" + _loc2_].sid = ToolKit.add(_pi * 10000,_loc2_);
               _loc2_++;
            }
            if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.inTal))
            {
               freshTalentStoneData(_core.player.petTalentData.inTal);
            }
            else
            {
               freshTalentStoneData(new Object());
            }
            _getTotalPower();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get u1() : Button
      {
         return this._3676u1;
      }
      
      [Bindable(event="propertyChange")]
      public function get u3() : Button
      {
         return this._3678u3;
      }
      
      public function __u3_click(param1:MouseEvent) : void
      {
         upTalentSlot(3);
      }
      
      private function _PetTalentPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TALENT_PANEL_U[0];
         _loc1_ = Language.TALENT_PANEL_U[3];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.TALENT_PANEL_U[14];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.TALENT_PANEL_U[1];
         _loc1_ = Language.TALENT_PANEL_U[12];
         _loc1_ = Language.TALENT_PANEL_U[2];
         _loc1_ = Language.TALENT_PANEL_U[13];
         _loc1_ = Language.TALENT_PANEL_U[5];
         _loc1_ = _point;
         _loc1_ = _totalPowerL + "/850";
         _loc1_ = Language.TALENT_PANEL_U[4];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = _rate + "%";
         _loc1_ = Language.TALENT_PANEL_U[10];
         _loc1_ = Language.TALENT_PANEL_U[10];
      }
      
      [Bindable(event="propertyChange")]
      public function get u6() : Button
      {
         return this._3681u6;
      }
      
      [Bindable(event="propertyChange")]
      public function get u8() : Button
      {
         return this._3683u8;
      }
      
      [Bindable(event="propertyChange")]
      public function get u2() : Button
      {
         return this._3677u2;
      }
      
      public function set right(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._108511772right;
         if(_loc2_ !== param1)
         {
            this._108511772right = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"right",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get u4() : Button
      {
         return this._3679u4;
      }
      
      [Bindable(event="propertyChange")]
      public function get u5() : Button
      {
         return this._3680u5;
      }
      
      [Bindable(event="propertyChange")]
      public function get u9() : Button
      {
         return this._3684u9;
      }
      
      public function set pTalentTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._688048580pTalentTitle;
         if(_loc2_ !== param1)
         {
            this._688048580pTalentTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pTalentTitle",_loc2_,param1));
         }
      }
      
      public function set infoCan(param1:Canvas) : void
      {
         var _loc2_:Object = this._1945386050infoCan;
         if(_loc2_ !== param1)
         {
            this._1945386050infoCan = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoCan",_loc2_,param1));
         }
      }
      
      public function set l1(param1:Image) : void
      {
         var _loc2_:Object = this._3397l1;
         if(_loc2_ !== param1)
         {
            this._3397l1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l1",_loc2_,param1));
         }
      }
      
      public function __u8_click(param1:MouseEvent) : void
      {
         upTalentSlot(8);
      }
      
      [Bindable(event="propertyChange")]
      private function get _point() : Number
      {
         return this._1468352367_point;
      }
      
      public function set i11(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._102473i11;
         if(_loc2_ !== param1)
         {
            this._102473i11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i11",_loc2_,param1));
         }
      }
      
      public function set l2(param1:Image) : void
      {
         var _loc2_:Object = this._3398l2;
         if(_loc2_ !== param1)
         {
            this._3398l2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l2",_loc2_,param1));
         }
      }
      
      public function set i10(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._102472i10;
         if(_loc2_ !== param1)
         {
            this._102472i10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i10",_loc2_,param1));
         }
      }
      
      public function set l5(param1:Image) : void
      {
         var _loc2_:Object = this._3401l5;
         if(_loc2_ !== param1)
         {
            this._3401l5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l5",_loc2_,param1));
         }
      }
      
      public function set l9(param1:Image) : void
      {
         var _loc2_:Object = this._3405l9;
         if(_loc2_ !== param1)
         {
            this._3405l9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l9",_loc2_,param1));
         }
      }
      
      public function set l6(param1:Image) : void
      {
         var _loc2_:Object = this._3402l6;
         if(_loc2_ !== param1)
         {
            this._3402l6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l6",_loc2_,param1));
         }
      }
      
      public function set l3(param1:Image) : void
      {
         var _loc2_:Object = this._3399l3;
         if(_loc2_ !== param1)
         {
            this._3399l3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l3",_loc2_,param1));
         }
      }
      
      public function set imgbg(param1:Image) : void
      {
         var _loc2_:Object = this._100319048imgbg;
         if(_loc2_ !== param1)
         {
            this._100319048imgbg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgbg",_loc2_,param1));
         }
      }
      
      private function freshTalentSlotData(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = 1;
         while(_loc2_ <= 11)
         {
            this["u" + _loc2_].visible = true;
            if(param1[this["i" + _loc2_].sid])
            {
               _loc3_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][Number(param1[this["i" + _loc2_].sid])];
               if(_loc2_ == 10 || _loc2_ == 11)
               {
                  if(!_core.player.petTalentData || !_core.player.petTalentData.inTal || !_core.player.petTalentData.inTal[this["i" + _loc2_].sid])
                  {
                     setTalentData(_loc3_,_loc2_);
                     if(_loc3_)
                     {
                        this["i" + _loc2_].movable = false;
                     }
                  }
               }
               else
               {
                  setTalentData(_loc3_,_loc2_);
               }
               this["l" + _loc2_].source = ResManager.getIconUrl(ToolKit.add(4130220000338,_loc3_.lv));
               if(ToolKit.isBigOrEqual(_loc3_.lv,5))
               {
                  this["u" + _loc2_].visible = false;
               }
            }
            else
            {
               _loc3_ = getEmptyTalentSlotData(_loc2_);
               setTalentData(_loc3_,_loc2_);
               this["l" + _loc2_].source = ResManager.getIconUrl(4130220000338);
               if(_loc2_ == 10 || _loc2_ == 11)
               {
                  if(_loc3_)
                  {
                     this["i" + _loc2_].movable = false;
                  }
               }
            }
            _loc2_++;
         }
      }
      
      private function _PetTalentPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pTalentTitle.text = param1;
         },"pTalentTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_LinkButton1.label = param1;
         },"_PetTalentPanel_LinkButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton1.setStyle("overSkin",param1);
         },"_PetTalentPanel_LinkButton1.overSkin");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton1.setStyle("upSkin",param1);
         },"_PetTalentPanel_LinkButton1.upSkin");
         result[3] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton1.setStyle("downSkin",param1);
         },"_PetTalentPanel_LinkButton1.downSkin");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_LinkButton2.label = param1;
         },"_PetTalentPanel_LinkButton2.label");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton2.setStyle("overSkin",param1);
         },"_PetTalentPanel_LinkButton2.overSkin");
         result[6] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton2.setStyle("upSkin",param1);
         },"_PetTalentPanel_LinkButton2.upSkin");
         result[7] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton2.setStyle("downSkin",param1);
         },"_PetTalentPanel_LinkButton2.downSkin");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_Label1.text = param1;
         },"_PetTalentPanel_Label1.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_Label1.toolTip = param1;
         },"_PetTalentPanel_Label1.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_Label2.text = param1;
         },"_PetTalentPanel_Label2.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_Label2.toolTip = param1;
         },"_PetTalentPanel_Label2.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_Label3.text = param1;
         },"_PetTalentPanel_Label3.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _point;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_Label4.text = param1;
         },"_PetTalentPanel_Label4.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _totalPowerL + "/850";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_Label5.text = param1;
         },"_PetTalentPanel_Label5.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_LinkButton3.label = param1;
         },"_PetTalentPanel_LinkButton3.label");
         result[16] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton3.setStyle("overSkin",param1);
         },"_PetTalentPanel_LinkButton3.overSkin");
         result[17] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton3.setStyle("upSkin",param1);
         },"_PetTalentPanel_LinkButton3.upSkin");
         result[18] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetTalentPanel_LinkButton3.setStyle("downSkin",param1);
         },"_PetTalentPanel_LinkButton3.downSkin");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i1.slotType = param1;
         },"i1.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i2.slotType = param1;
         },"i2.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i3.slotType = param1;
         },"i3.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i4.slotType = param1;
         },"i4.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i5.slotType = param1;
         },"i5.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i6.slotType = param1;
         },"i6.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i7.slotType = param1;
         },"i7.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i8.slotType = param1;
         },"i8.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i9.slotType = param1;
         },"i9.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i10.slotType = param1;
         },"i10.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            i11.slotType = param1;
         },"i11.slotType");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _rate + "%";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentPanel_Label6.text = param1;
         },"_PetTalentPanel_Label6.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            useGood.label = param1;
         },"useGood.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            useGood.toolTip = param1;
         },"useGood.toolTip");
         result[33] = binding;
         return result;
      }
      
      public function set u11(param1:Button) : void
      {
         var _loc2_:Object = this._114005u11;
         if(_loc2_ !== param1)
         {
            this._114005u11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u11",_loc2_,param1));
         }
      }
      
      public function set l7(param1:Image) : void
      {
         var _loc2_:Object = this._3403l7;
         if(_loc2_ !== param1)
         {
            this._3403l7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l7",_loc2_,param1));
         }
      }
      
      public function set l8(param1:Image) : void
      {
         var _loc2_:Object = this._3404l8;
         if(_loc2_ !== param1)
         {
            this._3404l8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l8",_loc2_,param1));
         }
      }
      
      public function set l4(param1:Image) : void
      {
         var _loc2_:Object = this._3400l4;
         if(_loc2_ !== param1)
         {
            this._3400l4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l4",_loc2_,param1));
         }
      }
      
      public function onInitTalentPanelData(param1:Object) : void
      {
         _core.player.petTalentData = param1;
         _firstLoadCid = _core.player.id;
         _pi = 1;
         right.visible = true;
         left.visible = false;
         useGood.selected = false;
         this.imgbg.source = ResManager.getIconUrl(_imageResCode[ToolKit.minus(_pi,1)]);
         initTalentPanelData(_core.player.petTalentData);
         updatePoint();
         updatePropData();
      }
      
      private function freshPanelDataByOneSlotOrStone(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         if(param2 != 2)
         {
            if(param1 <= 9)
            {
               this["i" + param1].reset();
               this["i" + param1].sid = ToolKit.add(_pi * 10000,param1);
            }
            else if(param1 >= 10 && param1 <= 11)
            {
               this["i" + param1].sid = ToolKit.add(_pi * 10000,param1);
               if(!_core.player.petTalentData || !_core.player.petTalentData.inTal || !_core.player.petTalentData.inTal[this["i" + _loc3_].sid])
               {
                  this["i" + param1].reset();
               }
            }
            if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.tal))
            {
               freshTalentSlotData(_core.player.petTalentData.tal);
            }
            else
            {
               freshTalentSlotData(new Object());
            }
         }
         if(param2 != 1)
         {
            _loc3_ = 10;
            while(_loc3_ <= 11)
            {
               this["i" + _loc3_].reset();
               this["i" + _loc3_].sid = ToolKit.add(_pi * 10000,_loc3_);
               _loc3_++;
            }
            if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.inTal))
            {
               freshTalentStoneData(_core.player.petTalentData.inTal);
            }
            else
            {
               freshTalentStoneData(new Object());
            }
            _getTotalPower();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get u7() : Button
      {
         return this._3682u7;
      }
      
      public function set u10(param1:Button) : void
      {
         var _loc2_:Object = this._114004u10;
         if(_loc2_ !== param1)
         {
            this._114004u10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u10",_loc2_,param1));
         }
      }
      
      public function set u3(param1:Button) : void
      {
         var _loc2_:Object = this._3678u3;
         if(_loc2_ !== param1)
         {
            this._3678u3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u3",_loc2_,param1));
         }
      }
      
      public function set u4(param1:Button) : void
      {
         var _loc2_:Object = this._3679u4;
         if(_loc2_ !== param1)
         {
            this._3679u4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u4",_loc2_,param1));
         }
      }
      
      private function setTalentData(param1:Object, param2:Number) : void
      {
         if(!param1)
         {
            return;
         }
         this["i" + param2].type = GamePredef.TBL_PET_TALENT;
         this["i" + param2].giid = param1.id;
         this["i" + param2].stackNum = 1;
         this["i" + param2].quality = 0;
         this["i" + param2].slotData = param1;
      }
      
      public function updateTalentDataTal(param1:Object) : void
      {
         _updateTalentDataTal(param1);
         if(!initialized || !param1)
         {
            return;
         }
         freshPanelData(1);
      }
      
      public function set u2(param1:Button) : void
      {
         var _loc2_:Object = this._3677u2;
         if(_loc2_ !== param1)
         {
            this._3677u2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u2",_loc2_,param1));
         }
      }
      
      public function set u6(param1:Button) : void
      {
         var _loc2_:Object = this._3681u6;
         if(_loc2_ !== param1)
         {
            this._3681u6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _totalPowerL() : Number
      {
         return this._1447937396_totalPowerL;
      }
      
      public function set u8(param1:Button) : void
      {
         var _loc2_:Object = this._3683u8;
         if(_loc2_ !== param1)
         {
            this._3683u8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u8",_loc2_,param1));
         }
      }
      
      public function set u1(param1:Button) : void
      {
         var _loc2_:Object = this._3676u1;
         if(_loc2_ !== param1)
         {
            this._3676u1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u1",_loc2_,param1));
         }
      }
      
      public function set u9(param1:Button) : void
      {
         var _loc2_:Object = this._3684u9;
         if(_loc2_ !== param1)
         {
            this._3684u9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u9",_loc2_,param1));
         }
      }
      
      public function set u5(param1:Button) : void
      {
         var _loc2_:Object = this._3680u5;
         if(_loc2_ !== param1)
         {
            this._3680u5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u5",_loc2_,param1));
         }
      }
      
      public function ___PetTalentPanel_LinkButton3_click(param1:MouseEvent) : void
      {
         changePanelVis();
      }
      
      public function set u7(param1:Button) : void
      {
         var _loc2_:Object = this._3682u7;
         if(_loc2_ !== param1)
         {
            this._3682u7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"u7",_loc2_,param1));
         }
      }
      
      public function __u5_click(param1:MouseEvent) : void
      {
         upTalentSlot(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get useGood() : CheckBox
      {
         return this._148398364useGood;
      }
      
      [Bindable(event="propertyChange")]
      public function get i1() : TalentSlot
      {
         return this._3304i1;
      }
      
      [Bindable(event="propertyChange")]
      public function get i2() : TalentSlot
      {
         return this._3305i2;
      }
      
      [Bindable(event="propertyChange")]
      public function get i3() : TalentSlot
      {
         return this._3306i3;
      }
      
      [Bindable(event="propertyChange")]
      public function get i4() : TalentSlot
      {
         return this._3307i4;
      }
      
      [Bindable(event="propertyChange")]
      public function get i5() : TalentSlot
      {
         return this._3308i5;
      }
      
      [Bindable(event="propertyChange")]
      public function get i6() : TalentSlot
      {
         return this._3309i6;
      }
      
      [Bindable(event="propertyChange")]
      public function get i7() : TalentSlot
      {
         return this._3310i7;
      }
      
      [Bindable(event="propertyChange")]
      public function get i8() : TalentSlot
      {
         return this._3311i8;
      }
      
      [Bindable(event="propertyChange")]
      public function get i9() : TalentSlot
      {
         return this._3312i9;
      }
      
      public function __u10_click(param1:MouseEvent) : void
      {
         upTalentSlot(10);
      }
      
      public function __u2_click(param1:MouseEvent) : void
      {
         upTalentSlot(2);
      }
      
      public function initTalentDataByClient() : void
      {
         initView();
         visible = true;
      }
      
      private function freshTalentStoneData(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = 10;
         while(_loc2_ <= 11)
         {
            if(param1[this["i" + _loc2_].sid])
            {
               _loc3_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][Number(param1[this["i" + _loc2_].sid])];
               setTalentData(_loc3_,_loc2_);
               if(_loc3_)
               {
                  this["i" + _loc2_].movable = true;
               }
            }
            else if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.tal) && Boolean(_core.player.petTalentData.tal[this["i" + _loc2_].sid]))
            {
               _loc3_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][Number(_core.player.petTalentData.tal[this["i" + _loc2_].sid])];
               setTalentData(_loc3_,_loc2_);
               if(_loc3_)
               {
                  this["i" + _loc2_].movable = false;
               }
            }
            else
            {
               _loc3_ = getEmptyTalentSlotData(_loc2_);
               setTalentData(_loc3_,_loc2_);
               if(_loc3_)
               {
                  this["i" + _loc2_].movable = false;
               }
            }
            _loc2_++;
         }
      }
      
      public function set l10(param1:Image) : void
      {
         var _loc2_:Object = this._105355l10;
         if(_loc2_ !== param1)
         {
            this._105355l10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l10",_loc2_,param1));
         }
      }
      
      public function set l11(param1:Image) : void
      {
         var _loc2_:Object = this._105356l11;
         if(_loc2_ !== param1)
         {
            this._105356l11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"l11",_loc2_,param1));
         }
      }
      
      private function initTalentPanelData(param1:Object) : void
      {
         freshPanelData(3);
      }
      
      public function updateTalentDataInTal(param1:Object) : void
      {
         _updateTalentDataInTal(param1);
         if(!initialized || !param1)
         {
            return;
         }
         freshPanelData(2);
      }
      
      private function set _totalPowerL(param1:Number) : void
      {
         var _loc2_:Object = this._1447937396_totalPowerL;
         if(_loc2_ !== param1)
         {
            this._1447937396_totalPowerL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_totalPowerL",_loc2_,param1));
         }
      }
      
      private function set _point(param1:Number) : void
      {
         var _loc2_:Object = this._1468352367_point;
         if(_loc2_ !== param1)
         {
            this._1468352367_point = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_point",_loc2_,param1));
         }
      }
      
      private function showFuncPanel() : void
      {
         var _loc1_:* = undefined;
         if(Boolean(_firstLoadCid && _core.player) && Boolean(_core.player.id) && _firstLoadCid == _core.player.id)
         {
            _loc1_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT_FUNC);
            if(_loc1_)
            {
               _loc1_.showFuncPanel();
            }
         }
      }
      
      public function __left_click(param1:MouseEvent) : void
      {
         setPage(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get l1() : Image
      {
         return this._3397l1;
      }
      
      [Bindable(event="propertyChange")]
      public function get l2() : Image
      {
         return this._3398l2;
      }
      
      [Bindable(event="propertyChange")]
      public function get l3() : Image
      {
         return this._3399l3;
      }
      
      [Bindable(event="propertyChange")]
      public function get l5() : Image
      {
         return this._3401l5;
      }
      
      private function getEmptyTalentSlotData(param1:Number) : Object
      {
         var _loc3_:Object = null;
         var _loc2_:Number = Number(this["i" + param1].sid);
         for each(_loc3_ in _core.data.gameDataIndex2[GamePredef.TBL_PET_TALENT][_loc2_])
         {
            if(Boolean(_loc3_) && Boolean(ToolKit.isEqual(_loc3_.lv,0)) && ToolKit.isEqual(_loc3_.exp,0))
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function changePanelVis() : void
      {
         if(infoCan.visible)
         {
            inText.visible = false;
            infoCan.visible = false;
            width = 600;
         }
         else
         {
            infoCan.visible = true;
            width = 765;
            inText.x = 600;
            inText.y = 33;
            inText.visible = true;
         }
         pTalentTitle.text = pTalentTitle.text;
      }
      
      [Bindable(event="propertyChange")]
      public function get l9() : Image
      {
         return this._3405l9;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgbg() : Image
      {
         return this._100319048imgbg;
      }
      
      [Bindable(event="propertyChange")]
      public function get l6() : Image
      {
         return this._3402l6;
      }
      
      public function __u7_click(param1:MouseEvent) : void
      {
         upTalentSlot(7);
      }
      
      [Bindable(event="propertyChange")]
      public function get l8() : Image
      {
         return this._3404l8;
      }
      
      [Bindable(event="propertyChange")]
      public function get u10() : Button
      {
         return this._114004u10;
      }
      
      [Bindable(event="propertyChange")]
      public function get u11() : Button
      {
         return this._114005u11;
      }
      
      [Bindable(event="propertyChange")]
      public function get l4() : Image
      {
         return this._3400l4;
      }
      
      [Bindable(event="propertyChange")]
      public function get l7() : Image
      {
         return this._3403l7;
      }
      
      private function set _rate(param1:Number) : void
      {
         var _loc2_:Object = this._91227583_rate;
         if(_loc2_ !== param1)
         {
            this._91227583_rate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_rate",_loc2_,param1));
         }
      }
      
      public function ___PetTalentPanel_LinkButton2_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get l10() : Image
      {
         return this._105355l10;
      }
      
      [Bindable(event="propertyChange")]
      public function get l11() : Image
      {
         return this._105356l11;
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.TALENT_PANEL_U[15].toString();
         _helpAlert = Alert.show(_loc1_,Language.TALENT_PANEL_U[14].toString(),Alert.YES,null,null);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetTalentPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetTalentPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetTalentPanelWatcherSetupUtil");
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
      
      public function updatePropData() : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         var _loc7_:Object = null;
         var _loc8_:* = undefined;
         if(!initialized)
         {
            return;
         }
         if(!_core.player.petTalentData)
         {
            inText.text = "";
            return;
         }
         inText.text = "";
         var _loc1_:Number = 0;
         var _loc2_:Boolean = true;
         var _loc3_:* = 0;
         while(_loc3_ <= ToolKit.minus(_needCheckProp.length,1))
         {
            _loc4_ = 0;
            _loc5_ = "";
            if(_core.player.petTalentData.tal)
            {
               for(_loc6_ in _core.player.petTalentData.tal)
               {
                  _loc7_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][Number(_core.player.petTalentData.tal[_loc6_])];
                  if((Boolean(_loc7_)) && ToolKit.isEqual(_loc7_.propType,_needCheckProp[_loc3_]))
                  {
                     _loc4_ = ToolKit.add(_loc4_,_loc7_.propVal);
                     if(Boolean(!_loc5_) && Boolean(_loc7_.preflag) && _loc7_.preflag == 1)
                     {
                        _loc5_ = "%";
                     }
                  }
               }
            }
            if(_core.player.petTalentData.inTal)
            {
               for(_loc8_ in _core.player.petTalentData.inTal)
               {
                  _loc7_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][Number(_core.player.petTalentData.inTal[_loc8_])];
                  if((Boolean(_loc7_)) && ToolKit.isEqual(_loc7_.propType,_needCheckProp[_loc3_]))
                  {
                     _loc4_ = ToolKit.add(_loc4_,_loc7_.propVal);
                     if(Boolean(!_loc5_) && Boolean(_loc7_.preflag) && _loc7_.preflag == 1)
                     {
                        _loc5_ = "%";
                     }
                  }
               }
            }
            _loc2_ = false;
            if(!ToolKit.isEqual(_loc4_,0))
            {
               if((_loc4_ / 100 * (1 + _rate / 100)).toString().indexOf(".") > 0)
               {
                  inText.text = inText.text + Language.TALENT_PANEL_INFOU[_loc3_] + "  +" + Math.floor(_loc4_ * (1 + _rate / 100)) / 100 + _loc5_ + "\n";
               }
               else
               {
                  inText.text = inText.text + Language.TALENT_PANEL_INFOU[_loc3_] + "  +" + _loc4_ / 100 * (1 + _rate / 100) + _loc5_ + "\n";
               }
            }
            _loc3_++;
         }
      }
      
      private function getNextTalentSlotData(param1:Number, param2:Number) : Object
      {
         var _loc4_:Object = null;
         var _loc3_:Number = Number(this["i" + param1].sid);
         for each(_loc4_ in _core.data.gameDataIndex2[GamePredef.TBL_PET_TALENT][_loc3_])
         {
            if(Boolean(_loc4_) && Boolean(ToolKit.isEqual(_loc4_.lv,param2)) && ToolKit.isEqual(_loc4_.exp,0))
            {
               return _loc4_;
            }
         }
         return null;
      }
      
      public function __u4_click(param1:MouseEvent) : void
      {
         upTalentSlot(4);
      }
      
      [Bindable(event="propertyChange")]
      private function get _rate() : Number
      {
         return this._91227583_rate;
      }
      
      public function __right_click(param1:MouseEvent) : void
      {
         setPage(1);
      }
      
      public function __u9_click(param1:MouseEvent) : void
      {
         upTalentSlot(9);
      }
      
      public function set useGood(param1:CheckBox) : void
      {
         var _loc2_:Object = this._148398364useGood;
         if(_loc2_ !== param1)
         {
            this._148398364useGood = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useGood",_loc2_,param1));
         }
      }
      
      public function __u1_click(param1:MouseEvent) : void
      {
         upTalentSlot(1);
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(Boolean(_core.player) && Boolean(_core.player.id) && _core.player.id != _firstLoadCid)
         {
            _core.player.petTalentData = new Object();
            _core.remote.call("initTalentPanelData",new Responder(onInitTalentPanelData));
         }
         else if(Boolean(_core.player) && !_core.player.petTalentData)
         {
            _core.player.petTalentData = new Object();
            _core.remote.call("initTalentPanelData",new Responder(onInitTalentPanelData));
         }
         else if(Boolean(_core.player) && Boolean(_core.player.id) && _core.player.id == _firstLoadCid)
         {
            initTalentPanelData(_core.player.petTalentData);
         }
      }
      
      public function set i4(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3307i4;
         if(_loc2_ !== param1)
         {
            this._3307i4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i4",_loc2_,param1));
         }
      }
      
      public function set i1(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3304i1;
         if(_loc2_ !== param1)
         {
            this._3304i1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i1",_loc2_,param1));
         }
      }
      
      public function set i5(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3308i5;
         if(_loc2_ !== param1)
         {
            this._3308i5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i5",_loc2_,param1));
         }
      }
      
      public function set i2(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3305i2;
         if(_loc2_ !== param1)
         {
            this._3305i2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i2",_loc2_,param1));
         }
      }
      
      public function set i6(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3309i6;
         if(_loc2_ !== param1)
         {
            this._3309i6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i6",_loc2_,param1));
         }
      }
      
      public function set i3(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3306i3;
         if(_loc2_ !== param1)
         {
            this._3306i3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i3",_loc2_,param1));
         }
      }
      
      public function set i7(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3310i7;
         if(_loc2_ !== param1)
         {
            this._3310i7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i7",_loc2_,param1));
         }
      }
      
      public function set i8(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3311i8;
         if(_loc2_ !== param1)
         {
            this._3311i8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i8",_loc2_,param1));
         }
      }
      
      public function set i9(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._3312i9;
         if(_loc2_ !== param1)
         {
            this._3312i9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i9",_loc2_,param1));
         }
      }
      
      public function set inText(param1:IntroText) : void
      {
         var _loc2_:Object = this._1184715790inText;
         if(_loc2_ !== param1)
         {
            this._1184715790inText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inText",_loc2_,param1));
         }
      }
      
      private function getTalentStoneData(param1:Number) : Object
      {
         var _loc3_:Object = null;
         var _loc2_:Number = Number(this["i" + param1].sid);
         for each(_loc3_ in _core.data.gameDataIndex2[GamePredef.TBL_PET_TALENT][_loc2_])
         {
            if(Boolean(_loc3_) && Boolean(ToolKit.isEqual(_loc3_.lv,0)) && ToolKit.isEqual(_loc3_.exp,0))
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function checkSpecSlotUp(param1:int) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(param1 == 10)
         {
            _loc2_ = 0;
            _loc3_ = 1;
            while(_loc3_ <= 4)
            {
               if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.tal) && Boolean(_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_loc3_)]))
               {
                  _loc4_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_loc3_)]];
                  if(_loc4_)
                  {
                     _loc2_ = ToolKit.add(_loc2_,_loc4_.lv);
                  }
               }
               _loc3_++;
            }
            if(_loc2_ >= 20)
            {
               return true;
            }
            _core.sysMidNote(Language.TALENT_PANEL_U[8]);
         }
         else
         {
            _loc2_ = 0;
            _loc3_ = 1;
            while(_loc3_ <= 9)
            {
               if(Boolean(_core.player.petTalentData) && Boolean(_core.player.petTalentData.tal) && Boolean(_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_loc3_)]))
               {
                  _loc4_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][_core.player.petTalentData.tal[ToolKit.add(_pi * 10000,_loc3_)]];
                  if(_loc4_)
                  {
                     _loc2_ = ToolKit.add(_loc2_,_loc4_.lv);
                  }
               }
               _loc3_++;
            }
            if(_loc2_ >= 35)
            {
               return true;
            }
            _core.sysMidNote(Language.TALENT_PANEL_U[9]);
         }
         return false;
      }
   }
}

