/* Address: 0077c680 | Ghidra name: FUN_0077c680 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0077c680(int param_1)

{
  int iVar1;
  undefined **ppuVar2;
  double dVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  bool bVar12;
  undefined4 uVar13;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  int iStack_14;
  
  local_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  uStack_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  local_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  local_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  iStack_14 = 0;
  if (*(int *)(param_1 + 4) == 0) {
    iStack_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    iStack_14 = FUN_0077a680(&PTR_DAT_01c0f488,5000,&PTR_DAT_01be7648);
    if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d92020(&PTR_DAT_015454ec);
      FUN_00dfca00(&PTR_DAT_015572fc);
      return;
    }
  }
  if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar6 = *(int *)(iStack_14 + 0x20);
  iVar4 = FUN_00eae9a0();
  iVar5 = FUN_00eae9a0();
  *(undefined ***)(iVar5 + 4) = &PTR_DAT_01c1133c;
  FUN_00eaebca();
  if (((iVar6 != 0) && (*(int *)(iVar6 + 4) != 0)) && (iVar6 = FUN_00905af0(), iVar6 == 0)) {
    uStack_18 = 0x7c;
    iVar6 = FUN_00908570(0,&uStack_18,1);
    if (2 < *(int *)(iVar6 + 4)) {
      ppuVar2 = *(undefined ***)(iVar6 + 8);
      if (ppuVar2 == &PTR_DAT_01b44160) {
        bVar12 = true;
      }
      else if ((ppuVar2 == (undefined **)0x0) || (ppuVar2[1] != (undefined *)0x1)) {
        bVar12 = false;
      }
      else {
        bVar12 = *(short *)(ppuVar2 + 2) == 0x31;
      }
      *(bool *)(iVar4 + 8) = bVar12;
      ppuVar2 = *(undefined ***)(iVar6 + 0xc);
      if (ppuVar2 == &PTR_DAT_01b44160) {
        bVar12 = true;
      }
      else if ((ppuVar2 == (undefined **)0x0) || (ppuVar2[1] != (undefined *)0x1)) {
        bVar12 = false;
      }
      else {
        bVar12 = *(short *)(ppuVar2 + 2) == 0x31;
      }
      *(bool *)(iVar4 + 9) = bVar12;
      if ((*(int *)(iVar6 + 0x10) != 0) && (*(int *)(*(int *)(iVar6 + 0x10) + 4) != 0)) {
        uStack_1c = 0x3b;
        iVar6 = FUN_00908570(0,&uStack_1c,1);
        for (iVar5 = 0; iVar5 < *(int *)(iVar6 + 4); iVar5 = iVar5 + 1) {
          local_20 = 0x2c;
          iVar9 = FUN_00908570(0,&local_20,1);
          iVar7 = *(int *)(iVar9 + 4);
          if (4 < iVar7) {
            iVar10 = FUN_00eae9a0();
            *(undefined ***)(iVar10 + 4) = &PTR_DAT_01b39360;
            iVar11 = *(int *)(iVar9 + 8);
            if (iVar11 == 0) goto LAB_0077cba5;
            iVar1 = iVar11 + 8;
            uVar13 = *(undefined4 *)(iVar11 + 4);
            iVar11 = iVar1;
            uStack_24 = uVar13;
            FUN_00958ea0(iVar1,uVar13);
            iVar11 = FUN_00dd21c0(&uStack_28,iVar11,uVar13);
            if (iVar11 != 0) {
              if (iVar11 == 1) {
                    /* WARNING: Subroutine does not return */
                FUN_00dca280(iVar1,uStack_24);
              }
