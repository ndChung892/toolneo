/* Address: 006b1af0 | Ghidra name: FUN_006b1af0 */

int __fastcall FUN_006b1af0(int param_1)

{
  code *pcVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 extraout_ECX;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 local_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 local_14;
  
  uStack_2c = 0;
  uStack_28 = 0;
  local_24 = 0;
  uStack_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  local_14 = 0;
  if (*(char *)(param_1 + 0xc) != '\0') {
    FUN_006b1a20();
  }
  uStack_20 = *(undefined4 *)(param_1 + 0x14);
  uStack_1c = *(undefined4 *)(param_1 + 0x18);
  local_24 = 0;
  uStack_28 = 0x28;
  uStack_18 = 0;
  local_14 = 1;
  uStack_2c = 0;
  iVar3 = *(int *)(*(int *)(param_1 + 4) + 0x14);
  uVar2 = FUN_006aff40(param_1);
  pcVar1 = *(code **)(iVar3 + 0x14);
  FUN_00eaf9f0(uVar2,&uStack_28,&uStack_2c);
  iVar3 = (*pcVar1)();
  FUN_00eafa21();
  if (iVar3 == 0) {
    iVar3 = FUN_00eae9a0();
    FUN_00eaec39();
    *(undefined4 *)(iVar3 + 0x10) = extraout_ECX;
    FUN_00eaebca();
    FUN_006ae530(1);
    FUN_00eaee5e();
    *(undefined4 *)(iVar3 + 0x14) = 0;
    *(undefined4 *)(iVar3 + 0x18) = 0;
    *(undefined4 *)(iVar3 + 0x1c) = 0;
    return iVar3;
  }
  FUN_00eae9a0();
  FUN_006b0110(iVar3);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

