/* Address: 00501d50 | Ghidra name: FUN_00501d50 */

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00501d50(int param_1,int *param_2)

{
  short sVar1;
  int iVar2;
  undefined **ppuVar3;
  ushort uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  
  FUN_004d6230();
  iVar2 = *param_2;
  uVar5 = (**(code **)(iVar2 + 0x20))();
  if (PTR_FUN_01c2134c != (undefined *)0x0) {
    FUN_00e8dbca(uVar5);
  }
  iVar6 = FUN_0040a5d0();
  if ((((iVar6 != 0) && (iVar6 = FUN_005010d0(), iVar6 != 0)) &&
      (*(char *)(param_1 + 0x154) == '\0')) && (*(int **)(param_1 + 0x150) != (int *)0x0)) {
    (**(code **)(**(int **)(param_1 + 0x150) + 0x2c))();
  }
  iVar6 = (**(code **)(iVar2 + 0x20))();
  ppuVar3 = *(undefined ***)(iVar6 + 0x18);
  if (ppuVar3 == (undefined **)0x0) {
    return;
  }
  switch(ppuVar3[1]) {
  case (undefined *)0x4:
    if ((ppuVar3 != &PTR_DAT_01bb5a80) &&
       (ppuVar3[2] != (undefined *)0x650054 || ppuVar3[3] != (undefined *)0x740078)) {
      return;
    }
    break;
  default:
    goto switchD_00501dec_caseD_5;
  case (undefined *)0x7:
    if (*(short *)(ppuVar3 + 2) != 0x49) {
      if (*(short *)(ppuVar3 + 2) != 0x50) {
        return;
      }
      if ((ppuVar3 != &PTR_DAT_01b9aa38) &&
         (((ppuVar3[2] != (undefined *)0x610050 || ppuVar3[3] != (undefined *)0x640064) ||
          ppuVar3[4] != &DAT_006e0069) || *(short *)(ppuVar3 + 5) != 0x67)) {
        return;
      }
      goto LAB_00501fd6;
    }
    if ((ppuVar3 != &PTR_DAT_01b7dbf4) &&
       (((ppuVar3[2] != (undefined *)0x6e0049 || ppuVar3[3] != (undefined *)0x69006c) ||
        ppuVar3[4] != (undefined *)0x65006e) || *(short *)(ppuVar3 + 5) != 0x73)) {
      return;
    }
    puVar7 = (undefined4 *)(**(code **)(iVar2 + 0x24))();
    if ((puVar7 == (undefined4 *)0x0) || ((undefined *)*puVar7 != &DAT_015e483c)) {
      puVar7 = (undefined4 *)0x0;
    }
    puVar7 = (undefined4 *)(**(code **)(iVar2 + 0x28))(uVar5,puVar7);
    if ((puVar7 == (undefined4 *)0x0) || ((undefined *)*puVar7 != &DAT_015e483c)) {
      puVar7 = (undefined4 *)0x0;
    }
    FUN_00502480(puVar7);
    break;
  case (undefined *)0x8:
    if (*(short *)(ppuVar3 + 2) != 0x46) {
      if (*(short *)(ppuVar3 + 2) != 0x4d) {
        return;
      }
      if (ppuVar3 == &PTR_DAT_01b8d8c4) goto LAB_00501fd6;
      auVar22._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf7c0);
      auVar22._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf7c4);
      auVar22._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf7c8);
      auVar22._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf7cc);
      uVar4 = (ushort)(SUB161(auVar22 >> 7,0) & 1) | (ushort)(SUB161(auVar22 >> 0xf,0) & 1) << 1 |
              (ushort)(SUB161(auVar22 >> 0x17,0) & 1) << 2 |
              (ushort)(SUB161(auVar22 >> 0x1f,0) & 1) << 3 |
              (ushort)(SUB161(auVar22 >> 0x27,0) & 1) << 4 |
              (ushort)(SUB161(auVar22 >> 0x2f,0) & 1) << 5 |
              (ushort)(SUB161(auVar22 >> 0x37,0) & 1) << 6 |
              (ushort)(SUB161(auVar22 >> 0x3f,0) & 1) << 7 |
              (ushort)(SUB161(auVar22 >> 0x47,0) & 1) << 8 |
              (ushort)(SUB161(auVar22 >> 0x4f,0) & 1) << 9 |
              (ushort)(SUB161(auVar22 >> 0x57,0) & 1) << 10 |
              (ushort)(SUB161(auVar22 >> 0x5f,0) & 1) << 0xb |
              (ushort)((byte)(auVar22._12_4_ >> 7) & 1) << 0xc |
              (ushort)((byte)(auVar22._12_4_ >> 0xf) & 1) << 0xd |
              (ushort)((byte)(auVar22._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar22._12_4_ >> 0x1f) << 0xf;
joined_r0x00501f2a:
      if (uVar4 != 0xffff) {
        return;
      }
LAB_00501fd6:
      FUN_004122d0();
      FUN_0043cdc0();
      return;
    }
    if (ppuVar3 != &PTR_DAT_01b73eb0) {
      auVar21._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf7b0);
      auVar21._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf7b4);
      auVar21._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf7b8);
      auVar21._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf7bc);
      uVar4 = (ushort)(SUB161(auVar21 >> 7,0) & 1) | (ushort)(SUB161(auVar21 >> 0xf,0) & 1) << 1 |
              (ushort)(SUB161(auVar21 >> 0x17,0) & 1) << 2 |
              (ushort)(SUB161(auVar21 >> 0x1f,0) & 1) << 3 |
              (ushort)(SUB161(auVar21 >> 0x27,0) & 1) << 4 |
              (ushort)(SUB161(auVar21 >> 0x2f,0) & 1) << 5 |
              (ushort)(SUB161(auVar21 >> 0x37,0) & 1) << 6 |
              (ushort)(SUB161(auVar21 >> 0x3f,0) & 1) << 7 |
              (ushort)(SUB161(auVar21 >> 0x47,0) & 1) << 8 |
              (ushort)(SUB161(auVar21 >> 0x4f,0) & 1) << 9 |
              (ushort)(SUB161(auVar21 >> 0x57,0) & 1) << 10 |
              (ushort)(SUB161(auVar21 >> 0x5f,0) & 1) << 0xb |
              (ushort)((byte)(auVar21._12_4_ >> 7) & 1) << 0xc |
              (ushort)((byte)(auVar21._12_4_ >> 0xf) & 1) << 0xd |
              (ushort)((byte)(auVar21._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar21._12_4_ >> 0x1f) << 0xf;
      goto joined_r0x00501e2f;
    }
    break;
  case (undefined *)0x9:
    if (ppuVar3 != &PTR_DAT_01b73f2c) {
      auVar20._0_4_ =
           -(uint)(ppuVar3[2] == _DAT_018cf790 && *(int *)((int)ppuVar3 + 10) == _DAT_018cf7a0);
      auVar20._4_4_ =
           -(uint)(ppuVar3[3] == _UNK_018cf794 && *(int *)((int)ppuVar3 + 0xe) == _UNK_018cf7a4);
      auVar20._8_4_ =
           -(uint)(ppuVar3[4] == _UNK_018cf798 && *(int *)((int)ppuVar3 + 0x12) == _UNK_018cf7a8);
      auVar20._12_4_ =
           -(uint)(ppuVar3[5] == _UNK_018cf79c && *(int *)((int)ppuVar3 + 0x16) == _UNK_018cf7ac);
      uVar4 = (ushort)(SUB161(auVar20 >> 7,0) & 1) | (ushort)(SUB161(auVar20 >> 0xf,0) & 1) << 1 |
              (ushort)(SUB161(auVar20 >> 0x17,0) & 1) << 2 |
              (ushort)(SUB161(auVar20 >> 0x1f,0) & 1) << 3 |
              (ushort)(SUB161(auVar20 >> 0x27,0) & 1) << 4 |
              (ushort)(SUB161(auVar20 >> 0x2f,0) & 1) << 5 |
              (ushort)(SUB161(auVar20 >> 0x37,0) & 1) << 6 |
              (ushort)(SUB161(auVar20 >> 0x3f,0) & 1) << 7 |
              (ushort)(SUB161(auVar20 >> 0x47,0) & 1) << 8 |
              (ushort)(SUB161(auVar20 >> 0x4f,0) & 1) << 9 |
              (ushort)(SUB161(auVar20 >> 0x57,0) & 1) << 10 |
              (ushort)(SUB161(auVar20 >> 0x5f,0) & 1) << 0xb |
              (ushort)((byte)(auVar20._12_4_ >> 7) & 1) << 0xc |
              (ushort)((byte)(auVar20._12_4_ >> 0xf) & 1) << 0xd |
              (ushort)((byte)(auVar20._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar20._12_4_ >> 0x1f) << 0xf;
joined_r0x00501e2f:
      if (uVar4 != 0xffff) {
        return;
      }
    }
    break;
  case (undefined *)0xa:
    uVar4 = *(ushort *)(ppuVar3 + 4);
    if (uVar4 < 0x49) {
      if (uVar4 != 0x46) {
        if (uVar4 != 0x48) {
          return;
        }
        if (ppuVar3 == &PTR_DAT_01b88118) goto LAB_00501fd6;
        auVar19._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf770 && ppuVar3[3] == _DAT_018cf780);
        auVar19._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf774 && ppuVar3[4] == _UNK_018cf784);
        auVar19._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf778 && ppuVar3[5] == _UNK_018cf788);
        auVar19._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf77c && ppuVar3[6] == _UNK_018cf78c);
        uVar4 = (ushort)(SUB161(auVar19 >> 7,0) & 1) | (ushort)(SUB161(auVar19 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar19 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar19 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar19 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar19 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar19 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar19 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar19 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar19 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar19 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar19 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar19._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar19._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar19._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar19._12_4_ >> 0x1f) << 0xf;
        goto joined_r0x00501f2a;
      }
      if (ppuVar3 != &PTR_DAT_01b73e64) {
        auVar18._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf750 && ppuVar3[3] == _DAT_018cf760);
        auVar18._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf754 && ppuVar3[4] == _UNK_018cf764);
        auVar18._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf758 && ppuVar3[5] == _UNK_018cf768);
        auVar18._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf75c && ppuVar3[6] == _UNK_018cf76c);
        uVar4 = (ushort)(SUB161(auVar18 >> 7,0) & 1) | (ushort)(SUB161(auVar18 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar18 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar18 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar18 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar18 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar18 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar18 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar18 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar18 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar18 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar18 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar18._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar18._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar18._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar18._12_4_ >> 0x1f) << 0xf;
        goto joined_r0x00501e2f;
      }
    }
    else if (uVar4 == 0x57) {
      if (ppuVar3 != &PTR_DAT_01b73f4c) {
        auVar16._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf710 && ppuVar3[3] == _DAT_018cf720);
        auVar16._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf714 && ppuVar3[4] == _UNK_018cf724);
        auVar16._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf718 && ppuVar3[5] == _UNK_018cf728);
        auVar16._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf71c && ppuVar3[6] == _UNK_018cf72c);
        uVar4 = (ushort)(SUB161(auVar16 >> 7,0) & 1) | (ushort)(SUB161(auVar16 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar16 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar16 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar16 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar16 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar16 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar16 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar16 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar16 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar16 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar16 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar16._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar16._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar16._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar16._12_4_ >> 0x1f) << 0xf;
        goto joined_r0x00501e2f;
      }
    }
    else {
      if (uVar4 != 0x67) {
        return;
      }
      if (ppuVar3 != &PTR_DAT_01b74288) {
        auVar17._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf730 && ppuVar3[3] == _DAT_018cf740);
        auVar17._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf734 && ppuVar3[4] == _UNK_018cf744);
        auVar17._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf738 && ppuVar3[5] == _UNK_018cf748);
        auVar17._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf73c && ppuVar3[6] == _UNK_018cf74c);
        uVar4 = (ushort)(SUB161(auVar17 >> 7,0) & 1) | (ushort)(SUB161(auVar17 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar17 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar17 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar17 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar17 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar17 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar17 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar17 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar17 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar17 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar17 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar17._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar17._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar17._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar17._12_4_ >> 0x1f) << 0xf;
        goto joined_r0x00501e2f;
      }
    }
    break;
  case (undefined *)0xb:
    if (ppuVar3 != &PTR_DAT_01b73f08) {
      auVar15._0_4_ =
           -(uint)(ppuVar3[2] == _DAT_018cf6f0 && *(int *)((int)ppuVar3 + 0xe) == _DAT_018cf700);
      auVar15._4_4_ =
           -(uint)(ppuVar3[3] == _UNK_018cf6f4 && *(int *)((int)ppuVar3 + 0x12) == _UNK_018cf704);
      auVar15._8_4_ =
           -(uint)(ppuVar3[4] == _UNK_018cf6f8 && *(int *)((int)ppuVar3 + 0x16) == _UNK_018cf708);
      auVar15._12_4_ =
           -(uint)(ppuVar3[5] == _UNK_018cf6fc && *(int *)((int)ppuVar3 + 0x1a) == _UNK_018cf70c);
      uVar4 = (ushort)(SUB161(auVar15 >> 7,0) & 1) | (ushort)(SUB161(auVar15 >> 0xf,0) & 1) << 1 |
              (ushort)(SUB161(auVar15 >> 0x17,0) & 1) << 2 |
              (ushort)(SUB161(auVar15 >> 0x1f,0) & 1) << 3 |
              (ushort)(SUB161(auVar15 >> 0x27,0) & 1) << 4 |
              (ushort)(SUB161(auVar15 >> 0x2f,0) & 1) << 5 |
              (ushort)(SUB161(auVar15 >> 0x37,0) & 1) << 6 |
              (ushort)(SUB161(auVar15 >> 0x3f,0) & 1) << 7 |
              (ushort)(SUB161(auVar15 >> 0x47,0) & 1) << 8 |
              (ushort)(SUB161(auVar15 >> 0x4f,0) & 1) << 9 |
              (ushort)(SUB161(auVar15 >> 0x57,0) & 1) << 10 |
              (ushort)(SUB161(auVar15 >> 0x5f,0) & 1) << 0xb |
              (ushort)((byte)(auVar15._12_4_ >> 7) & 1) << 0xc |
              (ushort)((byte)(auVar15._12_4_ >> 0xf) & 1) << 0xd |
              (ushort)((byte)(auVar15._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar15._12_4_ >> 0x1f) << 0xf;
      goto joined_r0x00501e2f;
    }
    break;
  case (undefined *)0xc:
    sVar1 = *(short *)(ppuVar3 + 4);
    if (sVar1 != 0x46) {
      if (sVar1 == 0x54) {
        if (ppuVar3 == &PTR_DAT_01bb68c0) goto LAB_00501fd6;
        auVar13._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf6b0 && ppuVar3[4] == _DAT_018cf6c0);
        auVar13._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf6b4 && ppuVar3[5] == _UNK_018cf6c4);
        auVar13._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf6b8 && ppuVar3[6] == _UNK_018cf6c8);
        auVar13._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf6bc && ppuVar3[7] == _UNK_018cf6cc);
        uVar4 = (ushort)(SUB161(auVar13 >> 7,0) & 1) | (ushort)(SUB161(auVar13 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar13 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar13 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar13 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar13 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar13 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar13 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar13 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar13 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar13 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar13 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar13._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar13._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar13._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar13._12_4_ >> 0x1f) << 0xf;
      }
      else {
        if (sVar1 != 0x57) {
          return;
        }
        if (ppuVar3 == &PTR_DAT_01bb68e8) goto LAB_00501fd6;
        auVar14._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf6d0 && ppuVar3[4] == _DAT_018cf6e0);
        auVar14._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf6d4 && ppuVar3[5] == _UNK_018cf6e4);
        auVar14._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf6d8 && ppuVar3[6] == _UNK_018cf6e8);
        auVar14._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf6dc && ppuVar3[7] == _UNK_018cf6ec);
        uVar4 = (ushort)(SUB161(auVar14 >> 7,0) & 1) | (ushort)(SUB161(auVar14 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar14 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar14 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar14 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar14 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar14 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar14 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar14 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar14 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar14 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar14 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar14._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar14._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar14._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar14._12_4_ >> 0x1f) << 0xf;
      }
      goto joined_r0x00501f2a;
    }
    if (ppuVar3 != &PTR_DAT_01b73e88) {
      auVar12._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf690 && ppuVar3[4] == _DAT_018cf6a0);
      auVar12._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf694 && ppuVar3[5] == _UNK_018cf6a4);
      auVar12._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf698 && ppuVar3[6] == _UNK_018cf6a8);
      auVar12._12_4_ = -(uint)(ppuVar3[5] == _UNK_018cf69c && ppuVar3[7] == _UNK_018cf6ac);
      uVar4 = (ushort)(SUB161(auVar12 >> 7,0) & 1) | (ushort)(SUB161(auVar12 >> 0xf,0) & 1) << 1 |
              (ushort)(SUB161(auVar12 >> 0x17,0) & 1) << 2 |
              (ushort)(SUB161(auVar12 >> 0x1f,0) & 1) << 3 |
              (ushort)(SUB161(auVar12 >> 0x27,0) & 1) << 4 |
              (ushort)(SUB161(auVar12 >> 0x2f,0) & 1) << 5 |
              (ushort)(SUB161(auVar12 >> 0x37,0) & 1) << 6 |
              (ushort)(SUB161(auVar12 >> 0x3f,0) & 1) << 7 |
              (ushort)(SUB161(auVar12 >> 0x47,0) & 1) << 8 |
              (ushort)(SUB161(auVar12 >> 0x4f,0) & 1) << 9 |
              (ushort)(SUB161(auVar12 >> 0x57,0) & 1) << 10 |
              (ushort)(SUB161(auVar12 >> 0x5f,0) & 1) << 0xb |
              (ushort)((byte)(auVar12._12_4_ >> 7) & 1) << 0xc |
              (ushort)((byte)(auVar12._12_4_ >> 0xf) & 1) << 0xd |
              (ushort)((byte)(auVar12._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar12._12_4_ >> 0x1f) << 0xf;
      goto joined_r0x00501e2f;
    }
    break;
  case (undefined *)0xd:
    sVar1 = *(short *)(ppuVar3 + 2);
    if (sVar1 == 0x46) {
      if (ppuVar3 != &PTR_DAT_01b72fac) {
        auVar9._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf630 &&
                              *(int *)((int)ppuVar3 + 0x12) == _DAT_018cf640);
        auVar9._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf634 &&
                              *(int *)((int)ppuVar3 + 0x16) == _UNK_018cf644);
        auVar9._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf638 &&
                              *(int *)((int)ppuVar3 + 0x1a) == _UNK_018cf648);
        auVar9._12_4_ =
             -(uint)(ppuVar3[5] == _UNK_018cf63c && *(int *)((int)ppuVar3 + 0x1e) == _UNK_018cf64c);
        uVar4 = (ushort)(SUB161(auVar9 >> 7,0) & 1) | (ushort)(SUB161(auVar9 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar9 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar9 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar9 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar9 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar9 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar9 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar9 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar9 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar9 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar9 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar9._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar9._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar9._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar9._12_4_ >> 0x1f) << 0xf;
        goto joined_r0x00501e2f;
      }
    }
    else {
      if (sVar1 != 0x4c) {
        if (sVar1 != 0x54) {
          return;
        }
        if (ppuVar3 == &PTR_DAT_01bb5a98) goto LAB_00501fd6;
        auVar11._0_4_ =
             -(uint)(ppuVar3[2] == _DAT_018cf670 && *(int *)((int)ppuVar3 + 0x12) == _DAT_018cf680);
        auVar11._4_4_ =
             -(uint)(ppuVar3[3] == _UNK_018cf674 && *(int *)((int)ppuVar3 + 0x16) == _UNK_018cf684);
        auVar11._8_4_ =
             -(uint)(ppuVar3[4] == _UNK_018cf678 && *(int *)((int)ppuVar3 + 0x1a) == _UNK_018cf688);
        auVar11._12_4_ =
             -(uint)(ppuVar3[5] == _UNK_018cf67c && *(int *)((int)ppuVar3 + 0x1e) == _UNK_018cf68c);
        uVar4 = (ushort)(SUB161(auVar11 >> 7,0) & 1) | (ushort)(SUB161(auVar11 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar11 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar11 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar11 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar11 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar11 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar11 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar11 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar11 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar11 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar11 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar11._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar11._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar11._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar11._12_4_ >> 0x1f) << 0xf;
        goto joined_r0x00501f2a;
      }
      if (ppuVar3 != &PTR_DAT_01b87d98) {
        auVar10._0_4_ =
             -(uint)(ppuVar3[2] == _DAT_018cf650 && *(int *)((int)ppuVar3 + 0x12) == _DAT_018cf660);
        auVar10._4_4_ =
             -(uint)(ppuVar3[3] == _UNK_018cf654 && *(int *)((int)ppuVar3 + 0x16) == _UNK_018cf664);
        auVar10._8_4_ =
             -(uint)(ppuVar3[4] == _UNK_018cf658 && *(int *)((int)ppuVar3 + 0x1a) == _UNK_018cf668);
        auVar10._12_4_ =
             -(uint)(ppuVar3[5] == _UNK_018cf65c && *(int *)((int)ppuVar3 + 0x1e) == _UNK_018cf66c);
        uVar4 = (ushort)(SUB161(auVar10 >> 7,0) & 1) | (ushort)(SUB161(auVar10 >> 0xf,0) & 1) << 1 |
                (ushort)(SUB161(auVar10 >> 0x17,0) & 1) << 2 |
                (ushort)(SUB161(auVar10 >> 0x1f,0) & 1) << 3 |
                (ushort)(SUB161(auVar10 >> 0x27,0) & 1) << 4 |
                (ushort)(SUB161(auVar10 >> 0x2f,0) & 1) << 5 |
                (ushort)(SUB161(auVar10 >> 0x37,0) & 1) << 6 |
                (ushort)(SUB161(auVar10 >> 0x3f,0) & 1) << 7 |
                (ushort)(SUB161(auVar10 >> 0x47,0) & 1) << 8 |
                (ushort)(SUB161(auVar10 >> 0x4f,0) & 1) << 9 |
                (ushort)(SUB161(auVar10 >> 0x57,0) & 1) << 10 |
                (ushort)(SUB161(auVar10 >> 0x5f,0) & 1) << 0xb |
                (ushort)((byte)(auVar10._12_4_ >> 7) & 1) << 0xc |
                (ushort)((byte)(auVar10._12_4_ >> 0xf) & 1) << 0xd |
                (ushort)((byte)(auVar10._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar10._12_4_ >> 0x1f) << 0xf;
        goto joined_r0x00501e2f;
      }
    }
    break;
  case (undefined *)0xf:
    if (ppuVar3 != &PTR_DAT_01bb65e0) {
      auVar8._0_4_ = -(uint)(ppuVar3[2] == _DAT_018cf610 &&
                            *(int *)((int)ppuVar3 + 0x16) == _DAT_018cf620);
      auVar8._4_4_ = -(uint)(ppuVar3[3] == _UNK_018cf614 &&
                            *(int *)((int)ppuVar3 + 0x1a) == _UNK_018cf624);
      auVar8._8_4_ = -(uint)(ppuVar3[4] == _UNK_018cf618 &&
                            *(int *)((int)ppuVar3 + 0x1e) == _UNK_018cf628);
      auVar8._12_4_ =
           -(uint)(ppuVar3[5] == _UNK_018cf61c && *(int *)((int)ppuVar3 + 0x22) == _UNK_018cf62c);
      uVar4 = (ushort)(SUB161(auVar8 >> 7,0) & 1) | (ushort)(SUB161(auVar8 >> 0xf,0) & 1) << 1 |
              (ushort)(SUB161(auVar8 >> 0x17,0) & 1) << 2 |
              (ushort)(SUB161(auVar8 >> 0x1f,0) & 1) << 3 |
              (ushort)(SUB161(auVar8 >> 0x27,0) & 1) << 4 |
              (ushort)(SUB161(auVar8 >> 0x2f,0) & 1) << 5 |
              (ushort)(SUB161(auVar8 >> 0x37,0) & 1) << 6 |
              (ushort)(SUB161(auVar8 >> 0x3f,0) & 1) << 7 |
              (ushort)(SUB161(auVar8 >> 0x47,0) & 1) << 8 |
              (ushort)(SUB161(auVar8 >> 0x4f,0) & 1) << 9 |
              (ushort)(SUB161(auVar8 >> 0x57,0) & 1) << 10 |
              (ushort)(SUB161(auVar8 >> 0x5f,0) & 1) << 0xb |
              (ushort)((byte)(auVar8._12_4_ >> 7) & 1) << 0xc |
              (ushort)((byte)(auVar8._12_4_ >> 0xf) & 1) << 0xd |
              (ushort)((byte)(auVar8._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar8._12_4_ >> 0x1f) << 0xf;
      goto joined_r0x00501e2f;
    }
  }
  FUN_005016d0();
switchD_00501dec_caseD_5:
  return;
}

