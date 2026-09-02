/* Address: 00a2f120 | Ghidra name: FUN_00a2f120 */

void __fastcall FUN_00a2f120(int param_1,int param_2)

{
  int *piVar1;
  uint uVar2;
  undefined4 uVar3;
  bool bVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  undefined4 local_88;
  undefined4 local_70;
  
  iVar5 = FUN_00a308a0();
  if (iVar5 == 0) {
    FUN_00a2ef70(0);
    FUN_00eae9a0();
    iVar5 = FUN_00a2e420();
    if (iVar5 == 0) {
LAB_00a2f7c0:
                    /* WARNING: Subroutine does not return */
      FUN_00911740();
    }
    FUN_00a2d1e0(0);
    bVar4 = false;
    iVar5 = FUN_00a2ef70(0);
    piVar1 = *(int **)(iVar5 + 4);
    iVar5 = *piVar1;
    iVar9 = 0;
    if (0 < iVar5) {
      do {
        uVar2 = piVar1[iVar9 * 2 + 2];
        iVar6 = FUN_00eae9a0();
        iVar7 = FUN_00a2e420();
        if (iVar7 == 0) goto LAB_00a2f7c0;
        FUN_00a2d1e0(0);
        if ((uVar2 & 0xc0000014) == 4) {
          if (!bVar4) {
            FUN_00a2d8a0();
            if (PTR_FUN_01c22014 != (undefined *)0x0) {
              FUN_00e8ea44();
            }
            if (PTR_FUN_01c222d4 != (undefined *)0x0) {
              FUN_00e8cd95(DAT_01c28ec0);
            }
            if (DAT_01c222d8 == '\0') {
              FUN_00dfdd20();
            }
            else {
              FUN_00956700();
            }
            FUN_00a2d8a0();
            if (DAT_01c222d8 == '\0') {
              FUN_00dfdd20();
            }
            else {
              FUN_00956700();
            }
            iVar7 = FUN_00905410();
            if (iVar7 != 0) {
              FUN_00a2d8a0();
              if (DAT_01c222d8 == '\0') {
                uVar8 = FUN_00dfdd20();
              }
              else {
                uVar8 = FUN_00956700();
              }
              FUN_00eae9a0();
              FUN_00a17be0(0,0,param_1,*(undefined4 *)(param_1 + 0x44),
                           *(undefined4 *)(param_1 + 0x44),&PTR_DAT_01be995c,uVar8);
              FUN_00a17da0();
              uVar8 = *(undefined4 *)(iVar6 + 4);
              uVar3 = *(undefined4 *)(iVar6 + 8);
              iVar7 = FUN_00eae9a0();
              *(undefined4 *)(iVar7 + 4) = uVar8;
              *(undefined4 *)(iVar7 + 8) = uVar3;
              uVar8 = FUN_009007a0();
              (*(code *)PTR_FUN_01c53cc0)(uVar8);
              *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
              if (*(uint *)(param_2 + 8) < *(uint *)(*(int *)(param_2 + 4) + 4)) {
                *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) + 1;
                FUN_00eaec14();
              }
              else {
                FUN_00ccd380();
              }
              bVar4 = true;
            }
          }
          FUN_00a2d8a0();
          if (PTR_FUN_01c22014 != (undefined *)0x0) {
            FUN_00e8ea44();
          }
          if (PTR_FUN_01c222d4 != (undefined *)0x0) {
            FUN_00e8cd95();
          }
          if (DAT_01c222d8 == '\0') {
            local_70 = FUN_00dfdd20();
          }
          else {
            local_70 = FUN_00956700();
          }
          FUN_00eae9a0();
          FUN_00a17be0(0,0,param_1,*(undefined4 *)(param_1 + 0x44),*(undefined4 *)(param_1 + 0x44),
                       &PTR_DAT_01be995c,local_70);
          FUN_00a17da0();
          uVar8 = *(undefined4 *)(iVar6 + 4);
          uVar3 = *(undefined4 *)(iVar6 + 8);
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = uVar8;
          *(undefined4 *)(iVar6 + 8) = uVar3;
          uVar8 = FUN_009007a0();
          (*(code *)PTR_FUN_01c53cc0)(uVar8);
          *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
          if (*(uint *)(param_2 + 8) < *(uint *)(*(int *)(param_2 + 4) + 4)) {
            *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) + 1;
            FUN_00eaebef();
          }
          else {
            FUN_00ccd380();
          }
        }
        else if ((uVar2 & 0xc0000014) == 0x10) {
          if (!bVar4) {
            FUN_00a2d8a0();
            if (PTR_FUN_01c22014 != (undefined *)0x0) {
              FUN_00e8ea44();
            }
            if (PTR_FUN_01c222d4 != (undefined *)0x0) {
              FUN_00e8cd95(DAT_01c28ec0);
            }
            if (DAT_01c222d8 == '\0') {
              FUN_00dfdd20();
            }
            else {
              FUN_00956700();
            }
            FUN_00a2d8a0();
            if (DAT_01c222d8 == '\0') {
              FUN_00dfdd20();
            }
            else {
              FUN_00956700();
            }
            iVar7 = FUN_00905410();
            if (iVar7 != 0) {
              FUN_00a2d8a0();
              if (DAT_01c222d8 == '\0') {
                uVar8 = FUN_00dfdd20();
              }
              else {
                uVar8 = FUN_00956700();
              }
              FUN_00eae9a0();
              FUN_00a17be0(0,0,param_1,*(undefined4 *)(param_1 + 0x44),
                           *(undefined4 *)(param_1 + 0x44),&PTR_DAT_01be995c,uVar8);
              FUN_00a17da0();
              uVar8 = *(undefined4 *)(iVar6 + 4);
              uVar3 = *(undefined4 *)(iVar6 + 8);
              iVar7 = FUN_00eae9a0();
              *(undefined4 *)(iVar7 + 4) = uVar8;
              *(undefined4 *)(iVar7 + 8) = uVar3;
              uVar8 = FUN_009007a0();
              (*(code *)PTR_FUN_01c53cc0)(uVar8);
              *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
              if (*(uint *)(param_2 + 8) < *(uint *)(*(int *)(param_2 + 4) + 4)) {
                *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) + 1;
                FUN_00eaec14();
              }
              else {
                FUN_00ccd380();
              }
              bVar4 = true;
            }
          }
          FUN_00a2d8a0();
          if (PTR_FUN_01c22014 != (undefined *)0x0) {
            FUN_00e8ea44();
          }
          if (PTR_FUN_01c222d4 != (undefined *)0x0) {
            FUN_00e8cd95();
          }
          if (DAT_01c222d8 == '\0') {
            local_88 = FUN_00dfdd20();
          }
          else {
            local_88 = FUN_00956700();
          }
          FUN_00eae9a0();
          FUN_00a17be0(0,0,param_1,*(undefined4 *)(param_1 + 0x44),*(undefined4 *)(param_1 + 0x44),
                       &PTR_DAT_01be995c,local_88);
          FUN_00a17da0();
          uVar8 = *(undefined4 *)(iVar6 + 4);
          uVar3 = *(undefined4 *)(iVar6 + 8);
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = uVar8;
          *(undefined4 *)(iVar6 + 8) = uVar3;
          uVar8 = FUN_009007a0();
          (*(code *)PTR_FUN_01c53cc0)(uVar8);
          *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
          if (*(uint *)(param_2 + 8) < *(uint *)(*(int *)(param_2 + 4) + 4)) {
            *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) + 1;
            FUN_00eaebef();
          }
          else {
            FUN_00ccd380();
          }
        }
        iVar9 = iVar9 + 1;
      } while (iVar9 < iVar5);
    }
    FUN_009a2b60();
    FUN_009024f0();
    FUN_009a2b60();
    FUN_009024f0();
  }
  return;
}

