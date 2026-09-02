package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.RendererFlopButton;
   import com.qeedoo.ui.view.comp.RendererItemArray;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FlopPassPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const CROSS_CONTENTION_UINT_ID_START:int = 600000;
      
      private var _112866ri9:ItemSlot;
      
      private var _108612796rn701:Label;
      
      private var _108611843rn609:Label;
      
      private var _106438211pass4:Image;
      
      private var _108462886ri607:ItemSlot;
      
      private var _passConf:* = new Object();
      
      private var _108610875rn502:Label;
      
      private var _108607995rn205:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _108460965ri408:ItemSlot;
      
      private var _108610880rn507:Label;
      
      private var _108613765rn809:Label;
      
      private var _108611839rn605:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _108464801ri800:ItemSlot;
      
      private var _passFlag:Object = {
         1:4130220000383,
         2:4130220000385,
         3:4130220000384,
         4:4130220000386
      };
      
      private var _108608959rn308:Label;
      
      private var _104147ig1:Image;
      
      private var _113014rn2:Label;
      
      private var _108612797rn702:Label;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _106438212pass5:Image;
      
      public var _FlopPassPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _108462887ri608:ItemSlot;
      
      private var _loadcid:Number = 0;
      
      private var _108610876rn503:Label;
      
      private var _108607996rn206:Label;
      
      private var _canClick:Boolean = true;
      
      private var _108460966ri409:ItemSlot;
      
      private var _108610881rn508:Label;
      
      private var _1104960551flopRankGrid:DataGrid;
      
      private var _108464802ri801:ItemSlot;
      
      private var _106438208pass1:Image;
      
      private var _108459035ri200:ItemSlot;
      
      private var _112858ri1:ItemSlot;
      
      private var _108612798rn703:Label;
      
      private var _106438213pass6:Image;
      
      private var _104149ig3:Image;
      
      private var _113016rn4:Label;
      
      private var _108459040ri205:ItemSlot;
      
      private var _108462888ri609:ItemSlot;
      
      private var _104150ig4:Image;
      
      private var _108610877rn504:Label;
      
      private var _108607997rn207:Label;
      
      private var _108610882rn509:Label;
      
      private var _1863324753bangBtn3:BasicGlowButton;
      
      private var _108464803ri802:ItemSlot;
      
      private var _106438209pass2:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _108459036ri201:ItemSlot;
      
      private var _108609912rn400:Label;
      
      private var _108612799rn704:Label;
      
      private var _106438214pass7:Image;
      
      private var _108459041ri206:ItemSlot;
      
      private var _108607030rn101:Label;
      
      private var _113018rn6:Label;
      
      private var _112861ri4:ItemSlot;
      
      private var _108610878rn505:Label;
      
      private var _108463840ri700:ItemSlot;
      
      private var _108460000ri304:ItemSlot;
      
      private var _108607998rn208:Label;
      
      private var _104152ig6:Image;
      
      private var _timer:Timer = new Timer(40);
      
      private var _108464804ri803:ItemSlot;
      
      private var _108459037ri202:ItemSlot;
      
      private var _108609913rn401:Label;
      
      private var _108465762ri900:ItemSlot;
      
      private var _106438215pass8:Image;
      
      private var _108459042ri207:ItemSlot;
      
      private var _charInfo:* = new Object();
      
      private var _1863324749bangBtn7:BasicGlowButton;
      
      private var _108607031rn102:Label;
      
      private var _1863324752bangBtn4:BasicGlowButton;
      
      private var _108610879rn506:Label;
      
      private var _108463841ri701:ItemSlot;
      
      private var _108460001ri305:ItemSlot;
      
      private var _108607999rn209:Label;
      
      private var _108458074ri100:ItemSlot;
      
      private var _112863ri6:ItemSlot;
      
      private var _108461920ri502:ItemSlot;
      
      private var _113021rn9:Label;
      
      private var _newDbd:Object = {};
      
      private var _582286198introCon:IntroText;
      
      private var _108459038ri203:ItemSlot;
      
      private var _108614720rn903:Label;
      
      private var _104154ig8:Image;
      
      private var _108464805ri804:ItemSlot;
      
      private var _108609914rn402:Label;
      
      private var _108465763ri901:ItemSlot;
      
      private var _108464810ri809:ItemSlot;
      
      private var _106438216pass9:Image;
      
      private var _108459043ri208:ItemSlot;
      
      private var _108607032rn103:Label;
      
      private var _108463842ri702:ItemSlot;
      
      private var _108460002ri306:ItemSlot;
      
      private var _108458075ri101:ItemSlot;
      
      private var _108608951rn300:Label;
      
      private var _108458080ri106:ItemSlot;
      
      private var _108461921ri503:ItemSlot;
      
      private var _func:Function;
      
      private var _108464806ri805:ItemSlot;
      
      private var _version:String = "-9999";
      
      private var _112865ri8:ItemSlot;
      
      private var _108459039ri204:ItemSlot;
      
      private var _108614721rn904:Label;
      
      private var _1863324751bangBtn5:BasicGlowButton;
      
      private var _108609915rn403:Label;
      
      private var _108465764ri902:ItemSlot;
      
      private var _108459044ri209:ItemSlot;
      
      private var _108612800rn705:Label;
      
      private var _108607033rn104:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _108609920rn408:Label;
      
      public var _FlopPassPanel_DataGridColumn3:DataGridColumn;
      
      public var _FlopPassPanel_DataGridColumn4:DataGridColumn;
      
      public var _FlopPassPanel_DataGridColumn5:DataGridColumn;
      
      public var _FlopPassPanel_DataGridColumn1:DataGridColumn;
      
      public var _FlopPassPanel_DataGridColumn2:DataGridColumn;
      
      private var _108463843ri703:ItemSlot;
      
      private var _108460003ri307:ItemSlot;
      
      private var _108458076ri102:ItemSlot;
      
      private var _808329852vsFlop:ViewStack;
      
      private var _108608952rn301:Label;
      
      private var _108458081ri107:ItemSlot;
      
      private var _113013rn1:Label;
      
      private var _108461922ri504:ItemSlot;
      
      private var _108464807ri806:ItemSlot;
      
      private var _108614717rn900:Label;
      
      private var _108614722rn905:Label;
      
      private var _2941422_pro:Number = 0;
      
      private var _alert:Alert;
      
      private var _108607029rn100:Label;
      
      private var _108609916rn404:Label;
      
      private var _108462880ri601:ItemSlot;
      
      private var _108465765ri903:ItemSlot;
      
      private var _108612801rn706:Label;
      
      private var _108609921rn409:Label;
      
      private var _108465770ri908:ItemSlot;
      
      private var _108607034rn105:Label;
      
      private var _108463844ri704:ItemSlot;
      
      private var _108460004ri308:ItemSlot;
      
      private var _108458077ri103:ItemSlot;
      
      private var _1863324750bangBtn6:BasicGlowButton;
      
      private var _108461918ri500:ItemSlot;
      
      private var _108614718rn901:Label;
      
      private var _108608953rn302:Label;
      
      private var _108458082ri108:ItemSlot;
      
      private var _108461923ri505:ItemSlot;
      
      private var _108464808ri807:ItemSlot;
      
      private var _94627080check:CheckBox;
      
      private var _108459996ri300:ItemSlot;
      
      private var _108614723rn906:Label;
      
      private var _104148ig2:Image;
      
      private var _113015rn3:Label;
      
      private var _108609917rn405:Label;
      
      private var _108462881ri602:ItemSlot;
      
      private var _108465766ri904:ItemSlot;
      
      private var _serverId:Number = 0;
      
      private var _108612802rn707:Label;
      
      private var _108607990rn200:Label;
      
      private var _108607035rn106:Label;
      
      private var _108465771ri909:ItemSlot;
      
      private var _108460960ri403:ItemSlot;
      
      private var _108463845ri705:ItemSlot;
      
      private var _108460005ri309:ItemSlot;
      
      private var _108458078ri104:ItemSlot;
      
      private var _108613760rn804:Label;
      
      private var _108461919ri501:ItemSlot;
      
      private var _108611834rn600:Label;
      
      private var _108614719rn902:Label;
      
      private var _108608954rn303:Label;
      
      private var _108458083ri109:ItemSlot;
      
      private var _108461924ri506:ItemSlot;
      
      private var _108464809ri808:ItemSlot;
      
      private var _108459997ri301:ItemSlot;
      
      private var _108614724rn907:Label;
      
      private var _112859ri2:ItemSlot;
      
      private var _108609918rn406:Label;
      
      private var _108462882ri603:ItemSlot;
      
      private var _108465767ri905:ItemSlot;
      
      public var _FlopPassPanel_Label104:Label;
      
      private var _113017rn5:Label;
      
      private var _112860ri3:ItemSlot;
      
      private var _108613756rn800:Label;
      
      private var _108612803rn708:Label;
      
      private var _108607991rn201:Label;
      
      public var _FlopPassPanel_Label115:Label;
      
      private var _isRR:Boolean = false;
      
      private var _108607036rn107:Label;
      
      private var _104151ig5:Image;
      
      private var _108460961ri404:ItemSlot;
      
      private var _108463846ri706:ItemSlot;
      
      private var _3503451rn10:Label;
      
      private var _108458079ri105:ItemSlot;
      
      private var _108613761rn805:Label;
      
      public var _FlopPassPanel_Label126:Label;
      
      public var _FlopPassPanel_Label128:Label;
      
      private var _108611835rn601:Label;
      
      private var _108608955rn304:Label;
      
      public var _FlopPassPanel_Label130:Label;
      
      private var _108461925ri507:ItemSlot;
      
      private var _108459998ri302:ItemSlot;
      
      private var _108611840rn606:Label;
      
      private var _108614725rn908:Label;
      
      private var _108608960rn309:Label;
      
      private var _108609919rn407:Label;
      
      private var _108462883ri604:ItemSlot;
      
      private var _108465768ri906:ItemSlot;
      
      private var _108460957ri400:ItemSlot;
      
      private var _108613757rn801:Label;
      
      private var _108612804rn709:Label;
      
      private var _108607992rn202:Label;
      
      private var _108607037rn108:Label;
      
      private var _113019rn7:Label;
      
      private var _112862ri5:ItemSlot;
      
      private var _108460962ri405:ItemSlot;
      
      private var _108463847ri707:ItemSlot;
      
      private var _108613762rn806:Label;
      
      private var _clickDelay:Number = 0;
      
      private var _108611836rn602:Label;
      
      private var _104153ig7:Image;
      
      public var _FlopPassPanel_Label10:Label;
      
      private var _113020rn8:Label;
      
      public var _FlopPassPanel_Label13:Label;
      
      private var _108608956rn305:Label;
      
      public var _FlopPassPanel_Label16:Label;
      
      public var _FlopPassPanel_Label19:Label;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _108462879ri600:ItemSlot;
      
      private var _108461926ri508:ItemSlot;
      
      public var _FlopPassPanel_Label22:Label;
      
      private var _108459999ri303:ItemSlot;
      
      public var _FlopPassPanel_Label25:Label;
      
      private var _108611841rn607:Label;
      
      private var _108614726rn909:Label;
      
      private var _108462884ri605:ItemSlot;
      
      public var _FlopPassPanel_Label38:Label;
      
      private var _108465769ri907:ItemSlot;
      
      private var _108460958ri401:ItemSlot;
      
      private var _108610873rn500:Label;
      
      private var _108613758rn802:Label;
      
      public var _FlopPassPanel_Label49:Label;
      
      private var _108607993rn203:Label;
      
      private var _108607038rn109:Label;
      
      private var _108460963ri406:ItemSlot;
      
      private var _108463848ri708:ItemSlot;
      
      private var _108613763rn807:Label;
      
      public var _FlopPassPanel_Label60:Label;
      
      private var _112864ri7:ItemSlot;
      
      private var _108611837rn603:Label;
      
      private var _108608957rn306:Label;
      
      public var _FlopPassPanel_Label71:Label;
      
      private var _108461927ri509:ItemSlot;
      
      private var _104155ig9:Image;
      
      private var _108612795rn700:Label;
      
      private var _108611842rn608:Label;
      
      public var _FlopPassPanel_Label1:Label;
      
      private var _106438210pass3:Image;
      
      public var _FlopPassPanel_Label7:Label;
      
      public var _FlopPassPanel_Label4:Label;
      
      public var _FlopPassPanel_Label82:Label;
      
      private var _108462885ri606:ItemSlot;
      
      private var _108460959ri402:ItemSlot;
      
      public var _FlopPassPanel_Label93:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _108610874rn501:Label;
      
      private var _108613759rn803:Label;
      
      private var _108607994rn204:Label;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _108460964ri407:ItemSlot;
      
      private var _108463849ri709:ItemSlot;
      
      private var _1480570871_check:Boolean = false;
      
      private var _108613764rn808:Label;
      
      private var _1668877622_nowpro:Number = 0;
      
      private var _113012rn0:Label;
      
      private var _108611838rn604:Label;
      
      private var _108608958rn307:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":676,
               "height":448,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FlopPassPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn0",
                  "events":{"click":"__bangBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "labelPlacement":"bottom",
                        "width":78,
                        "x":10,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn1",
                  "events":{"click":"__bangBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "width":78,
                        "x":86,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn2",
                  "events":{"click":"__bangBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "width":78,
                        "x":163,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn3",
                  "events":{"click":"__bangBtn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "width":78,
                        "x":239,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsFlop",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "69";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig1",
                                    "events":{"click":"__ig1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":27,
                                          "y":26,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig2",
                                    "events":{"click":"__ig2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":122,
                                          "y":26,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig3",
                                    "events":{"click":"__ig3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":216,
                                          "y":26,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig4",
                                    "events":{"click":"__ig4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":27,
                                          "y":120,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig5",
                                    "events":{"click":"__ig5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":122,
                                          "y":120,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig6",
                                    "events":{"click":"__ig6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":216,
                                          "y":120,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig7",
                                    "events":{"click":"__ig7_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":27,
                                          "y":213,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig8",
                                    "events":{"click":"__ig8_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":122,
                                          "y":213,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ig9",
                                    "events":{"click":"__ig9_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":216,
                                          "y":213,
                                          "width":95,
                                          "height":95,
                                          "useHandCursor":true,
                                          "buttonMode":true,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":346,
                                          "y":26,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
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
                                          "x":440,
                                          "y":26,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
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
                                          "x":534,
                                          "y":26,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label7",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
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
                                          "x":346,
                                          "y":120,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label10",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
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
                                          "x":440,
                                          "y":120,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label13",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn5",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
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
                                          "x":534,
                                          "y":120,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label16",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
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
                                          "x":346,
                                          "y":213,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label19",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn7",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
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
                                          "x":440,
                                          "y":213,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label22",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn8",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
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
                                          "x":534,
                                          "y":213,
                                          "styleName":"RoundedGradientBorder",
                                          "width":95,
                                          "height":95,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label25",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":22,
                                                   "y":9,
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":74,
                                                   "text":"X",
                                                   "width":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn9",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"pass9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "visible":false,
                                                   "x":50,
                                                   "y":27,
                                                   "width":45,
                                                   "height":68
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn4",
                                    "events":{"click":"__bangBtn4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"HorizontalTab",
                                          "width":152,
                                          "x":65,
                                          "y":326,
                                          "height":33
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn5",
                                    "events":{"click":"__bangBtn5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"HorizontalTab",
                                          "width":78,
                                          "x":323,
                                          "y":332
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn6",
                                    "events":{"click":"__bangBtn6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"HorizontalTab",
                                          "width":78,
                                          "x":427,
                                          "y":332
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"bangBtn7",
                                    "events":{"click":"__bangBtn7_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"HorizontalTab",
                                          "width":112,
                                          "x":534,
                                          "y":332
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"check",
                                    "events":{"change":"__check_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":41,
                                          "y":5
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":13,
                                          "y":10,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri100",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn100",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri101",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn101",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri102",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn102",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri103",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn103",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri104",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn104",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri105",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn105",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri106",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn106",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri107",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn107",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri108",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn108",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri109",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn109",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label38",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":16,
                                          "y":118,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri200",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn200",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri201",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn201",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri202",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn202",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri203",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn203",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri204",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn204",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri205",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn205",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri206",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn206",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri207",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn207",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri208",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn208",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri209",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn209",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label49",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":16,
                                          "y":226,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri300",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn300",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri301",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn301",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri302",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn302",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri303",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn303",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri304",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn304",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri305",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn305",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri306",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn306",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri307",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn307",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri308",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn308",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri309",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn309",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label60",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":16,
                                          "y":334,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri400",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn400",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri401",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn401",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri402",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn402",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri403",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn403",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri404",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn404",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri405",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn405",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri406",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn406",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri407",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn407",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri408",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn408",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri409",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn409",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label71",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":16,
                                          "y":442,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri500",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn500",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri501",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn501",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri502",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn502",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri503",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn503",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri504",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn504",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri505",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn505",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri506",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn506",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri507",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn507",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri508",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn508",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri509",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn509",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label82",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":16,
                                          "y":550,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri600",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn600",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri601",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn601",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri602",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn602",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri603",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn603",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri604",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn604",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri605",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn605",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri606",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn606",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri607",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn607",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri608",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn608",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri609",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn609",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label93",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":16,
                                          "y":658,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri700",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn700",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri701",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn701",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri702",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn702",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri703",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn703",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri704",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn704",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri705",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn705",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri706",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn706",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri707",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn707",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri708",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn708",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri709",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn709",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label104",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":16,
                                          "y":766,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri800",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn800",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri801",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn801",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri802",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn802",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri803",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn803",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri804",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn804",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri805",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn805",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri806",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn806",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri807",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn807",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri808",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn808",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri809",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn809",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label115",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "width":620,
                                          "height":100,
                                          "x":16,
                                          "y":874,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri900",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn900",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":41,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri901",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn901",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":101,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri902",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":145.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn902",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":156,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri903",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":203.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn903",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri904",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn904",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri905",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn905",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":331,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri906",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":373.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn906",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":384,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri907",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":432.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn907",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":443,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri908",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":489.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn908",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":500,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"ri909",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":544.5,
                                                   "y":32,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"rn909",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":555,
                                                   "y":74,
                                                   "text":"Label",
                                                   "width":54
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_FlopPassPanel_Label126",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":29,
                                                   "y":10,
                                                   "width":136
                                                };
                                             }
                                          })]
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"introCon",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "10";
                                       this.left = "15";
                                       this.right = "9";
                                       this.bottom = "10";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "events":{"show":"___FlopPassPanel_Canvas22_show"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"flopRankGrid",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingTop = 1;
                                       this.paddingBottom = 1;
                                       this.left = "10";
                                       this.top = "10";
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "variableRowHeight":true,
                                          "draggableColumns":false,
                                          "columns":[_FlopPassPanel_DataGridColumn1_i(),_FlopPassPanel_DataGridColumn2_i(),_FlopPassPanel_DataGridColumn3_i(),_FlopPassPanel_DataGridColumn4_i(),_FlopPassPanel_DataGridColumn5_i()]
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"rn0",
                  "stylesFactory":function():void
                  {
                     this.color = 65535;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":546,
                        "y":51,
                        "text":"闯关个数:",
                        "width":68
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_FlopPassPanel_Label128",
                  "stylesFactory":function():void
                  {
                     this.color = 65535;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":606,
                        "y":51,
                        "width":44
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"rn10",
                  "stylesFactory":function():void
                  {
                     this.color = 65535;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":434,
                        "y":51,
                        "text":"当前关卡:",
                        "width":68
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_FlopPassPanel_Label130",
                  "stylesFactory":function():void
                  {
                     this.color = 65535;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":494,
                        "y":51,
                        "width":44
                     };
                  }
               })]
            };
         }
      });
      
      public function FlopPassPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 676;
         this.height = 448;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___FlopPassPanel_DragableCanvas1_creationComplete);
      }
      
      public static function getServerName(param1:Number) : String
      {
         var _loc2_:int = 0;
         if(param1 >= CROSS_CONTENTION_UINT_ID_START)
         {
            _loc2_ = (param1 + 1) % CROSS_CONTENTION_UINT_ID_START;
            return Language.CROSS_CONTENTION_PANEL_U[161] + _loc2_;
         }
         if(param1 >= 500 && param1 <= 799)
         {
            return GamePredef.CROSS_CONTENTION_UNITED_SERVER_NAME[param1];
         }
         if(param1 >= 0 && param1 < 500 || param1 >= 800)
         {
            return param1.toString();
         }
         return "";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FlopPassPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _check() : Boolean
      {
         return this._1480570871_check;
      }
      
      private function set _check(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1480570871_check;
         if(_loc2_ !== param1)
         {
            this._1480570871_check = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_check",_loc2_,param1));
         }
      }
      
      public function set ri200(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459035ri200;
         if(_loc2_ !== param1)
         {
            this._108459035ri200 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri200",_loc2_,param1));
         }
      }
      
      public function set ri201(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459036ri201;
         if(_loc2_ !== param1)
         {
            this._108459036ri201 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri201",_loc2_,param1));
         }
      }
      
      public function set ri202(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459037ri202;
         if(_loc2_ !== param1)
         {
            this._108459037ri202 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri202",_loc2_,param1));
         }
      }
      
      public function set ri203(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459038ri203;
         if(_loc2_ !== param1)
         {
            this._108459038ri203 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri203",_loc2_,param1));
         }
      }
      
      public function set ri206(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459041ri206;
         if(_loc2_ !== param1)
         {
            this._108459041ri206 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri206",_loc2_,param1));
         }
      }
      
      public function set ri207(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459042ri207;
         if(_loc2_ !== param1)
         {
            this._108459042ri207 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri207",_loc2_,param1));
         }
      }
      
      public function set ri208(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459043ri208;
         if(_loc2_ !== param1)
         {
            this._108459043ri208 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri208",_loc2_,param1));
         }
      }
      
      public function set ri209(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459044ri209;
         if(_loc2_ !== param1)
         {
            this._108459044ri209 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri209",_loc2_,param1));
         }
      }
      
      public function set ri204(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459039ri204;
         if(_loc2_ !== param1)
         {
            this._108459039ri204 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri204",_loc2_,param1));
         }
      }
      
      public function set ri205(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459040ri205;
         if(_loc2_ !== param1)
         {
            this._108459040ri205 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri205",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri100() : ItemSlot
      {
         return this._108458074ri100;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri101() : ItemSlot
      {
         return this._108458075ri101;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri102() : ItemSlot
      {
         return this._108458076ri102;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri103() : ItemSlot
      {
         return this._108458077ri103;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri104() : ItemSlot
      {
         return this._108458078ri104;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri105() : ItemSlot
      {
         return this._108458079ri105;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri106() : ItemSlot
      {
         return this._108458080ri106;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri108() : ItemSlot
      {
         return this._108458082ri108;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri109() : ItemSlot
      {
         return this._108458083ri109;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri107() : ItemSlot
      {
         return this._108458081ri107;
      }
      
      public function set rn900(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614717rn900;
         if(_loc2_ !== param1)
         {
            this._108614717rn900 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn900",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn803() : Label
      {
         return this._108613759rn803;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn805() : Label
      {
         return this._108613761rn805;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn806() : Label
      {
         return this._108613762rn806;
      }
      
      public function __ig2_click(param1:MouseEvent) : void
      {
         flopCard(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get rn802() : Label
      {
         return this._108613758rn802;
      }
      
      public function set rn907(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614724rn907;
         if(_loc2_ !== param1)
         {
            this._108614724rn907 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn907",_loc2_,param1));
         }
      }
      
      public function set rn904(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614721rn904;
         if(_loc2_ !== param1)
         {
            this._108614721rn904 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn904",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn807() : Label
      {
         return this._108613763rn807;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn800() : Label
      {
         return this._108613756rn800;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn801() : Label
      {
         return this._108613757rn801;
      }
      
      public function set rn902(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614719rn902;
         if(_loc2_ !== param1)
         {
            this._108614719rn902 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn902",_loc2_,param1));
         }
      }
      
      public function set rn908(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614725rn908;
         if(_loc2_ !== param1)
         {
            this._108614725rn908 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn908",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn808() : Label
      {
         return this._108613764rn808;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn804() : Label
      {
         return this._108613760rn804;
      }
      
      public function set rn905(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614722rn905;
         if(_loc2_ !== param1)
         {
            this._108614722rn905 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn905",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn809() : Label
      {
         return this._108613765rn809;
      }
      
      public function set rn901(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614718rn901;
         if(_loc2_ !== param1)
         {
            this._108614718rn901 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn901",_loc2_,param1));
         }
      }
      
      public function set rn903(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614720rn903;
         if(_loc2_ !== param1)
         {
            this._108614720rn903 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn903",_loc2_,param1));
         }
      }
      
      public function set rn909(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614726rn909;
         if(_loc2_ !== param1)
         {
            this._108614726rn909 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn909",_loc2_,param1));
         }
      }
      
      public function set rn906(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108614723rn906;
         if(_loc2_ !== param1)
         {
            this._108614723rn906 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn906",_loc2_,param1));
         }
      }
      
      public function set ri100(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458074ri100;
         if(_loc2_ !== param1)
         {
            this._108458074ri100 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri100",_loc2_,param1));
         }
      }
      
      public function set ri101(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458075ri101;
         if(_loc2_ !== param1)
         {
            this._108458075ri101 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri101",_loc2_,param1));
         }
      }
      
      public function set ri102(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458076ri102;
         if(_loc2_ !== param1)
         {
            this._108458076ri102 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri102",_loc2_,param1));
         }
      }
      
      public function set ri104(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458078ri104;
         if(_loc2_ !== param1)
         {
            this._108458078ri104 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri104",_loc2_,param1));
         }
      }
      
      public function set ri105(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458079ri105;
         if(_loc2_ !== param1)
         {
            this._108458079ri105 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri105",_loc2_,param1));
         }
      }
      
      public function set ri106(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458080ri106;
         if(_loc2_ !== param1)
         {
            this._108458080ri106 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri106",_loc2_,param1));
         }
      }
      
      public function set ri103(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458077ri103;
         if(_loc2_ !== param1)
         {
            this._108458077ri103 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri103",_loc2_,param1));
         }
      }
      
      public function set ri108(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458082ri108;
         if(_loc2_ !== param1)
         {
            this._108458082ri108 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri108",_loc2_,param1));
         }
      }
      
      public function __ig7_click(param1:MouseEvent) : void
      {
         flopCard(7);
      }
      
      public function set ri109(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458083ri109;
         if(_loc2_ !== param1)
         {
            this._108458083ri109 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri109",_loc2_,param1));
         }
      }
      
      public function __bangBtn3_click(param1:MouseEvent) : void
      {
         changeView(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get ri2() : ItemSlot
      {
         return this._112859ri2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri3() : ItemSlot
      {
         return this._112860ri3;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri4() : ItemSlot
      {
         return this._112861ri4;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri5() : ItemSlot
      {
         return this._112862ri5;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri6() : ItemSlot
      {
         return this._112863ri6;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri1() : ItemSlot
      {
         return this._112858ri1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri9() : ItemSlot
      {
         return this._112866ri9;
      }
      
      public function set ri107(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108458081ri107;
         if(_loc2_ !== param1)
         {
            this._108458081ri107 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri107",_loc2_,param1));
         }
      }
      
      private function _FlopPassPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _FlopPassPanel_DataGridColumn4 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 220;
         _loc1_.itemRenderer = _FlopPassPanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_FlopPassPanel_DataGridColumn4",_FlopPassPanel_DataGridColumn4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri7() : ItemSlot
      {
         return this._112864ri7;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri8() : ItemSlot
      {
         return this._112865ri8;
      }
      
      private function loadFlopRank() : void
      {
         _core.remote.call("loadFlopRank",new Responder(onLoadFlopRank));
      }
      
      [Bindable(event="propertyChange")]
      public function get rn601() : Label
      {
         return this._108611835rn601;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn603() : Label
      {
         return this._108611837rn603;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn604() : Label
      {
         return this._108611838rn604;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn605() : Label
      {
         return this._108611839rn605;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn608() : Label
      {
         return this._108611842rn608;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn602() : Label
      {
         return this._108611836rn602;
      }
      
      public function set rn806(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613762rn806;
         if(_loc2_ !== param1)
         {
            this._108613762rn806 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn806",_loc2_,param1));
         }
      }
      
      public function set rn803(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613759rn803;
         if(_loc2_ !== param1)
         {
            this._108613759rn803 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn803",_loc2_,param1));
         }
      }
      
      public function set rn807(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613763rn807;
         if(_loc2_ !== param1)
         {
            this._108613763rn807 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn807",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn606() : Label
      {
         return this._108611840rn606;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn607() : Label
      {
         return this._108611841rn607;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn600() : Label
      {
         return this._108611834rn600;
      }
      
      public function set rn804(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613760rn804;
         if(_loc2_ !== param1)
         {
            this._108613760rn804 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn804",_loc2_,param1));
         }
      }
      
      public function set rn800(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613756rn800;
         if(_loc2_ !== param1)
         {
            this._108613756rn800 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn800",_loc2_,param1));
         }
      }
      
      public function set rn805(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613761rn805;
         if(_loc2_ !== param1)
         {
            this._108613761rn805 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn805",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn609() : Label
      {
         return this._108611843rn609;
      }
      
      public function set rn802(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613758rn802;
         if(_loc2_ !== param1)
         {
            this._108613758rn802 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn802",_loc2_,param1));
         }
      }
      
      public function set rn808(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613764rn808;
         if(_loc2_ !== param1)
         {
            this._108613764rn808 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn808",_loc2_,param1));
         }
      }
      
      public function set rn809(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613765rn809;
         if(_loc2_ !== param1)
         {
            this._108613765rn809 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn809",_loc2_,param1));
         }
      }
      
      public function set rn801(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108613757rn801;
         if(_loc2_ !== param1)
         {
            this._108613757rn801 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn801",_loc2_,param1));
         }
      }
      
      private function freshItem() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("freshCharFlopPassItemByClient",null);
            }
         };
         var str:String = Language.FLOP_PASS_PANEL[31];
         if(_isRR)
         {
            str = str.replace("{num}",_passConf.r / 10).replace(Language.FLOP_PASS_PANEL[35],Language.FLOP_PASS_PANEL[36]);
         }
         else
         {
            str = str.replace("{num}",_passConf.r);
         }
         _alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get rn0() : Label
      {
         return this._113012rn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn1() : Label
      {
         return this._113013rn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn2() : Label
      {
         return this._113014rn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn3() : Label
      {
         return this._113015rn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn4() : Label
      {
         return this._113016rn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn401() : Label
      {
         return this._108609913rn401;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn403() : Label
      {
         return this._108609915rn403;
      }
      
      private function _FlopPassPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _FlopPassPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "user";
         _loc1_.width = 80;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_FlopPassPanel_DataGridColumn2",_FlopPassPanel_DataGridColumn2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn405() : Label
      {
         return this._108609917rn405;
      }
      
      private function initFlopPassAwardData() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Object = null;
         var _loc1_:Number = 1;
         while(_loc1_ <= 9)
         {
            _loc2_ = _loc1_ * 100;
            _loc3_ = 0;
            while(_loc3_ <= 9)
            {
               _loc4_ = _loc2_ + _loc3_;
               cleanAwardItem(_loc4_);
               _loc3_++;
            }
            if(Boolean(_passConf.pi) && Boolean(_passConf.pi[_loc1_]))
            {
               _loc2_ = _loc1_ * 100;
               _loc5_ = 0;
               for(_loc6_ in _passConf.pi[_loc1_])
               {
                  _loc7_ = _passConf.pi[_loc1_][_loc6_];
                  _loc8_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc7_.iid];
                  if(_loc8_)
                  {
                     _loc4_ = _loc2_ + _loc5_;
                     this["ri" + _loc4_].type = GamePredef.TBL_ITEM_TEMPLATE;
                     this["ri" + _loc4_].giid = _loc7_.iid;
                     this["ri" + _loc4_].slotData = _loc8_;
                     this["rn" + _loc4_].text = "X" + _loc7_.n;
                     this["rn" + _loc4_].visible = true;
                  }
                  _loc5_++;
               }
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn402() : Label
      {
         return this._108609914rn402;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn7() : Label
      {
         return this._113019rn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn404() : Label
      {
         return this._108609916rn404;
      }
      
      public function set rn707(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612802rn707;
         if(_loc2_ !== param1)
         {
            this._108612802rn707 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn707",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn406() : Label
      {
         return this._108609918rn406;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn407() : Label
      {
         return this._108609919rn407;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn409() : Label
      {
         return this._108609921rn409;
      }
      
      public function set rn703(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612798rn703;
         if(_loc2_ !== param1)
         {
            this._108612798rn703 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn703",_loc2_,param1));
         }
      }
      
      public function set rn704(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612799rn704;
         if(_loc2_ !== param1)
         {
            this._108612799rn704 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn704",_loc2_,param1));
         }
      }
      
      public function set rn700(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612795rn700;
         if(_loc2_ !== param1)
         {
            this._108612795rn700 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn700",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn408() : Label
      {
         return this._108609920rn408;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn400() : Label
      {
         return this._108609912rn400;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn5() : Label
      {
         return this._113017rn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn6() : Label
      {
         return this._113018rn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn8() : Label
      {
         return this._113020rn8;
      }
      
      public function set rn708(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612803rn708;
         if(_loc2_ !== param1)
         {
            this._108612803rn708 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn708",_loc2_,param1));
         }
      }
      
      public function set rn709(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612804rn709;
         if(_loc2_ !== param1)
         {
            this._108612804rn709 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn709",_loc2_,param1));
         }
      }
      
      public function set rn705(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612800rn705;
         if(_loc2_ !== param1)
         {
            this._108612800rn705 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn705",_loc2_,param1));
         }
      }
      
      public function set rn701(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612796rn701;
         if(_loc2_ !== param1)
         {
            this._108612796rn701 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn701",_loc2_,param1));
         }
      }
      
      public function set rn702(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612797rn702;
         if(_loc2_ !== param1)
         {
            this._108612797rn702 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn702",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn9() : Label
      {
         return this._113021rn9;
      }
      
      public function set rn706(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108612801rn706;
         if(_loc2_ !== param1)
         {
            this._108612801rn706 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn706",_loc2_,param1));
         }
      }
      
      public function set ri1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112858ri1;
         if(_loc2_ !== param1)
         {
            this._112858ri1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri1",_loc2_,param1));
         }
      }
      
      public function set ri2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112859ri2;
         if(_loc2_ !== param1)
         {
            this._112859ri2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri2",_loc2_,param1));
         }
      }
      
      public function set ri3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112860ri3;
         if(_loc2_ !== param1)
         {
            this._112860ri3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri3",_loc2_,param1));
         }
      }
      
      public function set ri4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112861ri4;
         if(_loc2_ !== param1)
         {
            this._112861ri4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri4",_loc2_,param1));
         }
      }
      
      public function set ri6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112863ri6;
         if(_loc2_ !== param1)
         {
            this._112863ri6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri6",_loc2_,param1));
         }
      }
      
      public function set ri5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112862ri5;
         if(_loc2_ !== param1)
         {
            this._112862ri5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri5",_loc2_,param1));
         }
      }
      
      public function set ri9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112866ri9;
         if(_loc2_ !== param1)
         {
            this._112866ri9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri9",_loc2_,param1));
         }
      }
      
      public function set ri8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112865ri8;
         if(_loc2_ !== param1)
         {
            this._112865ri8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri8",_loc2_,param1));
         }
      }
      
      public function set ri7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112864ri7;
         if(_loc2_ !== param1)
         {
            this._112864ri7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri7",_loc2_,param1));
         }
      }
      
      public function set rn600(param1:Label) : void
      {
         var _loc2_:Object = this._108611834rn600;
         if(_loc2_ !== param1)
         {
            this._108611834rn600 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn600",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn200() : Label
      {
         return this._108607990rn200;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn201() : Label
      {
         return this._108607991rn201;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn202() : Label
      {
         return this._108607992rn202;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn204() : Label
      {
         return this._108607994rn204;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn205() : Label
      {
         return this._108607995rn205;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn206() : Label
      {
         return this._108607996rn206;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn207() : Label
      {
         return this._108607997rn207;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn208() : Label
      {
         return this._108607998rn208;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn209() : Label
      {
         return this._108607999rn209;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn203() : Label
      {
         return this._108607993rn203;
      }
      
      public function set rn603(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108611837rn603;
         if(_loc2_ !== param1)
         {
            this._108611837rn603 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn603",_loc2_,param1));
         }
      }
      
      public function set rn604(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108611838rn604;
         if(_loc2_ !== param1)
         {
            this._108611838rn604 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn604",_loc2_,param1));
         }
      }
      
      public function set rn608(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108611842rn608;
         if(_loc2_ !== param1)
         {
            this._108611842rn608 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn608",_loc2_,param1));
         }
      }
      
      public function set rn601(param1:Label) : void
      {
         var _loc2_:Object = this._108611835rn601;
         if(_loc2_ !== param1)
         {
            this._108611835rn601 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn601",_loc2_,param1));
         }
      }
      
      public function set rn602(param1:Label) : void
      {
         var _loc2_:Object = this._108611836rn602;
         if(_loc2_ !== param1)
         {
            this._108611836rn602 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn602",_loc2_,param1));
         }
      }
      
      public function set rn607(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108611841rn607;
         if(_loc2_ !== param1)
         {
            this._108611841rn607 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn607",_loc2_,param1));
         }
      }
      
      public function set rn605(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108611839rn605;
         if(_loc2_ !== param1)
         {
            this._108611839rn605 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn605",_loc2_,param1));
         }
      }
      
      public function set rn606(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108611840rn606;
         if(_loc2_ !== param1)
         {
            this._108611840rn606 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn606",_loc2_,param1));
         }
      }
      
      public function set rn609(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108611843rn609;
         if(_loc2_ !== param1)
         {
            this._108611843rn609 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn609",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _pro() : Number
      {
         return this._2941422_pro;
      }
      
      public function set check(param1:CheckBox) : void
      {
         var _loc2_:Object = this._94627080check;
         if(_loc2_ !== param1)
         {
            this._94627080check = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"check",_loc2_,param1));
         }
      }
      
      public function __ig5_click(param1:MouseEvent) : void
      {
         flopCard(5);
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      private function set _nowpro(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1668877622_nowpro;
         if(_loc2_ !== param1)
         {
            this._1668877622_nowpro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_nowpro",_loc2_,param1));
         }
      }
      
      private function _FlopPassPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererFlopButton;
         return _loc1_;
      }
      
      public function set rn501(param1:Label) : void
      {
         var _loc2_:Object = this._108610874rn501;
         if(_loc2_ !== param1)
         {
            this._108610874rn501 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn501",_loc2_,param1));
         }
      }
      
      private function changeView(param1:Number) : void
      {
         vsFlop.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
      }
      
      public function set rn502(param1:Label) : void
      {
         var _loc2_:Object = this._108610875rn502;
         if(_loc2_ !== param1)
         {
            this._108610875rn502 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn502",_loc2_,param1));
         }
      }
      
      public function set rn503(param1:Label) : void
      {
         var _loc2_:Object = this._108610876rn503;
         if(_loc2_ !== param1)
         {
            this._108610876rn503 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn503",_loc2_,param1));
         }
      }
      
      public function set rn500(param1:Label) : void
      {
         var _loc2_:Object = this._108610873rn500;
         if(_loc2_ !== param1)
         {
            this._108610873rn500 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn500",_loc2_,param1));
         }
      }
      
      public function set rn504(param1:Label) : void
      {
         var _loc2_:Object = this._108610877rn504;
         if(_loc2_ !== param1)
         {
            this._108610877rn504 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn504",_loc2_,param1));
         }
      }
      
      public function set rn505(param1:Label) : void
      {
         var _loc2_:Object = this._108610878rn505;
         if(_loc2_ !== param1)
         {
            this._108610878rn505 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn505",_loc2_,param1));
         }
      }
      
      public function set rn506(param1:Label) : void
      {
         var _loc2_:Object = this._108610879rn506;
         if(_loc2_ !== param1)
         {
            this._108610879rn506 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn506",_loc2_,param1));
         }
      }
      
      public function set rn507(param1:Label) : void
      {
         var _loc2_:Object = this._108610880rn507;
         if(_loc2_ !== param1)
         {
            this._108610880rn507 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn507",_loc2_,param1));
         }
      }
      
      public function set rn509(param1:Label) : void
      {
         var _loc2_:Object = this._108610882rn509;
         if(_loc2_ !== param1)
         {
            this._108610882rn509 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn509",_loc2_,param1));
         }
      }
      
      public function set rn508(param1:Label) : void
      {
         var _loc2_:Object = this._108610881rn508;
         if(_loc2_ !== param1)
         {
            this._108610881rn508 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn508",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri800() : ItemSlot
      {
         return this._108464801ri800;
      }
      
      public function __bangBtn6_click(param1:MouseEvent) : void
      {
         flopReborn();
      }
      
      [Bindable(event="propertyChange")]
      public function get ri802() : ItemSlot
      {
         return this._108464803ri802;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri804() : ItemSlot
      {
         return this._108464805ri804;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri806() : ItemSlot
      {
         return this._108464807ri806;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri807() : ItemSlot
      {
         return this._108464808ri807;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri801() : ItemSlot
      {
         return this._108464802ri801;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri805() : ItemSlot
      {
         return this._108464806ri805;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri808() : ItemSlot
      {
         return this._108464809ri808;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri809() : ItemSlot
      {
         return this._108464810ri809;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri803() : ItemSlot
      {
         return this._108464804ri803;
      }
      
      public function set rn10(param1:Label) : void
      {
         var _loc2_:Object = this._3503451rn10;
         if(_loc2_ !== param1)
         {
            this._3503451rn10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn10",_loc2_,param1));
         }
      }
      
      private function onInitFlopPassData(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         if(param1)
         {
            if(ToolKit.isEqual(param1.cf,2))
            {
               _isRR = true;
            }
            else
            {
               _isRR = false;
            }
            _serverId = param1.s;
            if(_version != param1.v || _loadcid != _core.player.id)
            {
               _core.remote.call("getFlopPassConf",new Responder(onGetFlopPassConf));
               return;
            }
            if(_timer.hasEventListener(TimerEvent.TIMER))
            {
               _timer.removeEventListener(TimerEvent.TIMER,_func);
            }
            if(_timer.running)
            {
               _timer.stop();
            }
            _loc2_ = 1;
            while(_loc2_ <= 9)
            {
               this["ig" + _loc2_].source = ResManager.getIconUrl(parseInt(_passFlag[3]));
               _loc2_++;
            }
            for(_loc3_ in _charInfo.ci.dbd)
            {
               this["ig" + _loc3_].source = ResManager.getIconUrl(parseInt(_passFlag[1]));
            }
            _canClick = true;
         }
      }
      
      public function takeFlopRankAward(param1:int, param2:int) : void
      {
         _core.remote.call("takeFlopRankAward",null);
      }
      
      private function flopRestart() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("flopRestart",null);
            }
         };
         _alert = Alert.show(Language.FLOP_PASS_PANEL[30],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set rn2(param1:Label) : void
      {
         var _loc2_:Object = this._113014rn2;
         if(_loc2_ !== param1)
         {
            this._113014rn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn2",_loc2_,param1));
         }
      }
      
      public function set rn3(param1:Label) : void
      {
         var _loc2_:Object = this._113015rn3;
         if(_loc2_ !== param1)
         {
            this._113015rn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn3",_loc2_,param1));
         }
      }
      
      public function set rn0(param1:Label) : void
      {
         var _loc2_:Object = this._113012rn0;
         if(_loc2_ !== param1)
         {
            this._113012rn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn0",_loc2_,param1));
         }
      }
      
      public function set rn4(param1:Label) : void
      {
         var _loc2_:Object = this._113016rn4;
         if(_loc2_ !== param1)
         {
            this._113016rn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn4",_loc2_,param1));
         }
      }
      
      public function set rn1(param1:Label) : void
      {
         var _loc2_:Object = this._113013rn1;
         if(_loc2_ !== param1)
         {
            this._113013rn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn1",_loc2_,param1));
         }
      }
      
      public function set rn401(param1:Label) : void
      {
         var _loc2_:Object = this._108609913rn401;
         if(_loc2_ !== param1)
         {
            this._108609913rn401 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn401",_loc2_,param1));
         }
      }
      
      public function set rn402(param1:Label) : void
      {
         var _loc2_:Object = this._108609914rn402;
         if(_loc2_ !== param1)
         {
            this._108609914rn402 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn402",_loc2_,param1));
         }
      }
      
      public function set rn403(param1:Label) : void
      {
         var _loc2_:Object = this._108609915rn403;
         if(_loc2_ !== param1)
         {
            this._108609915rn403 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn403",_loc2_,param1));
         }
      }
      
      public function set rn400(param1:Label) : void
      {
         var _loc2_:Object = this._108609912rn400;
         if(_loc2_ !== param1)
         {
            this._108609912rn400 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn400",_loc2_,param1));
         }
      }
      
      public function set rn404(param1:Label) : void
      {
         var _loc2_:Object = this._108609916rn404;
         if(_loc2_ !== param1)
         {
            this._108609916rn404 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn404",_loc2_,param1));
         }
      }
      
      public function set rn5(param1:Label) : void
      {
         var _loc2_:Object = this._113017rn5;
         if(_loc2_ !== param1)
         {
            this._113017rn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn5",_loc2_,param1));
         }
      }
      
      public function set rn405(param1:Label) : void
      {
         var _loc2_:Object = this._108609917rn405;
         if(_loc2_ !== param1)
         {
            this._108609917rn405 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn405",_loc2_,param1));
         }
      }
      
      public function set rn6(param1:Label) : void
      {
         var _loc2_:Object = this._113018rn6;
         if(_loc2_ !== param1)
         {
            this._113018rn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn6",_loc2_,param1));
         }
      }
      
      public function set rn7(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._113019rn7;
         if(_loc2_ !== param1)
         {
            this._113019rn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn7",_loc2_,param1));
         }
      }
      
      public function set rn8(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._113020rn8;
         if(_loc2_ !== param1)
         {
            this._113020rn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn8",_loc2_,param1));
         }
      }
      
      public function set rn9(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._113021rn9;
         if(_loc2_ !== param1)
         {
            this._113021rn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn9",_loc2_,param1));
         }
      }
      
      public function set rn406(param1:Label) : void
      {
         var _loc2_:Object = this._108609918rn406;
         if(_loc2_ !== param1)
         {
            this._108609918rn406 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn406",_loc2_,param1));
         }
      }
      
      public function set rn409(param1:Label) : void
      {
         var _loc2_:Object = this._108609921rn409;
         if(_loc2_ !== param1)
         {
            this._108609921rn409 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn409",_loc2_,param1));
         }
      }
      
      public function set rn407(param1:Label) : void
      {
         var _loc2_:Object = this._108609919rn407;
         if(_loc2_ !== param1)
         {
            this._108609919rn407 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn407",_loc2_,param1));
         }
      }
      
      public function set vsFlop(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._808329852vsFlop;
         if(_loc2_ !== param1)
         {
            this._808329852vsFlop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsFlop",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri600() : ItemSlot
      {
         return this._108462879ri600;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri601() : ItemSlot
      {
         return this._108462880ri601;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri602() : ItemSlot
      {
         return this._108462881ri602;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri606() : ItemSlot
      {
         return this._108462885ri606;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri607() : ItemSlot
      {
         return this._108462886ri607;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri608() : ItemSlot
      {
         return this._108462887ri608;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri603() : ItemSlot
      {
         return this._108462882ri603;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri604() : ItemSlot
      {
         return this._108462883ri604;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri609() : ItemSlot
      {
         return this._108462888ri609;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri605() : ItemSlot
      {
         return this._108462884ri605;
      }
      
      public function set rn408(param1:Label) : void
      {
         var _loc2_:Object = this._108609920rn408;
         if(_loc2_ !== param1)
         {
            this._108609920rn408 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn408",_loc2_,param1));
         }
      }
      
      public function set rn301(param1:Label) : void
      {
         var _loc2_:Object = this._108608952rn301;
         if(_loc2_ !== param1)
         {
            this._108608952rn301 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn301",_loc2_,param1));
         }
      }
      
      public function set rn302(param1:Label) : void
      {
         var _loc2_:Object = this._108608953rn302;
         if(_loc2_ !== param1)
         {
            this._108608953rn302 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn302",_loc2_,param1));
         }
      }
      
      public function set rn303(param1:Label) : void
      {
         var _loc2_:Object = this._108608954rn303;
         if(_loc2_ !== param1)
         {
            this._108608954rn303 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn303",_loc2_,param1));
         }
      }
      
      public function set rn300(param1:Label) : void
      {
         var _loc2_:Object = this._108608951rn300;
         if(_loc2_ !== param1)
         {
            this._108608951rn300 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn300",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get introCon() : IntroText
      {
         return this._582286198introCon;
      }
      
      public function set rn305(param1:Label) : void
      {
         var _loc2_:Object = this._108608956rn305;
         if(_loc2_ !== param1)
         {
            this._108608956rn305 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn305",_loc2_,param1));
         }
      }
      
      public function set rn307(param1:Label) : void
      {
         var _loc2_:Object = this._108608958rn307;
         if(_loc2_ !== param1)
         {
            this._108608958rn307 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn307",_loc2_,param1));
         }
      }
      
      public function set rn304(param1:Label) : void
      {
         var _loc2_:Object = this._108608955rn304;
         if(_loc2_ !== param1)
         {
            this._108608955rn304 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn304",_loc2_,param1));
         }
      }
      
      public function set rn308(param1:Label) : void
      {
         var _loc2_:Object = this._108608959rn308;
         if(_loc2_ !== param1)
         {
            this._108608959rn308 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn308",_loc2_,param1));
         }
      }
      
      public function set rn306(param1:Label) : void
      {
         var _loc2_:Object = this._108608957rn306;
         if(_loc2_ !== param1)
         {
            this._108608957rn306 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn306",_loc2_,param1));
         }
      }
      
      public function set rn309(param1:Label) : void
      {
         var _loc2_:Object = this._108608960rn309;
         if(_loc2_ !== param1)
         {
            this._108608960rn309 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn309",_loc2_,param1));
         }
      }
      
      public function onFlopRestart(param1:Object) : void
      {
         _charInfo = param1;
         if(Boolean(_charInfo.ci) && Boolean(_charInfo.ci.i))
         {
            _nowpro = _charInfo.ci.i;
         }
         initCharFlopPassData();
         var _loc2_:Number = 1;
         while(_loc2_ <= 9)
         {
            this["ig" + _loc2_].source = ResManager.getIconUrl(parseInt(_passFlag[3]));
            _loc2_++;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FlopPassPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FlopPassPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FlopPassPanelWatcherSetupUtil");
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
      public function get ri400() : ItemSlot
      {
         return this._108460957ri400;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri402() : ItemSlot
      {
         return this._108460959ri402;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri403() : ItemSlot
      {
         return this._108460960ri403;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri404() : ItemSlot
      {
         return this._108460961ri404;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri405() : ItemSlot
      {
         return this._108460962ri405;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri407() : ItemSlot
      {
         return this._108460964ri407;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri408() : ItemSlot
      {
         return this._108460965ri408;
      }
      
      private function onFlopDelBoss(param1:Object) : void
      {
         if(!param1)
         {
            _canClick = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn3() : BasicGlowButton
      {
         return this._1863324753bangBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri401() : ItemSlot
      {
         return this._108460958ri401;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn4() : BasicGlowButton
      {
         return this._1863324752bangBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn5() : BasicGlowButton
      {
         return this._1863324751bangBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn6() : BasicGlowButton
      {
         return this._1863324750bangBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri406() : ItemSlot
      {
         return this._108460963ri406;
      }
      
      public function __ig3_click(param1:MouseEvent) : void
      {
         flopCard(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn7() : BasicGlowButton
      {
         return this._1863324749bangBtn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri409() : ItemSlot
      {
         return this._108460966ri409;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initFlopPassData",new Responder(onInitFlopPassData));
      }
      
      [Bindable(event="propertyChange")]
      public function get flopRankGrid() : DataGrid
      {
         return this._1104960551flopRankGrid;
      }
      
      private function set _pro(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2941422_pro;
         if(_loc2_ !== param1)
         {
            this._2941422_pro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_pro",_loc2_,param1));
         }
      }
      
      public function set rn202(param1:Label) : void
      {
         var _loc2_:Object = this._108607992rn202;
         if(_loc2_ !== param1)
         {
            this._108607992rn202 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn202",_loc2_,param1));
         }
      }
      
      public function set rn203(param1:Label) : void
      {
         var _loc2_:Object = this._108607993rn203;
         if(_loc2_ !== param1)
         {
            this._108607993rn203 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn203",_loc2_,param1));
         }
      }
      
      public function set rn200(param1:Label) : void
      {
         var _loc2_:Object = this._108607990rn200;
         if(_loc2_ !== param1)
         {
            this._108607990rn200 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn200",_loc2_,param1));
         }
      }
      
      public function set rn204(param1:Label) : void
      {
         var _loc2_:Object = this._108607994rn204;
         if(_loc2_ !== param1)
         {
            this._108607994rn204 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn204",_loc2_,param1));
         }
      }
      
      public function set rn201(param1:Label) : void
      {
         var _loc2_:Object = this._108607991rn201;
         if(_loc2_ !== param1)
         {
            this._108607991rn201 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn201",_loc2_,param1));
         }
      }
      
      public function set rn205(param1:Label) : void
      {
         var _loc2_:Object = this._108607995rn205;
         if(_loc2_ !== param1)
         {
            this._108607995rn205 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn205",_loc2_,param1));
         }
      }
      
      public function set rn206(param1:Label) : void
      {
         var _loc2_:Object = this._108607996rn206;
         if(_loc2_ !== param1)
         {
            this._108607996rn206 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn206",_loc2_,param1));
         }
      }
      
      private function TestDateTimeToString(param1:Number) : String
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:DateFormatter = new DateFormatter();
         _loc3_.formatString = "YYYY-MM-DD JJ:NN:SS";
         return _loc3_.format(_loc2_);
      }
      
      public function set rn209(param1:Label) : void
      {
         var _loc2_:Object = this._108607999rn209;
         if(_loc2_ !== param1)
         {
            this._108607999rn209 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn209",_loc2_,param1));
         }
      }
      
      public function set rn207(param1:Label) : void
      {
         var _loc2_:Object = this._108607997rn207;
         if(_loc2_ !== param1)
         {
            this._108607997rn207 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn207",_loc2_,param1));
         }
      }
      
      public function set rn208(param1:Label) : void
      {
         var _loc2_:Object = this._108607998rn208;
         if(_loc2_ !== param1)
         {
            this._108607998rn208 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn208",_loc2_,param1));
         }
      }
      
      private function flopReborn() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("flopReborn",null);
            }
         };
         var str:String = Language.FLOP_PASS_PANEL[33];
         if(_isRR)
         {
            str = str.replace("{num}",_passConf.rb / 10).replace(Language.FLOP_PASS_PANEL[35],Language.FLOP_PASS_PANEL[36]);
         }
         else
         {
            str = str.replace("{num}",_passConf.rb);
         }
         _alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function __bangBtn4_click(param1:MouseEvent) : void
      {
         flopRestart();
      }
      
      [Bindable(event="propertyChange")]
      public function get ri200() : ItemSlot
      {
         return this._108459035ri200;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri201() : ItemSlot
      {
         return this._108459036ri201;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri202() : ItemSlot
      {
         return this._108459037ri202;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri203() : ItemSlot
      {
         return this._108459038ri203;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri206() : ItemSlot
      {
         return this._108459041ri206;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri207() : ItemSlot
      {
         return this._108459042ri207;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri208() : ItemSlot
      {
         return this._108459043ri208;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri209() : ItemSlot
      {
         return this._108459044ri209;
      }
      
      public function __ig8_click(param1:MouseEvent) : void
      {
         flopCard(8);
      }
      
      [Bindable(event="propertyChange")]
      public function get ri205() : ItemSlot
      {
         return this._108459040ri205;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn900() : Label
      {
         return this._108614717rn900;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn902() : Label
      {
         return this._108614719rn902;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn905() : Label
      {
         return this._108614722rn905;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn906() : Label
      {
         return this._108614723rn906;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn907() : Label
      {
         return this._108614724rn907;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn901() : Label
      {
         return this._108614718rn901;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn909() : Label
      {
         return this._108614726rn909;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri204() : ItemSlot
      {
         return this._108459039ri204;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn904() : Label
      {
         return this._108614721rn904;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn908() : Label
      {
         return this._108614725rn908;
      }
      
      public function set rn100(param1:Label) : void
      {
         var _loc2_:Object = this._108607029rn100;
         if(_loc2_ !== param1)
         {
            this._108607029rn100 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn100",_loc2_,param1));
         }
      }
      
      public function set rn101(param1:Label) : void
      {
         var _loc2_:Object = this._108607030rn101;
         if(_loc2_ !== param1)
         {
            this._108607030rn101 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn101",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn903() : Label
      {
         return this._108614720rn903;
      }
      
      public function set rn102(param1:Label) : void
      {
         var _loc2_:Object = this._108607031rn102;
         if(_loc2_ !== param1)
         {
            this._108607031rn102 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn102",_loc2_,param1));
         }
      }
      
      public function set rn103(param1:Label) : void
      {
         var _loc2_:Object = this._108607032rn103;
         if(_loc2_ !== param1)
         {
            this._108607032rn103 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn103",_loc2_,param1));
         }
      }
      
      public function set rn104(param1:Label) : void
      {
         var _loc2_:Object = this._108607033rn104;
         if(_loc2_ !== param1)
         {
            this._108607033rn104 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn104",_loc2_,param1));
         }
      }
      
      public function set rn105(param1:Label) : void
      {
         var _loc2_:Object = this._108607034rn105;
         if(_loc2_ !== param1)
         {
            this._108607034rn105 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn105",_loc2_,param1));
         }
      }
      
      private function initImageData(param1:Number, param2:Number) : void
      {
         var bossNum:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         var index:Number = NaN;
         var obj:Object = null;
         var type:Number = param1;
         var b:Number = param2;
         if(_charInfo.ci)
         {
            bossNum = b;
            if(!_charInfo.ci.s)
            {
               bossNum--;
            }
            x = Number(this["ig" + type].x);
            y = Number(this["ig" + type].y);
            this["ig" + type].source = ResManager.getIconUrl(parseInt(_passFlag[3]));
            index = 0;
            obj = this;
            _func = function(param1:Event):void
            {
               var _loc2_:Number = NaN;
               var _loc3_:Number = NaN;
               var _loc4_:* = undefined;
               var _loc5_:Number = NaN;
               var _loc6_:Number = NaN;
               if(index == 0)
               {
                  obj["ig" + type].scaleX = 0.75;
                  obj["ig" + type].scaleY = 1;
                  obj["ig" + type].x = x + obj["ig" + type].width * 1 / 8;
               }
               else if(index == 1)
               {
                  obj["ig" + type].scaleX = 0.5;
                  obj["ig" + type].scaleY = 1;
                  obj["ig" + type].x = x + obj["ig" + type].width / 4;
               }
               else if(index == 2)
               {
                  obj["ig" + type].scaleX = 0.25;
                  obj["ig" + type].scaleY = 1;
                  obj["ig" + type].x = x + obj["ig" + type].width * 3 / 8;
               }
               else if(index == 3)
               {
                  obj["ig" + type].scaleX = 0.03;
                  obj["ig" + type].scaleY = 1;
               }
               else if(index == 4)
               {
                  obj["ig" + type].source = ResManager.getIconUrl(parseInt(_passFlag[1]));
                  if(_charInfo.ci.s)
                  {
                     obj["ig" + type].source = ResManager.getIconUrl(parseInt(_passFlag[2]));
                  }
                  obj["ig" + type].scaleX = 0.03;
                  obj["ig" + type].scaleY = 1;
               }
               else if(index == 5)
               {
                  obj["ig" + type].scaleX = 0.25;
                  obj["ig" + type].scaleY = 1;
                  obj["ig" + type].x = x + obj["ig" + type].width * 3 / 8;
               }
               else if(index == 6)
               {
                  obj["ig" + type].scaleX = 0.5;
                  obj["ig" + type].scaleY = 1;
                  obj["ig" + type].x = x + obj["ig" + type].width / 4;
               }
               else if(index == 7)
               {
                  obj["ig" + type].scaleX = 0.75;
                  obj["ig" + type].scaleY = 1;
                  obj["ig" + type].x = x + obj["ig" + type].width * 1 / 8;
               }
               else if(index == 8)
               {
                  obj["ig" + type].scaleX = 1;
                  obj["ig" + type].scaleY = 1;
                  obj["ig" + type].x = x;
               }
               else if(index == 12)
               {
                  _loc2_ = 1;
                  while(_loc2_ <= 9)
                  {
                     if(_loc2_ != type && !_charInfo.ci.dbd[_loc2_])
                     {
                        _loc3_ = 10 - _loc2_;
                        if(type >= _loc2_)
                        {
                           _loc3_--;
                        }
                        for(_loc4_ in _charInfo.ci.dbd)
                        {
                           if(_loc4_ >= _loc2_)
                           {
                              _loc3_--;
                           }
                        }
                        if(ToolKit.isEqual(_loc3_,bossNum) && _loc3_ != 0)
                        {
                           _loc6_ = _loc2_;
                           while(_loc6_ <= 9)
                           {
                              if(_loc6_ != type && !_charInfo.ci.dbd[_loc6_])
                              {
                                 obj["ig" + _loc6_].source = ResManager.getIconUrl(parseInt(_passFlag[1]));
                              }
                              _loc6_++;
                           }
                           break;
                        }
                        if(bossNum == 0)
                        {
                           _loc6_ = _loc2_;
                           while(_loc6_ <= 9)
                           {
                              if(_loc6_ != type && !_charInfo.ci.dbd[_loc6_])
                              {
                                 obj["ig" + _loc6_].source = ResManager.getIconUrl(parseInt(_passFlag[2]));
                              }
                              _loc6_++;
                           }
                           break;
                        }
                        _loc5_ = Math.random() * 100;
                        if(_loc5_ > 50)
                        {
                           obj["ig" + _loc2_].source = ResManager.getIconUrl(parseInt(_passFlag[2]));
                        }
                        else
                        {
                           obj["ig" + _loc2_].source = ResManager.getIconUrl(parseInt(_passFlag[1]));
                           --bossNum;
                        }
                     }
                     _loc2_++;
                  }
               }
               else if(index == 48)
               {
                  _loc2_ = 1;
                  while(_loc2_ <= 9)
                  {
                     obj["ig" + _loc2_].source = ResManager.getIconUrl(parseInt(_passFlag[3]));
                     _loc2_++;
                  }
                  _charInfo.ci.dbd = _newDbd;
                  if(!_charInfo.ci.s)
                  {
                     for(_loc4_ in _charInfo.ci.dbd)
                     {
                        obj["ig" + _loc4_].source = ResManager.getIconUrl(parseInt(_passFlag[1]));
                     }
                  }
                  _timer.removeEventListener(TimerEvent.TIMER,_func);
                  if(_timer.running)
                  {
                     _timer.stop();
                  }
                  _canClick = true;
               }
               ++index;
            };
            if(_timer.hasEventListener(TimerEvent.TIMER))
            {
               _timer.removeEventListener(TimerEvent.TIMER,_func);
            }
            if(_timer.running)
            {
               _timer.stop();
            }
            _timer.addEventListener(TimerEvent.TIMER,_func);
            _timer.start();
         }
      }
      
      public function set rn106(param1:Label) : void
      {
         var _loc2_:Object = this._108607035rn106;
         if(_loc2_ !== param1)
         {
            this._108607035rn106 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn106",_loc2_,param1));
         }
      }
      
      private function onLoadFlopRank(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = undefined;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         if(!param1)
         {
            return;
         }
         if(_version != param1.v || _loadcid != _core.player.id)
         {
            _core.remote.call("getFlopPassConf",new Responder(onGetFlopPassConf));
            return;
         }
         if(param1.info.length == 0)
         {
            return;
         }
         var _loc2_:ArrayCollection = new ArrayCollection();
         var _loc3_:Number = 0;
         for(_loc4_ in param1.info)
         {
            _loc3_++;
            _loc5_ = new Object();
            _loc5_["rank"] = _loc3_;
            _loc5_["user"] = "[" + getServerName(param1.info[_loc4_].s) + "]" + param1.info[_loc4_].n;
            _loc5_["pro"] = param1.info[_loc4_].p;
            _loc5_.array = new Array();
            _loc6_ = ToolKit.add(_loc3_,10);
            _loc7_ = 0;
            if(_passConf.ri[_loc6_])
            {
               for(_loc8_ in _passConf.ri[_loc6_])
               {
                  if(Boolean(_passConf.ri[_loc6_][_loc8_]) && Boolean(_passConf.ri[_loc6_][_loc8_].iid))
                  {
                     _loc7_++;
                     _loc9_ = new Object();
                     _loc9_.stackNum = _passConf.ri[_loc6_][_loc8_].n;
                     _loc9_.itemType = GamePredef.TBL_ITEM_TEMPLATE;
                     _loc9_.itemId = _passConf.ri[_loc6_][_loc8_].iid;
                     _loc9_.movable = false;
                     _loc9_.slotType = Slot.SLOT_TEMP_SLOT;
                     _loc10_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_passConf.ri[_loc6_][_loc8_].iid];
                     _loc9_.quality = 0;
                     _loc9_.slotData = _loc10_;
                     _loc5_.array.push(_loc9_);
                  }
               }
            }
            if(_loc7_ != 0)
            {
               _loc5_.onClick = this.takeFlopRankAward;
               _loc5_.canTake = Boolean(!_charInfo.award && param1.f) && Boolean(ToolKit.isEqual(param1.info[_loc4_].c,_core.player.id)) && ToolKit.isEqual(param1.info[_loc4_].s,_serverId) ? true : false;
               _loc5_.isTaken = Boolean(_charInfo.award && param1.f) && Boolean(ToolKit.isEqual(param1.info[_loc4_].c,_core.player.id)) && ToolKit.isEqual(param1.info[_loc4_].s,_serverId) ? true : false;
               _loc5_.type = GamePredef.TBL_ITEM_TEMPLATE;
               _loc2_.addItem(_loc5_);
            }
         }
         flopRankGrid.dataProvider = _loc2_;
      }
      
      public function set rn108(param1:Label) : void
      {
         var _loc2_:Object = this._108607037rn108;
         if(_loc2_ !== param1)
         {
            this._108607037rn108 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn108",_loc2_,param1));
         }
      }
      
      public function set rn109(param1:Label) : void
      {
         var _loc2_:Object = this._108607038rn109;
         if(_loc2_ !== param1)
         {
            this._108607038rn109 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn109",_loc2_,param1));
         }
      }
      
      public function set rn107(param1:Label) : void
      {
         var _loc2_:Object = this._108607036rn107;
         if(_loc2_ !== param1)
         {
            this._108607036rn107 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rn107",_loc2_,param1));
         }
      }
      
      public function set pass2(param1:Image) : void
      {
         var _loc2_:Object = this._106438209pass2;
         if(_loc2_ !== param1)
         {
            this._106438209pass2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass2",_loc2_,param1));
         }
      }
      
      public function set pass3(param1:Image) : void
      {
         var _loc2_:Object = this._106438210pass3;
         if(_loc2_ !== param1)
         {
            this._106438210pass3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass3",_loc2_,param1));
         }
      }
      
      public function set pass1(param1:Image) : void
      {
         var _loc2_:Object = this._106438208pass1;
         if(_loc2_ !== param1)
         {
            this._106438208pass1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass1",_loc2_,param1));
         }
      }
      
      public function set pass5(param1:Image) : void
      {
         var _loc2_:Object = this._106438212pass5;
         if(_loc2_ !== param1)
         {
            this._106438212pass5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass5",_loc2_,param1));
         }
      }
      
      public function set pass6(param1:Image) : void
      {
         var _loc2_:Object = this._106438213pass6;
         if(_loc2_ !== param1)
         {
            this._106438213pass6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass6",_loc2_,param1));
         }
      }
      
      public function set pass4(param1:Image) : void
      {
         var _loc2_:Object = this._106438211pass4;
         if(_loc2_ !== param1)
         {
            this._106438211pass4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass4",_loc2_,param1));
         }
      }
      
      public function set pass8(param1:Image) : void
      {
         var _loc2_:Object = this._106438215pass8;
         if(_loc2_ !== param1)
         {
            this._106438215pass8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass8",_loc2_,param1));
         }
      }
      
      public function set pass9(param1:Image) : void
      {
         var _loc2_:Object = this._106438216pass9;
         if(_loc2_ !== param1)
         {
            this._106438216pass9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass9",_loc2_,param1));
         }
      }
      
      private function _FlopPassPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _FlopPassPanel_DataGridColumn5 = _loc1_;
         _loc1_.width = 100;
         _loc1_.itemRenderer = _FlopPassPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_FlopPassPanel_DataGridColumn5",_FlopPassPanel_DataGridColumn5);
         return _loc1_;
      }
      
      public function set pass7(param1:Image) : void
      {
         var _loc2_:Object = this._106438214pass7;
         if(_loc2_ !== param1)
         {
            this._106438214pass7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pass7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn700() : Label
      {
         return this._108612795rn700;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn701() : Label
      {
         return this._108612796rn701;
      }
      
      private function _FlopPassPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_BasicTitleCanvas1.text = param1;
         },"_FlopPassPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn3.label = param1;
         },"bangBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig1.source = param1;
         },"ig1.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig2.source = param1;
         },"ig2.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig3.source = param1;
         },"ig3.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig4.source = param1;
         },"ig4.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig5.source = param1;
         },"ig5.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig6.source = param1;
         },"ig6.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig7.source = param1;
         },"ig7.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig8.source = param1;
         },"ig8.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[3]));
         },function(param1:Object):void
         {
            ig9.source = param1;
         },"ig9.source");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label1.text = param1;
         },"_FlopPassPanel_Label1.text");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass1.source = param1;
         },"pass1.source");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label4.text = param1;
         },"_FlopPassPanel_Label4.text");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass2.source = param1;
         },"pass2.source");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label7.text = param1;
         },"_FlopPassPanel_Label7.text");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass3.source = param1;
         },"pass3.source");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label10.text = param1;
         },"_FlopPassPanel_Label10.text");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass4.source = param1;
         },"pass4.source");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label13.text = param1;
         },"_FlopPassPanel_Label13.text");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass5.source = param1;
         },"pass5.source");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label16.text = param1;
         },"_FlopPassPanel_Label16.text");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass6.source = param1;
         },"pass6.source");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label19.text = param1;
         },"_FlopPassPanel_Label19.text");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass7.source = param1;
         },"pass7.source");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label22.text = param1;
         },"_FlopPassPanel_Label22.text");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass8.source = param1;
         },"pass8.source");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label25.text = param1;
         },"_FlopPassPanel_Label25.text");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt(_passFlag[4]));
         },function(param1:Object):void
         {
            pass9.source = param1;
         },"pass9.source");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn4.label = param1;
         },"bangBtn4.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn5.label = param1;
         },"bangBtn5.label");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn6.label = param1;
         },"bangBtn6.label");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn6.toolTip = param1;
         },"bangBtn6.toolTip");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn7.label = param1;
         },"bangBtn7.label");
         result[36] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _check;
         },function(param1:Boolean):void
         {
            check.selected = param1;
         },"check.selected");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            check.label = param1;
         },"check.label");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label38.text = param1;
         },"_FlopPassPanel_Label38.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label49.text = param1;
         },"_FlopPassPanel_Label49.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label60.text = param1;
         },"_FlopPassPanel_Label60.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label71.text = param1;
         },"_FlopPassPanel_Label71.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label82.text = param1;
         },"_FlopPassPanel_Label82.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label93.text = param1;
         },"_FlopPassPanel_Label93.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label104.text = param1;
         },"_FlopPassPanel_Label104.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label115.text = param1;
         },"_FlopPassPanel_Label115.text");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label126.text = param1;
         },"_FlopPassPanel_Label126.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_DataGridColumn1.headerText = param1;
         },"_FlopPassPanel_DataGridColumn1.headerText");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_DataGridColumn2.headerText = param1;
         },"_FlopPassPanel_DataGridColumn2.headerText");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_DataGridColumn3.headerText = param1;
         },"_FlopPassPanel_DataGridColumn3.headerText");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FLOP_PASS_PANEL[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_DataGridColumn4.headerText = param1;
         },"_FlopPassPanel_DataGridColumn4.headerText");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_DataGridColumn5.headerText = param1;
         },"_FlopPassPanel_DataGridColumn5.headerText");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _pro;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label128.text = param1;
         },"_FlopPassPanel_Label128.text");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _nowpro;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FlopPassPanel_Label130.text = param1;
         },"_FlopPassPanel_Label130.text");
         result[54] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn703() : Label
      {
         return this._108612798rn703;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn706() : Label
      {
         return this._108612801rn706;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn707() : Label
      {
         return this._108612802rn707;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn708() : Label
      {
         return this._108612803rn708;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn705() : Label
      {
         return this._108612800rn705;
      }
      
      public function set ri902(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465764ri902;
         if(_loc2_ !== param1)
         {
            this._108465764ri902 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri902",_loc2_,param1));
         }
      }
      
      public function set ri900(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465762ri900;
         if(_loc2_ !== param1)
         {
            this._108465762ri900 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri900",_loc2_,param1));
         }
      }
      
      public function set ri904(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465766ri904;
         if(_loc2_ !== param1)
         {
            this._108465766ri904 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri904",_loc2_,param1));
         }
      }
      
      public function set ri901(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465763ri901;
         if(_loc2_ !== param1)
         {
            this._108465763ri901 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri901",_loc2_,param1));
         }
      }
      
      public function set ri906(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465768ri906;
         if(_loc2_ !== param1)
         {
            this._108465768ri906 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri906",_loc2_,param1));
         }
      }
      
      public function set ri903(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465765ri903;
         if(_loc2_ !== param1)
         {
            this._108465765ri903 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri903",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn709() : Label
      {
         return this._108612804rn709;
      }
      
      public function set ri908(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465770ri908;
         if(_loc2_ !== param1)
         {
            this._108465770ri908 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri908",_loc2_,param1));
         }
      }
      
      public function set ri909(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465771ri909;
         if(_loc2_ !== param1)
         {
            this._108465771ri909 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri909",_loc2_,param1));
         }
      }
      
      private function flopCard(param1:Number) : void
      {
         var func:Function = null;
         var str:String = null;
         var index:Number = param1;
         var _now:Number = new Date().getTime();
         if(_charInfo.ci.dbd[index])
         {
            return;
         }
         if(ToolKit.minus(_now,_clickDelay) <= 3000)
         {
            return;
         }
         _clickDelay = _now;
         if(!_check)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(_canClick)
                  {
                     _canClick = false;
                     _core.remote.call("flopCard",new Responder(onFlopCard),index);
                  }
               }
            };
            str = Language.FLOP_PASS_PANEL[38];
            if(_isRR)
            {
               str = str.replace("{num}",_passConf.pr / 10).replace(Language.FLOP_PASS_PANEL[35],Language.FLOP_PASS_PANEL[36]);
            }
            else
            {
               str = str.replace("{num}",_passConf.pr);
            }
            _alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
         }
         else if(_canClick)
         {
            _canClick = false;
            _core.remote.call("flopCard",new Responder(onFlopCard),index);
         }
      }
      
      public function set ri907(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465769ri907;
         if(_loc2_ !== param1)
         {
            this._108465769ri907 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri907",_loc2_,param1));
         }
      }
      
      public function set ri905(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108465767ri905;
         if(_loc2_ !== param1)
         {
            this._108465767ri905 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri905",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn702() : Label
      {
         return this._108612797rn702;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn704() : Label
      {
         return this._108612799rn704;
      }
      
      [Bindable(event="propertyChange")]
      public function get check() : CheckBox
      {
         return this._94627080check;
      }
      
      public function ___FlopPassPanel_Canvas22_show(param1:FlexEvent) : void
      {
         loadFlopRank();
      }
      
      private function _FlopPassPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _FlopPassPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "pro";
         _loc1_.width = 50;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_FlopPassPanel_DataGridColumn3",_FlopPassPanel_DataGridColumn3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get _nowpro() : Number
      {
         return this._1668877622_nowpro;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn500() : Label
      {
         return this._108610873rn500;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn502() : Label
      {
         return this._108610875rn502;
      }
      
      private function getInfo(param1:String) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get rn504() : Label
      {
         return this._108610877rn504;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn505() : Label
      {
         return this._108610878rn505;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn506() : Label
      {
         return this._108610879rn506;
      }
      
      public function set ri802(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464803ri802;
         if(_loc2_ !== param1)
         {
            this._108464803ri802 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri802",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn507() : Label
      {
         return this._108610880rn507;
      }
      
      private function initCharFlopPassData() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc1_:Number = 1;
         while(_loc1_ <= 9)
         {
            _loc2_ = Number(_charInfo.ii[_loc1_]);
            _loc3_ = _passConf.pi[_loc1_][_loc2_];
            _loc4_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc3_.iid];
            if(_loc4_)
            {
               this["ri" + _loc1_].type = GamePredef.TBL_ITEM_TEMPLATE;
               this["ri" + _loc1_].giid = _loc3_.iid;
               this["ri" + _loc1_].slotData = _loc4_;
               this["rn" + _loc1_].text = _loc3_.n;
               if(ToolKit.isBigThan(_charInfo.ci.i,_loc1_))
               {
                  this["pass" + _loc1_].visible = true;
               }
               else
               {
                  this["pass" + _loc1_].visible = false;
               }
            }
            _loc1_++;
         }
      }
      
      public function set ri807(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464808ri807;
         if(_loc2_ !== param1)
         {
            this._108464808ri807 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri807",_loc2_,param1));
         }
      }
      
      public function set ri800(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464801ri800;
         if(_loc2_ !== param1)
         {
            this._108464801ri800 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri800",_loc2_,param1));
         }
      }
      
      public function set ri808(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464809ri808;
         if(_loc2_ !== param1)
         {
            this._108464809ri808 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri808",_loc2_,param1));
         }
      }
      
      public function set ri806(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464807ri806;
         if(_loc2_ !== param1)
         {
            this._108464807ri806 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri806",_loc2_,param1));
         }
      }
      
      public function set ri803(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464804ri803;
         if(_loc2_ !== param1)
         {
            this._108464804ri803 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri803",_loc2_,param1));
         }
      }
      
      public function set ri804(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464805ri804;
         if(_loc2_ !== param1)
         {
            this._108464805ri804 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri804",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn509() : Label
      {
         return this._108610882rn509;
      }
      
      public function set ri805(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464806ri805;
         if(_loc2_ !== param1)
         {
            this._108464806ri805 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri805",_loc2_,param1));
         }
      }
      
      public function set ri801(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464802ri801;
         if(_loc2_ !== param1)
         {
            this._108464802ri801 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri801",_loc2_,param1));
         }
      }
      
      public function __ig1_click(param1:MouseEvent) : void
      {
         flopCard(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get rn10() : Label
      {
         return this._3503451rn10;
      }
      
      public function set ri809(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108464810ri809;
         if(_loc2_ !== param1)
         {
            this._108464810ri809 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri809",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn501() : Label
      {
         return this._108610874rn501;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn503() : Label
      {
         return this._108610876rn503;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn508() : Label
      {
         return this._108610881rn508;
      }
      
      public function __ig6_click(param1:MouseEvent) : void
      {
         flopCard(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         changeView(2);
      }
      
      public function set ig3(param1:Image) : void
      {
         var _loc2_:Object = this._104149ig3;
         if(_loc2_ !== param1)
         {
            this._104149ig3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig3",_loc2_,param1));
         }
      }
      
      public function set ig4(param1:Image) : void
      {
         var _loc2_:Object = this._104150ig4;
         if(_loc2_ !== param1)
         {
            this._104150ig4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig4",_loc2_,param1));
         }
      }
      
      public function set ig1(param1:Image) : void
      {
         var _loc2_:Object = this._104147ig1;
         if(_loc2_ !== param1)
         {
            this._104147ig1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig1",_loc2_,param1));
         }
      }
      
      public function set ig5(param1:Image) : void
      {
         var _loc2_:Object = this._104151ig5;
         if(_loc2_ !== param1)
         {
            this._104151ig5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig5",_loc2_,param1));
         }
      }
      
      public function set ig2(param1:Image) : void
      {
         var _loc2_:Object = this._104148ig2;
         if(_loc2_ !== param1)
         {
            this._104148ig2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig2",_loc2_,param1));
         }
      }
      
      public function set ig6(param1:Image) : void
      {
         var _loc2_:Object = this._104152ig6;
         if(_loc2_ !== param1)
         {
            this._104152ig6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig6",_loc2_,param1));
         }
      }
      
      private function _FlopPassPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _FlopPassPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "rank";
         _loc1_.width = 80;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_FlopPassPanel_DataGridColumn1",_FlopPassPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function set ig8(param1:Image) : void
      {
         var _loc2_:Object = this._104154ig8;
         if(_loc2_ !== param1)
         {
            this._104154ig8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig8",_loc2_,param1));
         }
      }
      
      public function set ig9(param1:Image) : void
      {
         var _loc2_:Object = this._104155ig9;
         if(_loc2_ !== param1)
         {
            this._104155ig9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn301() : Label
      {
         return this._108608952rn301;
      }
      
      public function set ig7(param1:Image) : void
      {
         var _loc2_:Object = this._104153ig7;
         if(_loc2_ !== param1)
         {
            this._104153ig7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ig7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn304() : Label
      {
         return this._108608955rn304;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn305() : Label
      {
         return this._108608956rn305;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn300() : Label
      {
         return this._108608951rn300;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn308() : Label
      {
         return this._108608959rn308;
      }
      
      public function onPassCard(param1:Object, param2:Number, param3:Number) : void
      {
         var _loc4_:Object = null;
         if(initialized)
         {
            _loc4_ = _charInfo.ci.dbd;
            _newDbd = param1.ci.dbd;
            _charInfo = param1;
            _charInfo.ci.dbd = _loc4_;
            initCharFlopPassData();
            if(_charInfo.p)
            {
               _pro = _charInfo.p;
            }
            if(Boolean(_charInfo.ci) && Boolean(_charInfo.ci.i))
            {
               _nowpro = _charInfo.ci.i;
               if(Number(_charInfo.ci.i) == 1)
               {
                  _core.sysMsg(Language.FLOP_PASS_PANEL[27]);
                  _core.sysMidNote(Language.FLOP_PASS_PANEL[27]);
               }
            }
            initImageData(param2,param3);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn303() : Label
      {
         return this._108608954rn303;
      }
      
      public function set ri702(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463842ri702;
         if(_loc2_ !== param1)
         {
            this._108463842ri702 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri702",_loc2_,param1));
         }
      }
      
      public function set ri703(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463843ri703;
         if(_loc2_ !== param1)
         {
            this._108463843ri703 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri703",_loc2_,param1));
         }
      }
      
      public function set ri700(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463840ri700;
         if(_loc2_ !== param1)
         {
            this._108463840ri700 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri700",_loc2_,param1));
         }
      }
      
      public function set ri704(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463844ri704;
         if(_loc2_ !== param1)
         {
            this._108463844ri704 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri704",_loc2_,param1));
         }
      }
      
      public function set ri705(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463845ri705;
         if(_loc2_ !== param1)
         {
            this._108463845ri705 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri705",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn307() : Label
      {
         return this._108608958rn307;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn309() : Label
      {
         return this._108608960rn309;
      }
      
      public function set ri701(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463841ri701;
         if(_loc2_ !== param1)
         {
            this._108463841ri701 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri701",_loc2_,param1));
         }
      }
      
      public function set ri709(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463849ri709;
         if(_loc2_ !== param1)
         {
            this._108463849ri709 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri709",_loc2_,param1));
         }
      }
      
      public function set ri707(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463847ri707;
         if(_loc2_ !== param1)
         {
            this._108463847ri707 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri707",_loc2_,param1));
         }
      }
      
      public function set ri708(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463848ri708;
         if(_loc2_ !== param1)
         {
            this._108463848ri708 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri708",_loc2_,param1));
         }
      }
      
      public function __bangBtn7_click(param1:MouseEvent) : void
      {
         delBoss();
      }
      
      [Bindable(event="propertyChange")]
      public function get rn306() : Label
      {
         return this._108608957rn306;
      }
      
      public function set ri706(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108463846ri706;
         if(_loc2_ !== param1)
         {
            this._108463846ri706 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri706",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn302() : Label
      {
         return this._108608953rn302;
      }
      
      private function delBoss() : void
      {
         var delBossNo:*;
         var price:Number;
         var func:Function;
         var str:String = Language.FLOP_PASS_PANEL[34];
         var bossNum:Number = ToolKit.minus(_charInfo.ci.i,1);
         if(ToolKit.isSmallOrEqual(bossNum,0))
         {
            _core.sysMsg(Language.FLOP_PASS_PANEL[37]);
            _core.sysMidNote(Language.FLOP_PASS_PANEL[37]);
            return;
         }
         if(ToolKit.isSmallOrEqual(bossNum,_charInfo.ci.db))
         {
            _core.sysMsg(Language.FLOP_PASS_PANEL[37]);
            _core.sysMidNote(Language.FLOP_PASS_PANEL[37]);
            return;
         }
         delBossNo = ToolKit.add(_charInfo.ci.db,1);
         price = 0;
         if(_passConf.db[delBossNo])
         {
            if(ToolKit.isBigOrEqual(_charInfo.ci.i,_passConf.db[delBossNo].s))
            {
               price = Number(_passConf.db[delBossNo].p);
               if(_isRR)
               {
                  str = str.replace("{num}",price / 10).replace(Language.FLOP_PASS_PANEL[35],Language.FLOP_PASS_PANEL[36]);
               }
               else
               {
                  str = str.replace("{num}",price);
               }
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     if(_canClick)
                     {
                        _canClick = false;
                        _core.remote.call("flopDelBoss",new Responder(onFlopDelBoss));
                     }
                  }
               };
               _alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
               return;
            }
            _core.sysMsg(Language.FLOP_PASS_PANEL[37]);
            _core.sysMidNote(Language.FLOP_PASS_PANEL[37]);
            return;
         }
         _core.sysMsg(Language.FLOP_PASS_PANEL[37]);
         _core.sysMidNote(Language.FLOP_PASS_PANEL[37]);
      }
      
      [Bindable(event="propertyChange")]
      public function get rn100() : Label
      {
         return this._108607029rn100;
      }
      
      public function onFlopDelBossClient(param1:Number, param2:Object) : void
      {
         var _loc3_:* = undefined;
         if(Boolean(initialized) && Boolean(_charInfo) && Boolean(_charInfo.ci))
         {
            _charInfo.ci.db = param1;
            _charInfo.ci.dbd = param2;
            for(_loc3_ in _charInfo.ci.dbd)
            {
               this["ig" + _loc3_].source = ResManager.getIconUrl(parseInt(_passFlag[1]));
            }
            _core.sysMsg(Language.FLOP_PASS_PANEL[28]);
            _core.sysMidNote(Language.FLOP_PASS_PANEL[28]);
            _canClick = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn102() : Label
      {
         return this._108607031rn102;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn103() : Label
      {
         return this._108607032rn103;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn104() : Label
      {
         return this._108607033rn104;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn105() : Label
      {
         return this._108607034rn105;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn106() : Label
      {
         return this._108607035rn106;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn107() : Label
      {
         return this._108607036rn107;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn101() : Label
      {
         return this._108607030rn101;
      }
      
      public function set ri600(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462879ri600;
         if(_loc2_ !== param1)
         {
            this._108462879ri600 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri600",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pass1() : Image
      {
         return this._106438208pass1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pass2() : Image
      {
         return this._106438209pass2;
      }
      
      [Bindable(event="propertyChange")]
      public function get pass5() : Image
      {
         return this._106438212pass5;
      }
      
      [Bindable(event="propertyChange")]
      public function get pass6() : Image
      {
         return this._106438213pass6;
      }
      
      [Bindable(event="propertyChange")]
      public function get pass8() : Image
      {
         return this._106438215pass8;
      }
      
      [Bindable(event="propertyChange")]
      public function get pass3() : Image
      {
         return this._106438210pass3;
      }
      
      public function set ri606(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462885ri606;
         if(_loc2_ !== param1)
         {
            this._108462885ri606 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri606",_loc2_,param1));
         }
      }
      
      public function set ri603(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462882ri603;
         if(_loc2_ !== param1)
         {
            this._108462882ri603 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri603",_loc2_,param1));
         }
      }
      
      public function set ri607(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462886ri607;
         if(_loc2_ !== param1)
         {
            this._108462886ri607 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri607",_loc2_,param1));
         }
      }
      
      public function set ri608(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462887ri608;
         if(_loc2_ !== param1)
         {
            this._108462887ri608 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri608",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pass9() : Image
      {
         return this._106438216pass9;
      }
      
      public function set ri602(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462881ri602;
         if(_loc2_ !== param1)
         {
            this._108462881ri602 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri602",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pass4() : Image
      {
         return this._106438211pass4;
      }
      
      public function set ri605(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462884ri605;
         if(_loc2_ !== param1)
         {
            this._108462884ri605 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri605",_loc2_,param1));
         }
      }
      
      public function set ri601(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462880ri601;
         if(_loc2_ !== param1)
         {
            this._108462880ri601 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri601",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pass7() : Image
      {
         return this._106438214pass7;
      }
      
      public function set ri609(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462888ri609;
         if(_loc2_ !== param1)
         {
            this._108462888ri609 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri609",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rn109() : Label
      {
         return this._108607038rn109;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri901() : ItemSlot
      {
         return this._108465763ri901;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri904() : ItemSlot
      {
         return this._108465766ri904;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri905() : ItemSlot
      {
         return this._108465767ri905;
      }
      
      public function set ri604(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108462883ri604;
         if(_loc2_ !== param1)
         {
            this._108462883ri604 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri604",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri908() : ItemSlot
      {
         return this._108465770ri908;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri906() : ItemSlot
      {
         return this._108465768ri906;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri907() : ItemSlot
      {
         return this._108465769ri907;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri900() : ItemSlot
      {
         return this._108465762ri900;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri909() : ItemSlot
      {
         return this._108465771ri909;
      }
      
      private function updateCheckBo() : void
      {
         _check = this.check.selected;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri903() : ItemSlot
      {
         return this._108465765ri903;
      }
      
      [Bindable(event="propertyChange")]
      public function get rn108() : Label
      {
         return this._108607037rn108;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri902() : ItemSlot
      {
         return this._108465764ri902;
      }
      
      public function __check_change(param1:Event) : void
      {
         updateCheckBo();
      }
      
      private function _FlopPassPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      public function set ri500(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461918ri500;
         if(_loc2_ !== param1)
         {
            this._108461918ri500 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri500",_loc2_,param1));
         }
      }
      
      private function cleanAwardItem(param1:Number) : void
      {
         this["ri" + param1].reset();
         this["rn" + param1].visible = false;
      }
      
      public function set ri503(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461921ri503;
         if(_loc2_ !== param1)
         {
            this._108461921ri503 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri503",_loc2_,param1));
         }
      }
      
      public function onTakeFlopRankAward() : void
      {
         if(initialized)
         {
            if(_charInfo)
            {
               _charInfo.award = true;
               loadFlopRank();
            }
         }
      }
      
      public function set ri508(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461926ri508;
         if(_loc2_ !== param1)
         {
            this._108461926ri508 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri508",_loc2_,param1));
         }
      }
      
      public function set ri505(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461923ri505;
         if(_loc2_ !== param1)
         {
            this._108461923ri505 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri505",_loc2_,param1));
         }
      }
      
      public function set ri509(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461927ri509;
         if(_loc2_ !== param1)
         {
            this._108461927ri509 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri509",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ig1() : Image
      {
         return this._104147ig1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ig3() : Image
      {
         return this._104149ig3;
      }
      
      [Bindable(event="propertyChange")]
      public function get ig4() : Image
      {
         return this._104150ig4;
      }
      
      [Bindable(event="propertyChange")]
      public function get ig5() : Image
      {
         return this._104151ig5;
      }
      
      [Bindable(event="propertyChange")]
      public function get ig6() : Image
      {
         return this._104152ig6;
      }
      
      [Bindable(event="propertyChange")]
      public function get ig7() : Image
      {
         return this._104153ig7;
      }
      
      [Bindable(event="propertyChange")]
      public function get ig8() : Image
      {
         return this._104154ig8;
      }
      
      [Bindable(event="propertyChange")]
      public function get ig2() : Image
      {
         return this._104148ig2;
      }
      
      public function set ri504(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461922ri504;
         if(_loc2_ !== param1)
         {
            this._108461922ri504 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri504",_loc2_,param1));
         }
      }
      
      public function set ri506(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461924ri506;
         if(_loc2_ !== param1)
         {
            this._108461924ri506 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri506",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri701() : ItemSlot
      {
         return this._108463841ri701;
      }
      
      [Bindable(event="propertyChange")]
      public function get ig9() : Image
      {
         return this._104155ig9;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri703() : ItemSlot
      {
         return this._108463843ri703;
      }
      
      public function ___FlopPassPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get ri702() : ItemSlot
      {
         return this._108463842ri702;
      }
      
      public function set introCon(param1:IntroText) : void
      {
         var _loc2_:Object = this._582286198introCon;
         if(_loc2_ !== param1)
         {
            this._582286198introCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introCon",_loc2_,param1));
         }
      }
      
      public function set ri502(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461920ri502;
         if(_loc2_ !== param1)
         {
            this._108461920ri502 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri502",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri707() : ItemSlot
      {
         return this._108463847ri707;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri700() : ItemSlot
      {
         return this._108463840ri700;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri709() : ItemSlot
      {
         return this._108463849ri709;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri704() : ItemSlot
      {
         return this._108463844ri704;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri705() : ItemSlot
      {
         return this._108463845ri705;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri706() : ItemSlot
      {
         return this._108463846ri706;
      }
      
      public function set ri507(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461925ri507;
         if(_loc2_ !== param1)
         {
            this._108461925ri507 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri507",_loc2_,param1));
         }
      }
      
      public function __ig4_click(param1:MouseEvent) : void
      {
         flopCard(4);
      }
      
      public function set ri501(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108461919ri501;
         if(_loc2_ !== param1)
         {
            this._108461919ri501 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri501",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri708() : ItemSlot
      {
         return this._108463848ri708;
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      public function set ri402(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460959ri402;
         if(_loc2_ !== param1)
         {
            this._108460959ri402 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri402",_loc2_,param1));
         }
      }
      
      public function set ri400(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460957ri400;
         if(_loc2_ !== param1)
         {
            this._108460957ri400 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri400",_loc2_,param1));
         }
      }
      
      public function set ri404(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460961ri404;
         if(_loc2_ !== param1)
         {
            this._108460961ri404 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri404",_loc2_,param1));
         }
      }
      
      public function set ri407(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460964ri407;
         if(_loc2_ !== param1)
         {
            this._108460964ri407 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri407",_loc2_,param1));
         }
      }
      
      public function set ri408(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460965ri408;
         if(_loc2_ !== param1)
         {
            this._108460965ri408 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri408",_loc2_,param1));
         }
      }
      
      public function set ri409(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460966ri409;
         if(_loc2_ !== param1)
         {
            this._108460966ri409 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri409",_loc2_,param1));
         }
      }
      
      public function set ri403(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460960ri403;
         if(_loc2_ !== param1)
         {
            this._108460960ri403 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri403",_loc2_,param1));
         }
      }
      
      public function __ig9_click(param1:MouseEvent) : void
      {
         flopCard(9);
      }
      
      public function set ri406(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460963ri406;
         if(_loc2_ !== param1)
         {
            this._108460963ri406 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri406",_loc2_,param1));
         }
      }
      
      public function set bangBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324756bangBtn0;
         if(_loc2_ !== param1)
         {
            this._1863324756bangBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn0",_loc2_,param1));
         }
      }
      
      public function onFreshCharFlopPassItemByClient(param1:Object) : void
      {
         if(initialized)
         {
            _charInfo = param1;
            initCharFlopPassData();
            _core.sysMsg(Language.FLOP_PASS_PANEL[29]);
            _core.sysMidNote(Language.FLOP_PASS_PANEL[29]);
         }
      }
      
      public function __bangBtn5_click(param1:MouseEvent) : void
      {
         freshItem();
      }
      
      [Bindable(event="propertyChange")]
      public function get ri501() : ItemSlot
      {
         return this._108461919ri501;
      }
      
      public function set bangBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324755bangBtn1;
         if(_loc2_ !== param1)
         {
            this._1863324755bangBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn1",_loc2_,param1));
         }
      }
      
      public function set bangBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324751bangBtn5;
         if(_loc2_ !== param1)
         {
            this._1863324751bangBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn5",_loc2_,param1));
         }
      }
      
      public function set bangBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324754bangBtn2;
         if(_loc2_ !== param1)
         {
            this._1863324754bangBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri506() : ItemSlot
      {
         return this._108461924ri506;
      }
      
      public function set ri405(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460962ri405;
         if(_loc2_ !== param1)
         {
            this._108460962ri405 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri405",_loc2_,param1));
         }
      }
      
      public function set bangBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324752bangBtn4;
         if(_loc2_ !== param1)
         {
            this._1863324752bangBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn4",_loc2_,param1));
         }
      }
      
      public function set ri401(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460958ri401;
         if(_loc2_ !== param1)
         {
            this._108460958ri401 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri401",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri505() : ItemSlot
      {
         return this._108461923ri505;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri507() : ItemSlot
      {
         return this._108461925ri507;
      }
      
      public function set bangBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324753bangBtn3;
         if(_loc2_ !== param1)
         {
            this._1863324753bangBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri509() : ItemSlot
      {
         return this._108461927ri509;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri503() : ItemSlot
      {
         return this._108461921ri503;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri504() : ItemSlot
      {
         return this._108461922ri504;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri500() : ItemSlot
      {
         return this._108461918ri500;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri502() : ItemSlot
      {
         return this._108461920ri502;
      }
      
      public function set bangBtn7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324749bangBtn7;
         if(_loc2_ !== param1)
         {
            this._1863324749bangBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri508() : ItemSlot
      {
         return this._108461926ri508;
      }
      
      public function set bangBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324750bangBtn6;
         if(_loc2_ !== param1)
         {
            this._1863324750bangBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn6",_loc2_,param1));
         }
      }
      
      public function set flopRankGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1104960551flopRankGrid;
         if(_loc2_ !== param1)
         {
            this._1104960551flopRankGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flopRankGrid",_loc2_,param1));
         }
      }
      
      private function onGetFlopPassConf(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:String = null;
         if(param1)
         {
            _passConf = param1.conf;
            _charInfo = param1.ci;
            if(_charInfo.p)
            {
               _pro = _charInfo.p;
            }
            else
            {
               _pro = 0;
            }
            if(Boolean(_charInfo.ci) && Boolean(_charInfo.ci.i))
            {
               _nowpro = _charInfo.ci.i;
            }
            _version = param1.v;
            _loadcid = _core.player.id;
            initCharFlopPassData();
            initFlopPassAwardData();
            for(_loc2_ in _charInfo.ci.dbd)
            {
               this["ig" + _loc2_].source = ResManager.getIconUrl(parseInt(_passFlag[1]));
            }
            _canClick = true;
            _loc3_ = Language.FLOP_PASS_PANEL[40].replace("{pr}",_passConf.pr).replace("{prrr}",_passConf.pr / 10).replace("{r}",_passConf.r).replace("{rrr}",_passConf.r / 10).replace("{rb}",_passConf.rb).replace("{rbrr}",_passConf.rb / 10).replace("{s1}",_passConf.db[1].s).replace("{p1}",_passConf.db[1].p).replace("{p1rr}",_passConf.db[1].p / 10).replace("{s2}",_passConf.db[2].s).replace("{p2}",_passConf.db[2].p).replace("{p2rr}",_passConf.db[2].p / 10).replace("{s3}",_passConf.db[3].s).replace("{p3}",_passConf.db[3].p).replace("{p3rr}",_passConf.db[3].p / 10);
            _loc3_ = _loc3_.replace("{stime}",TestDateTimeToString(Number(_passConf.start))).replace("{etime}",TestDateTimeToString(ToolKit.minus(Number(_passConf.end),2 * 24 * 60 * 60 * 1000))).replace("{satime}",TestDateTimeToString(ToolKit.minus(Number(_passConf.end),ToolKit.minus(2 * 24 * 60 * 60 * 1000,15 * 60 * 1000)))).replace("{eatime}",TestDateTimeToString(Number(_passConf.end)));
            introCon.htmlText = _loc3_;
         }
      }
      
      public function set ri300(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459996ri300;
         if(_loc2_ !== param1)
         {
            this._108459996ri300 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri300",_loc2_,param1));
         }
      }
      
      public function set ri302(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459998ri302;
         if(_loc2_ !== param1)
         {
            this._108459998ri302 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri302",_loc2_,param1));
         }
      }
      
      public function set ri303(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459999ri303;
         if(_loc2_ !== param1)
         {
            this._108459999ri303 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri303",_loc2_,param1));
         }
      }
      
      public function set ri304(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460000ri304;
         if(_loc2_ !== param1)
         {
            this._108460000ri304 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri304",_loc2_,param1));
         }
      }
      
      public function set ri305(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460001ri305;
         if(_loc2_ !== param1)
         {
            this._108460001ri305 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri305",_loc2_,param1));
         }
      }
      
      public function set ri306(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460002ri306;
         if(_loc2_ !== param1)
         {
            this._108460002ri306 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri306",_loc2_,param1));
         }
      }
      
      public function set ri307(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460003ri307;
         if(_loc2_ !== param1)
         {
            this._108460003ri307 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri307",_loc2_,param1));
         }
      }
      
      public function set ri308(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460004ri308;
         if(_loc2_ !== param1)
         {
            this._108460004ri308 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri308",_loc2_,param1));
         }
      }
      
      public function set ri301(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108459997ri301;
         if(_loc2_ !== param1)
         {
            this._108459997ri301 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri301",_loc2_,param1));
         }
      }
      
      public function set ri309(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._108460005ri309;
         if(_loc2_ !== param1)
         {
            this._108460005ri309 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ri309",_loc2_,param1));
         }
      }
      
      private function onFlopCard(param1:Object) : void
      {
         if(!param1)
         {
            _canClick = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ri302() : ItemSlot
      {
         return this._108459998ri302;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri303() : ItemSlot
      {
         return this._108459999ri303;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri304() : ItemSlot
      {
         return this._108460000ri304;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri305() : ItemSlot
      {
         return this._108460001ri305;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri306() : ItemSlot
      {
         return this._108460002ri306;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri307() : ItemSlot
      {
         return this._108460003ri307;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri308() : ItemSlot
      {
         return this._108460004ri308;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri309() : ItemSlot
      {
         return this._108460005ri309;
      }
      
      public function initFlopPassPanel() : *
      {
         initView();
         visible = true;
      }
      
      private function _FlopPassPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FLOP_PASS_PANEL[0];
         _loc1_ = Language.FLOP_PASS_PANEL[1];
         _loc1_ = Language.FLOP_PASS_PANEL[2];
         _loc1_ = Language.FLOP_PASS_PANEL[25];
         _loc1_ = Language.FLOP_PASS_PANEL[26];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[3]));
         _loc1_ = Language.FLOP_PASS_PANEL[5];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[6];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[7];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[8];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[9];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[10];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[11];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[12];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[13];
         _loc1_ = ResManager.getIconUrl(parseInt(_passFlag[4]));
         _loc1_ = Language.FLOP_PASS_PANEL[23];
         _loc1_ = Language.FLOP_PASS_PANEL[3];
         _loc1_ = Language.FLOP_PASS_PANEL[4];
         _loc1_ = Language.FLOP_PASS_PANEL[39];
         _loc1_ = Language.FLOP_PASS_PANEL[24];
         _loc1_ = _check;
         _loc1_ = Language.FLOP_PASS_PANEL[32];
         _loc1_ = Language.FLOP_PASS_PANEL[14];
         _loc1_ = Language.FLOP_PASS_PANEL[15];
         _loc1_ = Language.FLOP_PASS_PANEL[16];
         _loc1_ = Language.FLOP_PASS_PANEL[17];
         _loc1_ = Language.FLOP_PASS_PANEL[18];
         _loc1_ = Language.FLOP_PASS_PANEL[19];
         _loc1_ = Language.FLOP_PASS_PANEL[20];
         _loc1_ = Language.FLOP_PASS_PANEL[21];
         _loc1_ = Language.FLOP_PASS_PANEL[22];
         _loc1_ = Language.FLOP_PASS_PANEL[41];
         _loc1_ = Language.FLOP_PASS_PANEL[42];
         _loc1_ = Language.FLOP_PASS_PANEL[43];
         _loc1_ = Language.FLOP_PASS_PANEL[44];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = _pro;
         _loc1_ = _nowpro;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri301() : ItemSlot
      {
         return this._108459997ri301;
      }
      
      [Bindable(event="propertyChange")]
      public function get ri300() : ItemSlot
      {
         return this._108459996ri300;
      }
   }
}

