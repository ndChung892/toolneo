package com.qeedoo.ui.view
{
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.UIPropVO;
   import com.qeedoo.ui.view.comp.UIBase;
   import com.qeedoo.ui.view.compBattle.AutoBattleCanvas;
   import com.qeedoo.ui.view.compBattle.BattleInfoCanvas;
   import com.qeedoo.ui.view.compDragable.*;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PanelLayer extends UIBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _PanelLayer_UIPropVO1:UIPropVO;
      
      public var _PanelLayer_UIPropVO2:UIPropVO;
      
      public var _PanelLayer_UIPropVO4:UIPropVO;
      
      public var _PanelLayer_UIPropVO6:UIPropVO;
      
      public var _PanelLayer_UIPropVO9:UIPropVO;
      
      public var _PanelLayer_UIPropVO3:UIPropVO;
      
      public var _PanelLayer_UIPropVO5:UIPropVO;
      
      public var _PanelLayer_UIPropVO7:UIPropVO;
      
      public var _PanelLayer_UIPropVO8:UIPropVO;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PanelLayer_UIPropVO10:UIPropVO;
      
      public var _PanelLayer_UIPropVO11:UIPropVO;
      
      public var _PanelLayer_UIPropVO12:UIPropVO;
      
      public var _PanelLayer_UIPropVO13:UIPropVO;
      
      public var _PanelLayer_UIPropVO15:UIPropVO;
      
      public var _PanelLayer_UIPropVO18:UIPropVO;
      
      public var _PanelLayer_UIPropVO19:UIPropVO;
      
      public var _PanelLayer_UIPropVO14:UIPropVO;
      
      public var _PanelLayer_UIPropVO16:UIPropVO;
      
      public var _PanelLayer_UIPropVO17:UIPropVO;
      
      public var _PanelLayer_UIPropVO20:UIPropVO;
      
      public var _PanelLayer_UIPropVO21:UIPropVO;
      
      public var _PanelLayer_UIPropVO22:UIPropVO;
      
      public var _PanelLayer_UIPropVO23:UIPropVO;
      
      public var _PanelLayer_UIPropVO24:UIPropVO;
      
      public var _PanelLayer_UIPropVO25:UIPropVO;
      
      public var _PanelLayer_UIPropVO26:UIPropVO;
      
      public var _PanelLayer_UIPropVO27:UIPropVO;
      
      public var _PanelLayer_UIPropVO28:UIPropVO;
      
      public var _PanelLayer_UIPropVO29:UIPropVO;
      
      public var _PanelLayer_UIPropVO31:UIPropVO;
      
      public var _PanelLayer_UIPropVO33:UIPropVO;
      
      public var _PanelLayer_UIPropVO35:UIPropVO;
      
      public var _PanelLayer_UIPropVO37:UIPropVO;
      
      public var _PanelLayer_UIPropVO38:UIPropVO;
      
      public var _PanelLayer_UIPropVO32:UIPropVO;
      
      public var _PanelLayer_UIPropVO34:UIPropVO;
      
      public var _PanelLayer_UIPropVO36:UIPropVO;
      
      public var _PanelLayer_UIPropVO30:UIPropVO;
      
      public var _PanelLayer_UIPropVO39:UIPropVO;
      
      public var _PanelLayer_UIPropVO40:UIPropVO;
      
      public var _PanelLayer_UIPropVO41:UIPropVO;
      
      public var _PanelLayer_UIPropVO42:UIPropVO;
      
      public var _PanelLayer_UIPropVO43:UIPropVO;
      
      public var _PanelLayer_UIPropVO44:UIPropVO;
      
      public var _PanelLayer_UIPropVO45:UIPropVO;
      
      public var _PanelLayer_UIPropVO46:UIPropVO;
      
      public var _PanelLayer_UIPropVO47:UIPropVO;
      
      public var _PanelLayer_UIPropVO48:UIPropVO;
      
      public var _PanelLayer_UIPropVO49:UIPropVO;
      
      public var _PanelLayer_UIPropVO200:UIPropVO;
      
      public var _PanelLayer_UIPropVO201:UIPropVO;
      
      public var _PanelLayer_UIPropVO202:UIPropVO;
      
      public var _PanelLayer_UIPropVO204:UIPropVO;
      
      public var _PanelLayer_UIPropVO206:UIPropVO;
      
      public var _PanelLayer_UIPropVO208:UIPropVO;
      
      public var _PanelLayer_UIPropVO203:UIPropVO;
      
      public var _PanelLayer_UIPropVO205:UIPropVO;
      
      public var _PanelLayer_UIPropVO207:UIPropVO;
      
      public var _PanelLayer_UIPropVO209:UIPropVO;
      
      public var _PanelLayer_UIPropVO53:UIPropVO;
      
      public var _PanelLayer_UIPropVO55:UIPropVO;
      
      public var _PanelLayer_UIPropVO50:UIPropVO;
      
      public var _PanelLayer_UIPropVO51:UIPropVO;
      
      public var _PanelLayer_UIPropVO52:UIPropVO;
      
      public var _PanelLayer_UIPropVO54:UIPropVO;
      
      public var _PanelLayer_UIPropVO56:UIPropVO;
      
      public var _PanelLayer_UIPropVO57:UIPropVO;
      
      public var _PanelLayer_UIPropVO58:UIPropVO;
      
      public var _PanelLayer_UIPropVO210:UIPropVO;
      
      public var _PanelLayer_UIPropVO211:UIPropVO;
      
      public var _PanelLayer_UIPropVO212:UIPropVO;
      
      public var _PanelLayer_UIPropVO213:UIPropVO;
      
      public var _PanelLayer_UIPropVO214:UIPropVO;
      
      public var _PanelLayer_UIPropVO215:UIPropVO;
      
      public var _PanelLayer_UIPropVO216:UIPropVO;
      
      public var _PanelLayer_UIPropVO217:UIPropVO;
      
      public var _PanelLayer_UIPropVO218:UIPropVO;
      
      public var _PanelLayer_UIPropVO219:UIPropVO;
      
      public var _PanelLayer_UIPropVO60:UIPropVO;
      
      public var _PanelLayer_UIPropVO61:UIPropVO;
      
      public var _PanelLayer_UIPropVO59:UIPropVO;
      
      public var _PanelLayer_UIPropVO63:UIPropVO;
      
      public var _PanelLayer_UIPropVO64:UIPropVO;
      
      public var _PanelLayer_UIPropVO65:UIPropVO;
      
      public var _PanelLayer_UIPropVO66:UIPropVO;
      
      public var _PanelLayer_UIPropVO67:UIPropVO;
      
      public var _PanelLayer_UIPropVO68:UIPropVO;
      
      public var _PanelLayer_UIPropVO62:UIPropVO;
      
      public var _PanelLayer_UIPropVO220:UIPropVO;
      
      public var _PanelLayer_UIPropVO100:UIPropVO;
      
      public var _PanelLayer_UIPropVO101:UIPropVO;
      
      public var _PanelLayer_UIPropVO102:UIPropVO;
      
      public var _PanelLayer_UIPropVO103:UIPropVO;
      
      public var _PanelLayer_UIPropVO104:UIPropVO;
      
      public var _PanelLayer_UIPropVO105:UIPropVO;
      
      public var _PanelLayer_UIPropVO106:UIPropVO;
      
      public var _PanelLayer_UIPropVO107:UIPropVO;
      
      public var _PanelLayer_UIPropVO108:UIPropVO;
      
      public var _PanelLayer_UIPropVO109:UIPropVO;
      
      public var _PanelLayer_UIPropVO225:UIPropVO;
      
      public var _PanelLayer_UIPropVO227:UIPropVO;
      
      public var _PanelLayer_UIPropVO228:UIPropVO;
      
      public var _PanelLayer_UIPropVO229:UIPropVO;
      
      public var _PanelLayer_UIPropVO221:UIPropVO;
      
      public var _PanelLayer_UIPropVO222:UIPropVO;
      
      public var _PanelLayer_UIPropVO223:UIPropVO;
      
      public var _PanelLayer_UIPropVO224:UIPropVO;
      
      public var _PanelLayer_UIPropVO77:UIPropVO;
      
      public var _PanelLayer_UIPropVO226:UIPropVO;
      
      public var _PanelLayer_UIPropVO230:UIPropVO;
      
      public var _PanelLayer_UIPropVO110:UIPropVO;
      
      public var _PanelLayer_UIPropVO111:UIPropVO;
      
      public var _PanelLayer_UIPropVO112:UIPropVO;
      
      public var _PanelLayer_UIPropVO113:UIPropVO;
      
      public var _PanelLayer_UIPropVO114:UIPropVO;
      
      public var _PanelLayer_UIPropVO115:UIPropVO;
      
      public var _PanelLayer_UIPropVO116:UIPropVO;
      
      public var _PanelLayer_UIPropVO117:UIPropVO;
      
      public var _PanelLayer_UIPropVO118:UIPropVO;
      
      public var _PanelLayer_UIPropVO119:UIPropVO;
      
      public var _PanelLayer_UIPropVO234:UIPropVO;
      
      public var _PanelLayer_UIPropVO235:UIPropVO;
      
      public var _PanelLayer_UIPropVO236:UIPropVO;
      
      public var _PanelLayer_UIPropVO237:UIPropVO;
      
      public var _PanelLayer_UIPropVO238:UIPropVO;
      
      public var _PanelLayer_UIPropVO231:UIPropVO;
      
      public var _PanelLayer_UIPropVO232:UIPropVO;
      
      public var _PanelLayer_UIPropVO233:UIPropVO;
      
      public var _PanelLayer_UIPropVO69:UIPropVO;
      
      public var _PanelLayer_UIPropVO72:UIPropVO;
      
      public var _PanelLayer_UIPropVO73:UIPropVO;
      
      public var _PanelLayer_UIPropVO74:UIPropVO;
      
      public var _PanelLayer_UIPropVO75:UIPropVO;
      
      public var _PanelLayer_UIPropVO239:UIPropVO;
      
      public var _PanelLayer_UIPropVO83:UIPropVO;
      
      public var _PanelLayer_UIPropVO78:UIPropVO;
      
      public var _PanelLayer_UIPropVO79:UIPropVO;
      
      public var _PanelLayer_UIPropVO86:UIPropVO;
      
      public var _PanelLayer_UIPropVO70:UIPropVO;
      
      public var _PanelLayer_UIPropVO71:UIPropVO;
      
      public var _PanelLayer_UIPropVO240:UIPropVO;
      
      public var _PanelLayer_UIPropVO120:UIPropVO;
      
      public var _PanelLayer_UIPropVO121:UIPropVO;
      
      public var _PanelLayer_UIPropVO122:UIPropVO;
      
      public var _PanelLayer_UIPropVO123:UIPropVO;
      
      public var _PanelLayer_UIPropVO124:UIPropVO;
      
      public var _PanelLayer_UIPropVO125:UIPropVO;
      
      public var _PanelLayer_UIPropVO126:UIPropVO;
      
      public var _PanelLayer_UIPropVO127:UIPropVO;
      
      public var _PanelLayer_UIPropVO128:UIPropVO;
      
      public var _PanelLayer_UIPropVO129:UIPropVO;
      
      public var _PanelLayer_UIPropVO82:UIPropVO;
      
      public var _PanelLayer_UIPropVO84:UIPropVO;
      
      public var _PanelLayer_UIPropVO85:UIPropVO;
      
      public var _PanelLayer_UIPropVO92:UIPropVO;
      
      public var _PanelLayer_UIPropVO241:UIPropVO;
      
      public var _PanelLayer_UIPropVO242:UIPropVO;
      
      public var _PanelLayer_UIPropVO243:UIPropVO;
      
      public var _PanelLayer_UIPropVO244:UIPropVO;
      
      public var _PanelLayer_UIPropVO76:UIPropVO;
      
      public var _PanelLayer_UIPropVO81:UIPropVO;
      
      public var _PanelLayer_UIPropVO91:UIPropVO;
      
      public var _PanelLayer_UIPropVO130:UIPropVO;
      
      public var _PanelLayer_UIPropVO131:UIPropVO;
      
      public var _PanelLayer_UIPropVO132:UIPropVO;
      
      public var _PanelLayer_UIPropVO133:UIPropVO;
      
      public var _PanelLayer_UIPropVO134:UIPropVO;
      
      public var _PanelLayer_UIPropVO135:UIPropVO;
      
      public var _PanelLayer_UIPropVO136:UIPropVO;
      
      public var _PanelLayer_UIPropVO137:UIPropVO;
      
      public var _PanelLayer_UIPropVO138:UIPropVO;
      
      public var _PanelLayer_UIPropVO139:UIPropVO;
      
      public var _PanelLayer_UIPropVO93:UIPropVO;
      
      public var _PanelLayer_UIPropVO94:UIPropVO;
      
      public var _PanelLayer_UIPropVO95:UIPropVO;
      
      public var _PanelLayer_UIPropVO96:UIPropVO;
      
      public var _PanelLayer_UIPropVO97:UIPropVO;
      
      public var _PanelLayer_UIPropVO98:UIPropVO;
      
      public var _PanelLayer_UIPropVO87:UIPropVO;
      
      public var _PanelLayer_UIPropVO88:UIPropVO;
      
      public var _PanelLayer_UIPropVO89:UIPropVO;
      
      public var _PanelLayer_UIPropVO80:UIPropVO;
      
      public var _PanelLayer_UIPropVO99:UIPropVO;
      
      public var _PanelLayer_UIPropVO90:UIPropVO;
      
      public var _PanelLayer_UIPropVO140:UIPropVO;
      
      public var _PanelLayer_UIPropVO141:UIPropVO;
      
      public var _PanelLayer_UIPropVO142:UIPropVO;
      
      public var _PanelLayer_UIPropVO143:UIPropVO;
      
      public var _PanelLayer_UIPropVO144:UIPropVO;
      
      public var _PanelLayer_UIPropVO145:UIPropVO;
      
      public var _PanelLayer_UIPropVO146:UIPropVO;
      
      public var _PanelLayer_UIPropVO147:UIPropVO;
      
      public var _PanelLayer_UIPropVO148:UIPropVO;
      
      public var _PanelLayer_UIPropVO149:UIPropVO;
      
      public var _PanelLayer_UIPropVO150:UIPropVO;
      
      public var _PanelLayer_UIPropVO151:UIPropVO;
      
      public var _PanelLayer_UIPropVO152:UIPropVO;
      
      public var _PanelLayer_UIPropVO153:UIPropVO;
      
      public var _PanelLayer_UIPropVO154:UIPropVO;
      
      public var _PanelLayer_UIPropVO155:UIPropVO;
      
      public var _PanelLayer_UIPropVO156:UIPropVO;
      
      public var _PanelLayer_UIPropVO157:UIPropVO;
      
      public var _PanelLayer_UIPropVO158:UIPropVO;
      
      public var _PanelLayer_UIPropVO159:UIPropVO;
      
      public var _PanelLayer_UIPropVO160:UIPropVO;
      
      public var _PanelLayer_UIPropVO161:UIPropVO;
      
      public var _PanelLayer_UIPropVO162:UIPropVO;
      
      public var _PanelLayer_UIPropVO163:UIPropVO;
      
      public var _PanelLayer_UIPropVO164:UIPropVO;
      
      public var _PanelLayer_UIPropVO165:UIPropVO;
      
      public var _PanelLayer_UIPropVO166:UIPropVO;
      
      public var _PanelLayer_UIPropVO167:UIPropVO;
      
      public var _PanelLayer_UIPropVO168:UIPropVO;
      
      public var _PanelLayer_UIPropVO169:UIPropVO;
      
      public var _PanelLayer_UIPropVO170:UIPropVO;
      
      public var _PanelLayer_UIPropVO171:UIPropVO;
      
      public var _PanelLayer_UIPropVO172:UIPropVO;
      
      public var _PanelLayer_UIPropVO173:UIPropVO;
      
      public var _PanelLayer_UIPropVO174:UIPropVO;
      
      public var _PanelLayer_UIPropVO175:UIPropVO;
      
      public var _PanelLayer_UIPropVO176:UIPropVO;
      
      public var _PanelLayer_UIPropVO177:UIPropVO;
      
      public var _PanelLayer_UIPropVO178:UIPropVO;
      
      public var _PanelLayer_UIPropVO179:UIPropVO;
      
      public var _PanelLayer_UIPropVO180:UIPropVO;
      
      public var _PanelLayer_UIPropVO181:UIPropVO;
      
      public var _PanelLayer_UIPropVO182:UIPropVO;
      
      public var _PanelLayer_UIPropVO183:UIPropVO;
      
      public var _PanelLayer_UIPropVO184:UIPropVO;
      
      public var _PanelLayer_UIPropVO185:UIPropVO;
      
      public var _PanelLayer_UIPropVO186:UIPropVO;
      
      public var _PanelLayer_UIPropVO187:UIPropVO;
      
      public var _PanelLayer_UIPropVO188:UIPropVO;
      
      public var _PanelLayer_UIPropVO189:UIPropVO;
      
      public var _PanelLayer_UIPropVO190:UIPropVO;
      
      public var _PanelLayer_UIPropVO191:UIPropVO;
      
      public var _PanelLayer_UIPropVO192:UIPropVO;
      
      public var _PanelLayer_UIPropVO193:UIPropVO;
      
      public var _PanelLayer_UIPropVO194:UIPropVO;
      
      public var _PanelLayer_UIPropVO195:UIPropVO;
      
      public var _PanelLayer_UIPropVO196:UIPropVO;
      
      public var _PanelLayer_UIPropVO197:UIPropVO;
      
      public var _PanelLayer_UIPropVO198:UIPropVO;
      
      public var _PanelLayer_UIPropVO199:UIPropVO;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":UIBase});
      
      public function PanelLayer()
      {
         super();
         mx_internal::_document = this;
         _PanelLayer_Array1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PanelLayer._watcherSetupUtil = param1;
      }
      
      private function _PanelLayer_UIPropVO91_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO91 = _loc1_;
         _loc1_.name = "邮件通知";
         _loc1_.prop = {
            "dx":200,
            "dy":150
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO91",_PanelLayer_UIPropVO91);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO15_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO15 = _loc1_;
         _loc1_.name = "宠物信息面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO15",_PanelLayer_UIPropVO15);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO153_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO153 = _loc1_;
         _loc1_.name = "宠物天赋背包面板";
         _loc1_.prop = {
            "dx":133,
            "dy":64
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO153",_PanelLayer_UIPropVO153);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO199_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO199 = _loc1_;
         _loc1_.name = "秘境寻宝单买弹窗";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO199",_PanelLayer_UIPropVO199);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO38_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO38 = _loc1_;
         _loc1_.name = "开宝箱";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO38",_PanelLayer_UIPropVO38);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO176_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO176 = _loc1_;
         _loc1_.name = "世界杯足球币填充";
         _loc1_.prop = {
            "dx":200,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO176",_PanelLayer_UIPropVO176);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO26_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO26 = _loc1_;
         _loc1_.name = "宠物炼化";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO26",_PanelLayer_UIPropVO26);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO49_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO49 = _loc1_;
         _loc1_.name = "活动面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO49",_PanelLayer_UIPropVO49);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO141_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO141 = _loc1_;
         _loc1_.name = "魔力远征总览面板";
         _loc1_.prop = {
            "dx":50,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO141",_PanelLayer_UIPropVO141);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO164_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO164 = _loc1_;
         _loc1_.name = "草裙DOTA";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO164",_PanelLayer_UIPropVO164);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO130_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO130 = _loc1_;
         _loc1_.name = "功勋背包面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO130",_PanelLayer_UIPropVO130);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO2_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO2 = _loc1_;
         _loc1_.name = "商店面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO2",_PanelLayer_UIPropVO2);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO187_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO187 = _loc1_;
         _loc1_.name = "满就减";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO187",_PanelLayer_UIPropVO187);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO209_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO209 = _loc1_;
         _loc1_.name = "宠物护卫";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO209",_PanelLayer_UIPropVO209);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO90_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO90 = _loc1_;
         _loc1_.name = "星宫-加速吸收";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO90",_PanelLayer_UIPropVO90);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO37_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO37 = _loc1_;
         _loc1_.name = "我的招募";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO37",_PanelLayer_UIPropVO37);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO152_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO152 = _loc1_;
         _loc1_.name = "宠物天赋面板";
         _loc1_.prop = {
            "dx":123,
            "dy":64
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO152",_PanelLayer_UIPropVO152);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO175_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO175 = _loc1_;
         _loc1_.name = "积分兑换";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO175",_PanelLayer_UIPropVO175);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO14_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO14 = _loc1_;
         _loc1_.name = "宠物管理面板";
         _loc1_.prop = {
            "dx":80,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO14",_PanelLayer_UIPropVO14);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO198_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO198 = _loc1_;
         _loc1_.name = "秘境寻宝弹窗";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO198",_PanelLayer_UIPropVO198);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO25_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO25 = _loc1_;
         _loc1_.name = "制作面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO25",_PanelLayer_UIPropVO25);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO48_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO48 = _loc1_;
         _loc1_.name = "加血面板";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO48",_PanelLayer_UIPropVO48);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO140_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO140 = _loc1_;
         _loc1_.name = "组队跨服战下注面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO140",_PanelLayer_UIPropVO140);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO163_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO163 = _loc1_;
         _loc1_.name = "试炼之地奖励";
         _loc1_.prop = {
            "dx":133,
            "dy":64
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO163",_PanelLayer_UIPropVO163);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO186_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO186 = _loc1_;
         _loc1_.name = "聚划算";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO186",_PanelLayer_UIPropVO186);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO1_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO1 = _loc1_;
         _loc1_.name = "背包面板";
         _loc1_.prop = {
            "dx":300,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO1",_PanelLayer_UIPropVO1);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO208_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO208 = _loc1_;
         _loc1_.name = "魔物之心";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO208",_PanelLayer_UIPropVO208);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO13_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO13 = _loc1_;
         _loc1_.name = "角色信息面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO13",_PanelLayer_UIPropVO13);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO59_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO59 = _loc1_;
         _loc1_.name = "生活技能";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO59",_PanelLayer_UIPropVO59);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO151_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO151 = _loc1_;
         _loc1_.name = "远征排行榜面板";
         _loc1_.prop = {
            "dx":200,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO151",_PanelLayer_UIPropVO151);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO174_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO174 = _loc1_;
         _loc1_.name = "自动副本面板";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO174",_PanelLayer_UIPropVO174);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO197_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO197 = _loc1_;
         _loc1_.name = "秘境寻宝";
         _loc1_.prop = {
            "dx":0,
            "dy":0
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO197",_PanelLayer_UIPropVO197);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO36_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO36 = _loc1_;
         _loc1_.name = "发布招募";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO36",_PanelLayer_UIPropVO36);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO219_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO219 = _loc1_;
         _loc1_.name = "暑期游戏九宫格";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO219",_PanelLayer_UIPropVO219);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO24_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO24 = _loc1_;
         _loc1_.name = "用户设置面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO24",_PanelLayer_UIPropVO24);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO162_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO162 = _loc1_;
         _loc1_.name = "试炼之地";
         _loc1_.prop = {
            "dx":133,
            "dy":64
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO162",_PanelLayer_UIPropVO162);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO185_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO185 = _loc1_;
         _loc1_.name = "聚划算弹框";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO185",_PanelLayer_UIPropVO185);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO47_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO47 = _loc1_;
         _loc1_.name = "自动挂机";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO47",_PanelLayer_UIPropVO47);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO109_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO109 = _loc1_;
         _loc1_.name = "VIP批量洗练面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO109",_PanelLayer_UIPropVO109);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO207_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO207 = _loc1_;
         _loc1_.name = "魔法方块";
         _loc1_.prop = {
            "dx":70,
            "dy":10
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO207",_PanelLayer_UIPropVO207);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO35_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO35 = _loc1_;
         _loc1_.name = "队伍招募";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO35",_PanelLayer_UIPropVO35);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO58_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO58 = _loc1_;
         _loc1_.name = "NPC显示排行榜";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO58",_PanelLayer_UIPropVO58);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO150_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO150 = _loc1_;
         _loc1_.name = "远征战斗信息面板";
         _loc1_.prop = {
            "dx":200,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO150",_PanelLayer_UIPropVO150);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO173_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO173 = _loc1_;
         _loc1_.name = "王族魂器";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO173",_PanelLayer_UIPropVO173);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO12_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO12 = _loc1_;
         _loc1_.name = "地图面板";
         _loc1_.prop = {
            "dx":260,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO12",_PanelLayer_UIPropVO12);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO218_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO218 = _loc1_;
         _loc1_.name = "探险勋章";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO218",_PanelLayer_UIPropVO218);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO196_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO196 = _loc1_;
         _loc1_.name = "宠物真魂";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO196",_PanelLayer_UIPropVO196);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO46_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO46 = _loc1_;
         _loc1_.name = "奖励面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO46",_PanelLayer_UIPropVO46);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO69_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO69 = _loc1_;
         _loc1_.name = "跨服战英雄榜";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO69",_PanelLayer_UIPropVO69);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO161_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO161 = _loc1_;
         _loc1_.name = "无忧回归面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO161",_PanelLayer_UIPropVO161);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO184_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO184 = _loc1_;
         _loc1_.name = "炼魂";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO184",_PanelLayer_UIPropVO184);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO23_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO23 = _loc1_;
         _loc1_.name = "交易面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO23",_PanelLayer_UIPropVO23);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO206_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO206 = _loc1_;
         _loc1_.name = "称重大师";
         _loc1_.prop = {
            "dx":70,
            "dy":10
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO206",_PanelLayer_UIPropVO206);
         return _loc1_;
      }
      
      private function _PanelLayer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return BagPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO1.cls = param1;
         },"_PanelLayer_UIPropVO1.cls");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BAG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO1.vid = param1;
         },"_PanelLayer_UIPropVO1.vid");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO1.initVisible = param1;
         },"_PanelLayer_UIPropVO1.initVisible");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO1.createLater = param1;
         },"_PanelLayer_UIPropVO1.createLater");
         result[3] = binding;
         binding = new Binding(this,function():Class
         {
            return ShopPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO2.cls = param1;
         },"_PanelLayer_UIPropVO2.cls");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SHOP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO2.vid = param1;
         },"_PanelLayer_UIPropVO2.vid");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO2.initVisible = param1;
         },"_PanelLayer_UIPropVO2.initVisible");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO2.createLater = param1;
         },"_PanelLayer_UIPropVO2.createLater");
         result[7] = binding;
         binding = new Binding(this,function():Class
         {
            return AwardPanelAll;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO3.cls = param1;
         },"_PanelLayer_UIPropVO3.cls");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_AWARD_ALL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO3.vid = param1;
         },"_PanelLayer_UIPropVO3.vid");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO3.initVisible = param1;
         },"_PanelLayer_UIPropVO3.initVisible");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO3.createLater = param1;
         },"_PanelLayer_UIPropVO3.createLater");
         result[11] = binding;
         binding = new Binding(this,function():Class
         {
            return BankPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO4.cls = param1;
         },"_PanelLayer_UIPropVO4.cls");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO4.vid = param1;
         },"_PanelLayer_UIPropVO4.vid");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO4.initVisible = param1;
         },"_PanelLayer_UIPropVO4.initVisible");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO4.createLater = param1;
         },"_PanelLayer_UIPropVO4.createLater");
         result[15] = binding;
         binding = new Binding(this,function():Class
         {
            return CharactorPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO5.cls = param1;
         },"_PanelLayer_UIPropVO5.cls");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CHARACTOR;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO5.vid = param1;
         },"_PanelLayer_UIPropVO5.vid");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO5.initVisible = param1;
         },"_PanelLayer_UIPropVO5.initVisible");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO5.createLater = param1;
         },"_PanelLayer_UIPropVO5.createLater");
         result[19] = binding;
         binding = new Binding(this,function():Class
         {
            return ChatPanelManager;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO6.cls = param1;
         },"_PanelLayer_UIPropVO6.cls");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CHATMANAGER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO6.vid = param1;
         },"_PanelLayer_UIPropVO6.vid");
         result[21] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO6.initVisible = param1;
         },"_PanelLayer_UIPropVO6.initVisible");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO6.createLater = param1;
         },"_PanelLayer_UIPropVO6.createLater");
         result[23] = binding;
         binding = new Binding(this,function():Class
         {
            return GuildPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO7.cls = param1;
         },"_PanelLayer_UIPropVO7.cls");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GUILD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO7.vid = param1;
         },"_PanelLayer_UIPropVO7.vid");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO7.initVisible = param1;
         },"_PanelLayer_UIPropVO7.initVisible");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO7.createLater = param1;
         },"_PanelLayer_UIPropVO7.createLater");
         result[27] = binding;
         binding = new Binding(this,function():Class
         {
            return AddGuildPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO8.cls = param1;
         },"_PanelLayer_UIPropVO8.cls");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ADDGUILD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO8.vid = param1;
         },"_PanelLayer_UIPropVO8.vid");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO8.initVisible = param1;
         },"_PanelLayer_UIPropVO8.initVisible");
         result[30] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO8.createLater = param1;
         },"_PanelLayer_UIPropVO8.createLater");
         result[31] = binding;
         binding = new Binding(this,function():Class
         {
            return HelpPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO9.cls = param1;
         },"_PanelLayer_UIPropVO9.cls");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_HELP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO9.vid = param1;
         },"_PanelLayer_UIPropVO9.vid");
         result[33] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO9.initVisible = param1;
         },"_PanelLayer_UIPropVO9.initVisible");
         result[34] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO9.createLater = param1;
         },"_PanelLayer_UIPropVO9.createLater");
         result[35] = binding;
         binding = new Binding(this,function():Class
         {
            return MailManagerPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO10.cls = param1;
         },"_PanelLayer_UIPropVO10.cls");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAILMANAGER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO10.vid = param1;
         },"_PanelLayer_UIPropVO10.vid");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO10.initVisible = param1;
         },"_PanelLayer_UIPropVO10.initVisible");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO10.createLater = param1;
         },"_PanelLayer_UIPropVO10.createLater");
         result[39] = binding;
         binding = new Binding(this,function():Class
         {
            return MailPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO11.cls = param1;
         },"_PanelLayer_UIPropVO11.cls");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAIL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO11.vid = param1;
         },"_PanelLayer_UIPropVO11.vid");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO11.initVisible = param1;
         },"_PanelLayer_UIPropVO11.initVisible");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO11.createLater = param1;
         },"_PanelLayer_UIPropVO11.createLater");
         result[43] = binding;
         binding = new Binding(this,function():Class
         {
            return MapPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO12.cls = param1;
         },"_PanelLayer_UIPropVO12.cls");
         result[44] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO12.vid = param1;
         },"_PanelLayer_UIPropVO12.vid");
         result[45] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO12.initVisible = param1;
         },"_PanelLayer_UIPropVO12.initVisible");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO12.createLater = param1;
         },"_PanelLayer_UIPropVO12.createLater");
         result[47] = binding;
         binding = new Binding(this,function():Class
         {
            return CharactorInfoPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO13.cls = param1;
         },"_PanelLayer_UIPropVO13.cls");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CHARACTORINFO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO13.vid = param1;
         },"_PanelLayer_UIPropVO13.vid");
         result[49] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO13.initVisible = param1;
         },"_PanelLayer_UIPropVO13.initVisible");
         result[50] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO13.createLater = param1;
         },"_PanelLayer_UIPropVO13.createLater");
         result[51] = binding;
         binding = new Binding(this,function():Class
         {
            return PetManagerPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO14.cls = param1;
         },"_PanelLayer_UIPropVO14.cls");
         result[52] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PETMANAGER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO14.vid = param1;
         },"_PanelLayer_UIPropVO14.vid");
         result[53] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO14.initVisible = param1;
         },"_PanelLayer_UIPropVO14.initVisible");
         result[54] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO14.createLater = param1;
         },"_PanelLayer_UIPropVO14.createLater");
         result[55] = binding;
         binding = new Binding(this,function():Class
         {
            return PetPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO15.cls = param1;
         },"_PanelLayer_UIPropVO15.cls");
         result[56] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO15.vid = param1;
         },"_PanelLayer_UIPropVO15.vid");
         result[57] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO15.initVisible = param1;
         },"_PanelLayer_UIPropVO15.initVisible");
         result[58] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO15.createLater = param1;
         },"_PanelLayer_UIPropVO15.createLater");
         result[59] = binding;
         binding = new Binding(this,function():Class
         {
            return NpcFuncPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO16.cls = param1;
         },"_PanelLayer_UIPropVO16.cls");
         result[60] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_NPCFUNC;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO16.vid = param1;
         },"_PanelLayer_UIPropVO16.vid");
         result[61] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO16.initVisible = param1;
         },"_PanelLayer_UIPropVO16.initVisible");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO16.createLater = param1;
         },"_PanelLayer_UIPropVO16.createLater");
         result[63] = binding;
         binding = new Binding(this,function():Class
         {
            return NpcFuncOther;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO17.cls = param1;
         },"_PanelLayer_UIPropVO17.cls");
         result[64] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_NPCFUNCOTHER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO17.vid = param1;
         },"_PanelLayer_UIPropVO17.vid");
         result[65] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO17.initVisible = param1;
         },"_PanelLayer_UIPropVO17.initVisible");
         result[66] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO17.createLater = param1;
         },"_PanelLayer_UIPropVO17.createLater");
         result[67] = binding;
         binding = new Binding(this,function():Class
         {
            return NpcScriptPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO18.cls = param1;
         },"_PanelLayer_UIPropVO18.cls");
         result[68] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_NPCSCRIPT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO18.vid = param1;
         },"_PanelLayer_UIPropVO18.vid");
         result[69] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO18.initVisible = param1;
         },"_PanelLayer_UIPropVO18.initVisible");
         result[70] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO18.createLater = param1;
         },"_PanelLayer_UIPropVO18.createLater");
         result[71] = binding;
         binding = new Binding(this,function():Class
         {
            return QuestPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO19.cls = param1;
         },"_PanelLayer_UIPropVO19.cls");
         result[72] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_QUEST;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO19.vid = param1;
         },"_PanelLayer_UIPropVO19.vid");
         result[73] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO19.initVisible = param1;
         },"_PanelLayer_UIPropVO19.initVisible");
         result[74] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO19.createLater = param1;
         },"_PanelLayer_UIPropVO19.createLater");
         result[75] = binding;
         binding = new Binding(this,function():Class
         {
            return QuestManager;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO20.cls = param1;
         },"_PanelLayer_UIPropVO20.cls");
         result[76] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_QUESTMANAGER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO20.vid = param1;
         },"_PanelLayer_UIPropVO20.vid");
         result[77] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO20.initVisible = param1;
         },"_PanelLayer_UIPropVO20.initVisible");
         result[78] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO20.createLater = param1;
         },"_PanelLayer_UIPropVO20.createLater");
         result[79] = binding;
         binding = new Binding(this,function():Class
         {
            return SkillManager;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO21.cls = param1;
         },"_PanelLayer_UIPropVO21.cls");
         result[80] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SKILLMANAGER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO21.vid = param1;
         },"_PanelLayer_UIPropVO21.vid");
         result[81] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO21.initVisible = param1;
         },"_PanelLayer_UIPropVO21.initVisible");
         result[82] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO21.createLater = param1;
         },"_PanelLayer_UIPropVO21.createLater");
         result[83] = binding;
         binding = new Binding(this,function():Class
         {
            return TextPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO22.cls = param1;
         },"_PanelLayer_UIPropVO22.cls");
         result[84] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TXT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO22.vid = param1;
         },"_PanelLayer_UIPropVO22.vid");
         result[85] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO22.initVisible = param1;
         },"_PanelLayer_UIPropVO22.initVisible");
         result[86] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO22.createLater = param1;
         },"_PanelLayer_UIPropVO22.createLater");
         result[87] = binding;
         binding = new Binding(this,function():Class
         {
            return TradePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO23.cls = param1;
         },"_PanelLayer_UIPropVO23.cls");
         result[88] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TRADE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO23.vid = param1;
         },"_PanelLayer_UIPropVO23.vid");
         result[89] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO23.initVisible = param1;
         },"_PanelLayer_UIPropVO23.initVisible");
         result[90] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO23.createLater = param1;
         },"_PanelLayer_UIPropVO23.createLater");
         result[91] = binding;
         binding = new Binding(this,function():Class
         {
            return UserSystemSetPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO24.cls = param1;
         },"_PanelLayer_UIPropVO24.cls");
         result[92] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SYSTEM;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO24.vid = param1;
         },"_PanelLayer_UIPropVO24.vid");
         result[93] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO24.initVisible = param1;
         },"_PanelLayer_UIPropVO24.initVisible");
         result[94] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO24.createLater = param1;
         },"_PanelLayer_UIPropVO24.createLater");
         result[95] = binding;
         binding = new Binding(this,function():Class
         {
            return EquiptFuncPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO25.cls = param1;
         },"_PanelLayer_UIPropVO25.cls");
         result[96] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_EQUIPTFUNC;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO25.vid = param1;
         },"_PanelLayer_UIPropVO25.vid");
         result[97] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO25.initVisible = param1;
         },"_PanelLayer_UIPropVO25.initVisible");
         result[98] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO25.createLater = param1;
         },"_PanelLayer_UIPropVO25.createLater");
         result[99] = binding;
         binding = new Binding(this,function():Class
         {
            return PetFuncPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO26.cls = param1;
         },"_PanelLayer_UIPropVO26.cls");
         result[100] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PETFUNC;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO26.vid = param1;
         },"_PanelLayer_UIPropVO26.vid");
         result[101] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO26.initVisible = param1;
         },"_PanelLayer_UIPropVO26.initVisible");
         result[102] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO26.createLater = param1;
         },"_PanelLayer_UIPropVO26.createLater");
         result[103] = binding;
         binding = new Binding(this,function():Class
         {
            return PetAdvancedPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO27.cls = param1;
         },"_PanelLayer_UIPropVO27.cls");
         result[104] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PETADVANCED;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO27.vid = param1;
         },"_PanelLayer_UIPropVO27.vid");
         result[105] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO27.initVisible = param1;
         },"_PanelLayer_UIPropVO27.initVisible");
         result[106] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO27.createLater = param1;
         },"_PanelLayer_UIPropVO27.createLater");
         result[107] = binding;
         binding = new Binding(this,function():Class
         {
            return SkillLearningPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO28.cls = param1;
         },"_PanelLayer_UIPropVO28.cls");
         result[108] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_LEARNSKILL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO28.vid = param1;
         },"_PanelLayer_UIPropVO28.vid");
         result[109] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO28.initVisible = param1;
         },"_PanelLayer_UIPropVO28.initVisible");
         result[110] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO28.createLater = param1;
         },"_PanelLayer_UIPropVO28.createLater");
         result[111] = binding;
         binding = new Binding(this,function():Class
         {
            return AuctionPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO29.cls = param1;
         },"_PanelLayer_UIPropVO29.cls");
         result[112] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_AUCTION;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO29.vid = param1;
         },"_PanelLayer_UIPropVO29.vid");
         result[113] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO29.initVisible = param1;
         },"_PanelLayer_UIPropVO29.initVisible");
         result[114] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO29.createLater = param1;
         },"_PanelLayer_UIPropVO29.createLater");
         result[115] = binding;
         binding = new Binding(this,function():Class
         {
            return PMAuctionPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO30.cls = param1;
         },"_PanelLayer_UIPropVO30.cls");
         result[116] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PM_AUCTION;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO30.vid = param1;
         },"_PanelLayer_UIPropVO30.vid");
         result[117] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO30.initVisible = param1;
         },"_PanelLayer_UIPropVO30.initVisible");
         result[118] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO30.createLater = param1;
         },"_PanelLayer_UIPropVO30.createLater");
         result[119] = binding;
         binding = new Binding(this,function():Class
         {
            return IMPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO31.cls = param1;
         },"_PanelLayer_UIPropVO31.cls");
         result[120] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_IM;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO31.vid = param1;
         },"_PanelLayer_UIPropVO31.vid");
         result[121] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO31.initVisible = param1;
         },"_PanelLayer_UIPropVO31.initVisible");
         result[122] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO31.createLater = param1;
         },"_PanelLayer_UIPropVO31.createLater");
         result[123] = binding;
         binding = new Binding(this,function():Class
         {
            return SystemShopPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO32.cls = param1;
         },"_PanelLayer_UIPropVO32.cls");
         result[124] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SYSTEM_SHOP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO32.vid = param1;
         },"_PanelLayer_UIPropVO32.vid");
         result[125] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO32.initVisible = param1;
         },"_PanelLayer_UIPropVO32.initVisible");
         result[126] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO32.createLater = param1;
         },"_PanelLayer_UIPropVO32.createLater");
         result[127] = binding;
         binding = new Binding(this,function():Class
         {
            return SystemShopTrolleyPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO33.cls = param1;
         },"_PanelLayer_UIPropVO33.cls");
         result[128] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SYSTEM_SHOP_TROLLEY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO33.vid = param1;
         },"_PanelLayer_UIPropVO33.vid");
         result[129] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO33.initVisible = param1;
         },"_PanelLayer_UIPropVO33.initVisible");
         result[130] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO33.createLater = param1;
         },"_PanelLayer_UIPropVO33.createLater");
         result[131] = binding;
         binding = new Binding(this,function():Class
         {
            return GroupPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO34.cls = param1;
         },"_PanelLayer_UIPropVO34.cls");
         result[132] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GROUP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO34.vid = param1;
         },"_PanelLayer_UIPropVO34.vid");
         result[133] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO34.initVisible = param1;
         },"_PanelLayer_UIPropVO34.initVisible");
         result[134] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO34.createLater = param1;
         },"_PanelLayer_UIPropVO34.createLater");
         result[135] = binding;
         binding = new Binding(this,function():Class
         {
            return GroupRecruitPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO35.cls = param1;
         },"_PanelLayer_UIPropVO35.cls");
         result[136] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GROUP_RECRUIT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO35.vid = param1;
         },"_PanelLayer_UIPropVO35.vid");
         result[137] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO35.initVisible = param1;
         },"_PanelLayer_UIPropVO35.initVisible");
         result[138] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO35.createLater = param1;
         },"_PanelLayer_UIPropVO35.createLater");
         result[139] = binding;
         binding = new Binding(this,function():Class
         {
            return GroupRecruitNewPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO36.cls = param1;
         },"_PanelLayer_UIPropVO36.cls");
         result[140] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GROUP_RECRUIT_NEW;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO36.vid = param1;
         },"_PanelLayer_UIPropVO36.vid");
         result[141] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO36.initVisible = param1;
         },"_PanelLayer_UIPropVO36.initVisible");
         result[142] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO36.createLater = param1;
         },"_PanelLayer_UIPropVO36.createLater");
         result[143] = binding;
         binding = new Binding(this,function():Class
         {
            return GroupRecruitDetailPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO37.cls = param1;
         },"_PanelLayer_UIPropVO37.cls");
         result[144] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GROUP_RECRUIT_DETAIL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO37.vid = param1;
         },"_PanelLayer_UIPropVO37.vid");
         result[145] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO37.initVisible = param1;
         },"_PanelLayer_UIPropVO37.initVisible");
         result[146] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO37.createLater = param1;
         },"_PanelLayer_UIPropVO37.createLater");
         result[147] = binding;
         binding = new Binding(this,function():Class
         {
            return Treasure;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO38.cls = param1;
         },"_PanelLayer_UIPropVO38.cls");
         result[148] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TREASURE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO38.vid = param1;
         },"_PanelLayer_UIPropVO38.vid");
         result[149] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO38.initVisible = param1;
         },"_PanelLayer_UIPropVO38.initVisible");
         result[150] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO38.createLater = param1;
         },"_PanelLayer_UIPropVO38.createLater");
         result[151] = binding;
         binding = new Binding(this,function():Class
         {
            return ExchangePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO39.cls = param1;
         },"_PanelLayer_UIPropVO39.cls");
         result[152] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_EXCHANGE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO39.vid = param1;
         },"_PanelLayer_UIPropVO39.vid");
         result[153] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO39.initVisible = param1;
         },"_PanelLayer_UIPropVO39.initVisible");
         result[154] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO39.createLater = param1;
         },"_PanelLayer_UIPropVO39.createLater");
         result[155] = binding;
         binding = new Binding(this,function():Class
         {
            return ProductPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO40.cls = param1;
         },"_PanelLayer_UIPropVO40.cls");
         result[156] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PRODUCT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO40.vid = param1;
         },"_PanelLayer_UIPropVO40.vid");
         result[157] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO40.initVisible = param1;
         },"_PanelLayer_UIPropVO40.initVisible");
         result[158] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO40.createLater = param1;
         },"_PanelLayer_UIPropVO40.createLater");
         result[159] = binding;
         binding = new Binding(this,function():Class
         {
            return BattleSettingPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO41.cls = param1;
         },"_PanelLayer_UIPropVO41.cls");
         result[160] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BATTLESET;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO41.vid = param1;
         },"_PanelLayer_UIPropVO41.vid");
         result[161] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO41.initVisible = param1;
         },"_PanelLayer_UIPropVO41.initVisible");
         result[162] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO41.createLater = param1;
         },"_PanelLayer_UIPropVO41.createLater");
         result[163] = binding;
         binding = new Binding(this,function():Class
         {
            return TitleSelectPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO42.cls = param1;
         },"_PanelLayer_UIPropVO42.cls");
         result[164] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TITLE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO42.vid = param1;
         },"_PanelLayer_UIPropVO42.vid");
         result[165] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO42.initVisible = param1;
         },"_PanelLayer_UIPropVO42.initVisible");
         result[166] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO42.createLater = param1;
         },"_PanelLayer_UIPropVO42.createLater");
         result[167] = binding;
         binding = new Binding(this,function():Class
         {
            return CallBoardPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO43.cls = param1;
         },"_PanelLayer_UIPropVO43.cls");
         result[168] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CALLBOARD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO43.vid = param1;
         },"_PanelLayer_UIPropVO43.vid");
         result[169] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO43.initVisible = param1;
         },"_PanelLayer_UIPropVO43.initVisible");
         result[170] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO43.createLater = param1;
         },"_PanelLayer_UIPropVO43.createLater");
         result[171] = binding;
         binding = new Binding(this,function():Class
         {
            return AnswerPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO44.cls = param1;
         },"_PanelLayer_UIPropVO44.cls");
         result[172] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ANSWER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO44.vid = param1;
         },"_PanelLayer_UIPropVO44.vid");
         result[173] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO44.initVisible = param1;
         },"_PanelLayer_UIPropVO44.initVisible");
         result[174] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO44.createLater = param1;
         },"_PanelLayer_UIPropVO44.createLater");
         result[175] = binding;
         binding = new Binding(this,function():Class
         {
            return AutoBattleCanvas;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO45.cls = param1;
         },"_PanelLayer_UIPropVO45.cls");
         result[176] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BATTLEAUTO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO45.vid = param1;
         },"_PanelLayer_UIPropVO45.vid");
         result[177] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO45.initVisible = param1;
         },"_PanelLayer_UIPropVO45.initVisible");
         result[178] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO45.createLater = param1;
         },"_PanelLayer_UIPropVO45.createLater");
         result[179] = binding;
         binding = new Binding(this,function():Class
         {
            return AwardPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO46.cls = param1;
         },"_PanelLayer_UIPropVO46.cls");
         result[180] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_AWARD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO46.vid = param1;
         },"_PanelLayer_UIPropVO46.vid");
         result[181] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO46.initVisible = param1;
         },"_PanelLayer_UIPropVO46.initVisible");
         result[182] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO46.createLater = param1;
         },"_PanelLayer_UIPropVO46.createLater");
         result[183] = binding;
         binding = new Binding(this,function():Class
         {
            return AutoExpPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO47.cls = param1;
         },"_PanelLayer_UIPropVO47.cls");
         result[184] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_AUTO_EXP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO47.vid = param1;
         },"_PanelLayer_UIPropVO47.vid");
         result[185] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO47.initVisible = param1;
         },"_PanelLayer_UIPropVO47.initVisible");
         result[186] = binding;
         binding = new Binding(this,function():Class
         {
            return BloodAddPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO48.cls = param1;
         },"_PanelLayer_UIPropVO48.cls");
         result[187] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BLOODADD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO48.vid = param1;
         },"_PanelLayer_UIPropVO48.vid");
         result[188] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO48.initVisible = param1;
         },"_PanelLayer_UIPropVO48.initVisible");
         result[189] = binding;
         binding = new Binding(this,function():Class
         {
            return ActivePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO49.cls = param1;
         },"_PanelLayer_UIPropVO49.cls");
         result[190] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ACTIVE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO49.vid = param1;
         },"_PanelLayer_UIPropVO49.vid");
         result[191] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO49.initVisible = param1;
         },"_PanelLayer_UIPropVO49.initVisible");
         result[192] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO49.createLater = param1;
         },"_PanelLayer_UIPropVO49.createLater");
         result[193] = binding;
         binding = new Binding(this,function():Class
         {
            return GuildContribPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO50.cls = param1;
         },"_PanelLayer_UIPropVO50.cls");
         result[194] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GUILDCONTRIB;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO50.vid = param1;
         },"_PanelLayer_UIPropVO50.vid");
         result[195] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO50.initVisible = param1;
         },"_PanelLayer_UIPropVO50.initVisible");
         result[196] = binding;
         binding = new Binding(this,function():Class
         {
            return GuildWarehousePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO51.cls = param1;
         },"_PanelLayer_UIPropVO51.cls");
         result[197] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GUILDWAREHOUSE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO51.vid = param1;
         },"_PanelLayer_UIPropVO51.vid");
         result[198] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO51.initVisible = param1;
         },"_PanelLayer_UIPropVO51.initVisible");
         result[199] = binding;
         binding = new Binding(this,function():Class
         {
            return ConstructionManager;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO52.cls = param1;
         },"_PanelLayer_UIPropVO52.cls");
         result[200] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CONSTRUCTIONMANAGER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO52.vid = param1;
         },"_PanelLayer_UIPropVO52.vid");
         result[201] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO52.initVisible = param1;
         },"_PanelLayer_UIPropVO52.initVisible");
         result[202] = binding;
         binding = new Binding(this,function():Class
         {
            return BuildInfoPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO53.cls = param1;
         },"_PanelLayer_UIPropVO53.cls");
         result[203] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BUILDINFO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO53.vid = param1;
         },"_PanelLayer_UIPropVO53.vid");
         result[204] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO53.initVisible = param1;
         },"_PanelLayer_UIPropVO53.initVisible");
         result[205] = binding;
         binding = new Binding(this,function():Class
         {
            return GuildSkillDevPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO54.cls = param1;
         },"_PanelLayer_UIPropVO54.cls");
         result[206] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GUILD_SKILL_DEV;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO54.vid = param1;
         },"_PanelLayer_UIPropVO54.vid");
         result[207] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO54.initVisible = param1;
         },"_PanelLayer_UIPropVO54.initVisible");
         result[208] = binding;
         binding = new Binding(this,function():Class
         {
            return GuildBuildProcess;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO55.cls = param1;
         },"_PanelLayer_UIPropVO55.cls");
         result[209] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BUILDPROCESS;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO55.vid = param1;
         },"_PanelLayer_UIPropVO55.vid");
         result[210] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO55.initVisible = param1;
         },"_PanelLayer_UIPropVO55.initVisible");
         result[211] = binding;
         binding = new Binding(this,function():Class
         {
            return GuildHelpPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO56.cls = param1;
         },"_PanelLayer_UIPropVO56.cls");
         result[212] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GUILDHELP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO56.vid = param1;
         },"_PanelLayer_UIPropVO56.vid");
         result[213] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO56.initVisible = param1;
         },"_PanelLayer_UIPropVO56.initVisible");
         result[214] = binding;
         binding = new Binding(this,function():Class
         {
            return NpcShowMsgPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO57.cls = param1;
         },"_PanelLayer_UIPropVO57.cls");
         result[215] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_NPCSHOWMSG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO57.vid = param1;
         },"_PanelLayer_UIPropVO57.vid");
         result[216] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO57.initVisible = param1;
         },"_PanelLayer_UIPropVO57.initVisible");
         result[217] = binding;
         binding = new Binding(this,function():Class
         {
            return NpcShowRankPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO58.cls = param1;
         },"_PanelLayer_UIPropVO58.cls");
         result[218] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_NPCSHOWRANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO58.vid = param1;
         },"_PanelLayer_UIPropVO58.vid");
         result[219] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO58.initVisible = param1;
         },"_PanelLayer_UIPropVO58.initVisible");
         result[220] = binding;
         binding = new Binding(this,function():Class
         {
            return LifeSkillPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO59.cls = param1;
         },"_PanelLayer_UIPropVO59.cls");
         result[221] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_LIFESKILL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO59.vid = param1;
         },"_PanelLayer_UIPropVO59.vid");
         result[222] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO59.initVisible = param1;
         },"_PanelLayer_UIPropVO59.initVisible");
         result[223] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO59.createLater = param1;
         },"_PanelLayer_UIPropVO59.createLater");
         result[224] = binding;
         binding = new Binding(this,function():Class
         {
            return LottoPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO60.cls = param1;
         },"_PanelLayer_UIPropVO60.cls");
         result[225] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_LOTTO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO60.vid = param1;
         },"_PanelLayer_UIPropVO60.vid");
         result[226] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO60.initVisible = param1;
         },"_PanelLayer_UIPropVO60.initVisible");
         result[227] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO60.createLater = param1;
         },"_PanelLayer_UIPropVO60.createLater");
         result[228] = binding;
         binding = new Binding(this,function():Class
         {
            return LottoBagPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO61.cls = param1;
         },"_PanelLayer_UIPropVO61.cls");
         result[229] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_LOTTO_BAG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO61.vid = param1;
         },"_PanelLayer_UIPropVO61.vid");
         result[230] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO61.initVisible = param1;
         },"_PanelLayer_UIPropVO61.initVisible");
         result[231] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO61.createLater = param1;
         },"_PanelLayer_UIPropVO61.createLater");
         result[232] = binding;
         binding = new Binding(this,function():Class
         {
            return TemporaryBagPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO62.cls = param1;
         },"_PanelLayer_UIPropVO62.cls");
         result[233] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TEMPORARY_BAG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO62.vid = param1;
         },"_PanelLayer_UIPropVO62.vid");
         result[234] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO62.initVisible = param1;
         },"_PanelLayer_UIPropVO62.initVisible");
         result[235] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO62.createLater = param1;
         },"_PanelLayer_UIPropVO62.createLater");
         result[236] = binding;
         binding = new Binding(this,function():Class
         {
            return ChangeColorPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO63.cls = param1;
         },"_PanelLayer_UIPropVO63.cls");
         result[237] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CHANGE_COLOR;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO63.vid = param1;
         },"_PanelLayer_UIPropVO63.vid");
         result[238] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO63.initVisible = param1;
         },"_PanelLayer_UIPropVO63.initVisible");
         result[239] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO63.createLater = param1;
         },"_PanelLayer_UIPropVO63.createLater");
         result[240] = binding;
         binding = new Binding(this,function():Class
         {
            return ChangeWingColorPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO64.cls = param1;
         },"_PanelLayer_UIPropVO64.cls");
         result[241] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WING_COLOR;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO64.vid = param1;
         },"_PanelLayer_UIPropVO64.vid");
         result[242] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO64.initVisible = param1;
         },"_PanelLayer_UIPropVO64.initVisible");
         result[243] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO64.createLater = param1;
         },"_PanelLayer_UIPropVO64.createLater");
         result[244] = binding;
         binding = new Binding(this,function():Class
         {
            return MarriageManagerPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO65.cls = param1;
         },"_PanelLayer_UIPropVO65.cls");
         result[245] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MARRIAGE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO65.vid = param1;
         },"_PanelLayer_UIPropVO65.vid");
         result[246] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO65.initVisible = param1;
         },"_PanelLayer_UIPropVO65.initVisible");
         result[247] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO65.createLater = param1;
         },"_PanelLayer_UIPropVO65.createLater");
         result[248] = binding;
         binding = new Binding(this,function():Class
         {
            return WeddingBookPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO66.cls = param1;
         },"_PanelLayer_UIPropVO66.cls");
         result[249] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WEDDING_BOOK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO66.vid = param1;
         },"_PanelLayer_UIPropVO66.vid");
         result[250] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO66.initVisible = param1;
         },"_PanelLayer_UIPropVO66.initVisible");
         result[251] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO66.createLater = param1;
         },"_PanelLayer_UIPropVO66.createLater");
         result[252] = binding;
         binding = new Binding(this,function():Class
         {
            return AchievementPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO67.cls = param1;
         },"_PanelLayer_UIPropVO67.cls");
         result[253] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ACHIEVE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO67.vid = param1;
         },"_PanelLayer_UIPropVO67.vid");
         result[254] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO67.initVisible = param1;
         },"_PanelLayer_UIPropVO67.initVisible");
         result[255] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO67.createLater = param1;
         },"_PanelLayer_UIPropVO67.createLater");
         result[256] = binding;
         binding = new Binding(this,function():Class
         {
            return AchievementComparePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO68.cls = param1;
         },"_PanelLayer_UIPropVO68.cls");
         result[257] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ACHIEVE_WATCHING;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO68.vid = param1;
         },"_PanelLayer_UIPropVO68.vid");
         result[258] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO68.initVisible = param1;
         },"_PanelLayer_UIPropVO68.initVisible");
         result[259] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO68.createLater = param1;
         },"_PanelLayer_UIPropVO68.createLater");
         result[260] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossBattleRank;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO69.cls = param1;
         },"_PanelLayer_UIPropVO69.cls");
         result[261] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_BATTLE_RANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO69.vid = param1;
         },"_PanelLayer_UIPropVO69.vid");
         result[262] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO69.initVisible = param1;
         },"_PanelLayer_UIPropVO69.initVisible");
         result[263] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO69.createLater = param1;
         },"_PanelLayer_UIPropVO69.createLater");
         result[264] = binding;
         binding = new Binding(this,function():Class
         {
            return GameIntroPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO70.cls = param1;
         },"_PanelLayer_UIPropVO70.cls");
         result[265] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GAMEINTRO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO70.vid = param1;
         },"_PanelLayer_UIPropVO70.vid");
         result[266] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO70.initVisible = param1;
         },"_PanelLayer_UIPropVO70.initVisible");
         result[267] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO70.createLater = param1;
         },"_PanelLayer_UIPropVO70.createLater");
         result[268] = binding;
         binding = new Binding(this,function():Class
         {
            return DailyActPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO71.cls = param1;
         },"_PanelLayer_UIPropVO71.cls");
         result[269] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.DAILY_ACTIVITY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO71.vid = param1;
         },"_PanelLayer_UIPropVO71.vid");
         result[270] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO71.initVisible = param1;
         },"_PanelLayer_UIPropVO71.initVisible");
         result[271] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO71.createLater = param1;
         },"_PanelLayer_UIPropVO71.createLater");
         result[272] = binding;
         binding = new Binding(this,function():Class
         {
            return WingFuncPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO72.cls = param1;
         },"_PanelLayer_UIPropVO72.cls");
         result[273] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WING_FUNC;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO72.vid = param1;
         },"_PanelLayer_UIPropVO72.vid");
         result[274] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO72.initVisible = param1;
         },"_PanelLayer_UIPropVO72.initVisible");
         result[275] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO72.createLater = param1;
         },"_PanelLayer_UIPropVO72.createLater");
         result[276] = binding;
         binding = new Binding(this,function():Class
         {
            return FairyManagerPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO73.cls = param1;
         },"_PanelLayer_UIPropVO73.cls");
         result[277] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_FAIRY_MANAGER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO73.vid = param1;
         },"_PanelLayer_UIPropVO73.vid");
         result[278] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO73.initVisible = param1;
         },"_PanelLayer_UIPropVO73.initVisible");
         result[279] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO73.createLater = param1;
         },"_PanelLayer_UIPropVO73.createLater");
         result[280] = binding;
         binding = new Binding(this,function():Class
         {
            return WingAdvancedPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO74.cls = param1;
         },"_PanelLayer_UIPropVO74.cls");
         result[281] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WING_ADVANCED;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO74.vid = param1;
         },"_PanelLayer_UIPropVO74.vid");
         result[282] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO74.initVisible = param1;
         },"_PanelLayer_UIPropVO74.initVisible");
         result[283] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO74.createLater = param1;
         },"_PanelLayer_UIPropVO74.createLater");
         result[284] = binding;
         binding = new Binding(this,function():Class
         {
            return TempBagSlot;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO75.cls = param1;
         },"_PanelLayer_UIPropVO75.cls");
         result[285] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_TEMP_BAG_SLOT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO75.vid = param1;
         },"_PanelLayer_UIPropVO75.vid");
         result[286] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO75.initVisible = param1;
         },"_PanelLayer_UIPropVO75.initVisible");
         result[287] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO75.createLater = param1;
         },"_PanelLayer_UIPropVO75.createLater");
         result[288] = binding;
         binding = new Binding(this,function():Class
         {
            return DetailPropPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO76.cls = param1;
         },"_PanelLayer_UIPropVO76.cls");
         result[289] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.DETAIL_PROP_PANEL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO76.vid = param1;
         },"_PanelLayer_UIPropVO76.vid");
         result[290] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO76.initVisible = param1;
         },"_PanelLayer_UIPropVO76.initVisible");
         result[291] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO76.createLater = param1;
         },"_PanelLayer_UIPropVO76.createLater");
         result[292] = binding;
         binding = new Binding(this,function():Class
         {
            return DetailPropPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO77.cls = param1;
         },"_PanelLayer_UIPropVO77.cls");
         result[293] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.DETAIL_PROP_PANEL_PET;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO77.vid = param1;
         },"_PanelLayer_UIPropVO77.vid");
         result[294] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO77.initVisible = param1;
         },"_PanelLayer_UIPropVO77.initVisible");
         result[295] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO77.createLater = param1;
         },"_PanelLayer_UIPropVO77.createLater");
         result[296] = binding;
         binding = new Binding(this,function():Class
         {
            return QuestioningPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO78.cls = param1;
         },"_PanelLayer_UIPropVO78.cls");
         result[297] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_QUESTIONING;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO78.vid = param1;
         },"_PanelLayer_UIPropVO78.vid");
         result[298] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO78.initVisible = param1;
         },"_PanelLayer_UIPropVO78.initVisible");
         result[299] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO78.createLater = param1;
         },"_PanelLayer_UIPropVO78.createLater");
         result[300] = binding;
         binding = new Binding(this,function():Class
         {
            return QxWishesPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO79.cls = param1;
         },"_PanelLayer_UIPropVO79.cls");
         result[301] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SHOW_LOVE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO79.vid = param1;
         },"_PanelLayer_UIPropVO79.vid");
         result[302] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO79.initVisible = param1;
         },"_PanelLayer_UIPropVO79.initVisible");
         result[303] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO79.createLater = param1;
         },"_PanelLayer_UIPropVO79.createLater");
         result[304] = binding;
         binding = new Binding(this,function():Class
         {
            return VDAYPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO80.cls = param1;
         },"_PanelLayer_UIPropVO80.cls");
         result[305] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_VDAY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO80.vid = param1;
         },"_PanelLayer_UIPropVO80.vid");
         result[306] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO80.initVisible = param1;
         },"_PanelLayer_UIPropVO80.initVisible");
         result[307] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO80.createLater = param1;
         },"_PanelLayer_UIPropVO80.createLater");
         result[308] = binding;
         binding = new Binding(this,function():Class
         {
            return FazendaPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO81.cls = param1;
         },"_PanelLayer_UIPropVO81.cls");
         result[309] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_FAZENDA;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO81.vid = param1;
         },"_PanelLayer_UIPropVO81.vid");
         result[310] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO81.initVisible = param1;
         },"_PanelLayer_UIPropVO81.initVisible");
         result[311] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO81.createLater = param1;
         },"_PanelLayer_UIPropVO81.createLater");
         result[312] = binding;
         binding = new Binding(this,function():Class
         {
            return PetFightConf;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO82.cls = param1;
         },"_PanelLayer_UIPropVO82.cls");
         result[313] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PETFIGHT_CONF;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO82.vid = param1;
         },"_PanelLayer_UIPropVO82.vid");
         result[314] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO82.initVisible = param1;
         },"_PanelLayer_UIPropVO82.initVisible");
         result[315] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO82.createLater = param1;
         },"_PanelLayer_UIPropVO82.createLater");
         result[316] = binding;
         binding = new Binding(this,function():Class
         {
            return PetArenaPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO83.cls = param1;
         },"_PanelLayer_UIPropVO83.cls");
         result[317] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_ARENA;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO83.vid = param1;
         },"_PanelLayer_UIPropVO83.vid");
         result[318] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO83.initVisible = param1;
         },"_PanelLayer_UIPropVO83.initVisible");
         result[319] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO83.createLater = param1;
         },"_PanelLayer_UIPropVO83.createLater");
         result[320] = binding;
         binding = new Binding(this,function():Class
         {
            return PetArenaRankPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO84.cls = param1;
         },"_PanelLayer_UIPropVO84.cls");
         result[321] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_ARENA_RANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO84.vid = param1;
         },"_PanelLayer_UIPropVO84.vid");
         result[322] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO84.initVisible = param1;
         },"_PanelLayer_UIPropVO84.initVisible");
         result[323] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO84.createLater = param1;
         },"_PanelLayer_UIPropVO84.createLater");
         result[324] = binding;
         binding = new Binding(this,function():Class
         {
            return PetArenaPrevRankPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO85.cls = param1;
         },"_PanelLayer_UIPropVO85.cls");
         result[325] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_ARENA_PREV_RANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO85.vid = param1;
         },"_PanelLayer_UIPropVO85.vid");
         result[326] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO85.initVisible = param1;
         },"_PanelLayer_UIPropVO85.initVisible");
         result[327] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO85.createLater = param1;
         },"_PanelLayer_UIPropVO85.createLater");
         result[328] = binding;
         binding = new Binding(this,function():Class
         {
            return MultiItemPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO86.cls = param1;
         },"_PanelLayer_UIPropVO86.cls");
         result[329] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MULITI_ITEM;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO86.vid = param1;
         },"_PanelLayer_UIPropVO86.vid");
         result[330] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO86.initVisible = param1;
         },"_PanelLayer_UIPropVO86.initVisible");
         result[331] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO86.createLater = param1;
         },"_PanelLayer_UIPropVO86.createLater");
         result[332] = binding;
         binding = new Binding(this,function():Class
         {
            return AddictEnterPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO87.cls = param1;
         },"_PanelLayer_UIPropVO87.cls");
         result[333] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_ADDICT_INFO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO87.vid = param1;
         },"_PanelLayer_UIPropVO87.vid");
         result[334] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO87.initVisible = param1;
         },"_PanelLayer_UIPropVO87.initVisible");
         result[335] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO87.createLater = param1;
         },"_PanelLayer_UIPropVO87.createLater");
         result[336] = binding;
         binding = new Binding(this,function():Class
         {
            return StarAdditionPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO88.cls = param1;
         },"_PanelLayer_UIPropVO88.cls");
         result[337] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_STAR_ADDITION;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO88.vid = param1;
         },"_PanelLayer_UIPropVO88.vid");
         result[338] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO88.initVisible = param1;
         },"_PanelLayer_UIPropVO88.initVisible");
         result[339] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO88.createLater = param1;
         },"_PanelLayer_UIPropVO88.createLater");
         result[340] = binding;
         binding = new Binding(this,function():Class
         {
            return StarEffectPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO89.cls = param1;
         },"_PanelLayer_UIPropVO89.cls");
         result[341] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_STAR_EFFECT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO89.vid = param1;
         },"_PanelLayer_UIPropVO89.vid");
         result[342] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO89.initVisible = param1;
         },"_PanelLayer_UIPropVO89.initVisible");
         result[343] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO89.createLater = param1;
         },"_PanelLayer_UIPropVO89.createLater");
         result[344] = binding;
         binding = new Binding(this,function():Class
         {
            return StarSpeedUpPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO90.cls = param1;
         },"_PanelLayer_UIPropVO90.cls");
         result[345] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_STAR_SPEED_UP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO90.vid = param1;
         },"_PanelLayer_UIPropVO90.vid");
         result[346] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO90.initVisible = param1;
         },"_PanelLayer_UIPropVO90.initVisible");
         result[347] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO90.createLater = param1;
         },"_PanelLayer_UIPropVO90.createLater");
         result[348] = binding;
         binding = new Binding(this,function():Class
         {
            return MailNoticePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO91.cls = param1;
         },"_PanelLayer_UIPropVO91.cls");
         result[349] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAIL_NOTICE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO91.vid = param1;
         },"_PanelLayer_UIPropVO91.vid");
         result[350] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO91.initVisible = param1;
         },"_PanelLayer_UIPropVO91.initVisible");
         result[351] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO91.createLater = param1;
         },"_PanelLayer_UIPropVO91.createLater");
         result[352] = binding;
         binding = new Binding(this,function():Class
         {
            return WbResult;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO92.cls = param1;
         },"_PanelLayer_UIPropVO92.cls");
         result[353] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WB_RESULT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO92.vid = param1;
         },"_PanelLayer_UIPropVO92.vid");
         result[354] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO92.initVisible = param1;
         },"_PanelLayer_UIPropVO92.initVisible");
         result[355] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO92.createLater = param1;
         },"_PanelLayer_UIPropVO92.createLater");
         result[356] = binding;
         binding = new Binding(this,function():Class
         {
            return WbTimerCanvas;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO93.cls = param1;
         },"_PanelLayer_UIPropVO93.cls");
         result[357] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WB_TIMER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO93.vid = param1;
         },"_PanelLayer_UIPropVO93.vid");
         result[358] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO93.initVisible = param1;
         },"_PanelLayer_UIPropVO93.initVisible");
         result[359] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO93.createLater = param1;
         },"_PanelLayer_UIPropVO93.createLater");
         result[360] = binding;
         binding = new Binding(this,function():Class
         {
            return WelfarePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO94.cls = param1;
         },"_PanelLayer_UIPropVO94.cls");
         result[361] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WELFARE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO94.vid = param1;
         },"_PanelLayer_UIPropVO94.vid");
         result[362] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO94.initVisible = param1;
         },"_PanelLayer_UIPropVO94.initVisible");
         result[363] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO94.createLater = param1;
         },"_PanelLayer_UIPropVO94.createLater");
         result[364] = binding;
         binding = new Binding(this,function():Class
         {
            return TaskSweepPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO95.cls = param1;
         },"_PanelLayer_UIPropVO95.cls");
         result[365] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TASKSWEEP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO95.vid = param1;
         },"_PanelLayer_UIPropVO95.vid");
         result[366] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO95.initVisible = param1;
         },"_PanelLayer_UIPropVO95.initVisible");
         result[367] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO95.createLater = param1;
         },"_PanelLayer_UIPropVO95.createLater");
         result[368] = binding;
         binding = new Binding(this,function():Class
         {
            return NewServerActPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO96.cls = param1;
         },"_PanelLayer_UIPropVO96.cls");
         result[369] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_NEWSERVER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO96.vid = param1;
         },"_PanelLayer_UIPropVO96.vid");
         result[370] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO96.initVisible = param1;
         },"_PanelLayer_UIPropVO96.initVisible");
         result[371] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO96.createLater = param1;
         },"_PanelLayer_UIPropVO96.createLater");
         result[372] = binding;
         binding = new Binding(this,function():Class
         {
            return NineBossPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO97.cls = param1;
         },"_PanelLayer_UIPropVO97.cls");
         result[373] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.NINE_BOSS_PANEL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO97.vid = param1;
         },"_PanelLayer_UIPropVO97.vid");
         result[374] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO97.initVisible = param1;
         },"_PanelLayer_UIPropVO97.initVisible");
         result[375] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO97.createLater = param1;
         },"_PanelLayer_UIPropVO97.createLater");
         result[376] = binding;
         binding = new Binding(this,function():Class
         {
            return SendCombineActPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO98.cls = param1;
         },"_PanelLayer_UIPropVO98.cls");
         result[377] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SENDCOMBINE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO98.vid = param1;
         },"_PanelLayer_UIPropVO98.vid");
         result[378] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO98.initVisible = param1;
         },"_PanelLayer_UIPropVO98.initVisible");
         result[379] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO98.createLater = param1;
         },"_PanelLayer_UIPropVO98.createLater");
         result[380] = binding;
         binding = new Binding(this,function():Class
         {
            return PetSoulPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO99.cls = param1;
         },"_PanelLayer_UIPropVO99.cls");
         result[381] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_SOUL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO99.vid = param1;
         },"_PanelLayer_UIPropVO99.vid");
         result[382] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO99.initVisible = param1;
         },"_PanelLayer_UIPropVO99.initVisible");
         result[383] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO99.createLater = param1;
         },"_PanelLayer_UIPropVO99.createLater");
         result[384] = binding;
         binding = new Binding(this,function():Class
         {
            return SoulExpPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO100.cls = param1;
         },"_PanelLayer_UIPropVO100.cls");
         result[385] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SOUL_EXP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO100.vid = param1;
         },"_PanelLayer_UIPropVO100.vid");
         result[386] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO100.initVisible = param1;
         },"_PanelLayer_UIPropVO100.initVisible");
         result[387] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO100.createLater = param1;
         },"_PanelLayer_UIPropVO100.createLater");
         result[388] = binding;
         binding = new Binding(this,function():Class
         {
            return CardGamePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO101.cls = param1;
         },"_PanelLayer_UIPropVO101.cls");
         result[389] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CARDGAME;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO101.vid = param1;
         },"_PanelLayer_UIPropVO101.vid");
         result[390] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO101.initVisible = param1;
         },"_PanelLayer_UIPropVO101.initVisible");
         result[391] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO101.createLater = param1;
         },"_PanelLayer_UIPropVO101.createLater");
         result[392] = binding;
         binding = new Binding(this,function():Class
         {
            return PmPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO102.cls = param1;
         },"_PanelLayer_UIPropVO102.cls");
         result[393] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PM;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO102.vid = param1;
         },"_PanelLayer_UIPropVO102.vid");
         result[394] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO102.initVisible = param1;
         },"_PanelLayer_UIPropVO102.initVisible");
         result[395] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO102.createLater = param1;
         },"_PanelLayer_UIPropVO102.createLater");
         result[396] = binding;
         binding = new Binding(this,function():Class
         {
            return PmInfoPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO103.cls = param1;
         },"_PanelLayer_UIPropVO103.cls");
         result[397] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PM_INFO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO103.vid = param1;
         },"_PanelLayer_UIPropVO103.vid");
         result[398] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO103.initVisible = param1;
         },"_PanelLayer_UIPropVO103.initVisible");
         result[399] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO103.createLater = param1;
         },"_PanelLayer_UIPropVO103.createLater");
         result[400] = binding;
         binding = new Binding(this,function():Class
         {
            return JewelExchagePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO104.cls = param1;
         },"_PanelLayer_UIPropVO104.cls");
         result[401] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_JEWEL_EXCHANGE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO104.vid = param1;
         },"_PanelLayer_UIPropVO104.vid");
         result[402] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO104.initVisible = param1;
         },"_PanelLayer_UIPropVO104.initVisible");
         result[403] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO104.createLater = param1;
         },"_PanelLayer_UIPropVO104.createLater");
         result[404] = binding;
         binding = new Binding(this,function():Class
         {
            return VipShopPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO105.cls = param1;
         },"_PanelLayer_UIPropVO105.cls");
         result[405] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_VIP_SHOP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO105.vid = param1;
         },"_PanelLayer_UIPropVO105.vid");
         result[406] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO105.initVisible = param1;
         },"_PanelLayer_UIPropVO105.initVisible");
         result[407] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO105.createLater = param1;
         },"_PanelLayer_UIPropVO105.createLater");
         result[408] = binding;
         binding = new Binding(this,function():Class
         {
            return LotteryPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO106.cls = param1;
         },"_PanelLayer_UIPropVO106.cls");
         result[409] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_LOTTERY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO106.vid = param1;
         },"_PanelLayer_UIPropVO106.vid");
         result[410] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO106.initVisible = param1;
         },"_PanelLayer_UIPropVO106.initVisible");
         result[411] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO106.createLater = param1;
         },"_PanelLayer_UIPropVO106.createLater");
         result[412] = binding;
         binding = new Binding(this,function():Class
         {
            return DoubleElevenPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO107.cls = param1;
         },"_PanelLayer_UIPropVO107.cls");
         result[413] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_DOUBLE_ELEVEN;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO107.vid = param1;
         },"_PanelLayer_UIPropVO107.vid");
         result[414] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO107.initVisible = param1;
         },"_PanelLayer_UIPropVO107.initVisible");
         result[415] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO107.createLater = param1;
         },"_PanelLayer_UIPropVO107.createLater");
         result[416] = binding;
         binding = new Binding(this,function():Class
         {
            return LotteryBagPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO108.cls = param1;
         },"_PanelLayer_UIPropVO108.cls");
         result[417] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_LOTTERY_BAG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO108.vid = param1;
         },"_PanelLayer_UIPropVO108.vid");
         result[418] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO108.initVisible = param1;
         },"_PanelLayer_UIPropVO108.initVisible");
         result[419] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO108.createLater = param1;
         },"_PanelLayer_UIPropVO108.createLater");
         result[420] = binding;
         binding = new Binding(this,function():Class
         {
            return VipSuccinctPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO109.cls = param1;
         },"_PanelLayer_UIPropVO109.cls");
         result[421] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_VIP_SUCCINCT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO109.vid = param1;
         },"_PanelLayer_UIPropVO109.vid");
         result[422] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO109.initVisible = param1;
         },"_PanelLayer_UIPropVO109.initVisible");
         result[423] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO109.createLater = param1;
         },"_PanelLayer_UIPropVO109.createLater");
         result[424] = binding;
         binding = new Binding(this,function():Class
         {
            return SignInPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO110.cls = param1;
         },"_PanelLayer_UIPropVO110.cls");
         result[425] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SIGN_IN;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO110.vid = param1;
         },"_PanelLayer_UIPropVO110.vid");
         result[426] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO110.initVisible = param1;
         },"_PanelLayer_UIPropVO110.initVisible");
         result[427] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO110.createLater = param1;
         },"_PanelLayer_UIPropVO110.createLater");
         result[428] = binding;
         binding = new Binding(this,function():Class
         {
            return PVPResultPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO111.cls = param1;
         },"_PanelLayer_UIPropVO111.cls");
         result[429] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PVP_RESULT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO111.vid = param1;
         },"_PanelLayer_UIPropVO111.vid");
         result[430] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO111.initVisible = param1;
         },"_PanelLayer_UIPropVO111.initVisible");
         result[431] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO111.createLater = param1;
         },"_PanelLayer_UIPropVO111.createLater");
         result[432] = binding;
         binding = new Binding(this,function():Class
         {
            return MountPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO112.cls = param1;
         },"_PanelLayer_UIPropVO112.cls");
         result[433] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MOUNT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO112.vid = param1;
         },"_PanelLayer_UIPropVO112.vid");
         result[434] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO112.initVisible = param1;
         },"_PanelLayer_UIPropVO112.initVisible");
         result[435] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO112.createLater = param1;
         },"_PanelLayer_UIPropVO112.createLater");
         result[436] = binding;
         binding = new Binding(this,function():Class
         {
            return ChangeRbResPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO113.cls = param1;
         },"_PanelLayer_UIPropVO113.cls");
         result[437] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CHANGE_RES;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO113.vid = param1;
         },"_PanelLayer_UIPropVO113.vid");
         result[438] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO113.initVisible = param1;
         },"_PanelLayer_UIPropVO113.initVisible");
         result[439] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO113.createLater = param1;
         },"_PanelLayer_UIPropVO113.createLater");
         result[440] = binding;
         binding = new Binding(this,function():Class
         {
            return LuckDrawPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO114.cls = param1;
         },"_PanelLayer_UIPropVO114.cls");
         result[441] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_LUCK_DRAW;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO114.vid = param1;
         },"_PanelLayer_UIPropVO114.vid");
         result[442] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO114.initVisible = param1;
         },"_PanelLayer_UIPropVO114.initVisible");
         result[443] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO114.createLater = param1;
         },"_PanelLayer_UIPropVO114.createLater");
         result[444] = binding;
         binding = new Binding(this,function():Class
         {
            return LuckDrawBagPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO115.cls = param1;
         },"_PanelLayer_UIPropVO115.cls");
         result[445] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_LUCK_DRAW_BAG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO115.vid = param1;
         },"_PanelLayer_UIPropVO115.vid");
         result[446] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO115.initVisible = param1;
         },"_PanelLayer_UIPropVO115.initVisible");
         result[447] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO115.createLater = param1;
         },"_PanelLayer_UIPropVO115.createLater");
         result[448] = binding;
         binding = new Binding(this,function():Class
         {
            return MagicArrayPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO116.cls = param1;
         },"_PanelLayer_UIPropVO116.cls");
         result[449] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAGIC_ARRAY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO116.vid = param1;
         },"_PanelLayer_UIPropVO116.vid");
         result[450] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO116.initVisible = param1;
         },"_PanelLayer_UIPropVO116.initVisible");
         result[451] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO116.createLater = param1;
         },"_PanelLayer_UIPropVO116.createLater");
         result[452] = binding;
         binding = new Binding(this,function():Class
         {
            return MilitaryPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO117.cls = param1;
         },"_PanelLayer_UIPropVO117.cls");
         result[453] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MILITARY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO117.vid = param1;
         },"_PanelLayer_UIPropVO117.vid");
         result[454] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO117.initVisible = param1;
         },"_PanelLayer_UIPropVO117.initVisible");
         result[455] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO117.createLater = param1;
         },"_PanelLayer_UIPropVO117.createLater");
         result[456] = binding;
         binding = new Binding(this,function():Class
         {
            return MazePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO118.cls = param1;
         },"_PanelLayer_UIPropVO118.cls");
         result[457] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAZE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO118.vid = param1;
         },"_PanelLayer_UIPropVO118.vid");
         result[458] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO118.initVisible = param1;
         },"_PanelLayer_UIPropVO118.initVisible");
         result[459] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO118.createLater = param1;
         },"_PanelLayer_UIPropVO118.createLater");
         result[460] = binding;
         binding = new Binding(this,function():Class
         {
            return MazeQuestionPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO119.cls = param1;
         },"_PanelLayer_UIPropVO119.cls");
         result[461] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAZE_QUESTION;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO119.vid = param1;
         },"_PanelLayer_UIPropVO119.vid");
         result[462] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO119.initVisible = param1;
         },"_PanelLayer_UIPropVO119.initVisible");
         result[463] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO119.createLater = param1;
         },"_PanelLayer_UIPropVO119.createLater");
         result[464] = binding;
         binding = new Binding(this,function():Class
         {
            return MazeShopPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO120.cls = param1;
         },"_PanelLayer_UIPropVO120.cls");
         result[465] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAZE_SHOP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO120.vid = param1;
         },"_PanelLayer_UIPropVO120.vid");
         result[466] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO120.initVisible = param1;
         },"_PanelLayer_UIPropVO120.initVisible");
         result[467] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO120.createLater = param1;
         },"_PanelLayer_UIPropVO120.createLater");
         result[468] = binding;
         binding = new Binding(this,function():Class
         {
            return MazeLotteryPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO121.cls = param1;
         },"_PanelLayer_UIPropVO121.cls");
         result[469] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAZE_LOTTERY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO121.vid = param1;
         },"_PanelLayer_UIPropVO121.vid");
         result[470] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO121.initVisible = param1;
         },"_PanelLayer_UIPropVO121.initVisible");
         result[471] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO121.createLater = param1;
         },"_PanelLayer_UIPropVO121.createLater");
         result[472] = binding;
         binding = new Binding(this,function():Class
         {
            return MazeEventInfoPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO122.cls = param1;
         },"_PanelLayer_UIPropVO122.cls");
         result[473] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAZE_EVENT_INFO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO122.vid = param1;
         },"_PanelLayer_UIPropVO122.vid");
         result[474] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO122.initVisible = param1;
         },"_PanelLayer_UIPropVO122.initVisible");
         result[475] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO122.createLater = param1;
         },"_PanelLayer_UIPropVO122.createLater");
         result[476] = binding;
         binding = new Binding(this,function():Class
         {
            return MazePlayRulePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO123.cls = param1;
         },"_PanelLayer_UIPropVO123.cls");
         result[477] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAZE_PLAY_RULE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO123.vid = param1;
         },"_PanelLayer_UIPropVO123.vid");
         result[478] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO123.initVisible = param1;
         },"_PanelLayer_UIPropVO123.initVisible");
         result[479] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO123.createLater = param1;
         },"_PanelLayer_UIPropVO123.createLater");
         result[480] = binding;
         binding = new Binding(this,function():Class
         {
            return MazeDiscPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO124.cls = param1;
         },"_PanelLayer_UIPropVO124.cls");
         result[481] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAZE_DISC;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO124.vid = param1;
         },"_PanelLayer_UIPropVO124.vid");
         result[482] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO124.initVisible = param1;
         },"_PanelLayer_UIPropVO124.initVisible");
         result[483] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO124.createLater = param1;
         },"_PanelLayer_UIPropVO124.createLater");
         result[484] = binding;
         binding = new Binding(this,function():Class
         {
            return SmallGamePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO125.cls = param1;
         },"_PanelLayer_UIPropVO125.cls");
         result[485] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_Small_Game;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO125.vid = param1;
         },"_PanelLayer_UIPropVO125.vid");
         result[486] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO125.initVisible = param1;
         },"_PanelLayer_UIPropVO125.initVisible");
         result[487] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO125.createLater = param1;
         },"_PanelLayer_UIPropVO125.createLater");
         result[488] = binding;
         binding = new Binding(this,function():Class
         {
            return SmallGameHideSeekPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO126.cls = param1;
         },"_PanelLayer_UIPropVO126.cls");
         result[489] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_Small_Game_HideSeek;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO126.vid = param1;
         },"_PanelLayer_UIPropVO126.vid");
         result[490] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO126.initVisible = param1;
         },"_PanelLayer_UIPropVO126.initVisible");
         result[491] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO126.createLater = param1;
         },"_PanelLayer_UIPropVO126.createLater");
         result[492] = binding;
         binding = new Binding(this,function():Class
         {
            return SmallGameTwoSamePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO127.cls = param1;
         },"_PanelLayer_UIPropVO127.cls");
         result[493] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_Small_Game_TwoSame;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO127.vid = param1;
         },"_PanelLayer_UIPropVO127.vid");
         result[494] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO127.initVisible = param1;
         },"_PanelLayer_UIPropVO127.initVisible");
         result[495] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO127.createLater = param1;
         },"_PanelLayer_UIPropVO127.createLater");
         result[496] = binding;
         binding = new Binding(this,function():Class
         {
            return SmallGameMagicPowerPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO128.cls = param1;
         },"_PanelLayer_UIPropVO128.cls");
         result[497] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_Small_Game_MagicPower;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO128.vid = param1;
         },"_PanelLayer_UIPropVO128.vid");
         result[498] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO128.initVisible = param1;
         },"_PanelLayer_UIPropVO128.initVisible");
         result[499] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO128.createLater = param1;
         },"_PanelLayer_UIPropVO128.createLater");
         result[500] = binding;
         binding = new Binding(this,function():Class
         {
            return SmallGameSpeedPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO129.cls = param1;
         },"_PanelLayer_UIPropVO129.cls");
         result[501] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_Small_Game_Speed;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO129.vid = param1;
         },"_PanelLayer_UIPropVO129.vid");
         result[502] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO129.initVisible = param1;
         },"_PanelLayer_UIPropVO129.initVisible");
         result[503] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO129.createLater = param1;
         },"_PanelLayer_UIPropVO129.createLater");
         result[504] = binding;
         binding = new Binding(this,function():Class
         {
            return MedalPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO130.cls = param1;
         },"_PanelLayer_UIPropVO130.cls");
         result[505] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MEDAL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO130.vid = param1;
         },"_PanelLayer_UIPropVO130.vid");
         result[506] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO130.initVisible = param1;
         },"_PanelLayer_UIPropVO130.initVisible");
         result[507] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO130.createLater = param1;
         },"_PanelLayer_UIPropVO130.createLater");
         result[508] = binding;
         binding = new Binding(this,function():Class
         {
            return AstrologicPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO131.cls = param1;
         },"_PanelLayer_UIPropVO131.cls");
         result[509] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ASTROLOGIC;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO131.vid = param1;
         },"_PanelLayer_UIPropVO131.vid");
         result[510] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO131.initVisible = param1;
         },"_PanelLayer_UIPropVO131.initVisible");
         result[511] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO131.createLater = param1;
         },"_PanelLayer_UIPropVO131.createLater");
         result[512] = binding;
         binding = new Binding(this,function():Class
         {
            return PetHandbook;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO132.cls = param1;
         },"_PanelLayer_UIPropVO132.cls");
         result[513] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_HANDBOOK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO132.vid = param1;
         },"_PanelLayer_UIPropVO132.vid");
         result[514] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO132.initVisible = param1;
         },"_PanelLayer_UIPropVO132.initVisible");
         result[515] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO132.createLater = param1;
         },"_PanelLayer_UIPropVO132.createLater");
         result[516] = binding;
         binding = new Binding(this,function():Class
         {
            return PetEvolutionPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO133.cls = param1;
         },"_PanelLayer_UIPropVO133.cls");
         result[517] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_EVOLUTION;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO133.vid = param1;
         },"_PanelLayer_UIPropVO133.vid");
         result[518] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO133.initVisible = param1;
         },"_PanelLayer_UIPropVO133.initVisible");
         result[519] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO133.createLater = param1;
         },"_PanelLayer_UIPropVO133.createLater");
         result[520] = binding;
         binding = new Binding(this,function():Class
         {
            return FindBackPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO134.cls = param1;
         },"_PanelLayer_UIPropVO134.cls");
         result[521] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_FINDBACK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO134.vid = param1;
         },"_PanelLayer_UIPropVO134.vid");
         result[522] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO134.initVisible = param1;
         },"_PanelLayer_UIPropVO134.initVisible");
         result[523] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO134.createLater = param1;
         },"_PanelLayer_UIPropVO134.createLater");
         result[524] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossFightPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO135.cls = param1;
         },"_PanelLayer_UIPropVO135.cls");
         result[525] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_FIGHT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO135.vid = param1;
         },"_PanelLayer_UIPropVO135.vid");
         result[526] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO135.initVisible = param1;
         },"_PanelLayer_UIPropVO135.initVisible");
         result[527] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO135.createLater = param1;
         },"_PanelLayer_UIPropVO135.createLater");
         result[528] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossFightTeamInfo;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO136.cls = param1;
         },"_PanelLayer_UIPropVO136.cls");
         result[529] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_FIGHT_TEAM;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO136.vid = param1;
         },"_PanelLayer_UIPropVO136.vid");
         result[530] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO136.initVisible = param1;
         },"_PanelLayer_UIPropVO136.initVisible");
         result[531] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO136.createLater = param1;
         },"_PanelLayer_UIPropVO136.createLater");
         result[532] = binding;
         binding = new Binding(this,function():Class
         {
            return FairySkillConfigCanvas;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO137.cls = param1;
         },"_PanelLayer_UIPropVO137.cls");
         result[533] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_FAIRY_SKILL_CONFIG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO137.vid = param1;
         },"_PanelLayer_UIPropVO137.vid");
         result[534] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO137.initVisible = param1;
         },"_PanelLayer_UIPropVO137.initVisible");
         result[535] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO137.createLater = param1;
         },"_PanelLayer_UIPropVO137.createLater");
         result[536] = binding;
         binding = new Binding(this,function():Class
         {
            return BattleInfoCanvas;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO138.cls = param1;
         },"_PanelLayer_UIPropVO138.cls");
         result[537] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BATTLE_INFO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO138.vid = param1;
         },"_PanelLayer_UIPropVO138.vid");
         result[538] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO138.initVisible = param1;
         },"_PanelLayer_UIPropVO138.initVisible");
         result[539] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO138.createLater = param1;
         },"_PanelLayer_UIPropVO138.createLater");
         result[540] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossTeamFightPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO139.cls = param1;
         },"_PanelLayer_UIPropVO139.cls");
         result[541] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_TEAM_FIGHT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO139.vid = param1;
         },"_PanelLayer_UIPropVO139.vid");
         result[542] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO139.initVisible = param1;
         },"_PanelLayer_UIPropVO139.initVisible");
         result[543] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO139.createLater = param1;
         },"_PanelLayer_UIPropVO139.createLater");
         result[544] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossTeamFightBetPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO140.cls = param1;
         },"_PanelLayer_UIPropVO140.cls");
         result[545] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_TEAM_FIGHT_BET;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO140.vid = param1;
         },"_PanelLayer_UIPropVO140.vid");
         result[546] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO140.initVisible = param1;
         },"_PanelLayer_UIPropVO140.initVisible");
         result[547] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO140.createLater = param1;
         },"_PanelLayer_UIPropVO140.createLater");
         result[548] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionTotalPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO141.cls = param1;
         },"_PanelLayer_UIPropVO141.cls");
         result[549] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_TOTAL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO141.vid = param1;
         },"_PanelLayer_UIPropVO141.vid");
         result[550] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO141.initVisible = param1;
         },"_PanelLayer_UIPropVO141.initVisible");
         result[551] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO141.createLater = param1;
         },"_PanelLayer_UIPropVO141.createLater");
         result[552] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionSinglePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO142.cls = param1;
         },"_PanelLayer_UIPropVO142.cls");
         result[553] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_SINGLE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO142.vid = param1;
         },"_PanelLayer_UIPropVO142.vid");
         result[554] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO142.initVisible = param1;
         },"_PanelLayer_UIPropVO142.initVisible");
         result[555] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO142.createLater = param1;
         },"_PanelLayer_UIPropVO142.createLater");
         result[556] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionSingleInfoPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO143.cls = param1;
         },"_PanelLayer_UIPropVO143.cls");
         result[557] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_SINGLE_INFO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO143.vid = param1;
         },"_PanelLayer_UIPropVO143.vid");
         result[558] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO143.initVisible = param1;
         },"_PanelLayer_UIPropVO143.initVisible");
         result[559] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO143.createLater = param1;
         },"_PanelLayer_UIPropVO143.createLater");
         result[560] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionAreaPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO144.cls = param1;
         },"_PanelLayer_UIPropVO144.cls");
         result[561] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_AREA;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO144.vid = param1;
         },"_PanelLayer_UIPropVO144.vid");
         result[562] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO144.initVisible = param1;
         },"_PanelLayer_UIPropVO144.initVisible");
         result[563] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO144.createLater = param1;
         },"_PanelLayer_UIPropVO144.createLater");
         result[564] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionBossAreaPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO145.cls = param1;
         },"_PanelLayer_UIPropVO145.cls");
         result[565] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_BOSS_AREA;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO145.vid = param1;
         },"_PanelLayer_UIPropVO145.vid");
         result[566] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO145.initVisible = param1;
         },"_PanelLayer_UIPropVO145.initVisible");
         result[567] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO145.createLater = param1;
         },"_PanelLayer_UIPropVO145.createLater");
         result[568] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionFightPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO146.cls = param1;
         },"_PanelLayer_UIPropVO146.cls");
         result[569] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_FIGHT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO146.vid = param1;
         },"_PanelLayer_UIPropVO146.vid");
         result[570] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO146.initVisible = param1;
         },"_PanelLayer_UIPropVO146.initVisible");
         result[571] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO146.createLater = param1;
         },"_PanelLayer_UIPropVO146.createLater");
         result[572] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionFirstAward;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO147.cls = param1;
         },"_PanelLayer_UIPropVO147.cls");
         result[573] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_FIRST_AWARD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO147.vid = param1;
         },"_PanelLayer_UIPropVO147.vid");
         result[574] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO147.initVisible = param1;
         },"_PanelLayer_UIPropVO147.initVisible");
         result[575] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO147.createLater = param1;
         },"_PanelLayer_UIPropVO147.createLater");
         result[576] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionScoreAward;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO148.cls = param1;
         },"_PanelLayer_UIPropVO148.cls");
         result[577] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_SCORE_AWARD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO148.vid = param1;
         },"_PanelLayer_UIPropVO148.vid");
         result[578] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO148.initVisible = param1;
         },"_PanelLayer_UIPropVO148.initVisible");
         result[579] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO148.createLater = param1;
         },"_PanelLayer_UIPropVO148.createLater");
         result[580] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionTimeAward;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO149.cls = param1;
         },"_PanelLayer_UIPropVO149.cls");
         result[581] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_TIME_AWARD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO149.vid = param1;
         },"_PanelLayer_UIPropVO149.vid");
         result[582] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO149.initVisible = param1;
         },"_PanelLayer_UIPropVO149.initVisible");
         result[583] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO149.createLater = param1;
         },"_PanelLayer_UIPropVO149.createLater");
         result[584] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionBattleInfo;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO150.cls = param1;
         },"_PanelLayer_UIPropVO150.cls");
         result[585] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_BATTLE_INFO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO150.vid = param1;
         },"_PanelLayer_UIPropVO150.vid");
         result[586] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO150.initVisible = param1;
         },"_PanelLayer_UIPropVO150.initVisible");
         result[587] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO150.createLater = param1;
         },"_PanelLayer_UIPropVO150.createLater");
         result[588] = binding;
         binding = new Binding(this,function():Class
         {
            return CrossContentionRank;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO151.cls = param1;
         },"_PanelLayer_UIPropVO151.cls");
         result[589] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CROSS_CONTENTION_RANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO151.vid = param1;
         },"_PanelLayer_UIPropVO151.vid");
         result[590] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO151.initVisible = param1;
         },"_PanelLayer_UIPropVO151.initVisible");
         result[591] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO151.createLater = param1;
         },"_PanelLayer_UIPropVO151.createLater");
         result[592] = binding;
         binding = new Binding(this,function():Class
         {
            return PetTalentPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO152.cls = param1;
         },"_PanelLayer_UIPropVO152.cls");
         result[593] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_TALENT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO152.vid = param1;
         },"_PanelLayer_UIPropVO152.vid");
         result[594] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO152.initVisible = param1;
         },"_PanelLayer_UIPropVO152.initVisible");
         result[595] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO152.createLater = param1;
         },"_PanelLayer_UIPropVO152.createLater");
         result[596] = binding;
         binding = new Binding(this,function():Class
         {
            return PetTalentFuncPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO153.cls = param1;
         },"_PanelLayer_UIPropVO153.cls");
         result[597] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_TALENT_FUNC;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO153.vid = param1;
         },"_PanelLayer_UIPropVO153.vid");
         result[598] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO153.initVisible = param1;
         },"_PanelLayer_UIPropVO153.initVisible");
         result[599] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO153.createLater = param1;
         },"_PanelLayer_UIPropVO153.createLater");
         result[600] = binding;
         binding = new Binding(this,function():Class
         {
            return TreasurePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO154.cls = param1;
         },"_PanelLayer_UIPropVO154.cls");
         result[601] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TREASURE_BOWL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO154.vid = param1;
         },"_PanelLayer_UIPropVO154.vid");
         result[602] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO154.initVisible = param1;
         },"_PanelLayer_UIPropVO154.initVisible");
         result[603] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO154.createLater = param1;
         },"_PanelLayer_UIPropVO154.createLater");
         result[604] = binding;
         binding = new Binding(this,function():Class
         {
            return ExtractCardActivity;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO155.cls = param1;
         },"_PanelLayer_UIPropVO155.cls");
         result[605] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_EXTRACT_CARD_ACTIVITY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO155.vid = param1;
         },"_PanelLayer_UIPropVO155.vid");
         result[606] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO155.initVisible = param1;
         },"_PanelLayer_UIPropVO155.initVisible");
         result[607] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO155.createLater = param1;
         },"_PanelLayer_UIPropVO155.createLater");
         result[608] = binding;
         binding = new Binding(this,function():Class
         {
            return StoneSealPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO156.cls = param1;
         },"_PanelLayer_UIPropVO156.cls");
         result[609] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_STONE_SEAL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO156.vid = param1;
         },"_PanelLayer_UIPropVO156.vid");
         result[610] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO156.initVisible = param1;
         },"_PanelLayer_UIPropVO156.initVisible");
         result[611] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO156.createLater = param1;
         },"_PanelLayer_UIPropVO156.createLater");
         result[612] = binding;
         binding = new Binding(this,function():Class
         {
            return StoneSealBoreCanvas;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO157.cls = param1;
         },"_PanelLayer_UIPropVO157.cls");
         result[613] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_STONE_SEAL_BORE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO157.vid = param1;
         },"_PanelLayer_UIPropVO157.vid");
         result[614] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO157.initVisible = param1;
         },"_PanelLayer_UIPropVO157.initVisible");
         result[615] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO157.createLater = param1;
         },"_PanelLayer_UIPropVO157.createLater");
         result[616] = binding;
         binding = new Binding(this,function():Class
         {
            return StarExchange;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO158.cls = param1;
         },"_PanelLayer_UIPropVO158.cls");
         result[617] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_STAR_EXCHANGE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO158.vid = param1;
         },"_PanelLayer_UIPropVO158.vid");
         result[618] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO158.initVisible = param1;
         },"_PanelLayer_UIPropVO158.initVisible");
         result[619] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO158.createLater = param1;
         },"_PanelLayer_UIPropVO158.createLater");
         result[620] = binding;
         binding = new Binding(this,function():Class
         {
            return FlopPassPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO159.cls = param1;
         },"_PanelLayer_UIPropVO159.cls");
         result[621] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_FLOP_PASS;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO159.vid = param1;
         },"_PanelLayer_UIPropVO159.vid");
         result[622] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO159.initVisible = param1;
         },"_PanelLayer_UIPropVO159.initVisible");
         result[623] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO159.createLater = param1;
         },"_PanelLayer_UIPropVO159.createLater");
         result[624] = binding;
         binding = new Binding(this,function():Class
         {
            return HulaPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO160.cls = param1;
         },"_PanelLayer_UIPropVO160.cls");
         result[625] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_HULA;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO160.vid = param1;
         },"_PanelLayer_UIPropVO160.vid");
         result[626] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO160.initVisible = param1;
         },"_PanelLayer_UIPropVO160.initVisible");
         result[627] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO160.createLater = param1;
         },"_PanelLayer_UIPropVO160.createLater");
         result[628] = binding;
         binding = new Binding(this,function():Class
         {
            return ReturnRewardPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO161.cls = param1;
         },"_PanelLayer_UIPropVO161.cls");
         result[629] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_RETURN_REWARD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO161.vid = param1;
         },"_PanelLayer_UIPropVO161.vid");
         result[630] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO161.initVisible = param1;
         },"_PanelLayer_UIPropVO161.initVisible");
         result[631] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO161.createLater = param1;
         },"_PanelLayer_UIPropVO161.createLater");
         result[632] = binding;
         binding = new Binding(this,function():Class
         {
            return TrialsPassMainPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO162.cls = param1;
         },"_PanelLayer_UIPropVO162.cls");
         result[633] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TRIALS;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO162.vid = param1;
         },"_PanelLayer_UIPropVO162.vid");
         result[634] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO162.initVisible = param1;
         },"_PanelLayer_UIPropVO162.initVisible");
         result[635] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO162.createLater = param1;
         },"_PanelLayer_UIPropVO162.createLater");
         result[636] = binding;
         binding = new Binding(this,function():Class
         {
            return TrialsPassAwardPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO163.cls = param1;
         },"_PanelLayer_UIPropVO163.cls");
         result[637] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TRIALS_AWARD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO163.vid = param1;
         },"_PanelLayer_UIPropVO163.vid");
         result[638] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO163.initVisible = param1;
         },"_PanelLayer_UIPropVO163.initVisible");
         result[639] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO163.createLater = param1;
         },"_PanelLayer_UIPropVO163.createLater");
         result[640] = binding;
         binding = new Binding(this,function():Class
         {
            return DotaPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO164.cls = param1;
         },"_PanelLayer_UIPropVO164.cls");
         result[641] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_DOTA;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO164.vid = param1;
         },"_PanelLayer_UIPropVO164.vid");
         result[642] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO164.initVisible = param1;
         },"_PanelLayer_UIPropVO164.initVisible");
         result[643] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO164.createLater = param1;
         },"_PanelLayer_UIPropVO164.createLater");
         result[644] = binding;
         binding = new Binding(this,function():Class
         {
            return GrouponPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO165.cls = param1;
         },"_PanelLayer_UIPropVO165.cls");
         result[645] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GROUPON;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO165.vid = param1;
         },"_PanelLayer_UIPropVO165.vid");
         result[646] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO165.initVisible = param1;
         },"_PanelLayer_UIPropVO165.initVisible");
         result[647] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO165.createLater = param1;
         },"_PanelLayer_UIPropVO165.createLater");
         result[648] = binding;
         binding = new Binding(this,function():Class
         {
            return SummerGames;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO166.cls = param1;
         },"_PanelLayer_UIPropVO166.cls");
         result[649] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SUMMER_GAME;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO166.vid = param1;
         },"_PanelLayer_UIPropVO166.vid");
         result[650] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO166.initVisible = param1;
         },"_PanelLayer_UIPropVO166.initVisible");
         result[651] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO166.createLater = param1;
         },"_PanelLayer_UIPropVO166.createLater");
         result[652] = binding;
         binding = new Binding(this,function():Class
         {
            return Wasteland;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO167.cls = param1;
         },"_PanelLayer_UIPropVO167.cls");
         result[653] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SUMMER_GAME_WASTELAND;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO167.vid = param1;
         },"_PanelLayer_UIPropVO167.vid");
         result[654] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO167.initVisible = param1;
         },"_PanelLayer_UIPropVO167.initVisible");
         result[655] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO167.createLater = param1;
         },"_PanelLayer_UIPropVO167.createLater");
         result[656] = binding;
         binding = new Binding(this,function():Class
         {
            return ThreeDiabetes;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO168.cls = param1;
         },"_PanelLayer_UIPropVO168.cls");
         result[657] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SUMMER_GAME_DIABETES;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO168.vid = param1;
         },"_PanelLayer_UIPropVO168.vid");
         result[658] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO168.initVisible = param1;
         },"_PanelLayer_UIPropVO168.initVisible");
         result[659] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO168.createLater = param1;
         },"_PanelLayer_UIPropVO168.createLater");
         result[660] = binding;
         binding = new Binding(this,function():Class
         {
            return HorseRace;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO169.cls = param1;
         },"_PanelLayer_UIPropVO169.cls");
         result[661] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SUMMER_GAME_HORSE_RACE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO169.vid = param1;
         },"_PanelLayer_UIPropVO169.vid");
         result[662] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO169.initVisible = param1;
         },"_PanelLayer_UIPropVO169.initVisible");
         result[663] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO169.createLater = param1;
         },"_PanelLayer_UIPropVO169.createLater");
         result[664] = binding;
         binding = new Binding(this,function():Class
         {
            return WorldCupPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO170.cls = param1;
         },"_PanelLayer_UIPropVO170.cls");
         result[665] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WORLD_CUP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO170.vid = param1;
         },"_PanelLayer_UIPropVO170.vid");
         result[666] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO170.initVisible = param1;
         },"_PanelLayer_UIPropVO170.initVisible");
         result[667] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO170.createLater = param1;
         },"_PanelLayer_UIPropVO170.createLater");
         result[668] = binding;
         binding = new Binding(this,function():Class
         {
            return WorldCupVSPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO171.cls = param1;
         },"_PanelLayer_UIPropVO171.cls");
         result[669] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WORLD_CUP_VS;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO171.vid = param1;
         },"_PanelLayer_UIPropVO171.vid");
         result[670] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO171.initVisible = param1;
         },"_PanelLayer_UIPropVO171.initVisible");
         result[671] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO171.createLater = param1;
         },"_PanelLayer_UIPropVO171.createLater");
         result[672] = binding;
         binding = new Binding(this,function():Class
         {
            return DressPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO172.cls = param1;
         },"_PanelLayer_UIPropVO172.cls");
         result[673] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_DRESS;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO172.vid = param1;
         },"_PanelLayer_UIPropVO172.vid");
         result[674] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO172.initVisible = param1;
         },"_PanelLayer_UIPropVO172.initVisible");
         result[675] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO172.createLater = param1;
         },"_PanelLayer_UIPropVO172.createLater");
         result[676] = binding;
         binding = new Binding(this,function():Class
         {
            return DecoratePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO173.cls = param1;
         },"_PanelLayer_UIPropVO173.cls");
         result[677] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_DECORATE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO173.vid = param1;
         },"_PanelLayer_UIPropVO173.vid");
         result[678] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO173.initVisible = param1;
         },"_PanelLayer_UIPropVO173.initVisible");
         result[679] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO173.createLater = param1;
         },"_PanelLayer_UIPropVO173.createLater");
         result[680] = binding;
         binding = new Binding(this,function():Class
         {
            return AutoTaskPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO174.cls = param1;
         },"_PanelLayer_UIPropVO174.cls");
         result[681] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_AUTOTASK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO174.vid = param1;
         },"_PanelLayer_UIPropVO174.vid");
         result[682] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO174.initVisible = param1;
         },"_PanelLayer_UIPropVO174.initVisible");
         result[683] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO174.createLater = param1;
         },"_PanelLayer_UIPropVO174.createLater");
         result[684] = binding;
         binding = new Binding(this,function():Class
         {
            return RecipeExchangePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO175.cls = param1;
         },"_PanelLayer_UIPropVO175.cls");
         result[685] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_RECIPE_EXCHANGE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO175.vid = param1;
         },"_PanelLayer_UIPropVO175.vid");
         result[686] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO175.initVisible = param1;
         },"_PanelLayer_UIPropVO175.initVisible");
         result[687] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO175.createLater = param1;
         },"_PanelLayer_UIPropVO175.createLater");
         result[688] = binding;
         binding = new Binding(this,function():Class
         {
            return WorldCupChangePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO176.cls = param1;
         },"_PanelLayer_UIPropVO176.cls");
         result[689] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WORLD_CUP_CHANGE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO176.vid = param1;
         },"_PanelLayer_UIPropVO176.vid");
         result[690] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO176.initVisible = param1;
         },"_PanelLayer_UIPropVO176.initVisible");
         result[691] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO176.createLater = param1;
         },"_PanelLayer_UIPropVO176.createLater");
         result[692] = binding;
         binding = new Binding(this,function():Class
         {
            return NpcShopPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO177.cls = param1;
         },"_PanelLayer_UIPropVO177.cls");
         result[693] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_NPC_SHOP;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO177.vid = param1;
         },"_PanelLayer_UIPropVO177.vid");
         result[694] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO177.initVisible = param1;
         },"_PanelLayer_UIPropVO177.initVisible");
         result[695] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO177.createLater = param1;
         },"_PanelLayer_UIPropVO177.createLater");
         result[696] = binding;
         binding = new Binding(this,function():Class
         {
            return BossDailyPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO178.cls = param1;
         },"_PanelLayer_UIPropVO178.cls");
         result[697] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BOSS_DAILY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO178.vid = param1;
         },"_PanelLayer_UIPropVO178.vid");
         result[698] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO178.initVisible = param1;
         },"_PanelLayer_UIPropVO178.initVisible");
         result[699] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO178.createLater = param1;
         },"_PanelLayer_UIPropVO178.createLater");
         result[700] = binding;
         binding = new Binding(this,function():Class
         {
            return AwakenPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO179.cls = param1;
         },"_PanelLayer_UIPropVO179.cls");
         result[701] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_AWAKEN;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO179.vid = param1;
         },"_PanelLayer_UIPropVO179.vid");
         result[702] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO179.initVisible = param1;
         },"_PanelLayer_UIPropVO179.initVisible");
         result[703] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO179.createLater = param1;
         },"_PanelLayer_UIPropVO179.createLater");
         result[704] = binding;
         binding = new Binding(this,function():Class
         {
            return WaWaGamePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO180.cls = param1;
         },"_PanelLayer_UIPropVO180.cls");
         result[705] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WAWA_GAME;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO180.vid = param1;
         },"_PanelLayer_UIPropVO180.vid");
         result[706] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO180.initVisible = param1;
         },"_PanelLayer_UIPropVO180.initVisible");
         result[707] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO180.createLater = param1;
         },"_PanelLayer_UIPropVO180.createLater");
         result[708] = binding;
         binding = new Binding(this,function():Class
         {
            return WaWaChangePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO181.cls = param1;
         },"_PanelLayer_UIPropVO181.cls");
         result[709] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WAWA_CHANGE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO181.vid = param1;
         },"_PanelLayer_UIPropVO181.vid");
         result[710] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO181.initVisible = param1;
         },"_PanelLayer_UIPropVO181.initVisible");
         result[711] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO181.createLater = param1;
         },"_PanelLayer_UIPropVO181.createLater");
         result[712] = binding;
         binding = new Binding(this,function():Class
         {
            return ChargeNoticePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO182.cls = param1;
         },"_PanelLayer_UIPropVO182.cls");
         result[713] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CHARGE_NOTICE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO182.vid = param1;
         },"_PanelLayer_UIPropVO182.vid");
         result[714] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO182.initVisible = param1;
         },"_PanelLayer_UIPropVO182.initVisible");
         result[715] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO182.createLater = param1;
         },"_PanelLayer_UIPropVO182.createLater");
         result[716] = binding;
         binding = new Binding(this,function():Class
         {
            return MysteryFurnace;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO183.cls = param1;
         },"_PanelLayer_UIPropVO183.cls");
         result[717] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MYSTERY_FURNACE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO183.vid = param1;
         },"_PanelLayer_UIPropVO183.vid");
         result[718] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO183.initVisible = param1;
         },"_PanelLayer_UIPropVO183.initVisible");
         result[719] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO183.createLater = param1;
         },"_PanelLayer_UIPropVO183.createLater");
         result[720] = binding;
         binding = new Binding(this,function():Class
         {
            return TrainSoulPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO184.cls = param1;
         },"_PanelLayer_UIPropVO184.cls");
         result[721] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TRAIN_SOUL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO184.vid = param1;
         },"_PanelLayer_UIPropVO184.vid");
         result[722] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO184.initVisible = param1;
         },"_PanelLayer_UIPropVO184.initVisible");
         result[723] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO184.createLater = param1;
         },"_PanelLayer_UIPropVO184.createLater");
         result[724] = binding;
         binding = new Binding(this,function():Class
         {
            return JuHuaSuanAlertPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO185.cls = param1;
         },"_PanelLayer_UIPropVO185.cls");
         result[725] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_JUHUASUAN_ALERT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO185.vid = param1;
         },"_PanelLayer_UIPropVO185.vid");
         result[726] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO185.initVisible = param1;
         },"_PanelLayer_UIPropVO185.initVisible");
         result[727] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO185.createLater = param1;
         },"_PanelLayer_UIPropVO185.createLater");
         result[728] = binding;
         binding = new Binding(this,function():Class
         {
            return JuHuaSuanPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO186.cls = param1;
         },"_PanelLayer_UIPropVO186.cls");
         result[729] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_JUHUASUAN;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO186.vid = param1;
         },"_PanelLayer_UIPropVO186.vid");
         result[730] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO186.initVisible = param1;
         },"_PanelLayer_UIPropVO186.initVisible");
         result[731] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO186.createLater = param1;
         },"_PanelLayer_UIPropVO186.createLater");
         result[732] = binding;
         binding = new Binding(this,function():Class
         {
            return ManJiuJianPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO187.cls = param1;
         },"_PanelLayer_UIPropVO187.cls");
         result[733] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MANJIUJIAN;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO187.vid = param1;
         },"_PanelLayer_UIPropVO187.vid");
         result[734] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO187.initVisible = param1;
         },"_PanelLayer_UIPropVO187.initVisible");
         result[735] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO187.createLater = param1;
         },"_PanelLayer_UIPropVO187.createLater");
         result[736] = binding;
         binding = new Binding(this,function():Class
         {
            return RebateEverydayPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO188.cls = param1;
         },"_PanelLayer_UIPropVO188.cls");
         result[737] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_REBATEEVERYDAY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO188.vid = param1;
         },"_PanelLayer_UIPropVO188.vid");
         result[738] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO188.initVisible = param1;
         },"_PanelLayer_UIPropVO188.initVisible");
         result[739] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO188.createLater = param1;
         },"_PanelLayer_UIPropVO188.createLater");
         result[740] = binding;
         binding = new Binding(this,function():Class
         {
            return RebateEverydayAlertPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO189.cls = param1;
         },"_PanelLayer_UIPropVO189.cls");
         result[741] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_REBATEEVERYDAY_ALERT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO189.vid = param1;
         },"_PanelLayer_UIPropVO189.vid");
         result[742] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO189.initVisible = param1;
         },"_PanelLayer_UIPropVO189.initVisible");
         result[743] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO189.createLater = param1;
         },"_PanelLayer_UIPropVO189.createLater");
         result[744] = binding;
         binding = new Binding(this,function():Class
         {
            return TripleTownPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO190.cls = param1;
         },"_PanelLayer_UIPropVO190.cls");
         result[745] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TRIPLE_TOWN;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO190.vid = param1;
         },"_PanelLayer_UIPropVO190.vid");
         result[746] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO190.initVisible = param1;
         },"_PanelLayer_UIPropVO190.initVisible");
         result[747] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO190.createLater = param1;
         },"_PanelLayer_UIPropVO190.createLater");
         result[748] = binding;
         binding = new Binding(this,function():Class
         {
            return MonthWelfarePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO191.cls = param1;
         },"_PanelLayer_UIPropVO191.cls");
         result[749] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MONTHWELFARE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO191.vid = param1;
         },"_PanelLayer_UIPropVO191.vid");
         result[750] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO191.initVisible = param1;
         },"_PanelLayer_UIPropVO191.initVisible");
         result[751] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO191.createLater = param1;
         },"_PanelLayer_UIPropVO191.createLater");
         result[752] = binding;
         binding = new Binding(this,function():Class
         {
            return MonthWelfareAlertPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO192.cls = param1;
         },"_PanelLayer_UIPropVO192.cls");
         result[753] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MONTHWELFARE_ALERT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO192.vid = param1;
         },"_PanelLayer_UIPropVO192.vid");
         result[754] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO192.initVisible = param1;
         },"_PanelLayer_UIPropVO192.initVisible");
         result[755] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO192.createLater = param1;
         },"_PanelLayer_UIPropVO192.createLater");
         result[756] = binding;
         binding = new Binding(this,function():Class
         {
            return MonthWelfareBagPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO193.cls = param1;
         },"_PanelLayer_UIPropVO193.cls");
         result[757] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MONTHWELFARE_BAG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO193.vid = param1;
         },"_PanelLayer_UIPropVO193.vid");
         result[758] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO193.initVisible = param1;
         },"_PanelLayer_UIPropVO193.initVisible");
         result[759] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO193.createLater = param1;
         },"_PanelLayer_UIPropVO193.createLater");
         result[760] = binding;
         binding = new Binding(this,function():Class
         {
            return HeiYaoShiPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO194.cls = param1;
         },"_PanelLayer_UIPropVO194.cls");
         result[761] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_HEIYAOSHI;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO194.vid = param1;
         },"_PanelLayer_UIPropVO194.vid");
         result[762] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO194.initVisible = param1;
         },"_PanelLayer_UIPropVO194.initVisible");
         result[763] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO194.createLater = param1;
         },"_PanelLayer_UIPropVO194.createLater");
         result[764] = binding;
         binding = new Binding(this,function():Class
         {
            return HeiyaoshiAlertPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO195.cls = param1;
         },"_PanelLayer_UIPropVO195.cls");
         result[765] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_HEIYAOSHI_ALERT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO195.vid = param1;
         },"_PanelLayer_UIPropVO195.vid");
         result[766] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO195.initVisible = param1;
         },"_PanelLayer_UIPropVO195.initVisible");
         result[767] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO195.createLater = param1;
         },"_PanelLayer_UIPropVO195.createLater");
         result[768] = binding;
         binding = new Binding(this,function():Class
         {
            return PRSPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO196.cls = param1;
         },"_PanelLayer_UIPropVO196.cls");
         result[769] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_REAl_SOUL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO196.vid = param1;
         },"_PanelLayer_UIPropVO196.vid");
         result[770] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO196.initVisible = param1;
         },"_PanelLayer_UIPropVO196.initVisible");
         result[771] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO196.createLater = param1;
         },"_PanelLayer_UIPropVO196.createLater");
         result[772] = binding;
         binding = new Binding(this,function():Class
         {
            return SecretTreasureHuntPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO197.cls = param1;
         },"_PanelLayer_UIPropVO197.cls");
         result[773] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SECRET_TREASUREHUNT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO197.vid = param1;
         },"_PanelLayer_UIPropVO197.vid");
         result[774] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO197.initVisible = param1;
         },"_PanelLayer_UIPropVO197.initVisible");
         result[775] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO197.createLater = param1;
         },"_PanelLayer_UIPropVO197.createLater");
         result[776] = binding;
         binding = new Binding(this,function():Class
         {
            return SecretTreasureHuntAlertPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO198.cls = param1;
         },"_PanelLayer_UIPropVO198.cls");
         result[777] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SECRET_TREASUREHUNT_ALERT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO198.vid = param1;
         },"_PanelLayer_UIPropVO198.vid");
         result[778] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO198.initVisible = param1;
         },"_PanelLayer_UIPropVO198.initVisible");
         result[779] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO198.createLater = param1;
         },"_PanelLayer_UIPropVO198.createLater");
         result[780] = binding;
         binding = new Binding(this,function():Class
         {
            return SecretTreasureHuntAlertOne;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO199.cls = param1;
         },"_PanelLayer_UIPropVO199.cls");
         result[781] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SECRET_TREASUREHUNT_ONE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO199.vid = param1;
         },"_PanelLayer_UIPropVO199.vid");
         result[782] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO199.initVisible = param1;
         },"_PanelLayer_UIPropVO199.initVisible");
         result[783] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO199.createLater = param1;
         },"_PanelLayer_UIPropVO199.createLater");
         result[784] = binding;
         binding = new Binding(this,function():Class
         {
            return SecretTreasureHuntEnd;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO200.cls = param1;
         },"_PanelLayer_UIPropVO200.cls");
         result[785] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SECRET_TREASUREHUNT_END;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO200.vid = param1;
         },"_PanelLayer_UIPropVO200.vid");
         result[786] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO200.initVisible = param1;
         },"_PanelLayer_UIPropVO200.initVisible");
         result[787] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO200.createLater = param1;
         },"_PanelLayer_UIPropVO200.createLater");
         result[788] = binding;
         binding = new Binding(this,function():Class
         {
            return SecretTreasureHuntAutoPlay;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO201.cls = param1;
         },"_PanelLayer_UIPropVO201.cls");
         result[789] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO201.vid = param1;
         },"_PanelLayer_UIPropVO201.vid");
         result[790] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO201.initVisible = param1;
         },"_PanelLayer_UIPropVO201.initVisible");
         result[791] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO201.createLater = param1;
         },"_PanelLayer_UIPropVO201.createLater");
         result[792] = binding;
         binding = new Binding(this,function():Class
         {
            return WarSpritePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO202.cls = param1;
         },"_PanelLayer_UIPropVO202.cls");
         result[793] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WAR_BATTLE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO202.vid = param1;
         },"_PanelLayer_UIPropVO202.vid");
         result[794] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO202.initVisible = param1;
         },"_PanelLayer_UIPropVO202.initVisible");
         result[795] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO202.createLater = param1;
         },"_PanelLayer_UIPropVO202.createLater");
         result[796] = binding;
         binding = new Binding(this,function():Class
         {
            return HappyFrontLinePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO203.cls = param1;
         },"_PanelLayer_UIPropVO203.cls");
         result[797] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_HAPPYFRONTLINE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO203.vid = param1;
         },"_PanelLayer_UIPropVO203.vid");
         result[798] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO203.initVisible = param1;
         },"_PanelLayer_UIPropVO203.initVisible");
         result[799] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO203.createLater = param1;
         },"_PanelLayer_UIPropVO203.createLater");
         result[800] = binding;
         binding = new Binding(this,function():Class
         {
            return AnniversaryPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO204.cls = param1;
         },"_PanelLayer_UIPropVO204.cls");
         result[801] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ANNIVERSARY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO204.vid = param1;
         },"_PanelLayer_UIPropVO204.vid");
         result[802] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO204.initVisible = param1;
         },"_PanelLayer_UIPropVO204.initVisible");
         result[803] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO204.createLater = param1;
         },"_PanelLayer_UIPropVO204.createLater");
         result[804] = binding;
         binding = new Binding(this,function():Class
         {
            return FarmMaster;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO205.cls = param1;
         },"_PanelLayer_UIPropVO205.cls");
         result[805] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_FARMMASTER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO205.vid = param1;
         },"_PanelLayer_UIPropVO205.vid");
         result[806] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO205.initVisible = param1;
         },"_PanelLayer_UIPropVO205.initVisible");
         result[807] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO205.createLater = param1;
         },"_PanelLayer_UIPropVO205.createLater");
         result[808] = binding;
         binding = new Binding(this,function():Class
         {
            return StoneMaster;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO206.cls = param1;
         },"_PanelLayer_UIPropVO206.cls");
         result[809] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_STONEMASTER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO206.vid = param1;
         },"_PanelLayer_UIPropVO206.vid");
         result[810] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO206.initVisible = param1;
         },"_PanelLayer_UIPropVO206.initVisible");
         result[811] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO206.createLater = param1;
         },"_PanelLayer_UIPropVO206.createLater");
         result[812] = binding;
         binding = new Binding(this,function():Class
         {
            return CubeMaster;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO207.cls = param1;
         },"_PanelLayer_UIPropVO207.cls");
         result[813] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CUBEMASTER;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO207.vid = param1;
         },"_PanelLayer_UIPropVO207.vid");
         result[814] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO207.initVisible = param1;
         },"_PanelLayer_UIPropVO207.initVisible");
         result[815] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO207.createLater = param1;
         },"_PanelLayer_UIPropVO207.createLater");
         result[816] = binding;
         binding = new Binding(this,function():Class
         {
            return MonsterHeartPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO208.cls = param1;
         },"_PanelLayer_UIPropVO208.cls");
         result[817] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MONSTERHEART;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO208.vid = param1;
         },"_PanelLayer_UIPropVO208.vid");
         result[818] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO208.initVisible = param1;
         },"_PanelLayer_UIPropVO208.initVisible");
         result[819] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO208.createLater = param1;
         },"_PanelLayer_UIPropVO208.createLater");
         result[820] = binding;
         binding = new Binding(this,function():Class
         {
            return PetGuardPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO209.cls = param1;
         },"_PanelLayer_UIPropVO209.cls");
         result[821] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PETGUARD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO209.vid = param1;
         },"_PanelLayer_UIPropVO209.vid");
         result[822] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO209.initVisible = param1;
         },"_PanelLayer_UIPropVO209.initVisible");
         result[823] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO209.createLater = param1;
         },"_PanelLayer_UIPropVO209.createLater");
         result[824] = binding;
         binding = new Binding(this,function():Class
         {
            return PetGuardInSidePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO210.cls = param1;
         },"_PanelLayer_UIPropVO210.cls");
         result[825] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PETGUARDINSIDE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO210.vid = param1;
         },"_PanelLayer_UIPropVO210.vid");
         result[826] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO210.initVisible = param1;
         },"_PanelLayer_UIPropVO210.initVisible");
         result[827] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO210.createLater = param1;
         },"_PanelLayer_UIPropVO210.createLater");
         result[828] = binding;
         binding = new Binding(this,function():Class
         {
            return DailySignInPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO211.cls = param1;
         },"_PanelLayer_UIPropVO211.cls");
         result[829] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_DAILYSIGNINACT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO211.vid = param1;
         },"_PanelLayer_UIPropVO211.vid");
         result[830] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO211.initVisible = param1;
         },"_PanelLayer_UIPropVO211.initVisible");
         result[831] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO211.createLater = param1;
         },"_PanelLayer_UIPropVO211.createLater");
         result[832] = binding;
         binding = new Binding(this,function():Class
         {
            return MagicCrystalPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO212.cls = param1;
         },"_PanelLayer_UIPropVO212.cls");
         result[833] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAGICCRYSTAL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO212.vid = param1;
         },"_PanelLayer_UIPropVO212.vid");
         result[834] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO212.initVisible = param1;
         },"_PanelLayer_UIPropVO212.initVisible");
         result[835] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO212.createLater = param1;
         },"_PanelLayer_UIPropVO212.createLater");
         result[836] = binding;
         binding = new Binding(this,function():Class
         {
            return StoneToGoldActPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO213.cls = param1;
         },"_PanelLayer_UIPropVO213.cls");
         result[837] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_STONETOGOLDACT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO213.vid = param1;
         },"_PanelLayer_UIPropVO213.vid");
         result[838] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO213.initVisible = param1;
         },"_PanelLayer_UIPropVO213.initVisible");
         result[839] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO213.createLater = param1;
         },"_PanelLayer_UIPropVO213.createLater");
         result[840] = binding;
         binding = new Binding(this,function():Class
         {
            return QiLingPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO214.cls = param1;
         },"_PanelLayer_UIPropVO214.cls");
         result[841] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_QILING;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO214.vid = param1;
         },"_PanelLayer_UIPropVO214.vid");
         result[842] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO214.initVisible = param1;
         },"_PanelLayer_UIPropVO214.initVisible");
         result[843] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO214.createLater = param1;
         },"_PanelLayer_UIPropVO214.createLater");
         result[844] = binding;
         binding = new Binding(this,function():Class
         {
            return MoJinActPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO215.cls = param1;
         },"_PanelLayer_UIPropVO215.cls");
         result[845] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MOJINACT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO215.vid = param1;
         },"_PanelLayer_UIPropVO215.vid");
         result[846] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO215.initVisible = param1;
         },"_PanelLayer_UIPropVO215.initVisible");
         result[847] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO215.createLater = param1;
         },"_PanelLayer_UIPropVO215.createLater");
         result[848] = binding;
         binding = new Binding(this,function():Class
         {
            return PetStonePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO216.cls = param1;
         },"_PanelLayer_UIPropVO216.cls");
         result[849] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_STONE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO216.vid = param1;
         },"_PanelLayer_UIPropVO216.vid");
         result[850] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO216.initVisible = param1;
         },"_PanelLayer_UIPropVO216.initVisible");
         result[851] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO216.createLater = param1;
         },"_PanelLayer_UIPropVO216.createLater");
         result[852] = binding;
         binding = new Binding(this,function():Class
         {
            return AddOpePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO217.cls = param1;
         },"_PanelLayer_UIPropVO217.cls");
         result[853] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ADD_OPE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO217.vid = param1;
         },"_PanelLayer_UIPropVO217.vid");
         result[854] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO217.initVisible = param1;
         },"_PanelLayer_UIPropVO217.initVisible");
         result[855] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO217.createLater = param1;
         },"_PanelLayer_UIPropVO217.createLater");
         result[856] = binding;
         binding = new Binding(this,function():Class
         {
            return ExplorerMedalPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO218.cls = param1;
         },"_PanelLayer_UIPropVO218.cls");
         result[857] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_EXPLORER_MEDAL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO218.vid = param1;
         },"_PanelLayer_UIPropVO218.vid");
         result[858] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO218.initVisible = param1;
         },"_PanelLayer_UIPropVO218.initVisible");
         result[859] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO218.createLater = param1;
         },"_PanelLayer_UIPropVO218.createLater");
         result[860] = binding;
         binding = new Binding(this,function():Class
         {
            return Sudoku;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO219.cls = param1;
         },"_PanelLayer_UIPropVO219.cls");
         result[861] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SUDOKU;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO219.vid = param1;
         },"_PanelLayer_UIPropVO219.vid");
         result[862] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO219.initVisible = param1;
         },"_PanelLayer_UIPropVO219.initVisible");
         result[863] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO219.createLater = param1;
         },"_PanelLayer_UIPropVO219.createLater");
         result[864] = binding;
         binding = new Binding(this,function():Class
         {
            return DuiduiPeng;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO220.cls = param1;
         },"_PanelLayer_UIPropVO220.cls");
         result[865] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_DUIDUIPENG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO220.vid = param1;
         },"_PanelLayer_UIPropVO220.vid");
         result[866] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO220.initVisible = param1;
         },"_PanelLayer_UIPropVO220.initVisible");
         result[867] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO220.createLater = param1;
         },"_PanelLayer_UIPropVO220.createLater");
         result[868] = binding;
         binding = new Binding(this,function():Class
         {
            return ShowTimePnael;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO221.cls = param1;
         },"_PanelLayer_UIPropVO221.cls");
         result[869] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SHOWTIME;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO221.vid = param1;
         },"_PanelLayer_UIPropVO221.vid");
         result[870] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO221.initVisible = param1;
         },"_PanelLayer_UIPropVO221.initVisible");
         result[871] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO221.createLater = param1;
         },"_PanelLayer_UIPropVO221.createLater");
         result[872] = binding;
         binding = new Binding(this,function():Class
         {
            return AnniversaryTurntable;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO222.cls = param1;
         },"_PanelLayer_UIPropVO222.cls");
         result[873] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ANNI_ZHUANPAN;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO222.vid = param1;
         },"_PanelLayer_UIPropVO222.vid");
         result[874] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO222.initVisible = param1;
         },"_PanelLayer_UIPropVO222.initVisible");
         result[875] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO222.createLater = param1;
         },"_PanelLayer_UIPropVO222.createLater");
         result[876] = binding;
         binding = new Binding(this,function():Class
         {
            return PetPVESystem;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO223.cls = param1;
         },"_PanelLayer_UIPropVO223.cls");
         result[877] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_PVE;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO223.vid = param1;
         },"_PanelLayer_UIPropVO223.vid");
         result[878] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO223.initVisible = param1;
         },"_PanelLayer_UIPropVO223.initVisible");
         result[879] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO223.createLater = param1;
         },"_PanelLayer_UIPropVO223.createLater");
         result[880] = binding;
         binding = new Binding(this,function():Class
         {
            return PetPVEConfigPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO224.cls = param1;
         },"_PanelLayer_UIPropVO224.cls");
         result[881] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_PVE_CONFIG;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO224.vid = param1;
         },"_PanelLayer_UIPropVO224.vid");
         result[882] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO224.initVisible = param1;
         },"_PanelLayer_UIPropVO224.initVisible");
         result[883] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO224.createLater = param1;
         },"_PanelLayer_UIPropVO224.createLater");
         result[884] = binding;
         binding = new Binding(this,function():Class
         {
            return PetArenaActivityPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO225.cls = param1;
         },"_PanelLayer_UIPropVO225.cls");
         result[885] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_ARENA_ACTIVITY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO225.vid = param1;
         },"_PanelLayer_UIPropVO225.vid");
         result[886] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO225.initVisible = param1;
         },"_PanelLayer_UIPropVO225.initVisible");
         result[887] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO225.createLater = param1;
         },"_PanelLayer_UIPropVO225.createLater");
         result[888] = binding;
         binding = new Binding(this,function():Class
         {
            return PetArenaActivityRankPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO226.cls = param1;
         },"_PanelLayer_UIPropVO226.cls");
         result[889] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_ARENA_ACTIVITY_RANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO226.vid = param1;
         },"_PanelLayer_UIPropVO226.vid");
         result[890] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO226.initVisible = param1;
         },"_PanelLayer_UIPropVO226.initVisible");
         result[891] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO226.createLater = param1;
         },"_PanelLayer_UIPropVO226.createLater");
         result[892] = binding;
         binding = new Binding(this,function():Class
         {
            return PetFightConfActivity;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO227.cls = param1;
         },"_PanelLayer_UIPropVO227.cls");
         result[893] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PETFIGHT_CONF_ACTIVITY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO227.vid = param1;
         },"_PanelLayer_UIPropVO227.vid");
         result[894] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO227.initVisible = param1;
         },"_PanelLayer_UIPropVO227.initVisible");
         result[895] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO227.createLater = param1;
         },"_PanelLayer_UIPropVO227.createLater");
         result[896] = binding;
         binding = new Binding(this,function():Class
         {
            return PetArenaPrevRankActivityPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO228.cls = param1;
         },"_PanelLayer_UIPropVO228.cls");
         result[897] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PET_ARENA_PREV_ACTIVITY_RANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO228.vid = param1;
         },"_PanelLayer_UIPropVO228.vid");
         result[898] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO228.initVisible = param1;
         },"_PanelLayer_UIPropVO228.initVisible");
         result[899] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO228.createLater = param1;
         },"_PanelLayer_UIPropVO228.createLater");
         result[900] = binding;
         binding = new Binding(this,function():Class
         {
            return PKGamePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO229.cls = param1;
         },"_PanelLayer_UIPropVO229.cls");
         result[901] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PK_GAME;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO229.vid = param1;
         },"_PanelLayer_UIPropVO229.vid");
         result[902] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO229.initVisible = param1;
         },"_PanelLayer_UIPropVO229.initVisible");
         result[903] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO229.createLater = param1;
         },"_PanelLayer_UIPropVO229.createLater");
         result[904] = binding;
         binding = new Binding(this,function():Class
         {
            return ConsumeNoticePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO230.cls = param1;
         },"_PanelLayer_UIPropVO230.cls");
         result[905] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CONSUME_NOTICE_ACTIVITY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO230.vid = param1;
         },"_PanelLayer_UIPropVO230.vid");
         result[906] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO230.initVisible = param1;
         },"_PanelLayer_UIPropVO230.initVisible");
         result[907] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO230.createLater = param1;
         },"_PanelLayer_UIPropVO230.createLater");
         result[908] = binding;
         binding = new Binding(this,function():Class
         {
            return XiaochudasaiPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO231.cls = param1;
         },"_PanelLayer_UIPropVO231.cls");
         result[909] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO231.vid = param1;
         },"_PanelLayer_UIPropVO231.vid");
         result[910] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO231.initVisible = param1;
         },"_PanelLayer_UIPropVO231.initVisible");
         result[911] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO231.createLater = param1;
         },"_PanelLayer_UIPropVO231.createLater");
         result[912] = binding;
         binding = new Binding(this,function():Class
         {
            return PrePurchasePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO232.cls = param1;
         },"_PanelLayer_UIPropVO232.cls");
         result[913] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PREPURCHASE_ACTIVITY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO232.vid = param1;
         },"_PanelLayer_UIPropVO232.vid");
         result[914] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO232.initVisible = param1;
         },"_PanelLayer_UIPropVO232.initVisible");
         result[915] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO232.createLater = param1;
         },"_PanelLayer_UIPropVO232.createLater");
         result[916] = binding;
         binding = new Binding(this,function():Class
         {
            return texunkecheng;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO233.cls = param1;
         },"_PanelLayer_UIPropVO233.cls");
         result[917] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TEXUNKECHENG_ACTIVITY;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO233.vid = param1;
         },"_PanelLayer_UIPropVO233.vid");
         result[918] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO233.initVisible = param1;
         },"_PanelLayer_UIPropVO233.initVisible");
         result[919] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO233.createLater = param1;
         },"_PanelLayer_UIPropVO233.createLater");
         result[920] = binding;
         binding = new Binding(this,function():Class
         {
            return TXKCEXPPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO234.cls = param1;
         },"_PanelLayer_UIPropVO234.cls");
         result[921] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TEXUNKECHENG_EXP_PANEL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO234.vid = param1;
         },"_PanelLayer_UIPropVO234.vid");
         result[922] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO234.initVisible = param1;
         },"_PanelLayer_UIPropVO234.initVisible");
         result[923] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO234.createLater = param1;
         },"_PanelLayer_UIPropVO234.createLater");
         result[924] = binding;
         binding = new Binding(this,function():Class
         {
            return XiulianshiPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO235.cls = param1;
         },"_PanelLayer_UIPropVO235.cls");
         result[925] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_XIULIAN_PANEL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO235.vid = param1;
         },"_PanelLayer_UIPropVO235.vid");
         result[926] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO235.initVisible = param1;
         },"_PanelLayer_UIPropVO235.initVisible");
         result[927] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO235.createLater = param1;
         },"_PanelLayer_UIPropVO235.createLater");
         result[928] = binding;
         binding = new Binding(this,function():Class
         {
            return Moyintuce;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO236.cls = param1;
         },"_PanelLayer_UIPropVO236.cls");
         result[929] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MOYINTUCE_PANEL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO236.vid = param1;
         },"_PanelLayer_UIPropVO236.vid");
         result[930] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO236.initVisible = param1;
         },"_PanelLayer_UIPropVO236.initVisible");
         result[931] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO236.createLater = param1;
         },"_PanelLayer_UIPropVO236.createLater");
         result[932] = binding;
         binding = new Binding(this,function():Class
         {
            return RedEnvelopePanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO237.cls = param1;
         },"_PanelLayer_UIPropVO237.cls");
         result[933] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_REDENVELOPE_PANEL;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO237.vid = param1;
         },"_PanelLayer_UIPropVO237.vid");
         result[934] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO237.initVisible = param1;
         },"_PanelLayer_UIPropVO237.initVisible");
         result[935] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO237.createLater = param1;
         },"_PanelLayer_UIPropVO237.createLater");
         result[936] = binding;
         binding = new Binding(this,function():Class
         {
            return MCZD;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO238.cls = param1;
         },"_PanelLayer_UIPropVO238.cls");
         result[937] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MCZD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO238.vid = param1;
         },"_PanelLayer_UIPropVO238.vid");
         result[938] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO238.initVisible = param1;
         },"_PanelLayer_UIPropVO238.initVisible");
         result[939] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO238.createLater = param1;
         },"_PanelLayer_UIPropVO238.createLater");
         result[940] = binding;
         binding = new Binding(this,function():Class
         {
            return MCZDPetFightConf;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO239.cls = param1;
         },"_PanelLayer_UIPropVO239.cls");
         result[941] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MCZD_PETFIGHT_CONF;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO239.vid = param1;
         },"_PanelLayer_UIPropVO239.vid");
         result[942] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO239.initVisible = param1;
         },"_PanelLayer_UIPropVO239.initVisible");
         result[943] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO239.createLater = param1;
         },"_PanelLayer_UIPropVO239.createLater");
         result[944] = binding;
         binding = new Binding(this,function():Class
         {
            return MCZDTotalRankPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO240.cls = param1;
         },"_PanelLayer_UIPropVO240.cls");
         result[945] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MCZD_ALL_RANK;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO240.vid = param1;
         },"_PanelLayer_UIPropVO240.vid");
         result[946] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO240.initVisible = param1;
         },"_PanelLayer_UIPropVO240.initVisible");
         result[947] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO240.createLater = param1;
         },"_PanelLayer_UIPropVO240.createLater");
         result[948] = binding;
         binding = new Binding(this,function():Class
         {
            return JXHD;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO241.cls = param1;
         },"_PanelLayer_UIPropVO241.cls");
         result[949] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_JXHD;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO241.vid = param1;
         },"_PanelLayer_UIPropVO241.vid");
         result[950] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO241.initVisible = param1;
         },"_PanelLayer_UIPropVO241.initVisible");
         result[951] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO241.createLater = param1;
         },"_PanelLayer_UIPropVO241.createLater");
         result[952] = binding;
         binding = new Binding(this,function():Class
         {
            return MQDTPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO242.cls = param1;
         },"_PanelLayer_UIPropVO242.cls");
         result[953] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MQDT;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO242.vid = param1;
         },"_PanelLayer_UIPropVO242.vid");
         result[954] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO242.initVisible = param1;
         },"_PanelLayer_UIPropVO242.initVisible");
         result[955] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO242.createLater = param1;
         },"_PanelLayer_UIPropVO242.createLater");
         result[956] = binding;
         binding = new Binding(this,function():Class
         {
            return TKYYHInfoPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO243.cls = param1;
         },"_PanelLayer_UIPropVO243.cls");
         result[957] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TKYYHInfo;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO243.vid = param1;
         },"_PanelLayer_UIPropVO243.vid");
         result[958] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO243.initVisible = param1;
         },"_PanelLayer_UIPropVO243.initVisible");
         result[959] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO243.createLater = param1;
         },"_PanelLayer_UIPropVO243.createLater");
         result[960] = binding;
         binding = new Binding(this,function():Class
         {
            return AnniversarySignInPanel;
         },function(param1:Class):void
         {
            _PanelLayer_UIPropVO244.cls = param1;
         },"_PanelLayer_UIPropVO244.cls");
         result[961] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_ANNIVERSARYSIGNIN;
         },function(param1:int):void
         {
            _PanelLayer_UIPropVO244.vid = param1;
         },"_PanelLayer_UIPropVO244.vid");
         result[962] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO244.initVisible = param1;
         },"_PanelLayer_UIPropVO244.initVisible");
         result[963] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PanelLayer_UIPropVO244.createLater = param1;
         },"_PanelLayer_UIPropVO244.createLater");
         result[964] = binding;
         return result;
      }
      
      private function _PanelLayer_UIPropVO108_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO108 = _loc1_;
         _loc1_.name = "转盘背包面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO108",_PanelLayer_UIPropVO108);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO11_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO11 = _loc1_;
         _loc1_.name = "邮件面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO11",_PanelLayer_UIPropVO11);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO34_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO34 = _loc1_;
         _loc1_.name = "组队信息";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO34",_PanelLayer_UIPropVO34);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO57_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO57 = _loc1_;
         _loc1_.name = "公会手册";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO57",_PanelLayer_UIPropVO57);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO172_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO172 = _loc1_;
         _loc1_.name = "装扮图鉴";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO172",_PanelLayer_UIPropVO172);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO195_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO195 = _loc1_;
         _loc1_.name = "黑曜石阵弹窗";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO195",_PanelLayer_UIPropVO195);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO229_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO229 = _loc1_;
         _loc1_.name = "pkgame";
         _loc1_.prop = {
            "dx":50,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO229",_PanelLayer_UIPropVO229);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO217_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO217 = _loc1_;
         _loc1_.name = "增加操作次数";
         _loc1_.prop = {
            "dx":300,
            "dy":150
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO217",_PanelLayer_UIPropVO217);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO160_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO160 = _loc1_;
         _loc1_.name = "草裙舞";
         _loc1_.prop = {
            "dx":133,
            "dy":64
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO160",_PanelLayer_UIPropVO160);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO22_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO22 = _loc1_;
         _loc1_.name = "信息面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO22",_PanelLayer_UIPropVO22);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO45_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO45 = _loc1_;
         _loc1_.name = "自动战斗";
         _loc1_.style = {
            "right":2,
            "top":2
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO45",_PanelLayer_UIPropVO45);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO68_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO68 = _loc1_;
         _loc1_.name = "成就观察面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO68",_PanelLayer_UIPropVO68);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO107_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO107 = _loc1_;
         _loc1_.name = "双十一转盘面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO107",_PanelLayer_UIPropVO107);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO205_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO205 = _loc1_;
         _loc1_.name = "开垦能手";
         _loc1_.prop = {
            "dx":70,
            "dy":10
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO205",_PanelLayer_UIPropVO205);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO183_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO183 = _loc1_;
         _loc1_.name = "神秘熔炉";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO183",_PanelLayer_UIPropVO183);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO10_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO10 = _loc1_;
         _loc1_.name = "邮件管理面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO10",_PanelLayer_UIPropVO10);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO33_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO33 = _loc1_;
         _loc1_.name = "道具商城购物车";
         _loc1_.prop = {
            "dx":171,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO33",_PanelLayer_UIPropVO33);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO56_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO56 = _loc1_;
         _loc1_.name = "公会手册";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO56",_PanelLayer_UIPropVO56);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO79_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO79 = _loc1_;
         _loc1_.name = "七夕活动告白面板";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO79",_PanelLayer_UIPropVO79);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO171_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO171 = _loc1_;
         _loc1_.name = "世界杯预测GOLD";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO171",_PanelLayer_UIPropVO171);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO194_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO194 = _loc1_;
         _loc1_.name = "黑曜石阵";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO194",_PanelLayer_UIPropVO194);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO228_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO228 = _loc1_;
         _loc1_.name = "斗宠活动周排行榜";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO228",_PanelLayer_UIPropVO228);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO119_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO119 = _loc1_;
         _loc1_.name = "迷阵答题面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO119",_PanelLayer_UIPropVO119);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO118_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO118 = _loc1_;
         _loc1_.name = "迷阵面板";
         _loc1_.prop = {
            "dx":230,
            "dy":140
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO118",_PanelLayer_UIPropVO118);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO67_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO67 = _loc1_;
         _loc1_.name = "成就面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO67",_PanelLayer_UIPropVO67);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO182_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO182 = _loc1_;
         _loc1_.name = "充值提醒面板";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO182",_PanelLayer_UIPropVO182);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO21_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO21 = _loc1_;
         _loc1_.name = "技能面板";
         _loc1_.prop = {
            "dx":500,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO21",_PanelLayer_UIPropVO21);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO44_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO44 = _loc1_;
         _loc1_.name = "答题面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO44",_PanelLayer_UIPropVO44);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO239_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO239 = _loc1_;
         _loc1_.name = "萌宠活动配置面板";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO239",_PanelLayer_UIPropVO239);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO204_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO204 = _loc1_;
         _loc1_.name = "魔力嘉年华排行榜";
         _loc1_.prop = {
            "dx":70,
            "dy":10
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO204",_PanelLayer_UIPropVO204);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO129_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO129 = _loc1_;
         _loc1_.name = "暑期夏令营之激情竞速";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO129",_PanelLayer_UIPropVO129);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO106_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO106 = _loc1_;
         _loc1_.name = "幸运转盘面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO106",_PanelLayer_UIPropVO106);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO216_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO216 = _loc1_;
         _loc1_.name = "宠装宝石";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO216",_PanelLayer_UIPropVO216);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO32_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO32 = _loc1_;
         _loc1_.name = "道具商城";
         _loc1_.prop = {
            "dx":171,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO32",_PanelLayer_UIPropVO32);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO55_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO55 = _loc1_;
         _loc1_.name = "公会建筑进度";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO55",_PanelLayer_UIPropVO55);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO78_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO78 = _loc1_;
         _loc1_.name = "答题系统面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO78",_PanelLayer_UIPropVO78);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO170_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO170 = _loc1_;
         _loc1_.name = "世界杯预测";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO170",_PanelLayer_UIPropVO170);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO193_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO193 = _loc1_;
         _loc1_.name = "月福利背包";
         _loc1_.prop = {
            "dx":150,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO193",_PanelLayer_UIPropVO193);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO215_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO215 = _loc1_;
         _loc1_.name = "摸金";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO215",_PanelLayer_UIPropVO215);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO20_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO20 = _loc1_;
         _loc1_.name = "任务管理面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO20",_PanelLayer_UIPropVO20);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO43_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO43 = _loc1_;
         _loc1_.name = "公告栏任务面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO43",_PanelLayer_UIPropVO43);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO66_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO66 = _loc1_;
         _loc1_.name = "礼堂预定面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO66",_PanelLayer_UIPropVO66);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO89_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO89 = _loc1_;
         _loc1_.name = "星宫-效果总览";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO89",_PanelLayer_UIPropVO89);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO181_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO181 = _loc1_;
         _loc1_.name = "娃娃机兑换面板";
         _loc1_.prop = {
            "dx":200,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO181",_PanelLayer_UIPropVO181);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO227_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO227 = _loc1_;
         _loc1_.name = "斗宠活动配置面板";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO227",_PanelLayer_UIPropVO227);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO105_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO105 = _loc1_;
         _loc1_.name = "VIP商城面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO105",_PanelLayer_UIPropVO105);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO203_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO203 = _loc1_;
         _loc1_.name = "欢乐一线牵";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO203",_PanelLayer_UIPropVO203);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO128_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO128 = _loc1_;
         _loc1_.name = "暑期夏令营之能量宝石箱";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO128",_PanelLayer_UIPropVO128);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO31_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO31 = _loc1_;
         _loc1_.name = "聊天面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO31",_PanelLayer_UIPropVO31);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO54_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO54 = _loc1_;
         _loc1_.name = "公会技能开发";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO54",_PanelLayer_UIPropVO54);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO77_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO77 = _loc1_;
         _loc1_.name = "宠物详细属性";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO77",_PanelLayer_UIPropVO77);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO192_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO192 = _loc1_;
         _loc1_.name = "月福利弹窗";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO192",_PanelLayer_UIPropVO192);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO226_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO226 = _loc1_;
         _loc1_.name = "斗宠活动排行榜";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO226",_PanelLayer_UIPropVO226);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO117_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO117 = _loc1_;
         _loc1_.name = "军衔按钮面板";
         _loc1_.prop = {
            "dx":40,
            "dy":150
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO117",_PanelLayer_UIPropVO117);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO116_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO116 = _loc1_;
         _loc1_.name = "魔法秘阵面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO116",_PanelLayer_UIPropVO116);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO65_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO65 = _loc1_;
         _loc1_.name = "征婚面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO65",_PanelLayer_UIPropVO65);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO42_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO42 = _loc1_;
         _loc1_.name = "称号管理面板";
         _loc1_.prop = {
            "dx":335,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO42",_PanelLayer_UIPropVO42);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO88_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO88 = _loc1_;
         _loc1_.name = "星宫-增加资质";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO88",_PanelLayer_UIPropVO88);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO237_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO237 = _loc1_;
         _loc1_.name = "红包";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO237",_PanelLayer_UIPropVO237);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO139_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO139 = _loc1_;
         _loc1_.name = "组队跨服战面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO139",_PanelLayer_UIPropVO139);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO180_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO180 = _loc1_;
         _loc1_.name = "娃娃机面板";
         _loc1_.prop = {
            "dx":55,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO180",_PanelLayer_UIPropVO180);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO202_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO202 = _loc1_;
         _loc1_.name = "战魂斗魄";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO202",_PanelLayer_UIPropVO202);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO104_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO104 = _loc1_;
         _loc1_.name = "材料兑换面板";
         _loc1_.prop = {
            "dx":120,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO104",_PanelLayer_UIPropVO104);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO127_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO127 = _loc1_;
         _loc1_.name = "暑期夏令营之宠物对对碰";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO127",_PanelLayer_UIPropVO127);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO214_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO214 = _loc1_;
         _loc1_.name = "祈灵";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO214",_PanelLayer_UIPropVO214);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO53_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO53 = _loc1_;
         _loc1_.name = "建筑管理";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO53",_PanelLayer_UIPropVO53);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO76_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO76 = _loc1_;
         _loc1_.name = "详细属性";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO76",_PanelLayer_UIPropVO76);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO99_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO99 = _loc1_;
         _loc1_.name = "宠物炼命背包面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO99",_PanelLayer_UIPropVO99);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO191_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO191 = _loc1_;
         _loc1_.name = "月福利";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO191",_PanelLayer_UIPropVO191);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO30_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO30 = _loc1_;
         _loc1_.name = "批量拍卖面板";
         _loc1_.prop = {
            "dx":280,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO30",_PanelLayer_UIPropVO30);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO213_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO213 = _loc1_;
         _loc1_.name = "点石成金";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO213",_PanelLayer_UIPropVO213);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO138_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO138 = _loc1_;
         _loc1_.name = "战斗信息面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO138",_PanelLayer_UIPropVO138);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO41_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO41 = _loc1_;
         _loc1_.name = "战斗设置面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO41",_PanelLayer_UIPropVO41);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO87_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO87 = _loc1_;
         _loc1_.name = "输入身份验证信息";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO87",_PanelLayer_UIPropVO87);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO64_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO64 = _loc1_;
         _loc1_.name = "翅膀染色面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO64",_PanelLayer_UIPropVO64);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO115_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO115 = _loc1_;
         _loc1_.name = "抽奖背包面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO115",_PanelLayer_UIPropVO115);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO225_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO225 = _loc1_;
         _loc1_.name = "斗宠活动面板";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO225",_PanelLayer_UIPropVO225);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO201_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO201 = _loc1_;
         _loc1_.name = "秘境结束自动寻宝";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO201",_PanelLayer_UIPropVO201);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO103_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO103 = _loc1_;
         _loc1_.name = "VIP描述面板";
         _loc1_.prop = {
            "dx":120,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO103",_PanelLayer_UIPropVO103);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO126_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO126 = _loc1_;
         _loc1_.name = "暑期夏令营之宠物捉迷藏";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO126",_PanelLayer_UIPropVO126);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO149_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO149 = _loc1_;
         _loc1_.name = "远征占领时间奖励面板";
         _loc1_.prop = {
            "dx":200,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO149",_PanelLayer_UIPropVO149);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO236_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO236 = _loc1_;
         _loc1_.name = "魔印图册";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO236",_PanelLayer_UIPropVO236);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO52_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO52 = _loc1_;
         _loc1_.name = "建筑管理";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO52",_PanelLayer_UIPropVO52);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO75_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO75 = _loc1_;
         _loc1_.name = "模板背包栏";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO75",_PanelLayer_UIPropVO75);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO98_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO98 = _loc1_;
         _loc1_.name = "搭配送活动面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO98",_PanelLayer_UIPropVO98);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO224_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO224 = _loc1_;
         _loc1_.name = "宠物雕刻空间配置";
         _loc1_.prop = {
            "dx":50,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO224",_PanelLayer_UIPropVO224);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO63_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO63 = _loc1_;
         _loc1_.name = "染色面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO63",_PanelLayer_UIPropVO63);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO40_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO40 = _loc1_;
         _loc1_.name = "采集面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO40",_PanelLayer_UIPropVO40);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO200_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO200 = _loc1_;
         _loc1_.name = "秘境结束弹窗";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO200",_PanelLayer_UIPropVO200);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO86_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO86 = _loc1_;
         _loc1_.name = "多选物品选择框";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO86",_PanelLayer_UIPropVO86);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO125_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO125 = _loc1_;
         _loc1_.name = "暑期夏令营之小游戏";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO125",_PanelLayer_UIPropVO125);
         return _loc1_;
      }
      
      private function _PanelLayer_Array1_i() : Array
      {
         var _loc1_:Array = [_PanelLayer_UIPropVO1_i(),_PanelLayer_UIPropVO2_i(),_PanelLayer_UIPropVO3_i(),_PanelLayer_UIPropVO4_i(),_PanelLayer_UIPropVO5_i(),_PanelLayer_UIPropVO6_i(),_PanelLayer_UIPropVO7_i(),_PanelLayer_UIPropVO8_i(),_PanelLayer_UIPropVO9_i(),_PanelLayer_UIPropVO10_i(),_PanelLayer_UIPropVO11_i(),_PanelLayer_UIPropVO12_i(),_PanelLayer_UIPropVO13_i(),_PanelLayer_UIPropVO14_i(),_PanelLayer_UIPropVO15_i(),_PanelLayer_UIPropVO16_i(),_PanelLayer_UIPropVO17_i(),_PanelLayer_UIPropVO18_i(),_PanelLayer_UIPropVO19_i(),_PanelLayer_UIPropVO20_i(),_PanelLayer_UIPropVO21_i(),_PanelLayer_UIPropVO22_i(),_PanelLayer_UIPropVO23_i(),_PanelLayer_UIPropVO24_i(),_PanelLayer_UIPropVO25_i(),_PanelLayer_UIPropVO26_i(),_PanelLayer_UIPropVO27_i(),_PanelLayer_UIPropVO28_i(),_PanelLayer_UIPropVO29_i(),_PanelLayer_UIPropVO30_i(),_PanelLayer_UIPropVO31_i(),_PanelLayer_UIPropVO32_i(),_PanelLayer_UIPropVO33_i(),_PanelLayer_UIPropVO34_i(),_PanelLayer_UIPropVO35_i(),_PanelLayer_UIPropVO36_i(),_PanelLayer_UIPropVO37_i()
         ,_PanelLayer_UIPropVO38_i(),_PanelLayer_UIPropVO39_i(),_PanelLayer_UIPropVO40_i(),_PanelLayer_UIPropVO41_i(),_PanelLayer_UIPropVO42_i(),_PanelLayer_UIPropVO43_i(),_PanelLayer_UIPropVO44_i(),_PanelLayer_UIPropVO45_i(),_PanelLayer_UIPropVO46_i(),_PanelLayer_UIPropVO47_i(),_PanelLayer_UIPropVO48_i(),_PanelLayer_UIPropVO49_i(),_PanelLayer_UIPropVO50_i(),_PanelLayer_UIPropVO51_i(),_PanelLayer_UIPropVO52_i(),_PanelLayer_UIPropVO53_i(),_PanelLayer_UIPropVO54_i(),_PanelLayer_UIPropVO55_i(),_PanelLayer_UIPropVO56_i(),_PanelLayer_UIPropVO57_i(),_PanelLayer_UIPropVO58_i(),_PanelLayer_UIPropVO59_i(),_PanelLayer_UIPropVO60_i(),_PanelLayer_UIPropVO61_i(),_PanelLayer_UIPropVO62_i(),_PanelLayer_UIPropVO63_i(),_PanelLayer_UIPropVO64_i(),_PanelLayer_UIPropVO65_i(),_PanelLayer_UIPropVO66_i(),_PanelLayer_UIPropVO67_i(),_PanelLayer_UIPropVO68_i(),_PanelLayer_UIPropVO69_i(),_PanelLayer_UIPropVO70_i(),_PanelLayer_UIPropVO71_i(),_PanelLayer_UIPropVO72_i(),_PanelLayer_UIPropVO73_i(),_PanelLayer_UIPropVO74_i(),_PanelLayer_UIPropVO75_i()
         ,_PanelLayer_UIPropVO76_i(),_PanelLayer_UIPropVO77_i(),_PanelLayer_UIPropVO78_i(),_PanelLayer_UIPropVO79_i(),_PanelLayer_UIPropVO80_i(),_PanelLayer_UIPropVO81_i(),_PanelLayer_UIPropVO82_i(),_PanelLayer_UIPropVO83_i(),_PanelLayer_UIPropVO84_i(),_PanelLayer_UIPropVO85_i(),_PanelLayer_UIPropVO86_i(),_PanelLayer_UIPropVO87_i(),_PanelLayer_UIPropVO88_i(),_PanelLayer_UIPropVO89_i(),_PanelLayer_UIPropVO90_i(),_PanelLayer_UIPropVO91_i(),_PanelLayer_UIPropVO92_i(),_PanelLayer_UIPropVO93_i(),_PanelLayer_UIPropVO94_i(),_PanelLayer_UIPropVO95_i(),_PanelLayer_UIPropVO96_i(),_PanelLayer_UIPropVO97_i(),_PanelLayer_UIPropVO98_i(),_PanelLayer_UIPropVO99_i(),_PanelLayer_UIPropVO100_i(),_PanelLayer_UIPropVO101_i(),_PanelLayer_UIPropVO102_i(),_PanelLayer_UIPropVO103_i(),_PanelLayer_UIPropVO104_i(),_PanelLayer_UIPropVO105_i(),_PanelLayer_UIPropVO106_i(),_PanelLayer_UIPropVO107_i(),_PanelLayer_UIPropVO108_i(),_PanelLayer_UIPropVO109_i(),_PanelLayer_UIPropVO110_i(),_PanelLayer_UIPropVO111_i(),_PanelLayer_UIPropVO112_i()
         ,_PanelLayer_UIPropVO113_i(),_PanelLayer_UIPropVO114_i(),_PanelLayer_UIPropVO115_i(),_PanelLayer_UIPropVO116_i(),_PanelLayer_UIPropVO117_i(),_PanelLayer_UIPropVO118_i(),_PanelLayer_UIPropVO119_i(),_PanelLayer_UIPropVO120_i(),_PanelLayer_UIPropVO121_i(),_PanelLayer_UIPropVO122_i(),_PanelLayer_UIPropVO123_i(),_PanelLayer_UIPropVO124_i(),_PanelLayer_UIPropVO125_i(),_PanelLayer_UIPropVO126_i(),_PanelLayer_UIPropVO127_i(),_PanelLayer_UIPropVO128_i(),_PanelLayer_UIPropVO129_i(),_PanelLayer_UIPropVO130_i(),_PanelLayer_UIPropVO131_i(),_PanelLayer_UIPropVO132_i(),_PanelLayer_UIPropVO133_i(),_PanelLayer_UIPropVO134_i(),_PanelLayer_UIPropVO135_i(),_PanelLayer_UIPropVO136_i(),_PanelLayer_UIPropVO137_i(),_PanelLayer_UIPropVO138_i(),_PanelLayer_UIPropVO139_i(),_PanelLayer_UIPropVO140_i(),_PanelLayer_UIPropVO141_i(),_PanelLayer_UIPropVO142_i(),_PanelLayer_UIPropVO143_i(),_PanelLayer_UIPropVO144_i(),_PanelLayer_UIPropVO145_i(),_PanelLayer_UIPropVO146_i(),_PanelLayer_UIPropVO147_i(),_PanelLayer_UIPropVO148_i()
         ,_PanelLayer_UIPropVO149_i(),_PanelLayer_UIPropVO150_i(),_PanelLayer_UIPropVO151_i(),_PanelLayer_UIPropVO152_i(),_PanelLayer_UIPropVO153_i(),_PanelLayer_UIPropVO154_i(),_PanelLayer_UIPropVO155_i(),_PanelLayer_UIPropVO156_i(),_PanelLayer_UIPropVO157_i(),_PanelLayer_UIPropVO158_i(),_PanelLayer_UIPropVO159_i(),_PanelLayer_UIPropVO160_i(),_PanelLayer_UIPropVO161_i(),_PanelLayer_UIPropVO162_i(),_PanelLayer_UIPropVO163_i(),_PanelLayer_UIPropVO164_i(),_PanelLayer_UIPropVO165_i(),_PanelLayer_UIPropVO166_i(),_PanelLayer_UIPropVO167_i(),_PanelLayer_UIPropVO168_i(),_PanelLayer_UIPropVO169_i(),_PanelLayer_UIPropVO170_i(),_PanelLayer_UIPropVO171_i(),_PanelLayer_UIPropVO172_i(),_PanelLayer_UIPropVO173_i(),_PanelLayer_UIPropVO174_i(),_PanelLayer_UIPropVO175_i(),_PanelLayer_UIPropVO176_i(),_PanelLayer_UIPropVO177_i(),_PanelLayer_UIPropVO178_i(),_PanelLayer_UIPropVO179_i(),_PanelLayer_UIPropVO180_i(),_PanelLayer_UIPropVO181_i(),_PanelLayer_UIPropVO182_i(),_PanelLayer_UIPropVO183_i(),_PanelLayer_UIPropVO184_i()
         ,_PanelLayer_UIPropVO185_i(),_PanelLayer_UIPropVO186_i(),_PanelLayer_UIPropVO187_i(),_PanelLayer_UIPropVO188_i(),_PanelLayer_UIPropVO189_i(),_PanelLayer_UIPropVO190_i(),_PanelLayer_UIPropVO191_i(),_PanelLayer_UIPropVO192_i(),_PanelLayer_UIPropVO193_i(),_PanelLayer_UIPropVO194_i(),_PanelLayer_UIPropVO195_i(),_PanelLayer_UIPropVO196_i(),_PanelLayer_UIPropVO197_i(),_PanelLayer_UIPropVO198_i(),_PanelLayer_UIPropVO199_i(),_PanelLayer_UIPropVO200_i(),_PanelLayer_UIPropVO201_i(),_PanelLayer_UIPropVO202_i(),_PanelLayer_UIPropVO203_i(),_PanelLayer_UIPropVO204_i(),_PanelLayer_UIPropVO205_i(),_PanelLayer_UIPropVO206_i(),_PanelLayer_UIPropVO207_i(),_PanelLayer_UIPropVO208_i(),_PanelLayer_UIPropVO209_i(),_PanelLayer_UIPropVO210_i(),_PanelLayer_UIPropVO211_i(),_PanelLayer_UIPropVO212_i(),_PanelLayer_UIPropVO213_i(),_PanelLayer_UIPropVO214_i(),_PanelLayer_UIPropVO215_i(),_PanelLayer_UIPropVO216_i(),_PanelLayer_UIPropVO217_i(),_PanelLayer_UIPropVO218_i(),_PanelLayer_UIPropVO219_i(),_PanelLayer_UIPropVO220_i()
         ,_PanelLayer_UIPropVO221_i(),_PanelLayer_UIPropVO222_i(),_PanelLayer_UIPropVO223_i(),_PanelLayer_UIPropVO224_i(),_PanelLayer_UIPropVO225_i(),_PanelLayer_UIPropVO226_i(),_PanelLayer_UIPropVO227_i(),_PanelLayer_UIPropVO228_i(),_PanelLayer_UIPropVO229_i(),_PanelLayer_UIPropVO230_i(),_PanelLayer_UIPropVO231_i(),_PanelLayer_UIPropVO232_i(),_PanelLayer_UIPropVO233_i(),_PanelLayer_UIPropVO234_i(),_PanelLayer_UIPropVO235_i(),_PanelLayer_UIPropVO236_i(),_PanelLayer_UIPropVO237_i(),_PanelLayer_UIPropVO238_i(),_PanelLayer_UIPropVO239_i(),_PanelLayer_UIPropVO240_i(),_PanelLayer_UIPropVO241_i(),_PanelLayer_UIPropVO242_i(),_PanelLayer_UIPropVO243_i(),_PanelLayer_UIPropVO244_i()];
         uiList = _loc1_;
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO9_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO9 = _loc1_;
         _loc1_.name = "帮助面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO9",_PanelLayer_UIPropVO9);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO114_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO114 = _loc1_;
         _loc1_.name = "真情回馈幸运大抽奖";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO114",_PanelLayer_UIPropVO114);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO51_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO51 = _loc1_;
         _loc1_.name = "公会仓库";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO51",_PanelLayer_UIPropVO51);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO74_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO74 = _loc1_;
         _loc1_.name = "翅膀高级合成面板";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO74",_PanelLayer_UIPropVO74);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO97_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO97 = _loc1_;
         _loc1_.name = "九层Boss(众生之劫)面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO97",_PanelLayer_UIPropVO97);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO7_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO7 = _loc1_;
         _loc1_.name = "工会面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO7",_PanelLayer_UIPropVO7);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO100_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO100 = _loc1_;
         _loc1_.name = "宠物炼命经验注入面板";
         _loc1_.prop = {
            "dx":410,
            "dy":185
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO100",_PanelLayer_UIPropVO100);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO61_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO61 = _loc1_;
         _loc1_.name = "许愿背包面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO61",_PanelLayer_UIPropVO61);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO73_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO73 = _loc1_;
         _loc1_.name = "小精灵";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO73",_PanelLayer_UIPropVO73);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO96_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO96 = _loc1_;
         _loc1_.name = "新服内置活动面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO96",_PanelLayer_UIPropVO96);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO235_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO235 = _loc1_;
         _loc1_.name = "幻魔塔修炼";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO235",_PanelLayer_UIPropVO235);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO112_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO112 = _loc1_;
         _loc1_.name = "坐骑面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO112",_PanelLayer_UIPropVO112);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO72_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO72 = _loc1_;
         _loc1_.name = "翅膀改造面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO72",_PanelLayer_UIPropVO72);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO95_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO95 = _loc1_;
         _loc1_.name = "扫荡面板";
         _loc1_.prop = {
            "dx":300,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO95",_PanelLayer_UIPropVO95);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO85_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO85 = _loc1_;
         _loc1_.name = "宠物竞技上周排行榜";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO85",_PanelLayer_UIPropVO85);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO111_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO111 = _loc1_;
         _loc1_.name = "PVP战报面板";
         _loc1_.prop = {
            "dx":335,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO111",_PanelLayer_UIPropVO111);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO134_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO134 = _loc1_;
         _loc1_.name = "找回面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO134",_PanelLayer_UIPropVO134);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO157_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO157 = _loc1_;
         _loc1_.name = "宝石封印功能面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO157",_PanelLayer_UIPropVO157);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO8_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO8 = _loc1_;
         _loc1_.name = "工会创建面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO8",_PanelLayer_UIPropVO8);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO102_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO102 = _loc1_;
         _loc1_.name = "VIP面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO102",_PanelLayer_UIPropVO102);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO19_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO19 = _loc1_;
         _loc1_.name = "任务面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO19",_PanelLayer_UIPropVO19);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO148_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO148 = _loc1_;
         _loc1_.name = "远征战斗积分奖励面板";
         _loc1_.prop = {
            "dx":200,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO148",_PanelLayer_UIPropVO148);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO123_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO123 = _loc1_;
         _loc1_.name = "迷阵玩法规则面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO123",_PanelLayer_UIPropVO123);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO60_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO60 = _loc1_;
         _loc1_.name = "许愿面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO60",_PanelLayer_UIPropVO60);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO83_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO83 = _loc1_;
         _loc1_.name = "宠物竞技面板";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO83",_PanelLayer_UIPropVO83);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO146_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO146 = _loc1_;
         _loc1_.name = "魔力远征战斗准备面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO146",_PanelLayer_UIPropVO146);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO169_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO169 = _loc1_;
         _loc1_.name = "暑期小游戏(赛马)面板";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO169",_PanelLayer_UIPropVO169);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO190_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO190 = _loc1_;
         _loc1_.name = "欢乐消除";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO190",_PanelLayer_UIPropVO190);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO122_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO122 = _loc1_;
         _loc1_.name = "迷阵事件信息面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO122",_PanelLayer_UIPropVO122);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO145_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO145 = _loc1_;
         _loc1_.name = "魔力远征BOSS单位置介绍面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO145",_PanelLayer_UIPropVO145);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO168_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO168 = _loc1_;
         _loc1_.name = "暑期小游戏(三消)面板";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO168",_PanelLayer_UIPropVO168);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO50_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO50 = _loc1_;
         _loc1_.name = "公会捐献";
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO50",_PanelLayer_UIPropVO50);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO233_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO233 = _loc1_;
         _loc1_.name = "特训课程";
         _loc1_.prop = {
            "dx":10,
            "dy":10
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO233",_PanelLayer_UIPropVO233);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO6_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO6 = _loc1_;
         _loc1_.name = "聊天面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO6",_PanelLayer_UIPropVO6);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO124_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO124 = _loc1_;
         _loc1_.name = "迷阵描述面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO124",_PanelLayer_UIPropVO124);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO62_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO62 = _loc1_;
         _loc1_.name = "临时背包面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO62",_PanelLayer_UIPropVO62);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO211_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO211 = _loc1_;
         _loc1_.name = "携手岁月";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO211",_PanelLayer_UIPropVO211);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO113_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO113 = _loc1_;
         _loc1_.name = "转生形象转换面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO113",_PanelLayer_UIPropVO113);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO136_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO136 = _loc1_;
         _loc1_.name = "跨服战队伍信息面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO136",_PanelLayer_UIPropVO136);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO159_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO159 = _loc1_;
         _loc1_.name = "宝石封印功能面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO159",_PanelLayer_UIPropVO159);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO220_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO220 = _loc1_;
         _loc1_.name = "对对碰";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO220",_PanelLayer_UIPropVO220);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO71_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO71 = _loc1_;
         _loc1_.name = "今日活动面板";
         _loc1_.prop = {
            "dx":100,
            "dy":40
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO71",_PanelLayer_UIPropVO71);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO18_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO18 = _loc1_;
         _loc1_.name = "NPC脚本功能";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO18",_PanelLayer_UIPropVO18);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO110_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO110 = _loc1_;
         _loc1_.name = "签到有礼面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO110",_PanelLayer_UIPropVO110);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO133_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO133 = _loc1_;
         _loc1_.name = "宠物进化面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO133",_PanelLayer_UIPropVO133);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO94_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO94 = _loc1_;
         _loc1_.name = "福利计划面板";
         _loc1_.prop = {
            "dx":70,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO94",_PanelLayer_UIPropVO94);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO179_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO179 = _loc1_;
         _loc1_.name = "人物觉醒";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO179",_PanelLayer_UIPropVO179);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO101_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO101 = _loc1_;
         _loc1_.name = "卡牌游戏面板";
         _loc1_.prop = {
            "dx":85,
            "dy":75
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO101",_PanelLayer_UIPropVO101);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO147_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO147 = _loc1_;
         _loc1_.name = "远征战斗首战奖励面板";
         _loc1_.prop = {
            "dx":200,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO147",_PanelLayer_UIPropVO147);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO243_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO243 = _loc1_;
         _loc1_.name = "天空游园会";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO243",_PanelLayer_UIPropVO243);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO231_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO231 = _loc1_;
         _loc1_.name = "消除大赛";
         _loc1_.prop = {
            "dx":20,
            "dy":20
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO231",_PanelLayer_UIPropVO231);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO156_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO156 = _loc1_;
         _loc1_.name = "宝石封印";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO156",_PanelLayer_UIPropVO156);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO137_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO137 = _loc1_;
         _loc1_.name = "小精灵技能配置面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO137",_PanelLayer_UIPropVO137);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO29_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO29 = _loc1_;
         _loc1_.name = "拍卖面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO29",_PanelLayer_UIPropVO29);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO82_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO82 = _loc1_;
         _loc1_.name = "宠物战斗配置面板";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO82",_PanelLayer_UIPropVO82);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO121_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO121 = _loc1_;
         _loc1_.name = "迷阵抽奖面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO121",_PanelLayer_UIPropVO121);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO144_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO144 = _loc1_;
         _loc1_.name = "魔力远征单位置介绍面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO144",_PanelLayer_UIPropVO144);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO167_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO167 = _loc1_;
         _loc1_.name = "暑期小游戏(开垦)面板";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO167",_PanelLayer_UIPropVO167);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO232_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO232 = _loc1_;
         _loc1_.name = "双十二预购";
         _loc1_.prop = {
            "dx":20,
            "dy":20
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO232",_PanelLayer_UIPropVO232);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO5_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO5 = _loc1_;
         _loc1_.name = "角色面板";
         _loc1_.prop = {
            "dx":70,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO5",_PanelLayer_UIPropVO5);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO244_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO244 = _loc1_;
         _loc1_.name = "周年签到";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO244",_PanelLayer_UIPropVO244);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO242_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO242 = _loc1_;
         _loc1_.name = "默契答题";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO242",_PanelLayer_UIPropVO242);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO84_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO84 = _loc1_;
         _loc1_.name = "宠物竞技排行榜";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO84",_PanelLayer_UIPropVO84);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO210_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO210 = _loc1_;
         _loc1_.name = "宠物护卫";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO210",_PanelLayer_UIPropVO210);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO234_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO234 = _loc1_;
         _loc1_.name = "特训经验购买";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO234",_PanelLayer_UIPropVO234);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO135_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO135 = _loc1_;
         _loc1_.name = "跨服战面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO135",_PanelLayer_UIPropVO135);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO158_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO158 = _loc1_;
         _loc1_.name = "星碎兑换面板";
         _loc1_.prop = {
            "dx":120,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO158",_PanelLayer_UIPropVO158);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PanelLayer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PanelLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_PanelLayerWatcherSetupUtil");
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
      
      private function _PanelLayer_UIPropVO223_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO223 = _loc1_;
         _loc1_.name = "宠物雕刻空间";
         _loc1_.prop = {
            "dx":50,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO223",_PanelLayer_UIPropVO223);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO17_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO17 = _loc1_;
         _loc1_.name = "NPC功能其他";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO17",_PanelLayer_UIPropVO17);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO70_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO70 = _loc1_;
         _loc1_.name = "玩法推荐面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO70",_PanelLayer_UIPropVO70);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO93_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO93 = _loc1_;
         _loc1_.name = "世界BOSS计时面板";
         _loc1_.prop = {
            "dx":300,
            "dy":300
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO93",_PanelLayer_UIPropVO93);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO155_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO155 = _loc1_;
         _loc1_.name = "元宵节翻牌抽字活动";
         _loc1_.prop = {
            "dx":133,
            "dy":64
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO155",_PanelLayer_UIPropVO155);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO178_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO178 = _loc1_;
         _loc1_.name = "魔物手记面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO178",_PanelLayer_UIPropVO178);
         return _loc1_;
      }
      
      private function _PanelLayer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = BagPanel;
         _loc1_ = ViewManager.PANEL_BAG;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = ShopPanel;
         _loc1_ = ViewManager.PANEL_SHOP;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = AwardPanelAll;
         _loc1_ = ViewManager.PANEL_AWARD_ALL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = BankPanel;
         _loc1_ = ViewManager.PANEL_BANK;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CharactorPanel;
         _loc1_ = ViewManager.PANEL_CHARACTOR;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = ChatPanelManager;
         _loc1_ = ViewManager.PANEL_CHATMANAGER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GuildPanel;
         _loc1_ = ViewManager.PANEL_GUILD;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AddGuildPanel;
         _loc1_ = ViewManager.PANEL_ADDGUILD;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = HelpPanel;
         _loc1_ = ViewManager.PANEL_HELP;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MailManagerPanel;
         _loc1_ = ViewManager.PANEL_MAILMANAGER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MailPanel;
         _loc1_ = ViewManager.PANEL_MAIL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MapPanel;
         _loc1_ = ViewManager.PANEL_MAP;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = CharactorInfoPanel;
         _loc1_ = ViewManager.PANEL_CHARACTORINFO;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetManagerPanel;
         _loc1_ = ViewManager.PANEL_PETMANAGER;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PetPanel;
         _loc1_ = ViewManager.PANEL_PET;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = NpcFuncPanel;
         _loc1_ = ViewManager.PANEL_NPCFUNC;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = NpcFuncOther;
         _loc1_ = ViewManager.PANEL_NPCFUNCOTHER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = NpcScriptPanel;
         _loc1_ = ViewManager.PANEL_NPCSCRIPT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = QuestPanel;
         _loc1_ = ViewManager.PANEL_QUEST;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = QuestManager;
         _loc1_ = ViewManager.PANEL_QUESTMANAGER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SkillManager;
         _loc1_ = ViewManager.PANEL_SKILLMANAGER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TextPanel;
         _loc1_ = ViewManager.PANEL_TXT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TradePanel;
         _loc1_ = ViewManager.PANEL_TRADE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = UserSystemSetPanel;
         _loc1_ = ViewManager.PANEL_SYSTEM;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = EquiptFuncPanel;
         _loc1_ = ViewManager.PANEL_EQUIPTFUNC;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetFuncPanel;
         _loc1_ = ViewManager.PANEL_PETFUNC;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetAdvancedPanel;
         _loc1_ = ViewManager.PANEL_PETADVANCED;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SkillLearningPanel;
         _loc1_ = ViewManager.PANEL_LEARNSKILL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AuctionPanel;
         _loc1_ = ViewManager.PANEL_AUCTION;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PMAuctionPanel;
         _loc1_ = ViewManager.PANEL_PM_AUCTION;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = IMPanel;
         _loc1_ = ViewManager.PANEL_IM;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SystemShopPanel;
         _loc1_ = ViewManager.PANEL_SYSTEM_SHOP;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SystemShopTrolleyPanel;
         _loc1_ = ViewManager.PANEL_SYSTEM_SHOP_TROLLEY;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = GroupPanel;
         _loc1_ = ViewManager.PANEL_GROUP;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GroupRecruitPanel;
         _loc1_ = ViewManager.PANEL_GROUP_RECRUIT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GroupRecruitNewPanel;
         _loc1_ = ViewManager.PANEL_GROUP_RECRUIT_NEW;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GroupRecruitDetailPanel;
         _loc1_ = ViewManager.PANEL_GROUP_RECRUIT_DETAIL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = Treasure;
         _loc1_ = ViewManager.PANEL_TREASURE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ExchangePanel;
         _loc1_ = ViewManager.PANEL_EXCHANGE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ProductPanel;
         _loc1_ = ViewManager.PANEL_PRODUCT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = BattleSettingPanel;
         _loc1_ = ViewManager.PANEL_BATTLESET;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TitleSelectPanel;
         _loc1_ = ViewManager.PANEL_TITLE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = CallBoardPanel;
         _loc1_ = ViewManager.PANEL_CALLBOARD;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AnswerPanel;
         _loc1_ = ViewManager.PANEL_ANSWER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AutoBattleCanvas;
         _loc1_ = ViewManager.PANEL_BATTLEAUTO;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AwardPanel;
         _loc1_ = ViewManager.PANEL_AWARD;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AutoExpPanel;
         _loc1_ = ViewManager.MAIN_AUTO_EXP;
         _loc1_ = false;
         _loc1_ = BloodAddPanel;
         _loc1_ = ViewManager.PANEL_BLOODADD;
         _loc1_ = false;
         _loc1_ = ActivePanel;
         _loc1_ = ViewManager.PANEL_ACTIVE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GuildContribPanel;
         _loc1_ = ViewManager.PANEL_GUILDCONTRIB;
         _loc1_ = false;
         _loc1_ = GuildWarehousePanel;
         _loc1_ = ViewManager.PANEL_GUILDWAREHOUSE;
         _loc1_ = false;
         _loc1_ = ConstructionManager;
         _loc1_ = ViewManager.PANEL_CONSTRUCTIONMANAGER;
         _loc1_ = false;
         _loc1_ = BuildInfoPanel;
         _loc1_ = ViewManager.PANEL_BUILDINFO;
         _loc1_ = false;
         _loc1_ = GuildSkillDevPanel;
         _loc1_ = ViewManager.PANEL_GUILD_SKILL_DEV;
         _loc1_ = false;
         _loc1_ = GuildBuildProcess;
         _loc1_ = ViewManager.PANEL_BUILDPROCESS;
         _loc1_ = false;
         _loc1_ = GuildHelpPanel;
         _loc1_ = ViewManager.PANEL_GUILDHELP;
         _loc1_ = false;
         _loc1_ = NpcShowMsgPanel;
         _loc1_ = ViewManager.PANEL_NPCSHOWMSG;
         _loc1_ = false;
         _loc1_ = NpcShowRankPanel;
         _loc1_ = ViewManager.PANEL_NPCSHOWRANK;
         _loc1_ = false;
         _loc1_ = LifeSkillPanel;
         _loc1_ = ViewManager.PANEL_LIFESKILL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = LottoPanel;
         _loc1_ = ViewManager.PANEL_LOTTO;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = LottoBagPanel;
         _loc1_ = ViewManager.PANEL_LOTTO_BAG;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TemporaryBagPanel;
         _loc1_ = ViewManager.PANEL_TEMPORARY_BAG;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ChangeColorPanel;
         _loc1_ = ViewManager.PANEL_CHANGE_COLOR;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ChangeWingColorPanel;
         _loc1_ = ViewManager.PANEL_WING_COLOR;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MarriageManagerPanel;
         _loc1_ = ViewManager.PANEL_MARRIAGE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WeddingBookPanel;
         _loc1_ = ViewManager.PANEL_WEDDING_BOOK;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AchievementPanel;
         _loc1_ = ViewManager.PANEL_ACHIEVE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AchievementComparePanel;
         _loc1_ = ViewManager.PANEL_ACHIEVE_WATCHING;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = CrossBattleRank;
         _loc1_ = ViewManager.PANEL_CROSS_BATTLE_RANK;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GameIntroPanel;
         _loc1_ = ViewManager.PANEL_GAMEINTRO;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = DailyActPanel;
         _loc1_ = ViewManager.DAILY_ACTIVITY;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = WingFuncPanel;
         _loc1_ = ViewManager.PANEL_WING_FUNC;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = FairyManagerPanel;
         _loc1_ = ViewManager.PANEL_FAIRY_MANAGER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WingAdvancedPanel;
         _loc1_ = ViewManager.PANEL_WING_ADVANCED;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TempBagSlot;
         _loc1_ = ViewManager.POP_TEMP_BAG_SLOT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = DetailPropPanel;
         _loc1_ = ViewManager.DETAIL_PROP_PANEL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = DetailPropPanel;
         _loc1_ = ViewManager.DETAIL_PROP_PANEL_PET;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = QuestioningPanel;
         _loc1_ = ViewManager.PANEL_QUESTIONING;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = QxWishesPanel;
         _loc1_ = ViewManager.PANEL_SHOW_LOVE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = VDAYPanel;
         _loc1_ = ViewManager.PANEL_VDAY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = FazendaPanel;
         _loc1_ = ViewManager.PANEL_FAZENDA;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetFightConf;
         _loc1_ = ViewManager.PANEL_PETFIGHT_CONF;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetArenaPanel;
         _loc1_ = ViewManager.PANEL_PET_ARENA;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetArenaRankPanel;
         _loc1_ = ViewManager.PANEL_PET_ARENA_RANK;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetArenaPrevRankPanel;
         _loc1_ = ViewManager.PANEL_PET_ARENA_PREV_RANK;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MultiItemPanel;
         _loc1_ = ViewManager.PANEL_MULITI_ITEM;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AddictEnterPanel;
         _loc1_ = ViewManager.MAIN_ADDICT_INFO;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = StarAdditionPanel;
         _loc1_ = ViewManager.PANEL_STAR_ADDITION;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = StarEffectPanel;
         _loc1_ = ViewManager.PANEL_STAR_EFFECT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = StarSpeedUpPanel;
         _loc1_ = ViewManager.PANEL_STAR_SPEED_UP;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MailNoticePanel;
         _loc1_ = ViewManager.PANEL_MAIL_NOTICE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WbResult;
         _loc1_ = ViewManager.PANEL_WB_RESULT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WbTimerCanvas;
         _loc1_ = ViewManager.PANEL_WB_TIMER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WelfarePanel;
         _loc1_ = ViewManager.PANEL_WELFARE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TaskSweepPanel;
         _loc1_ = ViewManager.PANEL_TASKSWEEP;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = NewServerActPanel;
         _loc1_ = ViewManager.PANEL_NEWSERVER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = NineBossPanel;
         _loc1_ = ViewManager.NINE_BOSS_PANEL;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = SendCombineActPanel;
         _loc1_ = ViewManager.PANEL_SENDCOMBINE;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PetSoulPanel;
         _loc1_ = ViewManager.PANEL_PET_SOUL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SoulExpPanel;
         _loc1_ = ViewManager.PANEL_SOUL_EXP;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CardGamePanel;
         _loc1_ = ViewManager.PANEL_CARDGAME;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PmPanel;
         _loc1_ = ViewManager.PANEL_PM;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PmInfoPanel;
         _loc1_ = ViewManager.PANEL_PM_INFO;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = JewelExchagePanel;
         _loc1_ = ViewManager.PANEL_JEWEL_EXCHANGE;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = VipShopPanel;
         _loc1_ = ViewManager.PANEL_VIP_SHOP;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = LotteryPanel;
         _loc1_ = ViewManager.PANEL_LOTTERY;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = DoubleElevenPanel;
         _loc1_ = ViewManager.PANEL_DOUBLE_ELEVEN;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = LotteryBagPanel;
         _loc1_ = ViewManager.PANEL_LOTTERY_BAG;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = VipSuccinctPanel;
         _loc1_ = ViewManager.PANEL_VIP_SUCCINCT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SignInPanel;
         _loc1_ = ViewManager.PANEL_SIGN_IN;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PVPResultPanel;
         _loc1_ = ViewManager.PANEL_PVP_RESULT;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MountPanel;
         _loc1_ = ViewManager.PANEL_MOUNT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ChangeRbResPanel;
         _loc1_ = ViewManager.PANEL_CHANGE_RES;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = LuckDrawPanel;
         _loc1_ = ViewManager.PANEL_LUCK_DRAW;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = LuckDrawBagPanel;
         _loc1_ = ViewManager.PANEL_LUCK_DRAW_BAG;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MagicArrayPanel;
         _loc1_ = ViewManager.PANEL_MAGIC_ARRAY;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MilitaryPanel;
         _loc1_ = ViewManager.PANEL_MILITARY;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MazePanel;
         _loc1_ = ViewManager.PANEL_MAZE;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MazeQuestionPanel;
         _loc1_ = ViewManager.PANEL_MAZE_QUESTION;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MazeShopPanel;
         _loc1_ = ViewManager.PANEL_MAZE_SHOP;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MazeLotteryPanel;
         _loc1_ = ViewManager.PANEL_MAZE_LOTTERY;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MazeEventInfoPanel;
         _loc1_ = ViewManager.PANEL_MAZE_EVENT_INFO;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MazePlayRulePanel;
         _loc1_ = ViewManager.PANEL_MAZE_PLAY_RULE;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MazeDiscPanel;
         _loc1_ = ViewManager.PANEL_MAZE_DISC;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = SmallGamePanel;
         _loc1_ = ViewManager.PANEL_Small_Game;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SmallGameHideSeekPanel;
         _loc1_ = ViewManager.PANEL_Small_Game_HideSeek;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = SmallGameTwoSamePanel;
         _loc1_ = ViewManager.PANEL_Small_Game_TwoSame;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = SmallGameMagicPowerPanel;
         _loc1_ = ViewManager.PANEL_Small_Game_MagicPower;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = SmallGameSpeedPanel;
         _loc1_ = ViewManager.PANEL_Small_Game_Speed;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MedalPanel;
         _loc1_ = ViewManager.PANEL_MEDAL;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = AstrologicPanel;
         _loc1_ = ViewManager.PANEL_ASTROLOGIC;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PetHandbook;
         _loc1_ = ViewManager.PANEL_PET_HANDBOOK;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PetEvolutionPanel;
         _loc1_ = ViewManager.PANEL_PET_EVOLUTION;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = FindBackPanel;
         _loc1_ = ViewManager.PANEL_FINDBACK;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossFightPanel;
         _loc1_ = ViewManager.PANEL_CROSS_FIGHT;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossFightTeamInfo;
         _loc1_ = ViewManager.PANEL_CROSS_FIGHT_TEAM;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = FairySkillConfigCanvas;
         _loc1_ = ViewManager.PANEL_FAIRY_SKILL_CONFIG;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = BattleInfoCanvas;
         _loc1_ = ViewManager.PANEL_BATTLE_INFO;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossTeamFightPanel;
         _loc1_ = ViewManager.PANEL_CROSS_TEAM_FIGHT;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossTeamFightBetPanel;
         _loc1_ = ViewManager.PANEL_CROSS_TEAM_FIGHT_BET;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionTotalPanel;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_TOTAL;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionSinglePanel;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_SINGLE;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionSingleInfoPanel;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_SINGLE_INFO;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionAreaPanel;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_AREA;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionBossAreaPanel;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_BOSS_AREA;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionFightPanel;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_FIGHT;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionFirstAward;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_FIRST_AWARD;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionScoreAward;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_SCORE_AWARD;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionTimeAward;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_TIME_AWARD;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionBattleInfo;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_BATTLE_INFO;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = CrossContentionRank;
         _loc1_ = ViewManager.PANEL_CROSS_CONTENTION_RANK;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PetTalentPanel;
         _loc1_ = ViewManager.PANEL_PET_TALENT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetTalentFuncPanel;
         _loc1_ = ViewManager.PANEL_PET_TALENT_FUNC;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TreasurePanel;
         _loc1_ = ViewManager.PANEL_TREASURE_BOWL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ExtractCardActivity;
         _loc1_ = ViewManager.PANEL_EXTRACT_CARD_ACTIVITY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = StoneSealPanel;
         _loc1_ = ViewManager.PANEL_STONE_SEAL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = StoneSealBoreCanvas;
         _loc1_ = ViewManager.PANEL_STONE_SEAL_BORE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = StarExchange;
         _loc1_ = ViewManager.PANEL_STAR_EXCHANGE;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = FlopPassPanel;
         _loc1_ = ViewManager.PANEL_FLOP_PASS;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = HulaPanel;
         _loc1_ = ViewManager.PANEL_HULA;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ReturnRewardPanel;
         _loc1_ = ViewManager.PANEL_RETURN_REWARD;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TrialsPassMainPanel;
         _loc1_ = ViewManager.PANEL_TRIALS;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TrialsPassAwardPanel;
         _loc1_ = ViewManager.PANEL_TRIALS_AWARD;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = DotaPanel;
         _loc1_ = ViewManager.PANEL_DOTA;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GrouponPanel;
         _loc1_ = ViewManager.PANEL_GROUPON;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SummerGames;
         _loc1_ = ViewManager.PANEL_SUMMER_GAME;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = Wasteland;
         _loc1_ = ViewManager.PANEL_SUMMER_GAME_WASTELAND;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ThreeDiabetes;
         _loc1_ = ViewManager.PANEL_SUMMER_GAME_DIABETES;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = HorseRace;
         _loc1_ = ViewManager.PANEL_SUMMER_GAME_HORSE_RACE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WorldCupPanel;
         _loc1_ = ViewManager.PANEL_WORLD_CUP;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WorldCupVSPanel;
         _loc1_ = ViewManager.PANEL_WORLD_CUP_VS;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = DressPanel;
         _loc1_ = ViewManager.PANEL_DRESS;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = DecoratePanel;
         _loc1_ = ViewManager.PANEL_DECORATE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AutoTaskPanel;
         _loc1_ = ViewManager.PANEL_AUTOTASK;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = RecipeExchangePanel;
         _loc1_ = ViewManager.PANEL_RECIPE_EXCHANGE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WorldCupChangePanel;
         _loc1_ = ViewManager.PANEL_WORLD_CUP_CHANGE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = NpcShopPanel;
         _loc1_ = ViewManager.PANEL_NPC_SHOP;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = BossDailyPanel;
         _loc1_ = ViewManager.PANEL_BOSS_DAILY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AwakenPanel;
         _loc1_ = ViewManager.PANEL_AWAKEN;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WaWaGamePanel;
         _loc1_ = ViewManager.PANEL_WAWA_GAME;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WaWaChangePanel;
         _loc1_ = ViewManager.PANEL_WAWA_CHANGE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ChargeNoticePanel;
         _loc1_ = ViewManager.PANEL_CHARGE_NOTICE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MysteryFurnace;
         _loc1_ = ViewManager.PANEL_MYSTERY_FURNACE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TrainSoulPanel;
         _loc1_ = ViewManager.PANEL_TRAIN_SOUL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = JuHuaSuanAlertPanel;
         _loc1_ = ViewManager.PANEL_JUHUASUAN_ALERT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = JuHuaSuanPanel;
         _loc1_ = ViewManager.PANEL_JUHUASUAN;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ManJiuJianPanel;
         _loc1_ = ViewManager.PANEL_MANJIUJIAN;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = RebateEverydayPanel;
         _loc1_ = ViewManager.PANEL_REBATEEVERYDAY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = RebateEverydayAlertPanel;
         _loc1_ = ViewManager.PANEL_REBATEEVERYDAY_ALERT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TripleTownPanel;
         _loc1_ = ViewManager.PANEL_TRIPLE_TOWN;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MonthWelfarePanel;
         _loc1_ = ViewManager.PANEL_MONTHWELFARE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MonthWelfareAlertPanel;
         _loc1_ = ViewManager.PANEL_MONTHWELFARE_ALERT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MonthWelfareBagPanel;
         _loc1_ = ViewManager.PANEL_MONTHWELFARE_BAG;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = HeiYaoShiPanel;
         _loc1_ = ViewManager.PANEL_HEIYAOSHI;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = HeiyaoshiAlertPanel;
         _loc1_ = ViewManager.PANEL_HEIYAOSHI_ALERT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PRSPanel;
         _loc1_ = ViewManager.PANEL_PET_REAl_SOUL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SecretTreasureHuntPanel;
         _loc1_ = ViewManager.PANEL_SECRET_TREASUREHUNT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SecretTreasureHuntAlertPanel;
         _loc1_ = ViewManager.PANEL_SECRET_TREASUREHUNT_ALERT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SecretTreasureHuntAlertOne;
         _loc1_ = ViewManager.PANEL_SECRET_TREASUREHUNT_ONE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SecretTreasureHuntEnd;
         _loc1_ = ViewManager.PANEL_SECRET_TREASUREHUNT_END;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = SecretTreasureHuntAutoPlay;
         _loc1_ = ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = WarSpritePanel;
         _loc1_ = ViewManager.PANEL_WAR_BATTLE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = HappyFrontLinePanel;
         _loc1_ = ViewManager.PANEL_HAPPYFRONTLINE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AnniversaryPanel;
         _loc1_ = ViewManager.PANEL_ANNIVERSARY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = FarmMaster;
         _loc1_ = ViewManager.PANEL_FARMMASTER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = StoneMaster;
         _loc1_ = ViewManager.PANEL_STONEMASTER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = CubeMaster;
         _loc1_ = ViewManager.PANEL_CUBEMASTER;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MonsterHeartPanel;
         _loc1_ = ViewManager.PANEL_MONSTERHEART;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetGuardPanel;
         _loc1_ = ViewManager.PANEL_PETGUARD;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetGuardInSidePanel;
         _loc1_ = ViewManager.PANEL_PETGUARDINSIDE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = DailySignInPanel;
         _loc1_ = ViewManager.PANEL_DAILYSIGNINACT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MagicCrystalPanel;
         _loc1_ = ViewManager.PANEL_MAGICCRYSTAL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = StoneToGoldActPanel;
         _loc1_ = ViewManager.PANEL_STONETOGOLDACT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = QiLingPanel;
         _loc1_ = ViewManager.PANEL_QILING;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MoJinActPanel;
         _loc1_ = ViewManager.PANEL_MOJINACT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetStonePanel;
         _loc1_ = ViewManager.PANEL_PET_STONE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AddOpePanel;
         _loc1_ = ViewManager.PANEL_ADD_OPE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ExplorerMedalPanel;
         _loc1_ = ViewManager.PANEL_EXPLORER_MEDAL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = Sudoku;
         _loc1_ = ViewManager.PANEL_SUDOKU;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = DuiduiPeng;
         _loc1_ = ViewManager.PANEL_DUIDUIPENG;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ShowTimePnael;
         _loc1_ = ViewManager.PANEL_SHOWTIME;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AnniversaryTurntable;
         _loc1_ = ViewManager.PANEL_ANNI_ZHUANPAN;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetPVESystem;
         _loc1_ = ViewManager.PANEL_PET_PVE;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetPVEConfigPanel;
         _loc1_ = ViewManager.PANEL_PET_PVE_CONFIG;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetArenaActivityPanel;
         _loc1_ = ViewManager.PANEL_PET_ARENA_ACTIVITY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetArenaActivityRankPanel;
         _loc1_ = ViewManager.PANEL_PET_ARENA_ACTIVITY_RANK;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetFightConfActivity;
         _loc1_ = ViewManager.PANEL_PETFIGHT_CONF_ACTIVITY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PetArenaPrevRankActivityPanel;
         _loc1_ = ViewManager.PANEL_PET_ARENA_PREV_ACTIVITY_RANK;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PKGamePanel;
         _loc1_ = ViewManager.PANEL_PK_GAME;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = ConsumeNoticePanel;
         _loc1_ = ViewManager.PANEL_CONSUME_NOTICE_ACTIVITY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = XiaochudasaiPanel;
         _loc1_ = ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = PrePurchasePanel;
         _loc1_ = ViewManager.PANEL_PREPURCHASE_ACTIVITY;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = texunkecheng;
         _loc1_ = ViewManager.PANEL_TEXUNKECHENG_ACTIVITY;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = TXKCEXPPanel;
         _loc1_ = ViewManager.PANEL_TEXUNKECHENG_EXP_PANEL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = XiulianshiPanel;
         _loc1_ = ViewManager.PANEL_XIULIAN_PANEL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = Moyintuce;
         _loc1_ = ViewManager.PANEL_MOYINTUCE_PANEL;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = RedEnvelopePanel;
         _loc1_ = ViewManager.PANEL_REDENVELOPE_PANEL;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MCZD;
         _loc1_ = ViewManager.PANEL_MCZD;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = MCZDPetFightConf;
         _loc1_ = ViewManager.PANEL_MCZD_PETFIGHT_CONF;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MCZDTotalRankPanel;
         _loc1_ = ViewManager.PANEL_MCZD_ALL_RANK;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = JXHD;
         _loc1_ = ViewManager.PANEL_JXHD;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = MQDTPanel;
         _loc1_ = ViewManager.PANEL_MQDT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TKYYHInfoPanel;
         _loc1_ = ViewManager.PANEL_TKYYHInfo;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = AnniversarySignInPanel;
         _loc1_ = ViewManager.PANEL_ANNIVERSARYSIGNIN;
         _loc1_ = false;
         _loc1_ = true;
      }
      
      private function _PanelLayer_UIPropVO230_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO230 = _loc1_;
         _loc1_.name = "消费预告";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO230",_PanelLayer_UIPropVO230);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO132_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO132 = _loc1_;
         _loc1_.name = "怪物图鉴面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO132",_PanelLayer_UIPropVO132);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO221_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO221 = _loc1_;
         _loc1_.name = "魔力之星";
         _loc1_.prop = {
            "dx":50,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO221",_PanelLayer_UIPropVO221);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO212_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO212 = _loc1_;
         _loc1_.name = "幻能水晶";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO212",_PanelLayer_UIPropVO212);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO28_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO28 = _loc1_;
         _loc1_.name = "技能学习面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO28",_PanelLayer_UIPropVO28);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO81_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO81 = _loc1_;
         _loc1_.name = "庄园面板";
         _loc1_.prop = {
            "dx":60,
            "dy":20
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO81",_PanelLayer_UIPropVO81);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO120_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO120 = _loc1_;
         _loc1_.name = "迷阵商城面板";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO120",_PanelLayer_UIPropVO120);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO143_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO143 = _loc1_;
         _loc1_.name = "魔力远征单区介绍面板";
         _loc1_.prop = {
            "dx":300,
            "dy":200
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO143",_PanelLayer_UIPropVO143);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO166_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO166 = _loc1_;
         _loc1_.name = "暑期小游戏面板";
         _loc1_.prop = {
            "dx":100,
            "dy":30
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO166",_PanelLayer_UIPropVO166);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO189_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO189 = _loc1_;
         _loc1_.name = "天天返利弹窗";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO189",_PanelLayer_UIPropVO189);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO238_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO238 = _loc1_;
         _loc1_.name = "萌宠智斗";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO238",_PanelLayer_UIPropVO238);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO4_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO4 = _loc1_;
         _loc1_.name = "仓库面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO4",_PanelLayer_UIPropVO4);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO241_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO241 = _loc1_;
         _loc1_.name = "惊喜活动";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO241",_PanelLayer_UIPropVO241);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO92_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO92 = _loc1_;
         _loc1_.name = "世界BOSS活动结算面板";
         _loc1_.prop = {
            "dx":200,
            "dy":150
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO92",_PanelLayer_UIPropVO92);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO39_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO39 = _loc1_;
         _loc1_.name = "充值面板";
         _loc1_.prop = {
            "dx":307,
            "dy":178
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO39",_PanelLayer_UIPropVO39);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO154_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO154 = _loc1_;
         _loc1_.name = "聚宝盆面板";
         _loc1_.prop = {
            "dx":133,
            "dy":64
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO154",_PanelLayer_UIPropVO154);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO177_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO177 = _loc1_;
         _loc1_.name = "结晶商店";
         _loc1_.prop = {
            "dx":200,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO177",_PanelLayer_UIPropVO177);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO16_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO16 = _loc1_;
         _loc1_.name = "NPC功能";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO16",_PanelLayer_UIPropVO16);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO131_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO131 = _loc1_;
         _loc1_.name = "占星台面板";
         _loc1_.prop = {
            "dx":125,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO131",_PanelLayer_UIPropVO131);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO80_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO80 = _loc1_;
         _loc1_.name = "情人节活动告白面板";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO80",_PanelLayer_UIPropVO80);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO222_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO222 = _loc1_;
         _loc1_.name = "周年庆转盘";
         _loc1_.prop = {
            "dx":50,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO222",_PanelLayer_UIPropVO222);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO27_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO27 = _loc1_;
         _loc1_.name = "高级融合";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO27",_PanelLayer_UIPropVO27);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO240_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO240 = _loc1_;
         _loc1_.name = "萌宠活动排行榜";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO240",_PanelLayer_UIPropVO240);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO165_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO165 = _loc1_;
         _loc1_.name = "团购返利面板";
         _loc1_.prop = {
            "dx":55,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO165",_PanelLayer_UIPropVO165);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO188_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO188 = _loc1_;
         _loc1_.name = "天天返利";
         _loc1_.prop = {
            "dx":100,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO188",_PanelLayer_UIPropVO188);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO3_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO3 = _loc1_;
         _loc1_.name = "礼包奖励面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO3",_PanelLayer_UIPropVO3);
         return _loc1_;
      }
      
      private function _PanelLayer_UIPropVO142_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PanelLayer_UIPropVO142 = _loc1_;
         _loc1_.name = "魔力远征单区面板";
         _loc1_.prop = {
            "dx":50,
            "dy":50
         };
         BindingManager.executeBindings(this,"_PanelLayer_UIPropVO142",_PanelLayer_UIPropVO142);
         return _loc1_;
      }
   }
}

