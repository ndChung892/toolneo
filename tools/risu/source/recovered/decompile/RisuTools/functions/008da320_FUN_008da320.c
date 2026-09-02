/* Address: 008da320 | Ghidra name: FUN_008da320 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_008da320(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  float10 fVar2;
  undefined **local_18;
  undefined4 local_14;
  
  local_18 = (undefined **)0x0;
  local_14 = 0;
  if (param_2 == 0) {
    if (PTR_FUN_01c21e78 != (undefined *)0x0) {
      FUN_00e8e7ad();
    }
    fVar2 = (float10)FUN_00eb6270(param_3,param_4);
    local_18 = &PTR_DAT_01be57c8;
    local_14 = param_1;
    FUN_00ba0d40(&local_18,1,(double)fVar2 / ram0x018d99c0);
  }
  else {
    uVar1 = FUN_008da6e0();
    if (PTR_FUN_01c21e78 != (undefined *)0x0) {
      FUN_00e8e7ad();
    }
    fVar2 = (float10)FUN_00eb6270(param_3,param_4);
    FUN_00ba0d90(&PTR_DAT_01be6624,uVar1,&PTR_DAT_01be57c8,param_1,(double)fVar2 / ram0x018d99c0);
  }
  return;
}

