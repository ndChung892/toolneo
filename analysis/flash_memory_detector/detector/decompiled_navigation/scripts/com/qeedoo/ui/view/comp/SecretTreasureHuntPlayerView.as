package com.qeedoo.ui.view.comp
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.effects.TimerMove;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.AbstractGameRes;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compGameStage.DynamicItemLayer;
   import com.qeedoo.ui.view.compGameStage.PlayerView;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   
   public class SecretTreasureHuntPlayerView extends Canvas
   {
      
      private var winnerCharactor1:Player;
      
      public var _index:int = 0;
      
      private var layer:DynamicItemLayer;
      
      private var view:Object;
      
      private var move_num:int = 0;
      
      private var winnerView1:PlayerView;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":190,
               "height":216
            };
         }
      });
      
      private var moveHandler:EnterFrameMove;
      
      private var _core:Core = Core.getInstance();
      
      public function SecretTreasureHuntPlayerView()
      {
         view = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         super();
         mx_internal::_document = this;
         this.width = 190;
         this.height = 216;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function resetModel() : void
      {
         if(winnerCharactor1)
         {
            winnerCharactor1.imgCode = 0;
            winnerCharactor1.classId = 0;
            winnerCharactor1.dir = 0;
            winnerCharactor1.resCode = 0;
            winnerCharactor1.name = null;
            winnerCharactor1.wp = 0;
            winnerCharactor1.ee = 0;
            winnerCharactor1.ef = 0;
            winnerCharactor1.star = 0;
         }
         if(winnerView1)
         {
            winnerView1.visible = false;
         }
      }
      
      public function refresh(param1:int) : void
      {
         var _loc4_:Array = null;
         _index = param1;
         if(param1 > 103)
         {
            _index = 103;
         }
         var _loc2_:Player = Core.getInstance().player;
         if(!layer)
         {
            layer = new DynamicItemLayer();
            addChild(layer);
         }
         if(winnerCharactor1)
         {
            resetModel();
         }
         else
         {
            winnerCharactor1 = new Player();
         }
         var _loc3_:String = GameData.d[GamePredef.TBL_MEVENT_MAP][_index].pos;
         _loc4_ = _loc3_.split(",");
         winnerCharactor1.imgCode = _loc2_.imgCode;
         winnerCharactor1.classId = _loc2_.classId;
         winnerCharactor1.resCode = _loc2_.resCode;
         winnerCharactor1.name = _loc2_.name;
         winnerCharactor1.wp = _loc2_.wp;
         winnerCharactor1.ee = _loc2_.ee;
         winnerCharactor1.ef = _loc2_.ef;
         winnerCharactor1.star = _loc2_.star;
         winnerCharactor1.dir = _loc4_[2];
         x = _loc4_[0];
         y = _loc4_[1];
         view.setCanvasXY(x,y);
         if(!winnerView1)
         {
            winnerView1 = new PlayerView();
            winnerView1.addEventListener("monopoly_move_stop",moveStepEnd);
            winnerView1.container = layer;
            winnerCharactor1.normalView = winnerView1;
         }
         winnerView1.gameObject = winnerCharactor1;
         winnerView1.faceTo(winnerCharactor1.dir);
         winnerView1.visible = true;
         if(winnerCharactor1.wp)
         {
            winnerView1.equipOn(winnerCharactor1.resCode,winnerCharactor1.ee,winnerCharactor1.ef,winnerCharactor1.star,true);
         }
         else
         {
            winnerView1.equipOff(winnerCharactor1.resCode);
         }
      }
      
      private function moveStepEnd(param1:Event) : void
      {
         var _loc3_:Array = null;
         var _loc2_:String = GameData.d[GamePredef.TBL_MEVENT_MAP][_index].pos;
         _loc3_ = _loc2_.split(",");
         x = _loc3_[0];
         y = _loc3_[1];
         winnerView1.behavior(AbstractGameRes.BH_BREATH_SLOW);
         winnerCharactor1.dir = _loc3_[2];
         winnerView1.faceTo(winnerCharactor1.dir);
         moveStep();
      }
      
      public function init() : void
      {
      }
      
      public function startMove(param1:int) : void
      {
         if(!winnerView1)
         {
            return;
         }
         move_num = param1;
         moveStep();
      }
      
      private function moveStep() : void
      {
         if(move_num <= 0)
         {
            dispatchEvent(new Event("move_end"));
            return;
         }
         --move_num;
         ++_index;
         if(!moveHandler)
         {
            moveHandler = new EnterFrameMove();
            moveHandler.stepLength = 10;
            moveHandler.target = this;
            moveHandler.addEventListener(TimerMove.EFFECT_END,moveStepEnd);
         }
         winnerView1.behavior(AbstractGameRes.BH_RUN_NORMAL);
         var _loc1_:String = GameData.d[GamePredef.TBL_MEVENT_MAP][_index].pos;
         var _loc2_:Array = _loc1_.split(",");
         moveHandler.xBy = _loc2_[0] - x;
         moveHandler.yBy = _loc2_[1] - y;
         moveHandler.play();
         view.setCanvasXY(_loc2_[0],_loc2_[1]);
      }
   }
}

