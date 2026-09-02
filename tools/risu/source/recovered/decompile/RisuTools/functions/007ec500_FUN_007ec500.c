/* Address: 007ec500 | Ghidra name: FUN_007ec500 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007ec500(int *param_1)

{
  short sVar1;
  undefined *puVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined **ppuVar7;
  undefined4 uVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  int iVar11;
  int iVar12;
  uint *puVar13;
  uint *puVar14;
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  char *in_stack_fffffeb0;
  char *local_118;
  undefined1 local_10c [4];
  undefined4 local_108;
  undefined4 local_104;
  undefined4 local_100;
  undefined4 local_fc;
  int local_f8;
  undefined4 local_f4;
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  uint local_e0 [6];
  uint local_c8 [6];
  uint local_b0 [6];
  undefined4 local_98;
  int local_94;
  int local_90;
  undefined1 local_8c;
  int local_88;
  uint local_84;
  int local_80;
  int local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  uint local_6c [4];
  int local_5c;
  uint local_58;
  uint local_54 [4];
  int local_44;
  uint local_40;
  int local_3c;
  uint local_38 [4];
  int local_28;
  uint local_24;
  int local_20;
  int local_1c [3];
  
  iVar6 = -0xf0;
  do {
    *(undefined4 *)((int)local_1c + iVar6) = 0;
    *(undefined4 *)((int)local_1c + iVar6 + 4) = 0;
    *(undefined4 *)((int)local_1c + iVar6 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar6) = 0;
    iVar6 = iVar6 + 0x30;
  } while (iVar6 != 0);
  iVar11 = *param_1;
  local_1c[1] = 0;
  local_118 = in_stack_fffffeb0;
  local_1c[0] = iVar6;
  local_1c[2] = local_1c[1];
  switch(param_1[9]) {
  case 0:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    local_1c[1] = iVar6;
    break;
  case 1:
    local_1c[1] = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    goto LAB_007edb22;
  case 2:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    goto LAB_007edaf0;
  case 3:
    local_20 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[9] = -1;
    goto LAB_007eda57;
  case 4:
    local_20 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[9] = -1;
    goto LAB_007eda0c;
  case 5:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    goto LAB_007ed96d;
  case 6:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    goto LAB_007eccab;
  case 7:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    goto LAB_007ecc1b;
  case 8:
    local_3c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_007ecb7d;
  case 9:
    local_3c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_007eca37;
  case 10:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    goto LAB_007ec990;
  case 0xb:
    local_3c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_007ec917;
  case 0xc:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    goto LAB_007ec8e2;
  case 0xd:
    local_3c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_007ec7c1;
  case 0xe:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    goto LAB_007ec6b2;
  case 0xf:
    local_1c[2] = param_1[0x11];
    param_1[0x11] = 0;
    param_1[9] = -1;
    goto LAB_007ec625;
  case 0x10:
    local_1c[1] = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    goto LAB_007ec56c;
  default:
    local_1c[1] = iVar6;
    local_1c[2] = iVar6;
    FUN_007876b0();
    FUN_00787780();
    local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
    if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 0;
      FUN_00eaecdd();
      FUN_00da18c0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_1c[1] = FUN_0077b0a0(&PTR_DAT_01bb04a8);
  if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
    param_1[9] = 1;
    FUN_00eaecdd();
    FUN_00da18c0();
    FUN_00dfca00(&PTR_DAT_01553b90);
    return;
  }
LAB_007edb22:
  if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_1c[1] + 0x20) != 0) {
    iVar6 = *(int *)(*(int *)(local_1c[1] + 0x20) + 0x10);
    if (*(int *)(iVar6 + 8) == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009319a0();
    }
    iVar6 = *(int *)(iVar6 + 4);
    if (*(int *)(iVar6 + 4) == 0) goto LAB_007ee0c4;
    FUN_0077ab40(0,*(undefined4 *)(*(int *)(iVar6 + 8) + 8),&PTR_DAT_01bb04a8);
  }
  param_1[10] = 0;
  while( true ) {
    local_20 = FUN_0077b890(0x3ad);
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 3;
      FUN_00eaecdd();
      FUN_00da18c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007eda57:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(char *)(local_20 + 0x20) != '\0') || (4 < param_1[10])) break;
    FUN_0077b7e0(0x3ad);
    local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
    if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 2;
      FUN_00eaecdd();
      FUN_00da18c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007edaf0:
    if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[10] = param_1[10] + 1;
  }
  local_20 = FUN_0077b890(0x3ad);
  if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
    param_1[9] = 4;
    FUN_00eaecdd();
    FUN_00da18c0();
    FUN_00dfc9c0();
    return;
  }
LAB_007eda0c:
  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(char *)(local_20 + 0x20) == '\0') {
    FUN_007876b0();
    goto LAB_007ee0da;
  }
  local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
  if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
    param_1[9] = 5;
    FUN_00eaecdd();
    FUN_00da18c0();
    FUN_00dfc9c0();
    return;
  }
LAB_007ed96d:
  local_118 = in_stack_fffffeb0;
  if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
    local_118 = in_stack_fffffeb0;
  }
  FUN_0077b570(&PTR_DAT_01bfafbc,&PTR_DAT_01b6a074);
  local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
  if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
    param_1[9] = 6;
    FUN_00eaecdd();
    FUN_00da18c0();
    FUN_00dfc9c0();
    return;
  }
LAB_007eccab:
  if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_0077b570(&PTR_DAT_01bfafd4,&PTR_DAT_01b6a074);
  param_1[0xb] = *(int *)(*(int *)(*(int *)(iVar11 + 4) + 0x120) + 0x34);
  FUN_0094bfb0();
  FUN_0094c500();
  ppuVar7 = (undefined **)FUN_0095ba10();
  if (5 < param_1[0xb] - 1U) {
    param_1[0xb] = 1;
  }
  param_1[1] = (int)&PTR_DAT_01bf934c;
  param_1[2] = (int)&PTR_DAT_01bc8d94;
  if (ppuVar7 != (undefined **)0x0) {
    puVar2 = ppuVar7[1];
    switch(puVar2) {
    case (undefined *)0x4:
      if ((ppuVar7 == &PTR_DAT_01bf33f0) ||
         ((puVar2 == (undefined *)0x4 &&
          (ppuVar7[3] == (undefined *)0x750075 && ppuVar7[2] == (undefined *)0x6f0076)))) {
        param_1[1] = (int)&PTR_DAT_01bf9cb0;
        param_1[2] = (int)&PTR_DAT_01bd60ec;
      }
      break;
    case (undefined *)0x6:
      if (puVar2 < (undefined *)0x2) goto LAB_007ee0c4;
      if (*(short *)((int)ppuVar7 + 10) == 0x61) {
        if ((ppuVar7 == &PTR_DAT_01be49c0) ||
           ((puVar2 == (undefined *)0x6 &&
            (ppuVar7[4] == (undefined *)0x630061 &&
             (ppuVar7[2] == (undefined *)0x610064 && ppuVar7[3] == (undefined *)0x6d0069))))) {
          param_1[1] = (int)&PTR_DAT_01bf9244;
          param_1[2] = (int)&PTR_DAT_01bf7354;
        }
      }
      else if ((*(short *)((int)ppuVar7 + 10) == 0x69) &&
              ((ppuVar7 == &PTR_DAT_01be5564 ||
               ((puVar2 == (undefined *)0x6 &&
                (ppuVar7[4] == (undefined *)0x68006e &&
                 (ppuVar7[2] == (undefined *)0x690064 && ppuVar7[3] == (undefined *)0x610063)))))))
      {
        param_1[1] = (int)&PTR_DAT_01bfaf74;
        param_1[2] = (int)&PTR_DAT_01b6b274;
      }
      break;
    case (undefined *)0x7:
      if (puVar2 == (undefined *)0x0) goto LAB_007ee0c4;
      if (*(short *)(ppuVar7 + 2) == 0x6c) {
        if ((ppuVar7 == &PTR_DAT_01beade0) ||
           ((puVar2 == (undefined *)0x7 &&
            (*(short *)(ppuVar7 + 5) == 0x6e &&
             ((ppuVar7[2] == (undefined *)0x61006c && ppuVar7[3] == &DAT_00760063) &&
             ppuVar7[4] == (undefined *)0x650069))))) {
          param_1[1] = (int)&PTR_DAT_01bf8444;
          param_1[2] = (int)&PTR_DAT_01b88ea4;
        }
      }
      else if ((*(short *)(ppuVar7 + 2) == 0x70) &&
              ((ppuVar7 == &PTR_DAT_01bee628 ||
               ((puVar2 == (undefined *)0x7 &&
                (*(short *)(ppuVar7 + 5) == 99 &&
                 ((ppuVar7[2] == (undefined *)0x680070 && ppuVar7[3] == (undefined *)0x700061) &&
                 ppuVar7[4] == (undefined *)0x750073))))))) {
        param_1[1] = (int)&PTR_DAT_01bf9334;
        param_1[2] = (int)&PTR_DAT_01b9bbd0;
      }
      break;
    case (undefined *)0x8:
      if (puVar2 == (undefined *)0x0) goto LAB_007ee0c4;
      sVar1 = *(short *)(ppuVar7 + 2);
      if (sVar1 == 0x68) {
        if (ppuVar7 == &PTR_DAT_01be8a40) {
LAB_007ede3a:
          param_1[1] = (int)&PTR_DAT_01bf9eec;
          param_1[2] = (int)&PTR_DAT_01b7977c;
        }
        else if (puVar2 == (undefined *)0x8) {
          auVar20._0_4_ = -(uint)(ppuVar7[2] == _DAT_018d6460);
          auVar20._4_4_ = -(uint)(ppuVar7[3] == _UNK_018d6464);
          auVar20._8_4_ = -(uint)(ppuVar7[4] == _UNK_018d6468);
          auVar20._12_4_ = -(uint)(ppuVar7[5] == _UNK_018d646c);
          if ((ushort)((ushort)(SUB161(auVar20 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar20 >> 0xf,0) & 1) << 1 |
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
                      (ushort)(byte)(auVar20._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007ede3a;
        }
      }
      else if (sVar1 == 0x6c) {
        if (ppuVar7 == &PTR_DAT_01beb0fc) {
LAB_007ede90:
          param_1[1] = (int)&PTR_DAT_01bfa724;
          param_1[2] = (int)&PTR_DAT_01b884d4;
        }
        else if (puVar2 == (undefined *)0x8) {
          auVar21._0_4_ = -(uint)(ppuVar7[2] == _DAT_018d6470);
          auVar21._4_4_ = -(uint)(ppuVar7[3] == _UNK_018d6474);
          auVar21._8_4_ = -(uint)(ppuVar7[4] == _UNK_018d6478);
          auVar21._12_4_ = -(uint)(ppuVar7[5] == _UNK_018d647c);
          if ((ushort)((ushort)(SUB161(auVar21 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar21 >> 0xf,0) & 1) << 1 |
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
                      (ushort)(byte)(auVar21._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007ede90;
        }
      }
      else if (sVar1 == 0x74) {
        if (ppuVar7 == &PTR_DAT_01bf17dc) {
LAB_007edeeb:
          param_1[1] = (int)&PTR_DAT_01bf934c;
          param_1[2] = (int)&PTR_DAT_01bc8d94;
        }
        else if (puVar2 == (undefined *)0x8) {
          auVar22._0_4_ = -(uint)(ppuVar7[2] == _DAT_018d6480);
          auVar22._4_4_ = -(uint)(ppuVar7[3] == _UNK_018d6484);
          auVar22._8_4_ = -(uint)(ppuVar7[4] == _UNK_018d6488);
          auVar22._12_4_ = -(uint)(ppuVar7[5] == _UNK_018d648c);
          if ((ushort)((ushort)(SUB161(auVar22 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar22 >> 0xf,0) & 1) << 1 |
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
                      (ushort)(byte)(auVar22._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007edeeb;
        }
      }
      break;
    case (undefined *)0x9:
      if (puVar2 == (undefined *)0x0) goto LAB_007ee0c4;
      if (*(short *)(ppuVar7 + 2) == 0x6c) {
        if (ppuVar7 == &PTR_DAT_01beadfc) {
LAB_007edd67:
          param_1[1] = (int)&PTR_DAT_01bfa94c;
          param_1[2] = (int)&PTR_DAT_01b87288;
        }
        else if (puVar2 == (undefined *)0x9) {
          auVar18._0_4_ =
               -(uint)(ppuVar7[2] == _DAT_018d6420 && *(int *)((int)ppuVar7 + 10) == _DAT_018d6430);
          auVar18._4_4_ =
               -(uint)(ppuVar7[3] == _UNK_018d6424 && *(int *)((int)ppuVar7 + 0xe) == _UNK_018d6434)
          ;
          auVar18._8_4_ =
               -(uint)(ppuVar7[4] == _UNK_018d6428 && *(int *)((int)ppuVar7 + 0x12) == _UNK_018d6438
                      );
          auVar18._12_4_ =
               -(uint)(ppuVar7[5] == _UNK_018d642c && *(int *)((int)ppuVar7 + 0x16) == _UNK_018d643c
                      );
          if ((ushort)((ushort)(SUB161(auVar18 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar18 >> 0xf,0) & 1) << 1 |
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
                      (ushort)(byte)(auVar18._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007edd67;
        }
      }
      else if (*(short *)(ppuVar7 + 2) == 0x74) {
        if (ppuVar7 == &PTR_DAT_01bf17fc) {
LAB_007eddd2:
          param_1[1] = (int)&PTR_DAT_01bf8f2c;
          param_1[2] = (int)&PTR_DAT_01bc8aa4;
        }
        else if (puVar2 == (undefined *)0x9) {
          auVar19._0_4_ =
               -(uint)(ppuVar7[2] == _DAT_018d6440 && *(int *)((int)ppuVar7 + 10) == _DAT_018d6450);
          auVar19._4_4_ =
               -(uint)(ppuVar7[3] == _UNK_018d6444 && *(int *)((int)ppuVar7 + 0xe) == _UNK_018d6454)
          ;
          auVar19._8_4_ =
               -(uint)(ppuVar7[4] == _UNK_018d6448 && *(int *)((int)ppuVar7 + 0x12) == _UNK_018d6458
                      );
          auVar19._12_4_ =
               -(uint)(ppuVar7[5] == _UNK_018d644c && *(int *)((int)ppuVar7 + 0x16) == _UNK_018d645c
                      );
          if ((ushort)((ushort)(SUB161(auVar19 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar19 >> 0xf,0) & 1) << 1 |
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
                      (ushort)(byte)(auVar19._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007eddd2;
        }
      }
      break;
    case (undefined *)0xa:
      if (ppuVar7 == &PTR_DAT_01be3904) {
LAB_007edcef:
        param_1[1] = (int)&PTR_DAT_01bf931c;
        param_1[2] = (int)&PTR_DAT_01b5d44c;
      }
      else if (puVar2 == (undefined *)0xa) {
        auVar17._0_4_ = -(uint)(ppuVar7[2] == _DAT_018d6400 && ppuVar7[3] == _DAT_018d6410);
        auVar17._4_4_ = -(uint)(ppuVar7[3] == _UNK_018d6404 && ppuVar7[4] == _UNK_018d6414);
        auVar17._8_4_ = -(uint)(ppuVar7[4] == _UNK_018d6408 && ppuVar7[5] == _UNK_018d6418);
        auVar17._12_4_ = -(uint)(ppuVar7[5] == _UNK_018d640c && ppuVar7[6] == _UNK_018d641c);
        if ((ushort)((ushort)(SUB161(auVar17 >> 7,0) & 1) |
                     (ushort)(SUB161(auVar17 >> 0xf,0) & 1) << 1 |
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
                    (ushort)(byte)(auVar17._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007edcef;
      }
    }
  }
  if (PTR_FUN_01c21b08 != (undefined *)0x0) {
    FUN_00e8e2a1();
  }
  iVar6 = DAT_01c28948;
  if ((uint)param_1[0xb] < *(uint *)(*(int *)(DAT_01c28948 + 4) + 4)) {
    FUN_00906a20();
    FUN_00eaeca8();
    if ((uint)param_1[0xb] < *(uint *)(*(int *)(iVar6 + 8) + 4)) {
      FUN_00906a20();
      FUN_00eaeca8();
      if ((uint)param_1[0xb] < *(uint *)(*(int *)(iVar6 + 4) + 4)) {
        FUN_00906a20();
        FUN_00eaeca8();
        if ((uint)param_1[0xb] < *(uint *)(*(int *)(iVar6 + 8) + 4)) {
          FUN_00906a20();
          FUN_00eaeca8();
          FUN_0099d430(1);
          uVar5 = _UNK_018d639c;
          uVar4 = _UNK_018d6398;
          uVar8 = _UNK_018d6394;
          puVar13 = local_b0;
          puVar14 = local_38;
          for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
            *puVar14 = *puVar13;
            puVar13 = puVar13 + 1;
            puVar14 = puVar14 + 1;
          }
          if (local_38[2] <= local_24) {
            puVar9 = (undefined4 *)(local_28 + local_38[2] * 2);
            if (local_24 - local_38[2] < 0x11) {
              FUN_0099d6f0();
            }
            else {
              *puVar9 = _DAT_018d6390;
              puVar9[1] = uVar8;
              puVar9[2] = uVar4;
              puVar9[3] = uVar5;
              *(undefined1 (*) [16])(puVar9 + 4) = _DAT_018d63a0;
              *(undefined2 *)(puVar9 + 8) = 0x20;
              local_38[2] = local_38[2] + 0x11;
            }
            FUN_00de77e0();
            if (local_38[2] <= local_24) {
              puVar9 = (undefined4 *)(local_28 + local_38[2] * 2);
              if (local_24 - local_38[2] < 3) {
                FUN_0099d6f0();
              }
              else {
                *puVar9 = 0x2e002e;
                *(undefined2 *)(puVar9 + 1) = 0x2e;
                local_38[2] = local_38[2] + 3;
              }
              FUN_0099d560();
              FUN_007876b0();
              param_1[0xc] = 0;
              param_1[0xf] = 0;
              while (param_1[0xf] < 0xf) {
                local_e4 = *(undefined4 *)(*(int *)(iVar11 + 0x14) + 8);
                iVar6 = FUN_00eaeae1();
                *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b6a074;
                uVar8 = FUN_00eaec5e();
                FUN_0077a610(uVar8,&PTR_DAT_01be3a40);
                local_e8 = *(undefined4 *)(*(int *)(iVar11 + 0x14) + 8);
                iVar6 = FUN_00eaeae1();
                *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b6a074;
                uVar8 = FUN_00eaec5e();
                FUN_0077a610(uVar8,&PTR_DAT_01be3a40);
                local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
                if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 7;
                  FUN_00eaecdd();
                  FUN_00da18c0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007ecc1b:
                if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_3c = FUN_0077b5c0(param_1[5],&PTR_DAT_01b6a074);
                if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 8;
                  FUN_00eaecdd();
                  FUN_00da18c0();
                  FUN_00dfca00(&PTR_DAT_01557398);
                  return;
                }
LAB_007ecb7d:
                if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                FUN_00eaecdd();
                local_3c = FUN_0077b5c0(param_1[6],&PTR_DAT_01b6a074);
                if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 9;
                  FUN_00eaecdd();
                  FUN_00da18c0();
                  FUN_00dfca00(&PTR_DAT_01557398);
                  return;
                }
LAB_007eca37:
                if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (((*(int *)(local_3c + 0x20) != 0) &&
                    (*(int *)(*(int *)(local_3c + 0x20) + 4) != 0)) &&
                   (iVar6 = FUN_00905b10(0), iVar6 != 0)) {
                  param_1[0xc] = 2;
                  break;
                }
                if (((param_1[8] != 0) && (*(int *)(param_1[8] + 4) != 0)) &&
                   (iVar6 = FUN_00905b10(0), iVar6 != 0)) {
                  param_1[0xc] = 1;
                  break;
                }
                param_1[8] = 0;
                param_1[0xf] = param_1[0xf] + 1;
              }
              if (param_1[0xc] == 0) {
                FUN_0099d430(1);
                puVar13 = local_e0;
                puVar14 = local_54;
                for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
                  *puVar14 = *puVar13;
                  puVar13 = puVar13 + 1;
                  puVar14 = puVar14 + 1;
                }
                if (local_54[2] <= local_40) {
                  if (local_40 - local_54[2] < 0x22) {
                    FUN_0099d6f0();
                  }
                  else {
                    FUN_00930280(0x44);
                    local_54[2] = local_54[2] + 0x22;
                  }
                  FUN_00de77e0();
                  uVar5 = _UNK_018d636c;
                  uVar4 = _UNK_018d6368;
                  uVar8 = _UNK_018d6364;
                  if (local_54[2] <= local_40) {
                    puVar9 = (undefined4 *)(local_44 + local_54[2] * 2);
                    if (local_40 - local_54[2] < 0xc) {
                      FUN_0099d6f0();
                    }
                    else {
                      *puVar9 = _DAT_018d6360;
                      puVar9[1] = uVar8;
                      puVar9[2] = uVar4;
                      puVar9[3] = uVar5;
                      puVar9[4] = 0x740075;
                      puVar9[5] = 0x2e006f;
                      local_54[2] = local_54[2] + 0xc;
                    }
                    FUN_0099d560();
                    FUN_007876b0();
                    goto LAB_007ee0da;
                  }
                }
              }
              else {
                local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
                if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 10;
                  FUN_00eaecdd();
                  FUN_00da18c0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007ec990:
                if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                iVar6 = FUN_00eae9a0();
                *(undefined ***)(iVar6 + 4) = &PTR_DAT_01c0f378;
                FUN_00eaeca8();
                local_3c = FUN_0077b6e0(&PTR_DAT_01b6a074);
                if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0xb;
                  FUN_00eaecdd();
                  FUN_00da18c0();
                  FUN_00dfca00(&PTR_DAT_01557398);
                  return;
                }
LAB_007ec917:
                if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (((*(int *)(local_3c + 0x20) != 0) &&
                    (*(int *)(*(int *)(local_3c + 0x20) + 4) != 0)) &&
                   (iVar6 = FUN_00905af0(), iVar6 != 0)) {
                  FUN_00909650();
                  local_ec = 0x7e;
                  iVar6 = FUN_00908570(0,&local_ec,1);
                  iVar12 = 0;
                  if (0 < *(int *)(iVar6 + 4)) {
                    do {
                      local_1c[0] = iVar12;
                      iVar12 = FUN_00909ad0();
                      if ((iVar12 != 0) &&
                         ((*(int *)(param_1[7] + 8) == 0 ||
                          (iVar12 = FUN_00e51370(&PTR_PTR_0154a108,*(int *)(param_1[7] + 8),0),
                          iVar12 < 0)))) {
                        iVar12 = param_1[7];
                        *(int *)(iVar12 + 0xc) = *(int *)(iVar12 + 0xc) + 1;
                        uVar3 = *(uint *)(iVar12 + 8);
                        if (uVar3 < *(uint *)(*(int *)(iVar12 + 4) + 4)) {
                          *(uint *)(iVar12 + 8) = uVar3 + 1;
                          if (*(uint *)(*(int *)(iVar12 + 4) + 4) <= uVar3) goto LAB_007ee0c4;
                          FUN_00eaec5e();
                        }
                        else {
                          FUN_00ccd380();
                        }
                      }
                      iVar12 = local_1c[0] + 1;
                    } while (iVar12 < *(int *)(iVar6 + 4));
                  }
                }
                if (*(int *)(param_1[7] + 8) == 0) {
                  FUN_00906aa0(&PTR_DAT_01b3bc9c);
                  FUN_007876b0();
LAB_007ee0da:
                  param_1[9] = -2;
                  param_1[1] = 0;
                  param_1[2] = 0;
                  param_1[3] = 0;
                  param_1[4] = 0;
                  param_1[5] = 0;
                  param_1[6] = 0;
                  param_1[7] = 0;
                  if (param_1[0x10] == 0) {
                    if (PTR_FUN_01c22110 != (undefined *)0x0) {
                      FUN_00e8eaee();
                    }
                    FUN_00eaecdd();
                  }
                  else {
                    iVar6 = FUN_00c0a790(0);
                    if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
                      FUN_00931e50();
                    }
                  }
                  return;
                }
                FUN_0099d430(1);
                uVar5 = _UNK_018d63bc;
                uVar4 = _UNK_018d63b8;
                uVar8 = _UNK_018d63b4;
                puVar13 = local_c8;
                puVar14 = local_6c;
                for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
                  *puVar14 = *puVar13;
                  puVar13 = puVar13 + 1;
                  puVar14 = puVar14 + 1;
                }
                if (local_6c[2] <= local_58) {
                  puVar9 = (undefined4 *)(local_5c + local_6c[2] * 2);
                  if (local_58 - local_6c[2] < 0x1d) {
                    FUN_0099d6f0();
                  }
                  else {
                    *puVar9 = _DAT_018d63b0;
                    puVar9[1] = uVar8;
                    puVar9[2] = uVar4;
                    puVar9[3] = uVar5;
                    uVar5 = _UNK_018d63cc;
                    uVar4 = _UNK_018d63c8;
                    uVar8 = _UNK_018d63c4;
                    puVar9[4] = _DAT_018d63c0;
                    puVar9[5] = uVar8;
                    puVar9[6] = uVar4;
                    puVar9[7] = uVar5;
                    *(undefined1 (*) [16])(puVar9 + 8) = _DAT_018d63d0;
                    puVar9[0xc] = 0x1ea90068;
                    puVar9[0xd] = 0x20006d;
                    *(undefined2 *)(puVar9 + 0xe) = 0x28;
                    local_6c[2] = local_6c[2] + 0x1d;
                  }
                  FUN_00de77e0();
                  uVar5 = _UNK_018d63ec;
                  uVar4 = _UNK_018d63e8;
                  uVar8 = _UNK_018d63e4;
                  if (local_6c[2] <= local_58) {
                    puVar9 = (undefined4 *)(local_5c + local_6c[2] * 2);
                    if (local_58 - local_6c[2] < 0x11) {
                      FUN_0099d6f0();
                    }
                    else {
                      *puVar9 = _DAT_018d63e0;
                      puVar9[1] = uVar8;
                      puVar9[2] = uVar4;
                      puVar9[3] = uVar5;
                      *(undefined1 (*) [16])(puVar9 + 4) = _DAT_018d63f0;
                      *(undefined2 *)(puVar9 + 8) = 0x2e;
                      local_6c[2] = local_6c[2] + 0x11;
                    }
                    FUN_0099d560();
                    FUN_007876b0();
                    param_1[0xf] = 0;
                    while (param_1[0xf] < 3) {
                      local_7c = param_1[7];
                      local_74 = *(undefined4 *)(local_7c + 0xc);
                      local_78 = 0;
                      local_70 = 0;
                      iVar6 = FUN_00cd0850();
                      in_stack_fffffeb0 = local_118;
                      while (iVar6 != 0) {
                        local_f0 = *(undefined4 *)(*(int *)(iVar11 + 0x14) + 8);
                        iVar6 = FUN_00eaeae1();
                        *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b6a074;
                        uVar8 = FUN_00eaec5e();
                        FUN_0077a610(uVar8,&PTR_DAT_01be3a40);
                        iVar6 = FUN_00cd0850();
                      }
                      local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
                      if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
                        param_1[9] = 0xc;
                        FUN_00eaecdd();
                        FUN_00da18c0();
                        FUN_00dfc9c0();
                        return;
                      }
LAB_007ec8e2:
                      local_118 = in_stack_fffffeb0;
                      if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                        local_118 = in_stack_fffffeb0;
                      }
                      param_1[0xf] = param_1[0xf] + 1;
                    }
                    param_1[0xd] = 0x14;
                    param_1[0xe] = 0;
                    do {
                      do {
                        if (param_1[0xd] <= param_1[0xe]) {
LAB_007ec898:
                          iVar6 = *(int *)(*(int *)(iVar11 + 4) + 0xb0);
                          if (((*(byte *)(iVar6 + 0x34) & 1) == 0) ||
                             (*(char *)(iVar6 + 0x38) != '\x01')) {
                            FUN_00b6cb10();
                          }
                          FUN_007876b0();
                          goto LAB_007ee0da;
                        }
                        param_1[0xe] = param_1[0xe] + 1;
                        local_3c = FUN_0077b6e0(&PTR_DAT_01b6a074);
                        in_stack_fffffeb0 = local_118;
                        if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                          param_1[9] = 0xd;
                          FUN_00eaecdd();
                          FUN_00da18c0();
                          FUN_00dfca00(&PTR_DAT_01557398);
                          return;
                        }
LAB_007ec7c1:
                        if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                        }
                        ppuVar7 = *(undefined ***)(local_3c + 0x20);
                        if (((ppuVar7 == (undefined **)0x0) || (ppuVar7[1] == (undefined *)0x0)) ||
                           (ppuVar7 == &PTR_DAT_01b910bc)) {
LAB_007ec88c:
                          FUN_007876b0();
                          goto LAB_007ec898;
                        }
                        if (ppuVar7[1] == (undefined *)0x9) {
                          auVar15._0_4_ =
                               -(uint)(ppuVar7[2] == _DAT_018d6330 &&
                                      *(undefined **)((int)ppuVar7 + 10) == _DAT_018d6340);
                          auVar15._4_4_ =
                               -(uint)(ppuVar7[3] == _UNK_018d6334 &&
                                      *(undefined **)((int)ppuVar7 + 0xe) == _UNK_018d6344);
                          auVar15._8_4_ =
                               -(uint)(ppuVar7[4] == _UNK_018d6338 &&
                                      *(undefined **)((int)ppuVar7 + 0x12) == _UNK_018d6348);
                          auVar15._12_4_ =
                               -(uint)(ppuVar7[5] == _UNK_018d633c &&
                                      *(undefined **)((int)ppuVar7 + 0x16) == _UNK_018d634c);
                          if ((ushort)((ushort)(SUB161(auVar15 >> 7,0) & 1) |
                                       (ushort)(SUB161(auVar15 >> 0xf,0) & 1) << 1 |
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
                                      (ushort)(byte)(auVar15._12_4_ >> 0x1f) << 0xf) == 0xffff)
                          goto LAB_007ec88c;
                        }
                        if (ppuVar7 == &PTR_DAT_01bd0158) goto LAB_007ec88c;
                        if (ppuVar7[1] == (undefined *)0xc) {
                          auVar16._0_4_ =
                               -(uint)(ppuVar7[2] == _DAT_018d6350 && ppuVar7[4] == _DAT_018d6340);
                          auVar16._4_4_ =
                               -(uint)(ppuVar7[3] == _UNK_018d6354 && ppuVar7[5] == _UNK_018d6344);
                          auVar16._8_4_ =
                               -(uint)(ppuVar7[4] == _UNK_018d6358 && ppuVar7[6] == _UNK_018d6348);
                          auVar16._12_4_ =
                               -(uint)(ppuVar7[5] == _UNK_018d635c && ppuVar7[7] == _UNK_018d634c);
                          if ((ushort)((ushort)(SUB161(auVar16 >> 7,0) & 1) |
                                       (ushort)(SUB161(auVar16 >> 0xf,0) & 1) << 1 |
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
                                      (ushort)(byte)(auVar16._12_4_ >> 0x1f) << 0xf) == 0xffff)
                          goto LAB_007ec88c;
                        }
                        iVar6 = FUN_00905b10(0);
                        if (iVar6 != 0) {
                          FUN_00909650();
                          FUN_00a51650();
                          puVar9 = (undefined4 *)FUN_00a51200();
                          FUN_00a51650();
                          puVar10 = (undefined4 *)FUN_00a51200();
                          if (puVar10[7] != 0) {
                            puVar9 = puVar10;
                          }
                          if (puVar9[7] == 0) {
                            FUN_00a51650();
                            puVar9 = (undefined4 *)FUN_00a51200();
                            FUN_00a51650();
                            puVar10 = (undefined4 *)FUN_00a51200();
                            if (puVar10[7] != 0) {
                              puVar9 = puVar10;
                            }
                          }
                          if (puVar9[7] == 0) {
                            FUN_007876b0();
                          }
                          else {
                            if ((undefined *)*puVar9 == &DAT_01626e9c) {
                              FUN_00a4fcf0();
                            }
                            else {
                              FUN_00a502b0();
                            }
                            FUN_00a4f4a0();
                            iVar6 = FUN_00a4f280();
                            if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
                              FUN_00931d20();
                            }
                            iVar12 = iVar6 + 8;
                            uVar8 = *(undefined4 *)(iVar6 + 4);
                            iVar6 = iVar12;
                            local_f4 = uVar8;
                            FUN_00958ea0(iVar12,uVar8);
                            iVar6 = FUN_00dd21c0(&local_f8,iVar6,uVar8);
                            if (iVar6 != 0) {
                              if (iVar6 == 1) {
                    /* WARNING: Subroutine does not return */
                                FUN_00dca280(iVar12,local_f4);
                              }
                    /* WARNING: Subroutine does not return */
                              FUN_00de72e0();
                            }
                            local_80 = local_f8;
                            if (local_f8 < 1) {
                              FUN_007876b0();
                              goto LAB_007ec898;
                            }
                            if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                              FUN_00e8f54a();
                            }
                            local_94 = FUN_00b848a0();
                            if (local_94 == 0) {
                              local_88 = 0;
                              local_84 = 0;
                            }
                            else {
                              local_88 = local_94 + 8;
                              local_84 = *(uint *)(local_94 + 4);
                            }
                            local_98 = 0;
                            local_90 = 0;
                            local_8c = 0;
                            if (local_84 < 0x21) {
                              FUN_0099d6f0();
                            }
                            else {
                              FUN_00930280(0x42);
                              local_90 = local_90 + 0x21;
                            }
                            FUN_00de77e0();
                            FUN_0099d560();
                            FUN_007876b0();
                          }
                        }
                        local_fc = *(undefined4 *)(*(int *)(iVar11 + 0x14) + 8);
                        iVar6 = FUN_00eaeae1();
                        *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b6a074;
                        *(undefined ***)(iVar6 + 0xc) = &PTR_DAT_01bfb39c;
                        FUN_0077a610(iVar6,&PTR_DAT_01be3a40);
                        local_100 = *(undefined4 *)(*(int *)(iVar11 + 0x14) + 8);
                        iVar6 = FUN_00eaeae1();
                        *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b6a074;
                        *(undefined ***)(iVar6 + 0xc) = &PTR_DAT_01bd0048;
                        FUN_0077a610(iVar6,&PTR_DAT_01be3a40);
                        local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
                        if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
                          param_1[9] = 0xe;
                          FUN_00eaecdd();
                          FUN_00da18c0();
                          FUN_00dfc9c0();
                          return;
                        }
