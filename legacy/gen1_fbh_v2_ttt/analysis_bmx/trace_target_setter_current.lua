-- One-session diagnostic: record the genuine AVM write path for Core.targetNPC.
-- Update PID/address whenever Flash restarts.
local startup=io.open([[C:\Users\Administrator\Desktop\New folder\fbh_v2_ttt_fixed-20260709T181609Z-2-001\fbh_v2_ttt_fixed\logs\ce_lua_started.txt]],"w")
if startup then startup:write("STARTED\n"); startup:close() end
openProcess(1808)
local outpath = [[C:\Users\Administrator\Desktop\New folder\fbh_v2_ttt_fixed-20260709T181609Z-2-001\fbh_v2_ttt_fixed\logs\ce_target_setter.txt]]
local targetAddress = 0x177f71e4
local hitCount = 0

debugger_onBreakpoint = function()
  hitCount = hitCount + 1
  local f = io.open(outpath, "a")
  if f then
    f:write(string.format("HIT=%d BEFORE=%08X EIP=%08X EAX=%08X EBX=%08X ECX=%08X EDX=%08X ESI=%08X EDI=%08X EBP=%08X ESP=%08X\n",
      hitCount,readInteger(targetAddress) or 0,EIP,EAX,EBX,ECX,EDX,ESI,EDI,EBP,ESP))
    for i=0,31 do
      local a=ESP+i*4
      f:write(string.format("  %08X: %08X\n",a,readInteger(a) or 0))
    end
    f:close()
  end
  if hitCount >= 6 then debug_removeBreakpoint(targetAddress) end
  return 1
end

debugProcess(1)
debug_setBreakpoint(targetAddress,4,bptWrite,bpmDebugRegister)
local f=io.open(outpath,"w")
if f then f:write(string.format("ARMED pid=1808 address=%08X\n",targetAddress)); f:close() end

