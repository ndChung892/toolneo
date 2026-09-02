/* Address: 008c8290 | Ghidra name: FUN_008c8290 */

void __thiscall FUN_008c8290(int param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  if (param_1 == 0) {
    iVar1 = 0;
    uVar2 = 0;
  }
  else {
    iVar1 = param_1 + 8;
    uVar2 = *(undefined4 *)(param_1 + 4);
  }
  iVar1 = FUN_00978ef0(param_2,param_3,iVar1,uVar2);
  if (iVar1 != 3) {
    return;
  }
  iVar1 = FUN_00eae9a0();
  FUN_0090da50();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01ba31dc;
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

