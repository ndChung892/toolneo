/* Address: 006af790 | Ghidra name: FUN_006af790 */

void __fastcall FUN_006af790(int param_1)

{
  code *pcVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  FUN_00eaebef();
  local_1c = 9;
  local_18 = 0;
  local_14 = 0;
  iVar3 = *(int *)(*(int *)(param_1 + 4) + 0x14);
  uVar2 = FUN_006aff40();
  pcVar1 = *(code **)(iVar3 + 0x2c);
  FUN_00eaf9f0(uVar2,&local_1c,0,param_1 + 0xc);
  iVar3 = (*pcVar1)();
  FUN_00eafa21();
  if (iVar3 == 0) {
    return;
  }
  FUN_00eae9a0();
  FUN_006b0110(iVar3);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

