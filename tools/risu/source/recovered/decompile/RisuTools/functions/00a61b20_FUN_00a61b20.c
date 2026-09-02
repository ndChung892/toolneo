/* Address: 00a61b20 | Ghidra name: FUN_00a61b20 */

void __fastcall FUN_00a61b20(int param_1)

{
  short sVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  
  uVar2 = *(uint *)(param_1 + 0x2c);
  iVar3 = *(int *)(param_1 + 0x14);
  if (*(int *)(iVar3 + 4) <= (int)(uVar2 + 2)) {
    FUN_00a62c10(&PTR_DAT_01b7c8c4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  *(uint *)(param_1 + 0x2c) = uVar2 + 1;
  if (uVar2 < *(uint *)(iVar3 + 4)) {
    if (*(short *)(iVar3 + 8 + uVar2 * 2) != 0x7b) {
      FUN_00a62c10(&PTR_DAT_01b8d460);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    iVar3 = *(int *)(param_1 + 0x2c);
    if (*(int *)(param_1 + 0x2c) < *(int *)(*(int *)(param_1 + 0x14) + 4)) {
      do {
        uVar2 = *(uint *)(param_1 + 0x2c);
        *(uint *)(param_1 + 0x2c) = uVar2 + 1;
        if (*(uint *)(*(int *)(param_1 + 0x14) + 4) <= uVar2) goto LAB_00a61c20;
        sVar1 = *(short *)(*(int *)(param_1 + 0x14) + 8 + uVar2 * 2);
        iVar4 = FUN_00a53740();
        if ((iVar4 == 0) && (sVar1 != 0x2d)) {
          *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
          break;
        }
      } while (*(int *)(param_1 + 0x2c) < *(int *)(*(int *)(param_1 + 0x14) + 4));
    }
    FUN_00909690(*(int *)(param_1 + 0x2c) - iVar3);
    uVar2 = *(uint *)(param_1 + 0x2c);
    iVar3 = *(int *)(param_1 + 0x14);
    if (uVar2 != *(uint *)(iVar3 + 4)) {
      *(uint *)(param_1 + 0x2c) = uVar2 + 1;
      if (*(uint *)(iVar3 + 4) <= uVar2) goto LAB_00a61c20;
      if (*(short *)(iVar3 + 8 + uVar2 * 2) == 0x7d) {
        return;
      }
    }
    FUN_00a62c10(&PTR_DAT_01b7c8c4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
LAB_00a61c20:
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

