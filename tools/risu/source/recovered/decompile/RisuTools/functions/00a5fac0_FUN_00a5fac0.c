/* Address: 00a5fac0 | Ghidra name: FUN_00a5fac0 */

int __fastcall FUN_00a5fac0(int param_1,byte param_2,char param_3)

{
  undefined2 *puVar1;
  ushort uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  bool bVar6;
  bool bVar7;
  bool bVar8;
  int iVar9;
  int iVar10;
  undefined4 uVar11;
  int extraout_ECX;
  undefined2 uVar12;
  uint uVar13;
  undefined2 uVar14;
  uint uVar15;
  
  uVar15 = 0;
  bVar7 = false;
  bVar8 = true;
  if (param_3 == '\0') {
    iVar9 = FUN_00eae9a0();
  }
  else {
    iVar9 = 0;
  }
  uVar13 = *(uint *)(param_1 + 0x2c);
  iVar10 = iVar9;
  if ((int)uVar13 < *(int *)(*(int *)(param_1 + 0x14) + 4)) {
    if (*(uint *)(*(int *)(param_1 + 0x14) + 4) <= uVar13) {
LAB_00a60261:
                    /* WARNING: Subroutine does not return */
      FUN_009c2bf0();
    }
    if (*(short *)(*(int *)(param_1 + 0x14) + 8 + uVar13 * 2) == 0x5e) {
      *(uint *)(param_1 + 0x2c) = uVar13 + 1;
      if (param_3 == '\0') {
        *(undefined1 *)(iVar9 + 0x14) = 1;
      }
      if ((*(uint *)(param_1 + 0x44) & 0x100) != 0) {
        if (*(uint *)(*(int *)(param_1 + 0x14) + 4) <= *(uint *)(param_1 + 0x2c)) goto LAB_00a60261;
        if (*(short *)(*(int *)(param_1 + 0x14) + 8 + *(uint *)(param_1 + 0x2c) * 2) == 0x5d)
        goto LAB_00a5fb9d;
      }
    }
  }
LAB_00a5fba2:
  if (*(int *)(*(int *)(param_1 + 0x14) + 4) <= *(int *)(param_1 + 0x2c)) {
    FUN_00a62c10(&PTR_DAT_01bd3684);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  bVar6 = false;
  uVar13 = *(uint *)(param_1 + 0x2c);
  *(uint *)(param_1 + 0x2c) = uVar13 + 1;
  if (*(uint *)(*(int *)(param_1 + 0x14) + 4) <= uVar13) goto LAB_00a60261;
  uVar13 = (uint)*(ushort *)(*(int *)(param_1 + 0x14) + 8 + uVar13 * 2);
  uVar14 = (undefined2)uVar15;
  if (uVar13 == 0x5d) {
    if (!bVar8) {
      if ((param_2 & param_3 == '\0') != 0) {
        FUN_00a526e0();
        iVar10 = iVar9;
      }
      return iVar10;
    }
LAB_00a5fe49:
    uVar12 = (undefined2)uVar13;
    if (bVar7) {
      bVar7 = false;
      if (param_3 == '\0') {
        if ((uVar13 != 0x5b) || (bVar8 || bVar6)) {
          if ((int)uVar13 < (int)uVar15) {
            FUN_00a62c10(&PTR_DAT_01bdd644);
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          iVar10 = FUN_00a52400();
          *(int *)(iVar10 + 0xc) = *(int *)(iVar10 + 0xc) + 1;
          uVar13 = *(uint *)(iVar10 + 8);
          if (uVar13 < *(uint *)(*(int *)(iVar10 + 4) + 4)) {
            *(uint *)(iVar10 + 8) = uVar13 + 1;
            puVar1 = (undefined2 *)(*(int *)(iVar10 + 4) + 8 + uVar13 * 4);
            *puVar1 = uVar14;
            puVar1[1] = uVar12;
            iVar10 = iVar9;
          }
          else {
            FUN_00c5d850(CONCAT22(uVar12,uVar14));
            iVar10 = iVar9;
          }
        }
        else {
          iVar10 = FUN_00a52400();
          *(int *)(iVar10 + 0xc) = *(int *)(iVar10 + 0xc) + 1;
          uVar13 = *(uint *)(iVar10 + 8);
          if (uVar13 < *(uint *)(*(int *)(iVar10 + 4) + 4)) {
            *(uint *)(iVar10 + 8) = uVar13 + 1;
            puVar1 = (undefined2 *)(*(int *)(iVar10 + 4) + 8 + uVar13 * 4);
            *puVar1 = uVar14;
            puVar1[1] = uVar14;
          }
          else {
            FUN_00c5d850(CONCAT22(uVar14,uVar14));
          }
          FUN_00a5fac0(0);
          FUN_00eaebca();
          uVar13 = *(uint *)(param_1 + 0x2c);
          iVar4 = *(int *)(param_1 + 0x14);
          iVar10 = extraout_ECX;
          if ((int)uVar13 < *(int *)(iVar4 + 4)) {
            if (*(uint *)(iVar4 + 4) <= uVar13) goto LAB_00a60261;
            iVar10 = extraout_ECX;
            if (*(short *)(iVar4 + 8 + uVar13 * 2) != 0x5d) {
              FUN_00a62c10(&PTR_DAT_01b4ab28);
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
          }
        }
      }
    }
    else {
      uVar5 = *(uint *)(param_1 + 0x2c);
      uVar3 = uVar5 + 1;
      iVar4 = *(int *)(param_1 + 0x14);
      if ((int)uVar3 < *(int *)(iVar4 + 4)) {
        if (*(uint *)(iVar4 + 4) <= uVar5) goto LAB_00a60261;
        if (*(short *)(iVar4 + 8 + uVar5 * 2) == 0x2d) {
          if (*(uint *)(iVar4 + 4) <= uVar3) goto LAB_00a60261;
          if (*(short *)(iVar4 + 8 + uVar3 * 2) != 0x5d) {
            *(uint *)(param_1 + 0x2c) = uVar3;
            bVar7 = true;
            uVar15 = uVar13;
            goto LAB_00a5fb9d;
          }
        }
      }
      if ((((int)uVar5 < *(int *)(iVar4 + 4)) && (uVar13 == 0x2d)) && (!bVar6)) {
        if (*(uint *)(iVar4 + 4) <= uVar5) goto LAB_00a60261;
        if ((*(short *)(iVar4 + 8 + uVar5 * 2) == 0x5b) && (!bVar8)) {
          *(uint *)(param_1 + 0x2c) = uVar3;
          FUN_00a5fac0(param_3);
          iVar10 = iVar9;
          if (param_3 == '\0') {
            iVar10 = FUN_00eaebef();
            uVar13 = *(uint *)(param_1 + 0x2c);
            iVar4 = *(int *)(param_1 + 0x14);
            if (*(int *)(iVar4 + 4) <= (int)uVar13) goto LAB_00a5fb9d;
            if (*(uint *)(iVar4 + 4) <= uVar13) goto LAB_00a60261;
            if (*(short *)(iVar4 + 8 + uVar13 * 2) != 0x5d) {
              FUN_00a62c10(&PTR_DAT_01b4ab28);
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            }
          }
          goto LAB_00a5fb9d;
        }
      }
      if (param_3 == '\0') {
        iVar10 = FUN_00a52400();
        *(int *)(iVar10 + 0xc) = *(int *)(iVar10 + 0xc) + 1;
        uVar13 = *(uint *)(iVar10 + 8);
        if (uVar13 < *(uint *)(*(int *)(iVar10 + 4) + 4)) {
          *(uint *)(iVar10 + 8) = uVar13 + 1;
          puVar1 = (undefined2 *)(*(int *)(iVar10 + 4) + 8 + uVar13 * 4);
          *puVar1 = uVar12;
          puVar1[1] = uVar12;
          iVar10 = iVar9;
        }
        else {
          FUN_00c5d850(CONCAT22(uVar12,uVar12));
          iVar10 = iVar9;
        }
      }
    }
  }
  else {
    if (uVar13 != 0x5c) goto LAB_00a5fe49;
    uVar3 = *(uint *)(param_1 + 0x2c);
    iVar4 = *(int *)(param_1 + 0x14);
    if (*(int *)(iVar4 + 4) <= (int)uVar3) goto LAB_00a5fe49;
    *(uint *)(param_1 + 0x2c) = uVar3 + 1;
    if (*(uint *)(iVar4 + 4) <= uVar3) goto LAB_00a60261;
    uVar2 = *(ushort *)(iVar4 + 8 + uVar3 * 2);
    if (uVar2 < 0x54) {
      if (uVar2 < 0x45) {
        if (uVar2 == 0x2d) {
          if (param_3 == '\0') {
            if (bVar7) {
              if (0x2d < (int)uVar15) {
                FUN_00a62c10(&PTR_DAT_01bdd644);
                    /* WARNING: Subroutine does not return */
                FUN_00eaeefb();
              }
              iVar10 = FUN_00a52400();
              *(int *)(iVar10 + 0xc) = *(int *)(iVar10 + 0xc) + 1;
              uVar15 = *(uint *)(iVar10 + 8);
              if (uVar15 < *(uint *)(*(int *)(iVar10 + 4) + 4)) {
                *(uint *)(iVar10 + 8) = uVar15 + 1;
                puVar1 = (undefined2 *)(*(int *)(iVar10 + 4) + 8 + uVar15 * 4);
                *puVar1 = uVar14;
                puVar1[1] = 0x2d;
              }
              else {
                FUN_00c5d850(CONCAT22(0x2d,uVar14));
              }
              uVar15 = 0;
              bVar7 = false;
              iVar10 = iVar9;
            }
            else {
              iVar10 = FUN_00a52400();
              *(int *)(iVar10 + 0xc) = *(int *)(iVar10 + 0xc) + 1;
              uVar13 = *(uint *)(iVar10 + 8);
              if (uVar13 < *(uint *)(*(int *)(iVar10 + 4) + 4)) {
                *(uint *)(iVar10 + 8) = uVar13 + 1;
                puVar1 = (undefined2 *)(*(int *)(iVar10 + 4) + 8 + uVar13 * 4);
                *puVar1 = 0x2d;
                puVar1[1] = 0x2d;
                iVar10 = iVar9;
              }
              else {
                FUN_00c5d850(0x2d002d);
                iVar10 = iVar9;
              }
            }
          }
          goto LAB_00a5fb9d;
        }
        if (uVar2 == 0x44) goto LAB_00a5fde6;
      }
      else {
        if (uVar2 == 0x50) goto LAB_00a5fc4d;
        if (uVar2 == 0x53) goto LAB_00a5fcad;
      }
LAB_00a5fe32:
      *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + -1;
      uVar13 = FUN_00a619e0();
      bVar6 = true;
      iVar10 = iVar9;
      goto LAB_00a5fe49;
    }
    if (uVar2 < 0x65) {
      if (uVar2 == 0x57) {
LAB_00a5fb63:
        if (param_3 == '\0') {
          if (bVar7) {
            iVar9 = FUN_00eae9a0();
            *(ushort *)(iVar9 + 4) = uVar2;
            uVar11 = FUN_00a4ef30();
            FUN_00a62c10(uVar11);
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          FUN_00a528d0(uVar2 == 0x57);
          iVar10 = iVar9;
        }
      }
      else {
        if (uVar2 != 100) goto LAB_00a5fe32;
LAB_00a5fde6:
        if (param_3 == '\0') {
          if (bVar7) {
            iVar9 = FUN_00eae9a0();
            *(ushort *)(iVar9 + 4) = uVar2;
            uVar11 = FUN_00a4ef30();
            FUN_00a62c10(uVar11);
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
          FUN_00a52970(*(undefined4 *)(param_1 + 0x2c),*(undefined4 *)(param_1 + 0x14),uVar2 == 0x44
                      );
          iVar10 = iVar9;
        }
      }
    }
    else if (uVar2 == 0x70) {
LAB_00a5fc4d:
      if (param_3 == '\0') {
        if (bVar7) {
          iVar9 = FUN_00eae9a0();
          *(ushort *)(iVar9 + 4) = uVar2;
          uVar11 = FUN_00a4ef30();
          FUN_00a62c10(uVar11);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        FUN_00a61b20();
        FUN_00a52580(*(undefined4 *)(param_1 + 0x2c),*(undefined4 *)(param_1 + 0x14),param_2,
                     uVar2 != 0x70);
        iVar10 = iVar9;
      }
      else {
        FUN_00a61b20();
        iVar10 = iVar9;
      }
    }
    else {
      if (uVar2 != 0x73) {
        if (uVar2 != 0x77) goto LAB_00a5fe32;
        goto LAB_00a5fb63;
      }
LAB_00a5fcad:
      if (param_3 == '\0') {
        if (bVar7) {
          iVar9 = FUN_00eae9a0();
          *(ushort *)(iVar9 + 4) = uVar2;
          uVar11 = FUN_00a4ef30();
          FUN_00a62c10(uVar11);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        FUN_00a52920(uVar2 == 0x53);
        iVar10 = iVar9;
      }
    }
  }
LAB_00a5fb9d:
  bVar8 = false;
  goto LAB_00a5fba2;
}

