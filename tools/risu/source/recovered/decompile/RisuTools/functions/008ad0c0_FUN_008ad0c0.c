/* Address: 008ad0c0 | Ghidra name: FUN_008ad0c0 */

void __thiscall FUN_008ad0c0(int param_1,undefined4 param_2,uint param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  uVar3 = *(uint *)(param_1 + 0xc) + param_3;
  iVar1 = *(int *)(param_1 + 0x10) + (uint)CARRY4(*(uint *)(param_1 + 0xc),param_3);
  *(uint *)(param_1 + 0xc) = uVar3;
  *(int *)(param_1 + 0x10) = iVar1;
  uVar3 = (uint)(*(uint *)(param_1 + 0x14) < uVar3);
  iVar2 = *(int *)(param_1 + 0x18) - iVar1;
  if ((SBORROW4(*(int *)(param_1 + 0x18),iVar1) != SBORROW4(iVar2,uVar3)) !=
      (int)(iVar2 - uVar3) < 0) {
    iVar2 = FUN_00eae9a0();
    FUN_0090da50();
    *(undefined ***)(iVar2 + 4) = &PTR_DAT_01bd2190;
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(int *)(param_1 + 8) != 0) {
    FUN_008a7d70(param_2,param_3);
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931fb0();
}

