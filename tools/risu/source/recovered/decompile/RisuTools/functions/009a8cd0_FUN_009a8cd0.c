/* Address: 009a8cd0 | Ghidra name: FUN_009a8cd0 */

void __thiscall
FUN_009a8cd0(int param_1,int param_2,int param_3,uint param_4,int param_5,int param_6,int param_7)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  
  FUN_009a8f20();
  if ((param_7 != 0) && (*(short *)(param_7 + 4) != -1)) {
    FUN_009878c0();
    FUN_00df5150(0,0);
    if (*(short *)(param_7 + 8) != -1) {
      uVar1 = *(uint *)(param_1 + 4);
      if (uVar1 < *(uint *)(param_1 + 0xc)) {
        *(undefined2 *)(*(int *)(param_1 + 8) + uVar1 * 2) = 0x2e;
        *(uint *)(param_1 + 4) = uVar1 + 1;
      }
      else {
        FUN_00987a00();
      }
      FUN_00df5150(0,0);
      if (*(short *)(param_7 + 0xc) != -1) {
        uVar1 = *(uint *)(param_1 + 4);
        if (uVar1 < *(uint *)(param_1 + 0xc)) {
          *(undefined2 *)(*(int *)(param_1 + 8) + uVar1 * 2) = 0x2e;
          *(uint *)(param_1 + 4) = uVar1 + 1;
        }
        else {
          FUN_00987a00();
        }
        FUN_00df5150(0,0);
        if (*(short *)(param_7 + 0x10) != -1) {
          uVar1 = *(uint *)(param_1 + 4);
          if (uVar1 < *(uint *)(param_1 + 0xc)) {
            *(undefined2 *)(*(int *)(param_1 + 8) + uVar1 * 2) = 0x2e;
            *(uint *)(param_1 + 4) = uVar1 + 1;
          }
          else {
            FUN_00987a00();
          }
          FUN_00df5150(0,0);
        }
      }
    }
  }
  if (param_6 != 0) {
    FUN_009878c0();
    FUN_009a8f20();
  }
  iVar4 = param_5;
  if (param_5 == 0) {
    iVar4 = param_2;
  }
  if (iVar4 != 0) {
    if (param_5 == 0) {
      FUN_009878c0();
    }
    else {
      if (8 < *(int *)(param_5 + 4)) {
        FUN_00eae9a0();
        FUN_00911520();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      FUN_009878c0();
    }
    iVar2 = *(int *)(iVar4 + 4);
    if (iVar2 == 0) {
      FUN_009878c0();
    }
    else {
      uVar3 = iVar2 * 2;
      uVar1 = *(uint *)(param_1 + 4);
      if (*(int *)(param_1 + 0xc) + iVar2 * -2 < (int)uVar1) {
        FUN_00987a40();
      }
      *(uint *)(param_1 + 4) = uVar1 + uVar3;
      if ((*(uint *)(param_1 + 0xc) < uVar1) || (*(uint *)(param_1 + 0xc) - uVar1 < uVar3)) {
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      FUN_0093b540(*(int *)(param_1 + 8) + uVar1 * 2,uVar3,iVar4 + 8,iVar2);
    }
  }
  if ((param_4 & 0x100) != 0) {
    FUN_009878c0();
  }
  if (param_3 == 1) {
    FUN_009878c0();
  }
  return;
}

