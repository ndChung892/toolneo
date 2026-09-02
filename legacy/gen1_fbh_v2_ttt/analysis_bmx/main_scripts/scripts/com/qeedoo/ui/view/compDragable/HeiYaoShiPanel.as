package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HeiYaoShiPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _490026296fivelight15:HeiYaoShiPoint;
      
      private var _2114775250eightlight5:HeiYaoShiPoint;
      
      private var _1238325708fivelightArea14:Image;
      
      private var _165045302sixlightArea7:Image;
      
      private var _2114775253eightlight2:HeiYaoShiPoint;
      
      private var _583884033tenlight17:HeiYaoShiPoint;
      
      private var _265466240twoLine11:Image;
      
      private var _1750432266sevenlightArea11:Image;
      
      private var _1326241628tenLine5:Image;
      
      private var _757084024fourlightArea5:Image;
      
      private var _120761073sevenlight17:HeiYaoShiPoint;
      
      private var _490026299fivelight12:HeiYaoShiPoint;
      
      private var _1836182418tenLine12:Image;
      
      private var _1984921415sixLine25:Image;
      
      private var _1745468510eightlightArea6:Image;
      
      private var _1149161328eightLine3:Image;
      
      private var _273199152sevenlight9:HeiYaoShiPoint;
      
      private var _1220980371sixlight10:HeiYaoShiPoint;
      
      private var _650463018twolight4:HeiYaoShiPoint;
      
      private var _767254274sixLine8:Image;
      
      private var _1539827948fivelight8:HeiYaoShiPoint;
      
      private var _1133523385eightlight11:HeiYaoShiPoint;
      
      private var _1836182485tenLine37:Image;
      
      private var _1068992187sixlight9:HeiYaoShiPoint;
      
      private var _1542855624tenlight1:HeiYaoShiPoint;
      
      private var _1984921387sixLine32:Image;
      
      private var _1129111885sevenLine4:Image;
      
      private var _583884039tenlight11:HeiYaoShiPoint;
      
      private var _583884009tenlight20:HeiYaoShiPoint;
      
      private var _198663141tenlightArea10:Image;
      
      private var _669068673AllButton2:Button;
      
      private var _120761078sevenlight12:HeiYaoShiPoint;
      
      private var _302553404fourLine6:Image;
      
      private var _790478743nineLine14:Image;
      
      private var _790478713nineLine23:Image;
      
      private var _671493404twolightArea3:Image;
      
      private var _1133523379eightlight17:HeiYaoShiPoint;
      
      private var _1220980377sixlight16:HeiYaoShiPoint;
      
      private var _1068992195sixlight1:HeiYaoShiPoint;
      
      private var _1836182478tenLine30:Image;
      
      private var _406001467ninelight12:HeiYaoShiPoint;
      
      private var _1994768192fourlightArea14:Image;
      
      private var _1606102434sevenlightArea8:Image;
      
      private var _1326241627tenLine6:Image;
      
      private var _1542855617tenlight8:HeiYaoShiPoint;
      
      private var FigureNumArr:Array = ["one","two","three","four","five","six","seven","eight","nine","ten"];
      
      private var _1745468508eightlightArea8:Image;
      
      private var _102601018smallFigure1:Image;
      
      private var _1091990586threeLine8:Image;
      
      private var _265466241twoLine10:Image;
      
      private var _821436929sixlightArea11:Image;
      
      private var _757084021fourlightArea2:Image;
      
      private var _1984921416sixLine24:Image;
      
      private var _767254273sixLine7:Image;
      
      private var _1836182419tenLine13:Image;
      
      private var _237148678fivelightArea7:Image;
      
      private var _1839210094fiveLine19:Image;
      
      private var _650463019twolight5:HeiYaoShiPoint;
      
      private var _1068992188sixlight8:HeiYaoShiPoint;
      
      private var _1836182486tenLine38:Image;
      
      private var _1839210086fiveLine11:Image;
      
      private var _1984921388sixLine31:Image;
      
      private var _821436933sixlightArea15:Image;
      
      private var _1378120115buff60:Label;
      
      private var _642730072sevenLine29:Image;
      
      private var _302553405fourLine7:Image;
      
      private var _165045299sixlightArea4:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _642730075sevenLine26:Image;
      
      private var _1378120137buff59:Label;
      
      private var _1763283436threelightArea1:Image;
      
      private var _125450511ninelight3:HeiYaoShiPoint;
      
      private var _1705150085fourlight5:HeiYaoShiPoint;
      
      private var _642730078sevenLine23:Image;
      
      private var _1792551889twoLine1:Image;
      
      private var _789220834fourLine19:Image;
      
      private var _1264262849eightLine31:Image;
      
      private var _1750432265sevenlightArea12:Image;
      
      private var _1326241626tenLine7:Image;
      
      private var _1836182479tenLine31:Image;
      
      private var _1264262786eightLine10:Image;
      
      private var _789220826fourLine11:Image;
      
      private var _1238325707fivelightArea15:Image;
      
      private var _1542855618tenlight7:HeiYaoShiPoint;
      
      private var _1264262789eightLine13:Image;
      
      private var _789220864fourLine28:Image;
      
      private var _184742967smallFigurezi1:Image;
      
      private var _767254272sixLine6:Image;
      
      private var _789220856fourLine20:Image;
      
      private var _1149161331eightLine6:Image;
      
      private var _1836182450tenLine23:Image;
      
      private var AllPointNumArr:Array = [4,8,10,16,20,19,21,17,13,20];
      
      private var _1539827951fivelight5:HeiYaoShiPoint;
      
      private var _1133877970nineLine4:Image;
      
      private var _125450517ninelight9:HeiYaoShiPoint;
      
      private var _1984921417sixLine23:Image;
      
      private var _1839210124fiveLine28:Image;
      
      private var _125450509ninelight1:HeiYaoShiPoint;
      
      private var _1839210116fiveLine20:Image;
      
      private var _237148675fivelightArea4:Image;
      
      private var _94091842buff5:Label;
      
      private var _198663149tenlightArea18:Image;
      
      private var _1068992189sixlight7:HeiYaoShiPoint;
      
      private var _1984921389sixLine30:Image;
      
      private var _1839210154fiveLine37:Image;
      
      private var _1129111880sevenLine9:Image;
      
      private var _583884034tenlight16:HeiYaoShiPoint;
      
      private var _1987692604onelight4:HeiYaoShiPoint;
      
      private var _642730081sevenLine20:Image;
      
      private var _821436930sixlightArea12:Image;
      
      private var _490026270fivelight20:HeiYaoShiPoint;
      
      private var _302553406fourLine8:Image;
      
      private var _545014779ninelightArea6:Image;
      
      private var _1220980380sixlight19:HeiYaoShiPoint;
      
      private var _1149161329eightLine4:Image;
      
      private var _1220980372sixlight11:HeiYaoShiPoint;
      
      private var _642730103sevenLine19:Image;
      
      private var _1326241625tenLine8:Image;
      
      private var _120761071sevenlight19:HeiYaoShiPoint;
      
      private var _1539827949fivelight7:HeiYaoShiPoint;
      
      private var _144955824tenlightArea6:Image;
      
      private var _1264262792eightLine16:Image;
      
      private var _1994768191fourlightArea13:Image;
      
      private var _642730106sevenLine16:Image;
      
      private var _1606102433sevenlightArea7:Image;
      
      private var _545014783ninelightArea2:Image;
      
      private var _1129111886sevenLine3:Image;
      
      private var _165045304sixlightArea9:Image;
      
      private var _1264262795eightLine19:Image;
      
      private var _642730109sevenLine13:Image;
      
      private var _767254271sixLine5:Image;
      
      private var _1542855619tenlight6:HeiYaoShiPoint;
      
      private var _669068674AllButton1:Button;
      
      public var _HeiYaoShiPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1984544763oneLine5:Image;
      
      private var _1133523383eightlight13:HeiYaoShiPoint;
      
      private var _1745468507eightlightArea9:Image;
      
      private var _790478744nineLine13:Image;
      
      private var _790478714nineLine22:Image;
      
      private var _669068666AllButton9:Button;
      
      private var _1836182451tenLine24:Image;
      
      private var _1984921418sixLine22:Image;
      
      private var _1133877971nineLine3:Image;
      
      private var _1193065047threelight10:HeiYaoShiPoint;
      
      private var _120761076sevenlight14:HeiYaoShiPoint;
      
      private var _1220980378sixlight17:HeiYaoShiPoint;
      
      private var _1423959291threelight3:HeiYaoShiPoint;
      
      private var _1264262817eightLine20:Image;
      
      private var _1423959294threelight6:HeiYaoShiPoint;
      
      private var _642730046sevenLine34:Image;
      
      private var _237148672fivelightArea1:Image;
      
      private var _94091844buff7:Label;
      
      private var _198663146tenlightArea15:Image;
      
      private var _120761048sevenlight21:HeiYaoShiPoint;
      
      private var _642730049sevenLine31:Image;
      
      private var _1423959297threelight9:HeiYaoShiPoint;
      
      mx_internal var _bindings:Array = [];
      
      private var _1987692605onelight3:HeiYaoShiPoint;
      
      private var _284410929ninelightArea11:Image;
      
      private var _1091990587threeLine7:Image;
      
      private var _302553407fourLine9:Image;
      
      private var _1320045009fourlight12:HeiYaoShiPoint;
      
      private var _671493406twolightArea5:Image;
      
      private var _1750432264sevenlightArea13:Image;
      
      private var _1326241624tenLine9:Image;
      
      private var _1994768189fourlightArea11:Image;
      
      private var _545014776ninelightArea9:Image;
      
      private var _1763283444threelightArea9:Image;
      
      private var _642730112sevenLine10:Image;
      
      private var _490026301fivelight10:HeiYaoShiPoint;
      
      private var _102601016smallFigure3:Image;
      
      private var _1238325706fivelightArea16:Image;
      
      private var _1839210087fiveLine12:Image;
      
      private var _767254270sixLine4:Image;
      
      private var _1984544762oneLine4:Image;
      
      private var _2114775248eightlight7:HeiYaoShiPoint;
      
      private var _545014780ninelightArea5:Image;
      
      private var _273199144sevenlight1:HeiYaoShiPoint;
      
      private var _508030034threeLine11:Image;
      
      private var _508030037threeLine14:Image;
      
      private var _273199147sevenlight4:HeiYaoShiPoint;
      
      private var _757084026fourlightArea7:Image;
      
      private var _1264262820eightLine23:Image;
      
      private var _1836182452tenLine25:Image;
      
      private var _125450512ninelight4:HeiYaoShiPoint;
      
      private var _1984921419sixLine21:Image;
      
      private var _1133877972nineLine2:Image;
      
      private var _1705150086fourlight6:HeiYaoShiPoint;
      
      private var _1264262823eightLine26:Image;
      
      private var _1264262826eightLine29:Image;
      
      private var _789220827fourLine12:Image;
      
      private var _165045296sixlightArea1:Image;
      
      private var _1320045012fourlight15:HeiYaoShiPoint;
      
      private var _1049049293fiveLine9:Image;
      
      private var _789220865fourLine29:Image;
      
      private var _1984921442sixLine19:Image;
      
      private var _1987692606onelight2:HeiYaoShiPoint;
      
      private var _198663143tenlightArea12:Image;
      
      private var _789220857fourLine21:Image;
      
      private var _1149161332eightLine7:Image;
      
      private var _284410930ninelightArea12:Image;
      
      private var _1792551897twoLine9:Image;
      
      private var _helpAlert:Alert;
      
      private var _1539827952fivelight4:HeiYaoShiPoint;
      
      private var _1839210125fiveLine29:Image;
      
      private var _490026294fivelight17:HeiYaoShiPoint;
      
      private var _1994768190fourlightArea12:Image;
      
      private var _2114775251eightlight4:HeiYaoShiPoint;
      
      private var _1133877965nineLine9:Image;
      
      private var _1606102432sevenlightArea6:Image;
      
      private var _1839210117fiveLine21:Image;
      
      private var _1984544761oneLine3:Image;
      
      private var _490026297fivelight14:HeiYaoShiPoint;
      
      private var _2114775254eightlight1:HeiYaoShiPoint;
      
      private var _1839210155fiveLine38:Image;
      
      private var _508030040threeLine17:Image;
      
      private var _1984921450sixLine11:Image;
      
      private var _1129111881sevenLine8:Image;
      
      private var _273199150sevenlight7:HeiYaoShiPoint;
      
      private var _1839210147fiveLine30:Image;
      
      private var _583884035tenlight15:HeiYaoShiPoint;
      
      private var _1745468515eightlightArea1:Image;
      
      private var _1725050936eightlightArea15:Image;
      
      private var _1836182453tenLine26:Image;
      
      private var _1133877973nineLine1:Image;
      
      private var _1220980373sixlight12:HeiYaoShiPoint;
      
      private var _757084023fourlightArea4:Image;
      
      private var _1129111887sevenLine2:Image;
      
      private var _1091990590threeLine4:Image;
      
      private var _284410928ninelightArea10:Image;
      
      private var _1049049294fiveLine8:Image;
      
      private var _1792551896twoLine8:Image;
      
      private var _1750432263sevenlightArea14:Image;
      
      private var _1984921443sixLine18:Image;
      
      private var _1987692607onelight1:HeiYaoShiPoint;
      
      private var _120761080sevenlight10:HeiYaoShiPoint;
      
      private var _144955821tenlightArea3:Image;
      
      private var _790478745nineLine12:Image;
      
      private var _790478715nineLine21:Image;
      
      private var _1994768188fourlightArea10:Image;
      
      private var heiyaoshiData:Object = {};
      
      private var _669068667AllButton8:Button;
      
      private var _265466238twoLine13:Image;
      
      private var _1763283443threelightArea8:Image;
      
      private var _1984544760oneLine2:Image;
      
      private var _1220980379sixlight18:HeiYaoShiPoint;
      
      private var _1133523381eightlight15:HeiYaoShiPoint;
      
      private var _165045301sixlightArea6:Image;
      
      private var _406001468ninelight11:HeiYaoShiPoint;
      
      private var _1839210090fiveLine15:Image;
      
      private var _1238325705fivelightArea17:Image;
      
      private var _1378120114buff61:Label;
      
      private var _1133877966nineLine8:Image;
      
      private var _144955826tenlightArea8:Image;
      
      private var _120761074sevenlight16:HeiYaoShiPoint;
      
      private var _1984921451sixLine10:Image;
      
      private var _1091990588threeLine6:Image;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _184742969smallFigurezi3:Image;
      
      private var _1133523386eightlight10:HeiYaoShiPoint;
      
      private var _733707634AllButton10:Button;
      
      private var _1836182454tenLine27:Image;
      
      private var _1705150081fourlight1:HeiYaoShiPoint;
      
      private var _1378120267buff13:Label;
      
      private var _789220830fourLine15:Image;
      
      private var _821436928sixlightArea10:Image;
      
      private var _757084020fourlightArea1:Image;
      
      private var _1839210088fiveLine13:Image;
      
      private var _1792551895twoLine7:Image;
      
      private var _120761079sevenlight11:HeiYaoShiPoint;
      
      private var _642730073sevenLine28:Image;
      
      private var _237148677fivelightArea6:Image;
      
      private var _671493403twolightArea2:Image;
      
      private var _1326241632tenLine1:Image;
      
      private var _642730076sevenLine25:Image;
      
      private var _1049049295fiveLine7:Image;
      
      private var _789220860fourLine24:Image;
      
      private var _1984921444sixLine17:Image;
      
      private var _642730079sevenLine22:Image;
      
      private var _821436932sixlightArea14:Image;
      
      public var _HeiYaoShiPanel_Image1:Image;
      
      private var _125450513ninelight5:HeiYaoShiPoint;
      
      private var _1839210120fiveLine24:Image;
      
      private var _1705150087fourlight7:HeiYaoShiPoint;
      
      private var _1836182447tenLine20:Image;
      
      private var _1264262787eightLine11:Image;
      
      private var _265466239twoLine12:Image;
      
      private var _1606102431sevenlightArea5:Image;
      
      private var _1133877967nineLine7:Image;
      
      private var _1766408373onelightArea2:Image;
      
      private var _789220828fourLine13:Image;
      
      private var _1839210150fiveLine33:Image;
      
      private var _1725050935eightlightArea14:Image;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _1745468514eightlightArea2:Image;
      
      private var _102601019smallFigure0:Image;
      
      private var _789220858fourLine22:Image;
      
      private var _1149161333eightLine8:Image;
      
      private var _1539827953fivelight3:HeiYaoShiPoint;
      
      private var _1836182455tenLine28:Image;
      
      private var _184742966smallFigurezi0:Image;
      
      private var _1792551894twoLine6:Image;
      
      private var _1839210118fiveLine22:Image;
      
      private var _1423959289threelight1:HeiYaoShiPoint;
      
      private var _165045298sixlightArea3:Image;
      
      private var _1326241631tenLine2:Image;
      
      private var _1839210156fiveLine39:Image;
      
      private var _1378120204buff34:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1129111882sevenLine7:Image;
      
      private var _1049049296fiveLine6:Image;
      
      private var _1839210148fiveLine31:Image;
      
      private var _237148674fivelightArea3:Image;
      
      private var _669068670AllButton5:Button;
      
      private var _1984921445sixLine16:Image;
      
      private var _198663148tenlightArea17:Image;
      
      private var _946505330viewstack1:ViewStack;
      
      private var _583884036tenlight14:HeiYaoShiPoint;
      
      private var _184742970smallFigurezi4:Image;
      
      private var _1264262790eightLine14:Image;
      
      private var _1606102429sevenlightArea3:Image;
      
      private var _642730104sevenLine18:Image;
      
      private var _790478740nineLine17:Image;
      
      private var _1763283442threelightArea7:Image;
      
      private var _core:Core = Core.getInstance();
      
      private var _1264262793eightLine17:Image;
      
      private var _642730107sevenLine15:Image;
      
      private var _1238325704fivelightArea18:Image;
      
      private var _1839210178fiveLine40:Image;
      
      private var _1220980374sixlight13:HeiYaoShiPoint;
      
      private var _1836182448tenLine21:Image;
      
      private var _545014778ninelightArea7:Image;
      
      private var _1133877968nineLine6:Image;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _1129111888sevenLine1:Image;
      
      private var _1091990591threeLine3:Image;
      
      private var _545014782ninelightArea3:Image;
      
      private var _790478746nineLine11:Image;
      
      private var _790478716nineLine20:Image;
      
      private var TRIANGLE_FIGURE:Object = {};
      
      private var _144955819tenlightArea1:Image;
      
      private var _669068668AllButton7:Button;
      
      private var _1423959292threelight4:HeiYaoShiPoint;
      
      private var _1264262818eightLine21:Image;
      
      private var _1792551893twoLine5:Image;
      
      private var _642730044sevenLine36:Image;
      
      private var _757084028fourlightArea9:Image;
      
      private var _790478738nineLine19:Image;
      
      private var _1836182456tenLine29:Image;
      
      private var _642730047sevenLine33:Image;
      
      private var _1839210091fiveLine16:Image;
      
      private var _1326241630tenLine3:Image;
      
      private var _1423959295threelight7:HeiYaoShiPoint;
      
      private var _1320045007fourlight10:HeiYaoShiPoint;
      
      private var _1049049297fiveLine5:Image;
      
      private var _642730110sevenLine12:Image;
      
      private var _1984921446sixLine15:Image;
      
      private var _144955823tenlightArea5:Image;
      
      private var _1091990589threeLine5:Image;
      
      private var _1606102430sevenlightArea4:Image;
      
      private var _120761072sevenlight18:HeiYaoShiPoint;
      
      private var _198663145tenlightArea14:Image;
      
      private var _302553399fourLine1:Image;
      
      private var _165045303sixlightArea8:Image;
      
      private var _1705150082fourlight2:HeiYaoShiPoint;
      
      private var _1725050934eightlightArea13:Image;
      
      private var _2114775246eightlight9:HeiYaoShiPoint;
      
      private var _1863324753bangBtn3:BasicGlowButton;
      
      private var _789220831fourLine16:Image;
      
      private var _1836182449tenLine22:Image;
      
      private var _2114775249eightlight6:HeiYaoShiPoint;
      
      private var _508030035threeLine12:Image;
      
      private var _1133877969nineLine5:Image;
      
      private var _1839210089fiveLine14:Image;
      
      private var _1745468513eightlightArea3:Image;
      
      private var _273199145sevenlight2:HeiYaoShiPoint;
      
      private var _1133523384eightlight12:HeiYaoShiPoint;
      
      private var _508030038threeLine15:Image;
      
      private var _789220861fourLine25:Image;
      
      private var _94091841buff4:Label;
      
      private var _1378120207buff31:Label;
      
      private var _1264262821eightLine24:Image;
      
      private var _273199148sevenlight5:HeiYaoShiPoint;
      
      private var _1836182420tenLine14:Image;
      
      private var _642730050sevenLine30:Image;
      
      private var _120761077sevenlight13:HeiYaoShiPoint;
      
      private var _650463020twolight6:HeiYaoShiPoint;
      
      private var _1264262824eightLine27:Image;
      
      private var _1792551892twoLine4:Image;
      
      private var _708226053heiyaoshiNum2:Label;
      
      private var _125450514ninelight6:HeiYaoShiPoint;
      
      private var _1839210121fiveLine25:Image;
      
      private var _1320045010fourlight13:HeiYaoShiPoint;
      
      private var _1705150088fourlight8:HeiYaoShiPoint;
      
      private var _767254269sixLine3:Image;
      
      private var _1320045013fourlight16:HeiYaoShiPoint;
      
      private var _757084025fourlightArea6:Image;
      
      private var _671493405twolightArea4:Image;
      
      private var _789220829fourLine14:Image;
      
      private var _120761049sevenlight20:HeiYaoShiPoint;
      
      private var _1839210151fiveLine34:Image;
      
      private var _490026292fivelight19:HeiYaoShiPoint;
      
      private var _1606102428sevenlightArea2:Image;
      
      private var _583884031tenlight19:HeiYaoShiPoint;
      
      private var _1049049298fiveLine4:Image;
      
      private var _1763283441threelightArea6:Image;
      
      private var _1984921447sixLine14:Image;
      
      private var _789220859fourLine23:Image;
      
      private var _1149161334eightLine9:Image;
      
      private var _490026295fivelight16:HeiYaoShiPoint;
      
      private var _1238325703fivelightArea19:Image;
      
      private var _2114775252eightlight3:HeiYaoShiPoint;
      
      private var _1863324752bangBtn4:BasicGlowButton;
      
      private var _1539827954fivelight2:HeiYaoShiPoint;
      
      private var _102601017smallFigure2:Image;
      
      private var _1149161326eightLine1:Image;
      
      private var _490026298fivelight13:HeiYaoShiPoint;
      
      private var _1836182480tenLine32:Image;
      
      private var _1238325712fivelightArea10:Image;
      
      private var _198663142tenlightArea11:Image;
      
      private var _1839210119fiveLine23:Image;
      
      private var _508030041threeLine18:Image;
      
      private var _273199151sevenlight8:HeiYaoShiPoint;
      
      private var _1129111883sevenLine6:Image;
      
      private var _583884037tenlight13:HeiYaoShiPoint;
      
      private var _94091838buff1:Label;
      
      private var _1839210149fiveLine32:Image;
      
      private var _1792551891twoLine3:Image;
      
      private var _669068671AllButton4:Button;
      
      private var _1836182421tenLine15:Image;
      
      private var _1378120113buff62:Label;
      
      private var _767254268sixLine2:Image;
      
      private var _790478741nineLine16:Image;
      
      private var _94091843buff6:Label;
      
      private var _650463021twolight7:HeiYaoShiPoint;
      
      private var _1068992190sixlight6:HeiYaoShiPoint;
      
      private var _1220980375sixlight14:HeiYaoShiPoint;
      
      private var _1763283439threelightArea4:Image;
      
      private var _757084022fourlightArea3:Image;
      
      private var _1091990592threeLine2:Image;
      
      private var _237148679fivelightArea8:Image;
      
      private var _406001466ninelight13:HeiYaoShiPoint;
      
      private var _1725050933eightlightArea12:Image;
      
      private var _1049049299fiveLine3:Image;
      
      private var _1984921448sixLine13:Image;
      
      private var SmallFigureArr:Array = [4130220000588,4130220000589,4130220000590,4130220000591,4130220000592,4130220000593,4130220000594,4130220000595,4130220000596,4130220000598];
      
      private var _1378120266buff14:Label;
      
      private var _1984921411sixLine29:Image;
      
      private var _790478747nineLine10:Image;
      
      private var _406001469ninelight10:HeiYaoShiPoint;
      
      private var _669068669AllButton6:Button;
      
      private var tempFigure:Number = 0;
      
      private var _790478739nineLine18:Image;
      
      private var _1836182481tenLine33:Image;
      
      private var _1839210092fiveLine17:Image;
      
      private var _1542855620tenlight5:HeiYaoShiPoint;
      
      private var _1984921383sixLine36:Image;
      
      private var _1745468512eightlightArea4:Image;
      
      private var _1792551890twoLine2:Image;
      
      private var _302553400fourLine2:Image;
      
      private var _767254267sixLine1:Image;
      
      private var _1984544759oneLine1:Image;
      
      private var _1836182422tenLine16:Image;
      
      private var _650463022twolight8:HeiYaoShiPoint;
      
      private var _1068992191sixlight5:HeiYaoShiPoint;
      
      private var _1705150083fourlight3:HeiYaoShiPoint;
      
      private var _642730074sevenLine27:Image;
      
      private var _789220832fourLine17:Image;
      
      private var _184742968smallFigurezi2:Image;
      
      private var _642730077sevenLine24:Image;
      
      private var _144955820tenlightArea2:Image;
      
      private var _1606102427sevenlightArea1:Image;
      
      private var _1763283440threelightArea5:Image;
      
      private var _1264262848eightLine30:Image;
      
      private var _789220862fourLine26:Image;
      
      private var _144955825tenlightArea7:Image;
      
      private var _165045300sixlightArea5:Image;
      
      private var _1984921449sixLine12:Image;
      
      private var _237148676fivelightArea5:Image;
      
      private var _1984921412sixLine28:Image;
      
      private var _1264262788eightLine12:Image;
      
      private var _1133523382eightlight14:HeiYaoShiPoint;
      
      private var _1238325711fivelightArea11:Image;
      
      private var _1238325681fivelightArea20:Image;
      
      private var _125450515ninelight7:HeiYaoShiPoint;
      
      private var _1839210122fiveLine26:Image;
      
      private var _1705150089fourlight9:HeiYaoShiPoint;
      
      private var _650463015twolight1:HeiYaoShiPoint;
      
      private var _1836182482tenLine34:Image;
      
      private var _120761075sevenlight15:HeiYaoShiPoint;
      
      private var _821436931sixlightArea13:Image;
      
      private var _1542855621tenlight4:HeiYaoShiPoint;
      
      private var _1984921384sixLine35:Image;
      
      private var _583884040tenlight10:HeiYaoShiPoint;
      
      private var _1839210152fiveLine35:Image;
      
      private var _237148680fivelightArea9:Image;
      
      private var _302553401fourLine3:Image;
      
      private var _583884032tenlight18:HeiYaoShiPoint;
      
      private var _1984921420sixLine20:Image;
      
      private var _1539827955fivelight1:HeiYaoShiPoint;
      
      private var _1836182423tenLine17:Image;
      
      private var LineType:Object = {
         1:[1,2,0,2,1],
         2:[1,2,0,1,2,1,2,0,0,2,1,2,1],
         3:[0,1,2,1,2,0,0,2,1,2,1,0,1,2,1,2,0,0],
         4:[0,0,2,1,2,1,2,1,0,0,2,1,2,1,0,1,2,1,2,0,0,1,2,1,2,1,2,0,0],
         5:[0,1,2,1,2,0,0,1,2,1,2,1,2,0,0,1,2,1,2,1,2,0,0,0,0,1,2,1,2,1,2,1,2,1,2,0,0,0,0,0],
         6:[1,2,1,2,1,2,0,0,0,2,1,2,1,2,1,0,0,2,1,2,1,0,0,0,1,2,1,2,1,2,1,2,0,0,0,0],
         7:[1,2,0,0,0,2,1,2,1,2,1,1,2,1,2,1,2,1,2,1,2,0,0,0,0,0,2,1,2,1,2,1,2,1,2,1],
         8:[0,2,1,2,0,1,2,1,0,0,2,1,2,1,2,1,2,0,0,0,0,2,1,2,1,2,1,2,1,0,0],
         9:[1,2,0,0,0,2,1,2,1,2,1,0,0,1,2,1,2,1,2,0,0,0,2,1],
         10:[0,0,0,0,2,1,2,1,2,1,2,1,0,0,0,2,1,2,1,1,2,1,2,0,0,0,1,2,1,2,1,2,1,2,0,0,0,0]
      };
      
      private var _545014784ninelightArea1:Image;
      
      private var _1378120269buff11:Label;
      
      private var _1149161327eightLine2:Image;
      
      private var _671493402twolightArea1:Image;
      
      private var _642730080sevenLine21:Image;
      
      private var _1068992192sixlight4:HeiYaoShiPoint;
      
      private var _1539827947fivelight9:HeiYaoShiPoint;
      
      private var _1763283438threelightArea3:Image;
      
      private var _671493407twolightArea6:Image;
      
      private var _1725050932eightlightArea11:Image;
      
      private var _102601015smallFigure4:Image;
      
      private var _1129111884sevenLine5:Image;
      
      private var _1264262791eightLine15:Image;
      
      private var _583884038tenlight12:HeiYaoShiPoint;
      
      public var _HeiYaoShiPanel_LinkButton1:LinkButton;
      
      private var _669068672AllButton3:Button;
      
      private var _642730105sevenLine17:Image;
      
      private var _1238325709fivelightArea13:Image;
      
      private var _1264262794eightLine18:Image;
      
      private var _642730108sevenLine14:Image;
      
      private var _790478742nineLine15:Image;
      
      private var _790478712nineLine24:Image;
      
      private var _1766408372onelightArea1:Image;
      
      private var _1984921413sixLine27:Image;
      
      private var _1836182416tenLine10:Image;
      
      private var _650463016twolight2:HeiYaoShiPoint;
      
      private var _237148673fivelightArea2:Image;
      
      private var _1220980376sixlight15:HeiYaoShiPoint;
      
      private var _1745468511eightlightArea5:Image;
      
      private var _198663147tenlightArea16:Image;
      
      private var _1750432267sevenlightArea10:Image;
      
      private var _1049049300fiveLine2:Image;
      
      private var _1836182483tenLine35:Image;
      
      private var _1542855622tenlight3:HeiYaoShiPoint;
      
      private var _1984921385sixLine34:Image;
      
      private var _1423959290threelight2:HeiYaoShiPoint;
      
      private var _1091990593threeLine1:Image;
      
      private var _302553402fourLine4:Image;
      
      private var _545014777ninelightArea8:Image;
      
      private var _1423959293threelight5:HeiYaoShiPoint;
      
      private var _642730045sevenLine35:Image;
      
      private var _1264262819eightLine22:Image;
      
      private var _1091990585threeLine9:Image;
      
      private var _165045297sixlightArea2:Image;
      
      private var _642730048sevenLine32:Image;
      
      private var _1836182424tenLine18:Image;
      
      private var _1423959296threelight8:HeiYaoShiPoint;
      
      private var _1068992193sixlight3:HeiYaoShiPoint;
      
      private var _1320045008fourlight11:HeiYaoShiPoint;
      
      private var _545014781ninelightArea4:Image;
      
      private var _1839210093fiveLine18:Image;
      
      private var _1839210085fiveLine10:Image;
      
      private var _642730111sevenLine11:Image;
      
      private var _490026300fivelight11:HeiYaoShiPoint;
      
      private var _757084027fourlightArea8:Image;
      
      private var _1606102435sevenlightArea9:Image;
      
      private var _1238325710fivelightArea12:Image;
      
      private var _2114775247eightlight8:HeiYaoShiPoint;
      
      private var _1745468509eightlightArea7:Image;
      
      private var _1326241629tenLine4:Image;
      
      private var _508030033threeLine10:Image;
      
      private var _1984921414sixLine26:Image;
      
      private var _1836182417tenLine11:Image;
      
      private var _125450510ninelight2:HeiYaoShiPoint;
      
      private var _1705150084fourlight4:HeiYaoShiPoint;
      
      private var _508030036threeLine13:Image;
      
      private var _650463017twolight3:HeiYaoShiPoint;
      
      private var _273199146sevenlight3:HeiYaoShiPoint;
      
      private var _789220833fourLine18:Image;
      
      private var _1049049301fiveLine1:Image;
      
      private var _1836182484tenLine36:Image;
      
      private var _508030039threeLine16:Image;
      
      private var _198663144tenlightArea13:Image;
      
      private var _273199149sevenlight6:HeiYaoShiPoint;
      
      private var _767254275sixLine9:Image;
      
      private var _789220825fourLine10:Image;
      
      private var _1264262822eightLine25:Image;
      
      private var _1542855623tenlight2:HeiYaoShiPoint;
      
      private var _1984921386sixLine33:Image;
      
      private var _789220863fourLine27:Image;
      
      private var _1264262825eightLine28:Image;
      
      private var _302553403fourLine5:Image;
      
      private var mapArr:Array = [0,1,2,3,4];
      
      private var _1320045011fourlight14:HeiYaoShiPoint;
      
      mx_internal var _watchers:Array = [];
      
      private var _1149161330eightLine5:Image;
      
      private var _1836182425tenLine19:Image;
      
      private var _1725050931eightlightArea10:Image;
      
      private var _1539827950fivelight6:HeiYaoShiPoint;
      
      private var _125450516ninelight8:HeiYaoShiPoint;
      
      private var _1839210123fiveLine27:Image;
      
      private var _1068992194sixlight2:HeiYaoShiPoint;
      
      private var _992677325heiyaoshiNum:Label;
      
      private var _1763283437threelightArea2:Image;
      
      private var _144955822tenlightArea4:Image;
      
      private var _1133523380eightlight16:HeiYaoShiPoint;
      
      private var _490026293fivelight18:HeiYaoShiPoint;
      
      private var _1839210153fiveLine36:Image;
      
      private var _1378120112buff63:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":750,
               "height":530,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_HeiYaoShiPanel_BasicTitleCanvas1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "label":"Hornor",
                        "y":40,
                        "width":730,
                        "height":470,
                        "x":10,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_HeiYaoShiPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":738,
                                 "height":478
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":525,
                                 "y":5,
                                 "width":200,
                                 "height":460,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":15,
                                          "text":"Hắc Diệu Thạch",
                                          "width":87
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16766720;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":32,
                                          "text":"T.Hoa H.Diệu Thạch"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"heiyaoshiNum",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":17,
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"heiyaoshiNum2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":118,
                                          "y":32,
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":55,
                                          "width":150
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":90,
                                          "text":"HP"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":108,
                                          "text":"Công VL"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":126,
                                          "text":"Công MP"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":144,
                                          "text":"Phòng VL"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":162,
                                          "text":"Phòng MP"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":180,
                                          "text":"Tốc"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":198,
                                          "text":"Bạo"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":216,
                                          "text":"XPN"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":234,
                                          "text":"Kháng Bạo"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":252,
                                          "text":"Miễn Tử"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":270,
                                          "text":"Kháng XPN"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":288,
                                          "text":"Giảm STVL Cuối"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":306,
                                          "text":"Giảm STMP Cuối"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":324,
                                          "text":"Tăng STVL Cuối"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":342,
                                          "text":"Tăng STMP Cuối"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 14;
                                       this.color = 16766720;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":70,
                                          "y":60,
                                          "text":"Thuộc tính tăng"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"_HeiYaoShiPanel_LinkButton1",
                                    "events":{"click":"___HeiYaoShiPanel_LinkButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "right";
                                       this.color = 16766720;
                                       this.textDecoration = "underline";
                                       this.fontSize = 12;
                                       this.fontWeight = "normal";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":75,
                                          "height":20,
                                          "x":115,
                                          "y":430,
                                          "label":"Cách Chơi"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":92,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":110,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":128,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":146,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":164,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff11",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":182,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff13",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":200,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff14",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":218,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff31",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":236,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff34",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":254,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff61",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":272,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff59",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":290,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff60",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":308,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff62",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":326,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"buff63",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":344,
                                          "text":"0",
                                          "width":82
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"viewstack1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":525,
                                 "height":350,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "label":"Hornor",
                                          "y":60,
                                          "width":679.95,
                                          "height":420,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"oneLine1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":207,
                                                   "y":82,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"oneLine2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":254,
                                                   "y":84,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"oneLine3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":208,
                                                   "y":160,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"oneLine4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":209,
                                                   "y":160,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"oneLine5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":253,
                                                   "y":160,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"AllButton1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnHeiyaoshiNotActive",
                                                   "x":439,
                                                   "y":24,
                                                   "height":63,
                                                   "width":63
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"onelightArea1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":224,
                                                   "y":101,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"onelightArea2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":224,
                                                   "y":168,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"onelight1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":1,
                                                   "pointId":1,
                                                   "x":237,
                                                   "y":65,
                                                   "activated":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"onelight2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":1,
                                                   "pointId":2,
                                                   "x":191,
                                                   "y":143
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"onelight3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":1,
                                                   "pointId":3,
                                                   "x":282,
                                                   "y":142
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"onelight4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":1,
                                                   "pointId":4,
                                                   "x":237,
                                                   "y":220
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
                                          "styleName":"CanvasBorder",
                                          "label":"Hornor",
                                          "y":60,
                                          "width":679.95,
                                          "height":420,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":207,
                                                   "y":55,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":256,
                                                   "y":56,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":210,
                                                   "y":133,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine4",
                                             "propertiesFactory":function():Object
                                             {
                                                /*
                                                 * Decompilation error
                                                 * Code may be obfuscated
                                                 * Tip: You can try enabling "Deobfuscate code" option in Settings
                                                 * Error type: OutOfMemoryError (Java heap space)
                                                 */
                                                throw new flash.errors.IllegalOperationError("Not decompiled due to error");
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":209,
                                                   "y":136,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":252,
                                                   "y":133,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":301,
                                                   "y":134,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":163,
                                                   "y":211,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":255,
                                                   "y":211,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":163,
                                                   "y":213,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":206,
                                                   "y":212,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":256,
                                                   "y":215,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twoLine13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":299,
                                                   "y":211,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twolightArea1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":224,
                                                   "y":73,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twolightArea2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":178,
                                                   "y":152,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twolightArea3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":224,
                                                   "y":141,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twolightArea4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":269,
                                                   "y":152,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twolightArea5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":178,
                                                   "y":219,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"twolightArea6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":270,
                                                   "y":219,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"twolight1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":2,
                                                   "pointId":1,
                                                   "x":236,
                                                   "y":38,
                                                   "activated":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"twolight2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":2,
                                                   "pointId":2,
                                                   "x":192,
                                                   "y":114
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"twolight3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":2,
                                                   "pointId":3,
                                                   "x":283,
                                                   "y":114
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"twolight4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":2,
                                                   "pointId":4,
                                                   "x":146,
                                                   "y":193
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"twolight5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":2,
                                                   "pointId":5,
                                                   "x":236,
                                                   "y":193
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"twolight6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":2,
                                                   "pointId":6,
                                                   "x":326,
                                                   "y":193
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"twolight7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":2,
                                                   "pointId":7,
                                                   "x":191,
                                                   "y":272
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"twolight8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":2,
                                                   "pointId":8,
                                                   "x":282,
                                                   "y":272
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"AllButton2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnHeiyaoshiNotActive",
                                                   "x":439,
                                                   "y":24,
                                                   "height":63,
                                                   "width":63
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
                                          "styleName":"CanvasBorder",
                                          "label":"Hornor",
                                          "y":60,
                                          "width":679.95,
                                          "height":420,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":210,
                                                   "y":55,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":161,
                                                   "y":54,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":210,
                                                   "y":55,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":255,
                                                   "y":54,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":300,
                                                   "y":55,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":163,
                                                   "y":133,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":258,
                                                   "y":133,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":162,
                                                   "y":134,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":208,
                                                   "y":133,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":256,
                                                   "y":134,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":300,
                                                   "y":133,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":210,
                                                   "y":213,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":161,
                                                   "y":213,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":209,
                                                   "y":214,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":255,
                                                   "y":213,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":301,
                                                   "y":213,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":165,
                                                   "y":290,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threeLine18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":258,
                                                   "y":290,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":178,
                                                   "y":73,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":225,
                                                   "y":63,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":271,
                                                   "y":73,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":178,
                                                   "y":142,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":225,
                                                   "y":152,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":271,
                                                   "y":141,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":178,
                                                   "y":231,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":225,
                                                   "y":222,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"threelightArea2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":270,
                                                   "y":231,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":1,
                                                   "x":238,
                                                   "y":275,
                                                   "activated":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":2,
                                                   "x":145,
                                                   "y":275
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":3,
                                                   "x":329,
                                                   "y":275
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":4,
                                                   "x":191,
                                                   "y":197
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":5,
                                                   "x":284,
                                                   "y":197
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":6,
                                                   "x":144,
                                                   "y":117
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":7,
                                                   "x":237,
                                                   "y":117
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":8,
                                                   "x":328,
                                                   "y":117
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":9,
                                                   "x":193,
                                                   "y":36
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"threelight10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":3,
                                                   "pointId":10,
                                                   "x":281,
                                                   "y":36
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"AllButton3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnHeiyaoshiNotActive",
                                                   "x":439,
                                                   "y":24,
                                                   "height":63,
                                                   "width":63
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       /*
                                        * Decompilation error
                                        * Code may be obfuscated
                                        * Tip: You can try enabling "Deobfuscate code" option in Settings
                                        * Error type: OutOfMemoryError (Java heap space)
                                        */
                                       throw new flash.errors.IllegalOperationError("Not decompiled due to error");
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "label":"Hornor",
                                          "y":60,
                                          "width":679.95,
                                          "height":420,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":212,
                                                   "y":19,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":166,
                                                   "y":20,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":213,
                                                   "y":22,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":257,
                                                   "y":19,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":304,
                                                   "y":21,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169,
                                                   "y":98,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":258,
                                                   "y":98,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":121,
                                                   "y":97,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169,
                                                   "y":99,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":211,
                                                   "y":96,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":258,
                                                   "y":97,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":302,
                                                   "y":95,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":349,
                                                   "y":97,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":124,
                                                   "y":176,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":303,
                                                   "y":173,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":76,
                                                   "y":174,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":124,
                                                   "y":176,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":167,
                                                   "y":173,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":304,
                                                   "y":173,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":348,
                                                   "y":172,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":395,
                                                   "y":173,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":80,
                                                   "y":250,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169,
                                                   "y":250,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine24",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":262,
                                                   "y":250,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine25",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":351,
                                                   "y":250,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine26",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":32,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine27",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":79,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine28",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":122,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine29",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine30",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":213,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine31",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":260,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine32",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":302,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine33",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":349,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine34",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":394,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine35",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":441,
                                                   "y":250,
                                                   "height":83,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine36",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":33,
                                                   "y":328,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine37",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":123,
                                                   "y":328,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine38",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":214,
                                                   "y":328,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine39",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":303,
                                                   "y":328,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fiveLine40",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":395,
                                                   "y":328,
                                                   "height":6,
                                                   "width":93
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":182,
                                                   "y":38,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":228,
                                                   "y":28,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":38,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":138,
                                                   "y":115,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":183,
                                                   "y":106,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":273,
                                                   "y":106,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":319,
                                                   "y":114,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":93,
                                                   "y":191,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":138,
                                                   "y":183,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":319,
                                                   "y":183,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":364,
                                                   "y":192,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":48,
                                                   "y":269,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":94,
                                                   "y":259,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":138,
                                                   "y":268,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":184,
                                                   "y":260,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":229,
                                                   "y":268,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":274,
                                                   "y":259,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":318,
                                                   "y":268,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":364,
                                                   "y":260,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fivelightArea20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":410,
                                                   "y":268,
                                                   "width":65,
                                                   "height":57
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":1,
                                                   "x":239,
                                                   "y":84,
                                                   "activated":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":2,
                                                   "x":194,
                                                   "y":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":3,
                                                   "x":286,
                                                   "y":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":4,
                                                   "x":148,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":5,
                                                   "x":331,
                                                   "y":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":6,
                                                   "x":105,
                                                   "y":160
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":7,
                                                   "x":194,
                                                   "y":160
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":8,
                                                   "x":285,
                                                   "y":160
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":9,
                                                   "x":376,
                                                   "y":160
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":10,
                                                   "x":59,
                                                   "y":234
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":11,
                                                   "x":150,
                                                   "y":234
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":12,
                                                   "x":240,
                                                   "y":234
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":13,
                                                   "x":331,
                                                   "y":234
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":14,
                                                   "x":424,
                                                   "y":234
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":15,
                                                   "x":19,
                                                   "y":311
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":16,
                                                   "x":105,
                                                   "y":311
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":17,
                                                   "x":194,
                                                   "y":311
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":18,
                                                   "x":286,
                                                   "y":311
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":19,
                                                   "x":378,
                                                   "y":311
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HeiYaoShiPoint,
                                             "id":"fivelight20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "pIndex":5,
                                                   "pointId":20,
                                                   "x":469,
                                                   "y":311
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"AllButton5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnHeiyaoshiNotActive",
                                                   "x":439,
                                                   "y":24,
                                                   "height":63,
                                                   "width":63
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
                                          "styleName":"CanvasBorder",
                                          "label":"Hornor",
                                          "y":60,
                                          "width":679.95,
                                          "height":420,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":125,
                                                   "y":21,
                                                   "width":51,
                                                   "height":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":171,
                                                   "y":21,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":216,
                                                   "y":21,
                                                   "width":51,
                                                   "height":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":262,
                                                   "y":21,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":305,
                                                   "y":21,
                                                   "width":51,
                                                   "height":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":351,
                                                   "y":21,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":126,
                                                   "y":99,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":217,
                                                   "y":99,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":306,
                                                   "y":99,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":127,
                                                   "y":99,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":170,
                                                   "y":99,
                                                   "width":51,
                                                   "height":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":218,
                                                   "y":99,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":261,
                                                   "y":99,
                                                   "width":51,
                                                   "height":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":307,
                                                   "y":99,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":350,
                                                   "y":99,
                                                   "width":51,
                                                   "height":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":171,
                                                   "y":175,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263,
                                                   "y":175,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":172,
                                                   "y":175,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":215,
                                                   "y":175,
                                                   "width":51,
                                                   "height":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":263,
                                                   "y":175,
                                                   "width":51,
                                                   "height":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":306,
                                                   "y":175,
                                                   "width":51,
                                                   "height":84
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":129,
                                                   "y":253,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":223,
                                                   "y":253,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sixLine24",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":310,
                                                   "y":253,
                                                   "width":93,
                                                   "height":6
                                                };
                                             }
                                          }),new 