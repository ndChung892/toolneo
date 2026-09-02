/* Address: 00a2cfa0 | Ghidra name: FUN_00a2cfa0 */

void __thiscall
FUN_00a2cfa0(int param_1,undefined4 param_2,int param_3,undefined4 param_4,int param_5)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  undefined1 uVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  uint uVar8;
  uint uVar9;
  
  if (0xf < param_3) {
    iVar7 = FUN_00eae9a0();
    *(int *)(iVar7 + 4) = param_3;
    iVar5 = FUN_00eae9a0();
    *(undefined4 *)(iVar5 + 4) = 0xf;
    FUN_00eae9a0();
    uVar6 = FUN_00a2c420(iVar7);
    FUN_00911800(uVar6,iVar7);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((param_5 < 0) || (0xffff < param_5)) {
    iVar7 = FUN_00eae9a0();
    *(undefined4 *)(iVar7 + 4) = param_4;
    *(int *)(iVar7 + 8) = param_5;
    FUN_00eae9a0();
    FUN_00911800(&PTR_DAT_01bc2120,iVar7);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  *(undefined4 *)(param_1 + 4) = param_4;
  *(int *)(param_1 + 8) = param_5;
  if (param_3 != 0) {
    FUN_00eaeae1();
    FUN_00930280(param_3 << 2);
  }
  FUN_00eaec14();
  iVar5 = *(int *)(param_1 + 0xc);
  iVar7 = *(int *)(iVar5 + 4) * 4;
  uVar1 = iVar7 + 8;
  FUN_00eaea6e();
  FUN_00eaebca();
  iVar3 = *(int *)(param_1 + 0x10);
  if (iVar7 != -8) {
    *(undefined1 *)(iVar3 + 8) = 1;
    if (1 < uVar1) {
      *(undefined1 *)(iVar3 + 9) = *(undefined1 *)(iVar5 + 4);
      iVar7 = 0;
      while( true ) {
        iVar3 = *(int *)(param_1 + 0x10);
        uVar4 = FUN_00eaf9a5();
        if (uVar1 <= iVar7 + 2U) break;
        *(undefined1 *)(iVar3 + 10 + iVar7) = uVar4;
        iVar7 = iVar7 + 1;
        if (5 < iVar7) {
          uVar8 = 0;
          if (0 < *(int *)(*(int *)(param_1 + 0xc) + 4)) {
            do {
              uVar9 = 0;
              do {
                iVar7 = *(int *)(param_1 + 0x10);
                if (*(uint *)(iVar5 + 4) <= uVar8) goto LAB_00a2d1c9;
                uVar4 = FUN_00eaf9a5();
                uVar2 = uVar8 * 4 + 8 + uVar9;
                if (uVar1 <= uVar2) goto LAB_00a2d1c9;
                *(undefined1 *)(iVar7 + 8 + uVar2) = uVar4;
                uVar9 = uVar9 + 1 & 0xff;
              } while (uVar9 < 4);
              uVar8 = uVar8 + 1;
            } while ((int)uVar8 < *(int *)(*(int *)(param_1 + 0xc) + 4));
          }
          return;
        }
      }
    }
  }
LAB_00a2d1c9:
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

