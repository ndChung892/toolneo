/* Address: 008ad130 | Ghidra name: FUN_008ad130 */

void __fastcall
FUN_008ad130(int param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
            uint param_6)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  
  uVar1 = *(uint *)(param_1 + 0xc) + param_6;
  iVar3 = ((int)param_6 >> 0x1f) + *(int *)(param_1 + 0x10) +
          (uint)CARRY4(*(uint *)(param_1 + 0xc),param_6);
  *(uint *)(param_1 + 0xc) = uVar1;
  *(int *)(param_1 + 0x10) = iVar3;
  uVar1 = (uint)(*(uint *)(param_1 + 0x14) < uVar1);
  iVar2 = *(int *)(param_1 + 0x18) - iVar3;
  if ((SBORROW4(*(int *)(param_1 + 0x18),iVar3) != SBORROW4(iVar2,uVar1)) ==
      (int)(iVar2 - uVar1) < 0) {
    if (*(int *)(param_1 + 8) == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931fb0();
    }
    FUN_008a7df0(param_4,param_5,param_6);
  }
  else {
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 0x24) = 0x80131500;
    *(undefined ***)(iVar2 + 4) = &PTR_DAT_01bd2190;
    FUN_0099bd80();
    iVar2 = FUN_00974db0();
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931d20();
    }
    FUN_00eaeca8();
    *(undefined2 *)(param_2 + 4) = 0;
    *(undefined1 *)(param_2 + 6) = 1;
  }
  return;
}

