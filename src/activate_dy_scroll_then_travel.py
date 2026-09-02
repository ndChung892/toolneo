from __future__ import annotations
import ctypes,json,time,uuid
from pathlib import Path
import cv2,win32gui
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS,MapTraveler,click_client,project_reference_point
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager
ROOT=Path(__file__).parent; OUT=ROOT/'logs/dy_activate_scroll_then_travel.json'
def stop(pid):
 k=ctypes.windll.kernel32;h=k.OpenProcess(0x0001|0x00100000,False,pid)
 if h:k.TerminateProcess(h,0);k.WaitForSingleObject(h,10000);k.CloseHandle(h)
def dbl(hwnd,rx,ry):
 ctypes.windll.user32.SetWindowPos(hwnd,-1,0,0,0,0,0x0001|0x0002|0x0040)
 cx,cy=project_reference_point(hwnd,rx,ry);sx,sy=win32gui.ClientToScreen(hwnd,(cx,cy));ctypes.windll.user32.SetCursorPos(sx,sy);time.sleep(.3)
 for _ in range(2):
  ctypes.windll.user32.mouse_event(0x0002,0,0,0,0);time.sleep(.06);ctypes.windll.user32.mouse_event(0x0004,0,0,0,0);time.sleep(.12)
 ctypes.windll.user32.SetWindowPos(hwnd,-2,0,0,0,0,0x0001|0x0002|0x0040)
def main():
 cfg=ConfigManager();acc=next(a for a in cfg.load_accounts()['accounts'] if a['id']=='acc_1');login=SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()['flash_exe'],acc,150)
 pid=int(login.get('pid') or 0);r={'session_id':str(uuid.uuid4()),'pid':pid,'login':login,'status':'PARTIAL'}
 try:
  if not login.get('ok'):r['failure_reason']='LOGIN_FAILED';return 1
  wm=WindowManager();w=wm.find_by_pid(pid);t=MapTraveler(ScreenCapture(),wm,AppLogger())
  click_client(w.hwnd,580,568,reference=True);time.sleep(1);dbl(w.hwnd,456,286);time.sleep(1)
  frame=t._stage_image(w);p=ROOT/'logs/dy_after_scroll_double_click.png';cv2.imwrite(str(p),frame);r['activation_frame']=str(p)
  for _ in range(15):
   ctypes.windll.user32.SendMessageW(w.hwnd,0x0100,0x28,0);time.sleep(.06);ctypes.windll.user32.SendMessageW(w.hwnd,0x0101,0x28,0);time.sleep(.08)
  click_client(w.hwnd,426,337,reference=True);time.sleep(.5)
  time.sleep(.5)
  scrolled=t._stage_image(w);p=ROOT/'logs'/'dy_scroll_map_dragged.png';cv2.imwrite(str(p),scrolled);r['scrolled_frame']=str(p)
  target=next(m for m in MAP_TARGETS if m.map_id==12);stable=[];deadline=time.monotonic()+20
  while time.monotonic()<deadline:
   time.sleep(.5);img=t._stage_image(w);name,score,margin=t.detect_map(img);mem_name,mem_id=t.detect_map_memory(pid)
   sample={'timestamp':time.time(),'visual_map':name,'score':score,'margin':margin,'memory_map':mem_name,'memory_map_id':mem_id};r.setdefault('arrival_samples',[]).append(sample)
   ok=(mem_id==target.map_id) or (not mem_id and name==target.name and score>=.82 and margin>=.03)
   if ok:stable.append(sample)
   else:stable=[]
   if len(stable)>=3:r['status']='TRIAL_PASS';r['readbacks']=stable[-3:];return 0
  r['failure_reason']='SCROLL_ITEM_SELECTION_UNCHANGED_MAP';return 1
 finally:
  if pid:stop(pid)
  OUT.write_text(json.dumps(r,ensure_ascii=False,indent=2),encoding='utf-8');print(json.dumps({'status':r.get('status'),'pid':pid,'failure_reason':r.get('failure_reason'),'travel':r.get('travel',{}).get('detail'),'readbacks':len(r.get('travel',{}).get('readbacks',[]))},ensure_ascii=False))
if __name__=='__main__':raise SystemExit(main())