LAB_007ec6b2:
                        local_118 = in_stack_fffffeb0;
                        if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                          local_118 = in_stack_fffffeb0;
                        }
                        local_104 = *(undefined4 *)(*(int *)(iVar11 + 0x14) + 8);
                        iVar6 = FUN_00eaeae1();
                        *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b6a074;
                        *(undefined ***)(iVar6 + 0xc) = &PTR_DAT_01bf9ac8;
                        FUN_0077a610(iVar6,&PTR_DAT_01be3a40);
                        local_108 = *(undefined4 *)(*(int *)(iVar11 + 0x14) + 8);
                        iVar6 = FUN_00eaeae1();
                        *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b6a074;
                        *(undefined ***)(iVar6 + 0xc) = &PTR_DAT_01b5dc10;
                        FUN_0077a610(iVar6,&PTR_DAT_01be3a40);
                        local_1c[2] = FUN_00975000(*(undefined4 *)(iVar11 + 0x1c));
                        if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
                          param_1[9] = 0xf;
                          FUN_00eaecdd();
                          FUN_00da18c0();
                          FUN_00dfc9c0();
                          return;
                        }
LAB_007ec625:
                        if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                        }
                        local_1c[1] = FUN_0077b0a0(&PTR_DAT_01bb04a8);
                        if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
                          param_1[9] = 0x10;
                          FUN_00eaecdd();
                          FUN_00da18c0();
                          FUN_00dfca00(&PTR_DAT_01553b90);
                          return;
                        }
