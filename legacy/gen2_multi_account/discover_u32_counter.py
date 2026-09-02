import ctypes,json,time,cv2
from pathlib import Path
import numpy as np
from app.boss_memory import FlashMemory,MBI,MEM_COMMIT,MEM_PRIVATE
from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager
def regs(m):
 mbi,a=MBI(),0
 while a<0x7fffffff:
  if not m.k32.VirtualQueryEx(m.handle,ctypes.c_void_p(a),ctypes.byref(mbi),ctypes.sizeof(mbi)):break
  b,s=int(mbi.BaseAddress or 0),int(mbi.RegionSize);p=int(mbi.Protect)&255
  if mbi.State==MEM_COMMIT and mbi.Type==MEM_PRIVATE and p in(4,0x40)and 0<s<=268435456:yield b,s
  a=max(a+4096,b+max(s,4096))
def snap(m):
 out={}
 for b,s in regs(m):
  pos=0
  while pos<s:
   d=m.read(b+pos,min(4194304,s-pos));
   if not d:break
   n=len(d)&~3;x=np.frombuffer(d[:n],dtype=np.uint32);ids=np.flatnonzero(x<=200);out.update((b+pos+int(i)*4,int(x[i]))for i in ids);pos+=len(d)
 return out
def main():
 w=next(w for w in WindowManager().list_all()if w.title=='TSk');m=FlashMemory(w.pid);pb=0x130740a0
 r=BossRunner(AppLogger());r.start(w)
 while not bool(m.u32(pb+0x70)):time.sleep(.03)
 time.sleep(5);img=ScreenCapture().capture_window(w);Path('logs').mkdir(exist_ok=True);cv2.imwrite('logs/u32_counter_A.png',img)
 print('A',flush=True);a=snap(m);print('hits',len(a),flush=True);time.sleep(.7);print('B',flush=True);b=snap(m)
 c=[{'address':hex(ad),'before':v,'after':b[ad]}for ad,v in a.items()if ad in b and 1<=v<=200 and b[ad] in(v-1,v-2)]
 r.stop();m.close();Path('logs/u32_counter_candidates.json').write_text(json.dumps(c,indent=2));print('candidates',c,flush=True)
if __name__=='__main__':main()
