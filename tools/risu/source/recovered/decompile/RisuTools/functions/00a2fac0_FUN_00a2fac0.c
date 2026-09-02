/* Address: 00a2fac0 | Ghidra name: FUN_00a2fac0 */

void __fastcall FUN_00a2fac0(int param_1,int param_2)

{
  int *piVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  
  iVar4 = FUN_00a308a0();
  if (iVar4 == 0) {
    iVar4 = FUN_00a2ef70(1);
    if (iVar4 == 0) {
      if (PTR_FUN_01c223e0 != (undefined *)0x0) {
        FUN_00e8ce0d();
      }
      DAT_01c223e4 = 1;
    }
    else {
      piVar1 = *(int **)(iVar4 + 4);
      iVar4 = *piVar1;
      iVar8 = 0;
      if (0 < iVar4) {
        do {
          uVar2 = piVar1[iVar8 * 2 + 2];
          iVar5 = FUN_00eae9a0();
          iVar6 = FUN_00a2e420();
          if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
            FUN_00911740();
          }
          FUN_00a2d1e0(0);
          if ((uVar2 & 0xc0000014) == 4) {
            FUN_00a2d8a0();
            if (PTR_FUN_01c22014 != (undefined *)0x0) {
              FUN_00e8ea44();
            }
            if (PTR_FUN_01c222d4 != (undefined *)0x0) {
              FUN_00e8cd95();
            }
            if (DAT_01c222d8 == '\0') {
              uVar7 = FUN_00dfdd20();
            }
            else {
              uVar7 = FUN_00956700();
            }
            FUN_00eae9a0();
            FUN_00a17be0(0,0,param_1,*(undefined4 *)(param_1 + 0x44),*(undefined4 *)(param_1 + 0x44)
                         ,&PTR_DAT_01be995c,uVar7);
            FUN_00a17da0();
            uVar7 = *(undefined4 *)(iVar5 + 4);
            uVar3 = *(undefined4 *)(iVar5 + 8);
            iVar5 = FUN_00eae9a0();
            *(undefined4 *)(iVar5 + 4) = uVar7;
            *(undefined4 *)(iVar5 + 8) = uVar3;
            uVar7 = FUN_009007a0();
            (*(code *)PTR_FUN_01c53cd0)(uVar7);
            FUN_00a17da0();
            (*(code *)PTR_FUN_01c53cd0)(&PTR_DAT_01b39360);
            *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
            if (*(uint *)(param_2 + 8) < *(uint *)(*(int *)(param_2 + 4) + 4)) {
              *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) + 1;
              FUN_00eaec14();
            }
            else {
              FUN_00ccd380();
            }
          }
          else if ((uVar2 & 0xc0000014) == 0x10) {
            FUN_00a2d8a0();
            if (PTR_FUN_01c22014 != (undefined *)0x0) {
              FUN_00e8ea44();
            }
            if (PTR_FUN_01c222d4 != (undefined *)0x0) {
              FUN_00e8cd95(*(undefined4 *)(DAT_01c28ec0 + 4));
            }
            if (DAT_01c222d8 == '\0') {
              uVar7 = FUN_00dfdd20();
            }
            else {
              uVar7 = FUN_00956700();
            }
            FUN_00eae9a0();
            FUN_00a17be0(0,0,param_1,*(undefined4 *)(param_1 + 0x44),*(undefined4 *)(param_1 + 0x44)
                         ,&PTR_DAT_01be995c,uVar7);
            FUN_00a17da0();
            uVar7 = *(undefined4 *)(iVar5 + 4);
            uVar3 = *(undefined4 *)(iVar5 + 8);
            iVar5 = FUN_00eae9a0();
            *(undefined4 *)(iVar5 + 4) = uVar7;
            *(undefined4 *)(iVar5 + 8) = uVar3;
            uVar7 = FUN_009007a0();
            (*(code *)PTR_FUN_01c53cd0)(uVar7);
            FUN_00a17da0();
            (*(code *)PTR_FUN_01c53cd0)(&PTR_DAT_01b39360);
            *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
            if (*(uint *)(param_2 + 8) < *(uint *)(*(int *)(param_2 + 4) + 4)) {
              *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) + 1;
              FUN_00eaec14();
            }
            else {
              FUN_00ccd380();
            }
          }
          iVar8 = iVar8 + 1;
        } while (iVar8 < iVar4);
      }
      FUN_009a2b60();
      FUN_009024f0();
    }
  }
  return;
}