LAB_007ec56c:
                        if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                        }
                      } while (*(int *)(local_1c[1] + 0x20) == 0);
                      iVar6 = FUN_00909ad0();
                      if (iVar6 != 0) break;
                      FUN_0094bfb0();
                      FUN_0094c500();
                      local_118 = &DAT_01c222d8;
                      if (PTR_FUN_01c222d4 != (undefined *)0x0) {
                        FUN_00e8cd95();
                      }
                      if (DAT_01c222d8 == '\0') {
                        FUN_00dfdf80();
                      }
                      else {
                        FUN_00956500();
                      }
                      FUN_0094bfb0();
                      FUN_0094c500();
                      if (*local_118 == '\0') {
                        FUN_00dfdf80();
                      }
                      else {
                        FUN_00956500();
                      }
                      iVar6 = FUN_00909ad0();
                    } while (iVar6 == 0);
                    FUN_007876b0();
                    if (*(int *)(DAT_01c28a04 + 8) == 0) {
                      FUN_00eae9a0();
                      FUN_00e9a725(local_118);
                      FUN_00eaebef();
                    }
                    iVar6 = FUN_00e4e4a0(&PTR_DAT_01543d24,local_10c);
                    if (iVar6 == 0) {
                      uVar8 = 4;
                    }
                    else {
                      uVar8 = *(undefined4 *)(iVar6 + 8);
                    }
                    iVar6 = FUN_00eaeae1();
                    *(undefined ***)(iVar6 + 8) = &PTR_DAT_01bb04a8;
                    iVar11 = FUN_00eae9a0(iVar6);
                    *(undefined4 *)(iVar11 + 4) = uVar8;
                    FUN_00eaebca();
                    iVar11 = FUN_00eae9a0();
                    *(undefined4 *)(iVar11 + 4) = 0;
                    FUN_00eaebca();
                    FUN_0077a610(iVar6,&PTR_DAT_01befc64);
                    goto LAB_007ee0da;
                  }
                }
              }
            }
          }
                    /* WARNING: Subroutine does not return */
          FUN_009318f0();
        }
      }
    }
  }
LAB_007ee0c4:
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

