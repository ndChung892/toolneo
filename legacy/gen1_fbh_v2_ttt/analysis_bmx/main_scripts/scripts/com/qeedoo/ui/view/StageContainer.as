package com.qeedoo.ui.view
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.compBattle.BattleStage;
   import com.qeedoo.ui.view.compGameStage.StageMain;
   import com.qeedoo.ui.view.compMain.TargetSelectCanvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   
   public class StageContainer extends SimpleCanvas
   {
      
      private var _1836682711stageMain:StageMain;
      
      private var _494057130stageBattle:BattleStage;
      
      private var _554606099targetSelect:TargetSelectCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":StageMain,
               "id":"stageMain"
            }),new UIComponentDescriptor({
               "type":BattleStage,
               "id":"stageBattle",
               "propertiesFactory":function():Object
               {
                  return {"visible":false};
               }
            }),new UIComponentDescriptor({
               "type":TargetSelectCanvas,
               "id":"targetSelect",
               "propertiesFactory":function():Object
               {
                  return {"visible":false};
               }
            })]};
         }
      });
      
      public function StageContainer()
      {
         super();
         mx_internal::_document = this;
         this.addEventListener("creationComplete",___StageContainer_SimpleCanvas1_creationComplete);
      }
      
      public function set stageBattle(param1:BattleStage) : void
      {
         var _loc2_:Object = this._494057130stageBattle;
         if(_loc2_ !== param1)
         {
            this._494057130stageBattle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stageBattle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stageBattle() : BattleStage
      {
         return this._494057130stageBattle;
      }
      
      private function addView() : void
      {
         var _loc1_:Core = Core.getInstance();
         _loc1_.view.addUI(ViewManager.STAGE_CONTAINER,this);
         _loc1_.view.addUI(ViewManager.STAGE_MAIN,stageMain);
         _loc1_.view.addUI(ViewManager.STAGE_BATTLE,stageBattle);
         _loc1_.view.addUI(ViewManager.MAIN_TARGET_SELECT,targetSelect);
      }
      
      public function ___StageContainer_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         addView();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set stageMain(param1:StageMain) : void
      {
         var _loc2_:Object = this._1836682711stageMain;
         if(_loc2_ !== param1)
         {
            this._1836682711stageMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stageMain",_loc2_,param1));
         }
      }
      
      public function set targetSelect(param1:TargetSelectCanvas) : void
      {
         var _loc2_:Object = this._554606099targetSelect;
         if(_loc2_ !== param1)
         {
            this._554606099targetSelect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetSelect",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetSelect() : TargetSelectCanvas
      {
         return this._554606099targetSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get stageMain() : StageMain
      {
         return this._1836682711stageMain;
      }
   }
}

