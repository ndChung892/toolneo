/* Address: 00bce2a0 | Ghidra name: FUN_00bce2a0 */

void __fastcall FUN_00bce2a0(int *param_1,int *param_2,int param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int *extraout_ECX;
  uint uVar5;
  
  if (param_2 == (int *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  iVar2 = FUN_009bfdf0();
  if (iVar2 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar2 = FUN_0090b5a0();
  if (iVar2 != 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (-1 < param_3) {
    iVar2 = param_2[1];
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2c10();
    }
    if (param_3 <= iVar2) {
      if (iVar2 - param_3 < param_1[6]) {
        FUN_00eae9a0();
        FUN_00911540();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      piVar4 = (int *)0x0;
      if (*param_2 == *(int *)(*(int *)(*param_1 + 0x20) + 0x1c)) {
        piVar4 = param_2;
      }
      if (piVar4 == (int *)0x0) {
        iVar2 = FUN_0099a900();
        if (iVar2 == 0) {
          FUN_00eae9a0();
          FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        for (uVar5 = 0; (int)uVar5 < param_1[6]; uVar5 = uVar5 + 1) {
          if ((*(uint *)(param_1[1] + 4) <= uVar5) ||
             (uVar1 = *(undefined4 *)(param_1[1] + 8 + uVar5 * 4),
             *(uint *)(param_1[2] + 4) <= uVar5)) {
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          FUN_00eae9a0();
          iVar2 = FUN_00eaebef();
          *(undefined4 *)(iVar2 + 8) = uVar1;
          FUN_0099b2e0(iVar2);
        }
      }
      else {
        uVar5 = 0;
        if (0 < param_1[6]) {
          do {
            if (((*(uint *)(param_1[1] + 4) <= uVar5) ||
                (iVar2 = *(int *)(param_1[1] + 8 + uVar5 * 4), *(uint *)(param_1[2] + 4) <= uVar5))
               || ((uint)piVar4[1] <= uVar5 + param_3)) {
                    /* WARNING: Subroutine does not return */
              FUN_009c2bf0();
            }
            iVar3 = FUN_00eaec14();
            piVar4[(uVar5 + param_3) * 2 + 3] = iVar2;
            uVar5 = iVar3 + 1;
            piVar4 = extraout_ECX;
          } while ((int)uVar5 < param_1[6]);
        }
      }
      return;
    }
  }
  iVar2 = FUN_00eae9a0();
  *(int *)(iVar2 + 4) = param_3;
  FUN_00eae9a0();
  FUN_00911800(&PTR_DAT_01b7d110,iVar2);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

