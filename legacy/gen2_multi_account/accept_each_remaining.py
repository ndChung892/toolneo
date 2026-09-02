import json,time
from pathlib import Path
from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.window_manager import WindowManager
CAI=(3060100001180,2060100001208); DAU=(3060100001180,2060100001211)
w=next(w for w in WindowManager().list_all() if w.title=='TSk');e=[]
for name,sig in [('cai_nguc',CAI),('dau_si',DAU)]:
 r=BossRunner(AppLogger(),selected_signatures={sig});c=r.precheck(w);print(name,c,flush=True)
 if not c['ok']:raise SystemExit(2)
 r.start(w);items=[];last=0;end=time.monotonic()+720
 try:
  while time.monotonic()<end and r.state.clears<5:
   if r.state.attacks>last:
    item={'runtime_id':r.state.target_id,'type':r.state.target_type,'resource':r.state.target_resource}
    items.append(item);last=r.state.attacks;print(name,item,flush=True)
   time.sleep(.08)
 finally:r.stop()
 ok=r.state.clears>=5 and all((x['type'],x['resource'])==sig for x in items)
 e.append({'name':name,'signature':sig,'precheck':c,'battles':items,'attacks':r.state.attacks,'clears':r.state.clears,'ok':ok})
 Path('logs/each_monster_acceptance.json').write_text(json.dumps(e,indent=2))
 print('RESULT',name,ok,r.state.attacks,r.state.clears,flush=True)
 if not ok:raise SystemExit(3)
