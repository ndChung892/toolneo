from __future__ import annotations
import ctypes,json,time,uuid,re,struct,math
from pathlib import Path
import cv2
import numpy as np
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MapTraveler,send_key,click_client,MAP_TARGETS
from app.map_travel import project_reference_point
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager
from app.boss_memory import FlashMemory
ROOT=Path(__file__).parent;OUT=ROOT/'logs/team_ui_inspection.json'

def locate_linh_vu(image):
 ref=cv2.imread(str(ROOT/'logs/team_panel_acc_2.png'))
 template=ref[110:132,245:298]
 def yellow_mask(src):
  hsv=cv2.cvtColor(src,cv2.COLOR_BGR2HSV)
  return cv2.inRange(hsv,np.array([18,100,120]),np.array([42,255,255]))
 tm=yellow_mask(template);fm=yellow_mask(image)
 res=cv2.matchTemplate(fm,tm,cv2.TM_CCOEFF_NORMED);_,score,_,point=cv2.minMaxLoc(res)
 return {'score':float(score),'x':point[0]+template.shape[1]//2,'y':point[1]+template.shape[0]//2,'w':template.shape[1],'h':template.shape[0]}
def stop(pid):
 k=ctypes.windll.kernel32;h=k.OpenProcess(0x0001|0x00100000,False,pid)
 if h:k.TerminateProcess(h,0);k.WaitForSingleObject(h,10000);k.CloseHandle(h)
def hover_client(hwnd,x,y):
 x,y=project_reference_point(hwnd,x,y);lp=(int(y)<<16)|(int(x)&0xffff)
 ctypes.windll.user32.SendMessageW(int(hwnd),0x0200,0,lp)
def core_address(row):
 m=re.search(r'Core=0x([0-9a-fA-F]+)',str(row['login'].get('detail','')))
 return int(m.group(1),16) if m else 0
def world_xy(row):
 m=re.search(r'world=\(([-0-9.]+),([-0-9.]+)\)',str(row['login'].get('detail','')))
 return (float(m.group(1)),float(m.group(2))) if m else None
def core_words(pid,core,size=0x400):
 mem=FlashMemory(pid)
 try:data=mem.read(core,size)
 finally:mem.close()
 return list(struct.unpack('<'+'I'*(len(data)//4),data[:len(data)//4*4]))
def read_words(pid,address,count=32):
 mem=FlashMemory(pid)
 try:data=mem.read(address,count*4)
 finally:mem.close()
 return list(struct.unpack('<'+'I'*(len(data)//4),data[:len(data)//4*4]))
def main():
 cfg=ConfigManager();team=cfg.load_team_config();by={a['id']:a for a in team['accounts']};ids=[team['key_account'],*team['members']]
 r={'session_id':str(uuid.uuid4()),'team':team,'accounts':[],'status':'PARTIAL'};pids=[]
 try:
  for aid in ids:
   login=SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()['flash_exe'],by[aid],150);pid=int(login.get('pid') or 0)
   if pid:pids.append(pid)
   r['accounts'].append({'account_id':aid,'role':'KEY' if aid==team['key_account'] else 'MEMBER','login':login,'pid':pid})
   if not login.get('ok'):r['failure_reason']=f'{aid}_LOGIN_FAILED';return 1
  wm=WindowManager();trav=MapTraveler(ScreenCapture(),wm,AppLogger())
  for row in r['accounts']:
   row['core']=core_address(row);row['_core_before']=core_words(row['pid'],row['core'])
  key_row=next(row for row in r['accounts'] if row['role']=='KEY');w=wm.find_by_pid(key_row['pid'])
  member_row=next(row for row in r['accounts'] if row['role']=='MEMBER');mw=wm.find_by_pid(member_row['pid'])
  # Separate overlapping player labels with an ordinary ground-move click on
  # the member Flash; this is not monster selection or combat targeting.
  click_client(mw.hwnd,300,300,reference=True);time.sleep(5)
  send_key(w.hwnd,0x54);time.sleep(1.5)
  img=trav._stage_image(w);path=ROOT/'logs/team_key_target_mode_before_click.png';cv2.imwrite(str(path),img);key_row['target_mode_before_click']=str(path)
  match=locate_linh_vu(img);key_row['linh_vu_match']=match
  # The key's own yellow title can overlap the exact Linh Vu glyphs when both
  # characters stand on the same point. Keep the template requirement, but
  # accept the occluded score only inside the central player-target ROI.
  if match['score']<.35 or not (300<=match['x']<=600 and 150<=match['y']<=400):
   key_xy,member_xy=world_xy(key_row),world_xy(member_row)
   distance=math.hypot(key_xy[0]-member_xy[0],key_xy[1]-member_xy[1]) if key_xy and member_xy else 1e9
   if distance<=50:
    match={'score':match['score'],'x':450,'y':285,'w':53,'h':22,'fallback':'PLAYER_WORLD_PROXIMITY','world_distance':distance}
    key_row['linh_vu_match']=match
   else:r['failure_reason']='LINH_VU_LABEL_NOT_UNIQUE';return 1
  # In T target mode the yellow name is only a locator. Click the character body
  # above it so the game-owned target picker performs the group action.
  body_y=max(0,match['y']-50)
  key_row['linh_vu_body_click']={'x':match['x'],'y':body_y}
  click_client(w.hwnd,match['x'],body_y,reference=True);time.sleep(2)
  after=trav._stage_image(w);after_path=ROOT/'logs/team_key_after_select_dy.png';cv2.imwrite(str(after_path),after);key_row['after_select_dy']=str(after_path)
  invite_key=trav._stage_image(w);invite_key_path=ROOT/'logs/team_key_after_body_target.png';cv2.imwrite(str(invite_key_path),invite_key);key_row['after_body_target']=str(invite_key_path)
  center=(match['x'],body_y)
  candidates={'left_top':(-27,-27),'top':(0,-29),'right_top':(27,-27),'left':(-29,0),'right':(29,0),'left_bottom':(-14,24),'right_bottom':(14,24)}
  key_row['radial_tooltips']=[]
  for name,(dx,dy) in candidates.items():
   hover_client(w.hwnd,center[0]+dx,center[1]+dy);time.sleep(.8)
   tip=trav._stage_image(w);tip_path=ROOT/f'logs/team_radial_{name}.png';cv2.imwrite(str(tip_path),tip)
   key_row['radial_tooltips'].append({'name':name,'x':center[0]+dx,'y':center[1]+dy,'path':str(tip_path)})
  # Orange two-person icon in the game-owned radial action menu.
  invite_point=(center[0]-29,center[1])
  key_row['invite_click']={'x':invite_point[0],'y':invite_point[1],'icon':'orange_two_person'}
  click_client(w.hwnd,invite_point[0],invite_point[1],reference=True)
  # Alert1 is a game-owned modal; foreground the invited Flash so it is rendered.
  ctypes.windll.user32.ShowWindow(int(mw.hwnd),5);ctypes.windll.user32.SetForegroundWindow(int(mw.hwnd))
  ctypes.windll.user32.SendMessageW(int(mw.hwnd),0x0006,1,0);time.sleep(6)
  invite_key=trav._stage_image(w);invite_key_path=ROOT/'logs/team_key_after_invite_icon.png';cv2.imwrite(str(invite_key_path),invite_key);key_row['after_invite_icon']=str(invite_key_path)
  invite_member=trav._stage_image(mw);invite_member_path=ROOT/'logs/team_member_invite_popup.png';cv2.imwrite(str(invite_member_path),invite_member);member_row['invite_popup']=str(invite_member_path)
  # Accept on the game-owned Alert1 modal only after preserving its evidence.
  click_client(mw.hwnd,416,326,reference=True);time.sleep(6)
  joined_member=trav._stage_image(mw);joined_member_path=ROOT/'logs/team_member_after_accept.png';cv2.imwrite(str(joined_member_path),joined_member);member_row['after_accept']=str(joined_member_path)
  click_client(mw.hwnd,682,545,reference=True);time.sleep(1.5)
  member_img=trav._stage_image(mw);member_path=ROOT/'logs/team_member_after_invite.png';cv2.imwrite(str(member_path),member_img);member_row['after_invite']=str(member_path)
  click_client(mw.hwnd,463,138,reference=True);time.sleep(1.5)
  inbox_img=trav._stage_image(mw);inbox_path=ROOT/'logs/team_member_invite_inbox.png';cv2.imwrite(str(inbox_path),inbox_img);member_row['invite_inbox']=str(inbox_path)
  click_client(w.hwnd,682,545,reference=True);time.sleep(1.5)
  key_panel=trav._stage_image(w);key_panel_path=ROOT/'logs/team_key_group_panel.png';cv2.imwrite(str(key_panel_path),key_panel);key_row['group_panel']=str(key_panel_path)
  send_key(w.hwnd,0x1B);send_key(mw.hwnd,0x1B);time.sleep(1)
  target=next(item for item in MAP_TARGETS if item.map_id==13)
  travel_result=trav.travel(w,target,timeout=45,party_mode='individual')
  time.sleep(8)
  member_map_samples=[]
  for _ in range(3):
   name,map_id=trav.detect_map_memory(member_row['pid'])
   if not map_id:
    name,score,margin=trav.detect_map(trav._stage_image(mw))
   else:score=margin=0.0
   member_map_samples.append({'timestamp':time.time(),'name':name,'map_id':map_id,'score':score,'margin':margin});time.sleep(.6)
  group_travel_member=trav._stage_image(mw);group_travel_member_path=ROOT/'logs/team_member_after_key_travel.png';cv2.imwrite(str(group_travel_member_path),group_travel_member)
  click_client(mw.hwnd,682,545,reference=True);time.sleep(1.5)
  return_panel=trav._stage_image(mw);return_panel_path=ROOT/'logs/team_member_return_group_panel.png';cv2.imwrite(str(return_panel_path),return_panel)
  r['group_travel_trial']={'target':target.name,'target_map_id':target.map_id,'key':travel_result,'member_readbacks':member_map_samples,'member_evidence':str(group_travel_member_path),'member_return_panel':str(return_panel_path)}
  for row in r['accounts']:
   before=row.pop('_core_before');after=core_words(row['pid'],row['core'])
   row['core_u32_changes']=[{'offset':i*4,'before':a,'after':b} for i,(a,b) in enumerate(zip(before,after)) if a!=b]
   atom=after[0xCC//4];base=atom&~7
   words=read_words(row['pid'],base,32) if base>=0x10000 else []
   row['party_memory']={'slot_offset':0xCC,'atom':atom,'base':base,'object_words':words,'referents':[]}
   for i,value in enumerate(words):
    ptr=value&~7
    if ptr>=0x10000:
     probe=read_words(row['pid'],ptr,16)
     if probe:row['party_memory']['referents'].append({'word_index':i,'raw':value,'base':ptr,'words':probe})
  return 0
 finally:
  for pid in pids:stop(pid)
  OUT.write_text(json.dumps(r,ensure_ascii=False,indent=2),encoding='utf-8');print(json.dumps({'status':r.get('status'),'failure_reason':r.get('failure_reason'),'pids':pids},ensure_ascii=False))
if __name__=='__main__':raise SystemExit(main())
