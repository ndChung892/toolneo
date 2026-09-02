import ctypes, json, time
from pathlib import Path
import numpy as np
from app.boss_memory import FlashMemory, MBI, MEM_COMMIT, MEM_PRIVATE
from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.window_manager import WindowManager

def regs(m):
 mbi,a=MBI(),0
 while a<0x7fffffff:
  if not m.k32.VirtualQueryEx(m.handle,ctypes.c_void_p(a),ctypes.byref(mbi),ctypes.sizeof(mbi)): break
  b,s=int(mbi.BaseAddress or 0),int(mbi.RegionSize); p=int(mbi.Protect)&255
  if mbi.State==MEM_COMMIT and mbi.Type==MEM_PRIVATE and p in (4,0x40) and 0<s<=268435456: yield b,s
  a=max(a+4096,b+max(s,4096))
def snap(m):
 out={k:{} for k in ('u16','u32','f64')}
 for b,s in regs(m):
  pos=0
  while pos<s:
   d=m.read(b+pos,min(1048576,s-pos));
   if not d: break
   for typ,dtype,mul in [('u16',np.uint16,2),('u32',np.uint32,4)]:
    n=len(d)//mul*mul; x=np.frombuffer(d[:n],dtype=dtype); ids=np.flatnonzero((x>=100)&(x<=200)); out[typ].update((b+pos+int(i)*mul,int(x[i])) for i in ids)
   n=len(d)//8*8; x=np.frombuffer(d[:n],dtype=np.float64); ids=np.flatnonzero(np.isfinite(x)&(x>=100)&(x<=200)&(x==np.rint(x))); out['f64'].update((b+pos+int(i)*8,int(x[i])) for i in ids)
   pos+=len(d)
 return out
def main():
 w=next(w for w in WindowManager().list_all() if w.title=='TSk');m=FlashMemory(w.pid);pb=0x130740a0;core=m.u32(pb+0x1c0)
 if (m.u32(core+0x9c)&~7)!=pb: raise SystemExit('ownership')
 r=BossRunner(AppLogger());r.start(w)
 while not bool(m.u32(pb+0x70)): time.sleep(.05)
 time.sleep(5);print('SNAP A',flush=True);a=snap(m);print({k:len(v) for k,v in a.items()},flush=True)
 time.sleep(2);print('SNAP B',flush=True);b=snap(m);c=[]
 for typ,vv in a.items():
  for ad,v in vv.items():
   nv=b[typ].get(ad)
   if nv in (v-1,v-2): c.append({'type':typ,'address':hex(ad),'before':v,'after':nv})
 r.stop();m.close();Path('logs/counter_fast.json').write_text(json.dumps(c,indent=2));print('CANDIDATES',c,flush=True)
if __name__=='__main__':main()
