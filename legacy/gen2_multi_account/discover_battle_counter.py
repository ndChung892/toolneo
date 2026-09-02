from __future__ import annotations
import ctypes, json, struct, time
from pathlib import Path
import cv2, numpy as np
from app.boss_memory import FlashMemory, MBI, MEM_COMMIT, MEM_PRIVATE
from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

def regions(m):
    mbi,address=MBI(),0
    while address<0x7fffffff:
        if not m.k32.VirtualQueryEx(m.handle,ctypes.c_void_p(address),ctypes.byref(mbi),ctypes.sizeof(mbi)): break
        base,size=int(mbi.BaseAddress or 0),int(mbi.RegionSize); prot=int(mbi.Protect)&0xff
        if mbi.State==MEM_COMMIT and mbi.Type==MEM_PRIVATE and prot in (4,0x40) and 0<size<=256*1024*1024: yield base,size
        address=max(address+0x1000,base+max(size,0x1000))

def snapshot(m):
    out={"u8":{},"u16":{},"u32":{},"f64":{}}
    for base,size in regions(m):
        pos=0
        while pos<size:
            d=m.read(base+pos,min(1024*1024,size-pos));
            if not d: break
            a=np.frombuffer(d,dtype=np.uint8); idx=np.flatnonzero((a>=100)&(a<=200)); out['u8'].update((base+pos+int(i),int(a[i])) for i in idx)
            n=len(d)&~1; a=np.frombuffer(d[:n],dtype=np.uint16); idx=np.flatnonzero((a>=100)&(a<=200)); out['u16'].update((base+pos+int(i)*2,int(a[i])) for i in idx)
            n=len(d)&~3; a=np.frombuffer(d[:n],dtype=np.uint32); idx=np.flatnonzero((a>=100)&(a<=200)); out['u32'].update((base+pos+int(i)*4,int(a[i])) for i in idx)
            n=len(d)&~7; a=np.frombuffer(d[:n],dtype=np.float64); idx=np.flatnonzero(np.isfinite(a)&(a>=100)&(a<=200)&(a==np.rint(a))); out['f64'].update((base+pos+int(i)*8,int(a[i])) for i in idx)
            pos+=len(d)
    return out

def main():
    w=next(w for w in WindowManager().list_all() if (w.title or '').casefold()=='tsk'); m=FlashMemory(w.pid)
    pb=0x130740A0; core=m.u32(pb+0x1c0)
    if (m.u32(core+0x9c)&~7)!=pb: raise SystemExit('Player ownership changed')
    print('PRECHECK known rooted Player/Core',hex(pb),hex(core),flush=True)
    r=BossRunner(AppLogger()); r.start(w); deadline=time.monotonic()+180
    while time.monotonic()<deadline and not bool(m.u32(pb+0x70)): time.sleep(.05)
    if not bool(m.u32(pb+0x70)): raise SystemExit('battle timeout')
    img=ScreenCapture().capture_window(w); Path('logs').mkdir(exist_ok=True); cv2.imwrite('logs/battle_counter.png',img)
    print('BATTLE snapshot A',flush=True); a=snapshot(m); print({k:len(v) for k,v in a.items()},flush=True)
    time.sleep(2.2); print('snapshot B',flush=True); b=snapshot(m)
    candidates=[]
    for typ,vals in a.items():
        for addr,v in vals.items():
            nv=b[typ].get(addr)
            if nv is not None and nv in (v-1,v-2): candidates.append({'type':typ,'address':hex(addr),'before':v,'after':nv})
    r.stop(); m.close(); Path('logs/battle_counter_candidates.json').write_text(json.dumps(candidates,indent=2))
    print('CANDIDATES',candidates,flush=True)
if __name__=='__main__':main()
