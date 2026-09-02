/* Address: 006da2f0 | Ghidra name: FUN_006da2f0 */

void __fastcall
FUN_006da2f0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  code *pcVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  
  piVar2 = (int *)FUN_00712040();
  pcVar1 = *(code **)(*piVar2 + 0x10);
  uVar3 = FUN_00712040(param_2,param_4,param_3);
  FUN_00eaf9f0(uVar3);
  iVar4 = (*pcVar1)();
  FUN_00eafa21();
  if (iVar4 == 0) {
    return;
  }
  FUN_00eae9a0();
  FUN_009a24f0(iVar4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

