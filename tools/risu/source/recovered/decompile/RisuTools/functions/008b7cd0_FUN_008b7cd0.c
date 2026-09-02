/* Address: 008b7cd0 | Ghidra name: FUN_008b7cd0 */

void __fastcall
FUN_008b7cd0(int param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
            uint param_6)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  
  uVar1 = *(uint *)(param_1 + 0x14) + param_6;
  uVar3 = ((int)param_6 >> 0x1f) + *(int *)(param_1 + 0x18) +
          (uint)CARRY4(*(uint *)(param_1 + 0x14),param_6);
  *(uint *)(param_1 + 0x14) = uVar1;
  *(uint *)(param_1 + 0x18) = uVar3;
  if (*(uint *)(param_1 + 0x20) < uVar3 ||
      *(uint *)(param_1 + 0x20) - uVar3 < (uint)(*(uint *)(param_1 + 0x1c) < uVar1)) {
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
  else {
    FUN_008b7fd0(param_3,param_4,param_5,param_6);
  }
  return;
}

