package com.qeedoo.ui.view.comp
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.effects.TimerMove;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.resource.AbstractGameRes;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.compDragable.SummerGames;
   import com.qeedoo.ui.view.compGameStage.DynamicItemLayer;
   import com.qeedoo.ui.view.compGameStage.PlayerView;
   import flash.events.Event;
   import mx.containers.Canvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   
   public class MonopolyPlayerView extends Canvas
   {
      
      public var _index:int = 0;
      
      private var winnerView1:PlayerView;
      
      private var winnerCharactor1:Player;
      
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
      
      private var layer:DynamicItemLayer;
      
      private var moveHandler:EnterFrameMove;
      
      private var move_num:int = 0;
      
      public function MonopolyPlayerView()
      {
         super();
         mx_internal::_document = this;
         this.width = 190;
         this.height = 216;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public function resetModel() : void
      {
         if(winnerCharactor1)
         {
            winnerCharactor1.imgCode = 0;
            winnerCharactor1.wingResCode = 0;
            winnerCharactor1.mountResCode = 0;
            winnerCharactor1.mountState = 0;
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
      
      private function moveStep() : void
      {
         if(move_num <= 0)
         {
            Core.getInstance().remote.call("monopolyBoxAward",null);
            dispatchEvent(new Event("move_end"));
            return;
         }
         --move_num;
         ++_index;
         if(_index == 18)
         {
            Core.getInstance().remote.call("monopolyStartAward",null);
         }
         if(_index > 17)
         {
            _index -= 18;
         }
         if(!moveHandler)
         {
            moveHandler = new EnterFrameMove();
            moveHandler.stepLength = 10;
            moveHandler.target = this;
            moveHandler.addEventListener(TimerMove.EFFECT_END,moveStepEnd);
         }
         winnerView1.behavior(AbstractGameRes.BH_RUN_NORMAL);
         moveHandler.xBy = SummerGames.positions[_index][0] - x;
         moveHandler.yBy = SummerGames.positions[_index][1] - y;
         moveHandler.play();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
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
      
      public function refresh(param1:int) : void
      {
         _index = param1;
         if(_index > 17)
         {
            _index %= 18;
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
         winnerCharactor1.imgCode = _loc2_.imgCode;
         winnerCharactor1.wingResCode = _loc2_.wingResCode;
         winnerCharactor1.mountResCode = _loc2_.mountResCode;
         winnerCharactor1.mountState = _loc2_.mountState;
         winnerCharactor1.classId = _loc2_.classId;
         winnerCharactor1.resCode = _loc2_.resCode;
         winnerCharactor1.name = _loc2_.name;
         winnerCharactor1.wp = _loc2_.wp;
         winnerCharactor1.ee = _loc2_.ee;
         winnerCharactor1.ef = _loc2_.ef;
         winnerCharactor1.star = _loc2_.star;
         winnerCharactor1.dir = SummerGames.positions[_index][2];
         x = SummerGames.positions[_index][0];
         y = SummerGames.positions[_index][1];
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
      
      public function init() : void
      {
      }
      
      private function moveStepEnd(param1:Event) : void
      {
         x = SummerGames.positions[_index][0];
         y = SummerGames.positions[_index][1];
         winnerView1.behavior(AbstractGameRes.BH_BREATH_SLOW);
         winnerCharactor1.dir = SummerGames.positions[_index][2];
         winnerView1.faceTo(winnerCharactor1.dir);
         moveStep();
      }
   }
}