LAB_0077cb72:
                    /* WARNING: Subroutine does not return */
              FUN_00de72e0();
            }
            *(undefined4 *)(iVar10 + 8) = uStack_28;
            iVar11 = *(int *)(iVar9 + 0xc);
            if (iVar11 == 0) goto LAB_0077cba5;
            iVar1 = iVar11 + 8;
            uVar13 = *(undefined4 *)(iVar11 + 4);
            iVar11 = iVar1;
            uStack_2c = uVar13;
            FUN_00958ea0(iVar1,uVar13);
            iVar11 = FUN_00dd21c0(&local_30,iVar11,uVar13);
            if (iVar11 != 0) {
              if (iVar11 == 1) {
                    /* WARNING: Subroutine does not return */
                FUN_00dca280(iVar1,uStack_2c);
              }
              goto LAB_0077cb72;
            }
            *(undefined4 *)(iVar10 + 0xc) = local_30;
            iVar11 = FUN_00eaebef();
            iVar11 = *(int *)(iVar11 + 0x14);
            if (iVar11 == 0) {
LAB_0077cba5:
                    /* WARNING: Subroutine does not return */
              FUN_00931d20();
            }
            iVar1 = iVar11 + 8;
            uVar13 = *(undefined4 *)(iVar11 + 4);
            iVar11 = iVar1;
            uStack_34 = uVar13;
            FUN_00958ea0(iVar1,uVar13);
            iVar11 = FUN_00dd14e0(&uStack_3c,iVar11,uVar13);
            if (iVar11 == 0) {
                    /* WARNING: Subroutine does not return */
              FUN_00dca280(iVar1,uStack_34);
            }
            dVar3 = (double)CONCAT44(uStack_38,uStack_3c);
            iVar11 = 0x7fffffff;
            if (dVar3 < _DAT_018d3518) {
              iVar11 = (int)(double)(-(ulonglong)(!NAN(dVar3) && !NAN(dVar3)) & (ulonglong)dVar3);
            }
            *(int *)(iVar10 + 0x10) = iVar11;
            iVar11 = *(int *)(iVar9 + 0x18);
            if (iVar11 == 0) goto LAB_0077cba5;
            iVar1 = iVar11 + 8;
            uVar13 = *(undefined4 *)(iVar11 + 4);
            iVar11 = iVar1;
            local_40 = uVar13;
            FUN_00958ea0(iVar1,uVar13);
            iVar11 = FUN_00dd14e0(&uStack_48,iVar11,uVar13);
            if (iVar11 == 0) {
                    /* WARNING: Subroutine does not return */
              FUN_00dca280(iVar1,local_40);
            }
            dVar3 = (double)CONCAT44(uStack_44,uStack_48);
            iVar11 = 0x7fffffff;
            if (dVar3 < _DAT_018d3518) {
              iVar11 = (int)(double)(-(ulonglong)(!NAN(dVar3) && !NAN(dVar3)) & (ulonglong)dVar3);
            }
            *(int *)(iVar10 + 0x14) = iVar11;
            if (iVar7 < 6) {
              iVar11 = 0;
            }
            else {
              iVar11 = *(int *)(iVar9 + 0x1c);
              if (iVar11 == 0) goto LAB_0077cba5;
              iVar1 = iVar11 + 8;
              uVar13 = *(undefined4 *)(iVar11 + 4);
              iVar11 = iVar1;
              uStack_4c = uVar13;
              FUN_00958ea0(iVar1,uVar13);
              iVar11 = FUN_00dd14e0(&uStack_54,iVar11,uVar13);
              if (iVar11 == 0) {
                    /* WARNING: Subroutine does not return */
                FUN_00dca280(iVar1,uStack_4c);
              }
              dVar3 = (double)CONCAT44(uStack_50,uStack_54);
              iVar11 = 0x7fffffff;
              if (dVar3 < _DAT_018d3518) {
                iVar11 = (int)(double)(-(ulonglong)(!NAN(dVar3) && !NAN(dVar3)) & (ulonglong)dVar3);
              }
            }
            *(int *)(iVar10 + 0x18) = iVar11;
            if (iVar7 < 7) {
              iVar7 = 0;
            }
            else {
              iVar7 = *(int *)(iVar9 + 0x20);
              if (iVar7 == 0) goto LAB_0077cba5;
              iVar9 = iVar7 + 8;
              uVar13 = *(undefined4 *)(iVar7 + 4);
              iVar7 = iVar9;
              uStack_58 = uVar13;
              FUN_00958ea0(iVar9,uVar13);
              iVar7 = FUN_00dd14e0(&local_60,iVar7,uVar13);
              if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
                FUN_00dca280(iVar9,uStack_58);
              }
              dVar3 = (double)CONCAT44(uStack_5c,local_60);
              iVar7 = 0x7fffffff;
              if (dVar3 < _DAT_018d3518) {
                iVar7 = (int)(double)(-(ulonglong)(!NAN(dVar3) && !NAN(dVar3)) & (ulonglong)dVar3);
              }
            }
            *(int *)(iVar10 + 0x1c) = iVar7;
            if (*(int *)(iVar10 + 0x1c) < 1) {
              if (PTR_FUN_01c21b04 != (undefined *)0x0) {
                FUN_00e8e290();
              }
              puVar8 = (undefined4 *)FUN_00aa40a0();
              if (puVar8 != (undefined4 *)0x0) {
                *(undefined4 *)(iVar10 + 0x1c) = *puVar8;
              }
            }
            iVar7 = *(int *)(iVar4 + 4);
            *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
            if (*(uint *)(iVar7 + 8) < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
              *(uint *)(iVar7 + 8) = *(uint *)(iVar7 + 8) + 1;
              FUN_00eaec5e(*(int *)(iVar7 + 4));
            }
            else {
              FUN_00ccd380();
            }
          }
        }
      }
    }
  }
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    iVar6 = FUN_00eae9a0();
    *(undefined4 *)(iVar6 + 0x1c) = 0x1000000;
    FUN_00eaec5e();
    FUN_00eaeca8();
  }
  else {
    iVar6 = FUN_00cc8af0();
    if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

