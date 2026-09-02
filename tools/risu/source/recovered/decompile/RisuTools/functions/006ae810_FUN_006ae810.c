/* Address: 006ae810 | Ghidra name: FUN_006ae810 */

void __fastcall
FUN_006ae810(int param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  code *pcVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  local_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 0;
  uStack_18 = FUN_006b3e00(1);
  uStack_28 = 5;
  uStack_24 = 0;
  local_20 = param_4;
  uStack_1c = param_5;
  iVar3 = *(int *)(*(int *)(param_1 + 0xc) + 0x14);
  uVar2 = FUN_006aff40();
  pcVar1 = *(code **)(iVar3 + 0x48);
  FUN_00eaf9f0(uVar2,&uStack_28,0,&local_30);
  iVar3 = (*pcVar1)();
  FUN_00eafa21();
  if (iVar3 == 0) {
    *param_2 = local_30;
    param_2[1] = uStack_2c;
    return;
  }
  FUN_00eae9a0();
  FUN_006b0110(iVar3);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

