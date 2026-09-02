/* Address: 00a60270 | Ghidra name: FUN_00a60270 */

int __fastcall FUN_00a60270(int param_1)

{
  ushort uVar1;
  short sVar2;
  int *piVar3;
  uint uVar4;
  undefined4 uVar5;
  bool bVar6;
  int iVar7;
  undefined4 *puVar8;
  undefined4 uVar9;
  int iVar10;
  uint uVar11;
  undefined1 uVar12;
  short sVar13;
  int local_18;
  int local_14;
  
  uVar11 = *(uint *)(param_1 + 0x2c);
  iVar7 = *(int *)(param_1 + 0x14);
  if (uVar11 == *(uint *)(iVar7 + 4)) {
LAB_00a608a8:
    uVar11 = *(uint *)(param_1 + 0x44);
    if (((uVar11 & 4) == 0) && (*(char *)(param_1 + 0x49) == '\0')) {
      iVar7 = *(int *)(param_1 + 0x34);
      *(int *)(param_1 + 0x34) = iVar7 + 1;
      iVar10 = FUN_00eae9a0();
      *(undefined1 *)(iVar10 + 0x1e) = 0x1c;
      *(uint *)(iVar10 + 0x18) = uVar11;
      *(int *)(iVar10 + 0x10) = iVar7;
      *(undefined4 *)(iVar10 + 0x14) = 0xffffffff;
      return iVar10;
    }
    *(undefined1 *)(param_1 + 0x49) = 0;
    iVar7 = FUN_00eae9a0();
    uVar9 = *(undefined4 *)(param_1 + 0x44);
    *(undefined1 *)(iVar7 + 0x1e) = 0x1d;
    *(undefined4 *)(iVar7 + 0x18) = uVar9;
    return iVar7;
  }
  if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
  if (*(short *)(iVar7 + 8 + uVar11 * 2) != 0x3f) goto LAB_00a608a8;
  uVar11 = uVar11 + 1;
  if ((int)uVar11 < *(int *)(iVar7 + 4)) {
    if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
    if (*(short *)(iVar7 + 8 + uVar11 * 2) == 0x29) goto LAB_00a608a8;
  }
  *(uint *)(param_1 + 0x2c) = uVar11;
  uVar11 = *(uint *)(param_1 + 0x2c);
  iVar7 = *(int *)(param_1 + 0x14);
  if (uVar11 == *(uint *)(iVar7 + 4)) goto LAB_00a60a8d;
  sVar13 = 0x3e;
  *(uint *)(param_1 + 0x2c) = uVar11 + 1;
  if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
  uVar1 = *(ushort *)(iVar7 + 8 + uVar11 * 2);
  if (uVar1 < 0x28) {
    if (uVar1 == 0x21) {
      *(uint *)(param_1 + 0x44) = *(uint *)(param_1 + 0x44) & 0xffffffbf;
LAB_00a605c2:
      uVar12 = 0x1f;
      goto LAB_00a60893;
    }
    if (uVar1 == 0x27) {
      sVar13 = 0x27;
      goto switchD_00a604f6_caseD_3c;
    }
switchD_00a604f6_caseD_3b:
    *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
    uVar12 = 0x1d;
    if (*(char *)(*(int *)(param_1 + 4) + 0x1e) != '\"') {
      FUN_00a61940();
    }
    uVar11 = *(uint *)(param_1 + 0x2c);
    iVar7 = *(int *)(param_1 + 0x14);
    if (uVar11 != *(uint *)(iVar7 + 4)) {
      *(uint *)(param_1 + 0x2c) = uVar11 + 1;
      if (*(uint *)(iVar7 + 4) <= uVar11) {
LAB_00a60aa7:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      sVar13 = *(short *)(iVar7 + 8 + uVar11 * 2);
      if (sVar13 == 0x29) {
        return 0;
      }
      if (sVar13 == 0x3a) goto LAB_00a60893;
    }
LAB_00a60a8d:
    FUN_00a62c10(&PTR_DAT_01bd335c);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (uVar1 == 0x28) {
    uVar11 = *(uint *)(param_1 + 0x2c);
    iVar7 = *(int *)(param_1 + 0x14);
    if ((int)uVar11 < *(int *)(iVar7 + 4)) {
      if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
      if (*(ushort *)(iVar7 + 8 + uVar11 * 2) - 0x30 < 10) {
        uVar9 = FUN_00a617a0();
        uVar11 = *(uint *)(param_1 + 0x2c);
        iVar7 = *(int *)(param_1 + 0x14);
        if ((int)uVar11 < *(int *)(iVar7 + 4)) {
          *(uint *)(param_1 + 0x2c) = uVar11 + 1;
          if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
          if (*(short *)(iVar7 + 8 + uVar11 * 2) == 0x29) {
            iVar7 = FUN_00a62650();
            if (iVar7 != 0) {
              iVar7 = FUN_00eae9a0();
              uVar5 = *(undefined4 *)(param_1 + 0x44);
              *(undefined1 *)(iVar7 + 0x1e) = 0x21;
              *(undefined4 *)(iVar7 + 0x18) = uVar5;
              *(undefined4 *)(iVar7 + 0x10) = uVar9;
              return iVar7;
            }
            FUN_0092af10();
            uVar9 = FUN_00a4ef30();
            FUN_00a62c10(uVar9);
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
        }
        FUN_0092af10();
        uVar9 = FUN_00a4ef30();
        FUN_00a62c10(uVar9);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      iVar7 = FUN_00a53740();
      if (iVar7 != 0) {
        FUN_00a616c0();
        piVar3 = *(int **)(param_1 + 0x20);
        if (piVar3 == (int *)0x0) {
          puVar8 = (undefined4 *)0x0;
        }
        else if ((undefined *)*piVar3 == &DAT_0161e4e0) {
          if (*(undefined **)piVar3[0xb] == &DAT_0161e4e0) {
            puVar8 = (undefined4 *)FUN_009db1a0();
          }
          else {
            puVar8 = (undefined4 *)(**(code **)(*(undefined **)piVar3[0xb] + 0x34))();
          }
        }
        else {
          puVar8 = (undefined4 *)(**(code **)(*piVar3 + 0x34))();
        }
        if ((puVar8 != (undefined4 *)0x0) && ((undefined *)*puVar8 == &DAT_016118bc)) {
          uVar9 = puVar8[1];
          uVar4 = *(uint *)(param_1 + 0x2c);
          iVar7 = *(int *)(param_1 + 0x14);
          if ((int)uVar4 < *(int *)(iVar7 + 4)) {
            *(uint *)(param_1 + 0x2c) = uVar4 + 1;
            if (*(uint *)(iVar7 + 4) <= uVar4) goto LAB_00a60aa7;
            if (*(short *)(iVar7 + 8 + uVar4 * 2) == 0x29) {
              iVar7 = FUN_00eae9a0();
              uVar5 = *(undefined4 *)(param_1 + 0x44);
              *(undefined1 *)(iVar7 + 0x1e) = 0x21;
              *(undefined4 *)(iVar7 + 0x18) = uVar5;
              *(undefined4 *)(iVar7 + 0x10) = uVar9;
              return iVar7;
            }
          }
        }
      }
    }
    *(uint *)(param_1 + 0x2c) = uVar11 - 1;
    *(undefined1 *)(param_1 + 0x49) = 1;
    iVar7 = *(int *)(param_1 + 0x2c);
    uVar11 = iVar7 + 2;
    iVar10 = *(int *)(param_1 + 0x14);
    if (*(int *)(iVar10 + 4) <= (int)uVar11) {
      uVar12 = 0x22;
      goto LAB_00a60893;
    }
    uVar4 = *(uint *)(iVar10 + 4);
    if (iVar7 + 1U < uVar4) {
      if (*(short *)(iVar10 + 8 + (iVar7 + 1U) * 2) == 0x3f) {
        if (uVar4 <= uVar11) goto LAB_00a60aa7;
        sVar13 = *(short *)(iVar10 + 8 + uVar11 * 2);
        if (sVar13 == 0x23) {
          FUN_00a62c10(&PTR_DAT_01b4cd14);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        if (sVar13 == 0x27) {
LAB_00a60a73:
          FUN_00a62c10(&PTR_DAT_01b4cd78);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        uVar11 = iVar7 + 3;
        if ((int)uVar11 < *(int *)(iVar10 + 4)) {
          if (sVar13 == 0x3c) {
            if (uVar4 <= uVar11) goto LAB_00a60aa7;
            sVar13 = *(short *)(iVar10 + 8 + uVar11 * 2);
            if (sVar13 == 0x21) {
              uVar12 = 0x22;
            }
            else {
              uVar12 = 0x22;
              if (sVar13 != 0x3d) goto LAB_00a60a73;
            }
          }
          else {
            uVar12 = 0x22;
          }
        }
        else {
          uVar12 = 0x22;
        }
      }
      else {
        uVar12 = 0x22;
      }
      goto LAB_00a60893;
    }
    goto LAB_00a60aa7;
  }
  switch(uVar1) {
  case 0x3a:
    uVar12 = 0x1d;
    goto LAB_00a60893;
  default:
    goto switchD_00a604f6_caseD_3b;
  case 0x3c:
switchD_00a604f6_caseD_3c:
    uVar11 = *(uint *)(param_1 + 0x2c);
    iVar7 = *(int *)(param_1 + 0x14);
    if (uVar11 == *(uint *)(iVar7 + 4)) goto LAB_00a60a8d;
    *(uint *)(param_1 + 0x2c) = uVar11 + 1;
    if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
    uVar11 = (uint)*(ushort *)(iVar7 + 8 + uVar11 * 2);
    if (uVar11 == 0x21) {
      if (sVar13 == 0x27) goto LAB_00a60a8d;
      *(uint *)(param_1 + 0x44) = *(uint *)(param_1 + 0x44) | 0x40;
      goto LAB_00a605c2;
    }
    if (uVar11 != 0x3d) {
      *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
      local_14 = -1;
      local_18 = -1;
      bVar6 = false;
      if (uVar11 - 0x30 < 10) {
        local_14 = FUN_00a617a0();
        iVar7 = FUN_00a62650();
        if (iVar7 == 0) {
          local_14 = -1;
        }
        uVar11 = *(uint *)(param_1 + 0x2c);
        iVar7 = *(int *)(param_1 + 0x14);
        if ((int)uVar11 < *(int *)(iVar7 + 4)) {
          if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
          sVar2 = *(short *)(iVar7 + 8 + uVar11 * 2);
          if ((sVar2 != sVar13) && (sVar2 != 0x2d)) {
            FUN_00a62c10(&PTR_DAT_01b7f704);
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
        }
        if (local_14 == 0) {
          FUN_00a62c10(&PTR_DAT_01b5ad84);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
      else {
        iVar7 = FUN_00a53740();
        if (iVar7 == 0) {
          if (uVar11 != 0x2d) {
            FUN_00a62c10(&PTR_DAT_01b7f704);
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          bVar6 = true;
          local_14 = -1;
        }
        else {
          FUN_00a616c0();
          piVar3 = *(int **)(param_1 + 0x20);
          if (piVar3 == (int *)0x0) {
            puVar8 = (undefined4 *)0x0;
          }
          else if ((undefined *)*piVar3 == &DAT_0161e4e0) {
            if (*(undefined **)piVar3[0xb] == &DAT_0161e4e0) {
              puVar8 = (undefined4 *)FUN_009db1a0();
            }
            else {
              puVar8 = (undefined4 *)(**(code **)(*(undefined **)piVar3[0xb] + 0x34))();
            }
          }
          else {
            puVar8 = (undefined4 *)(**(code **)(*piVar3 + 0x34))();
          }
          if ((puVar8 != (undefined4 *)0x0) && ((undefined *)*puVar8 == &DAT_016118bc)) {
            local_14 = puVar8[1];
          }
          uVar11 = *(uint *)(param_1 + 0x2c);
          iVar7 = *(int *)(param_1 + 0x14);
          if ((int)uVar11 < *(int *)(iVar7 + 4)) {
            if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
            sVar2 = *(short *)(iVar7 + 8 + uVar11 * 2);
            if ((sVar2 != sVar13) && (sVar2 != 0x2d)) {
              FUN_00a62c10(&PTR_DAT_01b7f704);
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
          }
        }
      }
      if (local_14 != -1 || bVar6) {
        uVar11 = *(uint *)(param_1 + 0x2c);
        iVar7 = *(int *)(param_1 + 0x14);
        if ((int)(uVar11 + 1) < *(int *)(iVar7 + 4)) {
          if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
          if (*(short *)(iVar7 + 8 + uVar11 * 2) == 0x2d) {
            *(uint *)(param_1 + 0x2c) = uVar11 + 1;
            if (*(uint *)(*(int *)(param_1 + 0x14) + 4) <= *(uint *)(param_1 + 0x2c))
            goto LAB_00a60aa7;
            if (*(ushort *)(*(int *)(param_1 + 0x14) + 8 + *(uint *)(param_1 + 0x2c) * 2) - 0x30 <
                10) {
              local_18 = FUN_00a617a0();
              iVar7 = FUN_00a62650();
              if (iVar7 == 0) {
                iVar7 = FUN_00eae9a0();
                *(int *)(iVar7 + 4) = local_18;
                uVar9 = FUN_00a4ef30();
                FUN_00a62c10(uVar9);
                    /* WARNING: Subroutine does not return */
                FUN_00eaeefb();
              }
              uVar11 = *(uint *)(param_1 + 0x2c);
              iVar7 = *(int *)(param_1 + 0x14);
              if ((int)uVar11 < *(int *)(iVar7 + 4)) {
                if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
                if (*(short *)(iVar7 + 8 + uVar11 * 2) != sVar13) {
                  FUN_00a62c10(&PTR_DAT_01b7f704);
                    /* WARNING: Subroutine does not return */
                  FUN_00eaeefb();
                }
              }
            }
            else {
              iVar7 = FUN_00a53740();
              if (iVar7 == 0) {
                FUN_00a62c10(&PTR_DAT_01b7f704);
                    /* WARNING: Subroutine does not return */
                FUN_00eaeefb();
              }
              uVar9 = FUN_00a616c0();
              piVar3 = *(int **)(param_1 + 0x20);
              if (piVar3 == (int *)0x0) {
                puVar8 = (undefined4 *)0x0;
              }
              else if ((undefined *)*piVar3 == &DAT_0161e4e0) {
                if (*(undefined **)piVar3[0xb] == &DAT_0161e4e0) {
                  puVar8 = (undefined4 *)FUN_009db1a0(uVar9);
                }
                else {
                  puVar8 = (undefined4 *)(**(code **)(*(undefined **)piVar3[0xb] + 0x34))();
                }
              }
              else {
                puVar8 = (undefined4 *)(**(code **)(*piVar3 + 0x34))();
              }
              if ((puVar8 == (undefined4 *)0x0) || ((undefined *)*puVar8 != &DAT_016118bc)) {
                uVar9 = FUN_00a4ef30();
                FUN_00a62c10(uVar9);
                    /* WARNING: Subroutine does not return */
                FUN_00eaeefb();
              }
              local_18 = puVar8[1];
              uVar11 = *(uint *)(param_1 + 0x2c);
              iVar7 = *(int *)(param_1 + 0x14);
              if ((int)uVar11 < *(int *)(iVar7 + 4)) {
                if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_00a60aa7;
                if (*(short *)(iVar7 + 8 + uVar11 * 2) != sVar13) {
                  FUN_00a62c10(&PTR_DAT_01b7f704);
                    /* WARNING: Subroutine does not return */
                  FUN_00eaeefb();
                }
              }
            }
          }
        }
      }
      if ((local_14 != -1) || (local_18 != -1)) {
        uVar11 = *(uint *)(param_1 + 0x2c);
        iVar7 = *(int *)(param_1 + 0x14);
        if (*(int *)(iVar7 + 4) <= (int)uVar11) goto LAB_00a60a8d;
        *(uint *)(param_1 + 0x2c) = uVar11 + 1;
        if (uVar11 < *(uint *)(iVar7 + 4)) {
          if (*(short *)(iVar7 + 8 + uVar11 * 2) == sVar13) {
            iVar7 = FUN_00eae9a0();
            uVar9 = *(undefined4 *)(param_1 + 0x44);
            *(undefined1 *)(iVar7 + 0x1e) = 0x1c;
            *(undefined4 *)(iVar7 + 0x18) = uVar9;
            *(int *)(iVar7 + 0x10) = local_14;
            *(int *)(iVar7 + 0x14) = local_18;
            return iVar7;
          }
          goto LAB_00a60a8d;
        }
        goto LAB_00a60aa7;
      }
      goto LAB_00a60a8d;
    }
    if (sVar13 == 0x27) goto LAB_00a60a8d;
    *(uint *)(param_1 + 0x44) = *(uint *)(param_1 + 0x44) | 0x40;
    break;
  case 0x3d:
    *(uint *)(param_1 + 0x44) = *(uint *)(param_1 + 0x44) & 0xffffffbf;
    break;
  case 0x3e:
    uVar12 = 0x20;
    goto LAB_00a60893;
  }
  uVar12 = 0x1e;
LAB_00a60893:
  iVar7 = FUN_00eae9a0();
  uVar9 = *(undefined4 *)(param_1 + 0x44);
  *(undefined1 *)(iVar7 + 0x1e) = uVar12;
  *(undefined4 *)(iVar7 + 0x18) = uVar9;
  return iVar7;
}

