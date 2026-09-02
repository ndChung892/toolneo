/* Address: 0052cd10 | Ghidra name: FUN_0052cd10 */

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0052cd10(undefined4 param_1,int *param_2)

{
  short sVar1;
  undefined **ppuVar2;
  undefined *puVar3;
  ushort uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
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
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined4 uVar25;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  FUN_004d6230();
  iVar8 = *param_2;
  uVar5 = (**(code **)(iVar8 + 0x20))();
  if (PTR_FUN_01c213b4 != (undefined *)0x0) {
    FUN_00e8dd73();
  }
  uVar25 = *(undefined4 *)(DAT_01c282f0 + 8);
  iVar7 = DAT_01c282f0;
  iVar6 = FUN_0040a5d0(DAT_01c282f0,uVar25,uVar5);
  if (iVar6 != 0) {
    FUN_00de47f0();
    FUN_0052c230(0);
  }
  (**(code **)(iVar8 + 0x20))();
  iVar6 = FUN_0040a5d0(iVar7,uVar25,uVar5);
  if (iVar6 != 0) {
    (**(code **)(iVar8 + 0x28))();
    FUN_00e1ef40(*(undefined4 *)(iVar7 + 0x34));
    FUN_0052cc60(local_20,local_1c);
  }
  (**(code **)(iVar8 + 0x20))();
  iVar6 = FUN_0040a5d0();
  if (iVar6 != 0) {
    FUN_00e46d60(&PTR_PTR_01549c28);
    FUN_00e1ef40(*(undefined4 *)(iVar7 + 0x34));
    FUN_0052cc60(local_18,local_14);
  }
  (**(code **)(iVar8 + 0x20))();
  iVar7 = FUN_0040a5d0();
  if (iVar7 == 0) {
    (**(code **)(iVar8 + 0x20))();
    iVar7 = FUN_0040a5d0();
    if (iVar7 != 0) goto LAB_0052ce3b;
  }
  else {
LAB_0052ce3b:
    iVar7 = FUN_00e46d60(&PTR_PTR_01549c28);
    if ((iVar7 != 0) && (*(int *)(iVar7 + 4) != 0)) {
      FUN_00e47070(&PTR_DAT_01549c5c,0);
    }
  }
  (**(code **)(iVar8 + 0x20))();
  iVar7 = FUN_0040a5d0();
  if (iVar7 != 0) {
    FUN_0052c4b0();
  }
  iVar8 = (**(code **)(iVar8 + 0x20))();
  ppuVar2 = *(undefined ***)(iVar8 + 0x18);
  if (ppuVar2 == (undefined **)0x0) {
    return;
  }
  puVar3 = ppuVar2[1];
  switch(puVar3) {
  case (undefined *)0x4:
    if ((ppuVar2 != &PTR_DAT_01bb5a80) &&
       (ppuVar2[3] != (undefined *)0x740078 || ppuVar2[2] != (undefined *)0x650054)) {
      return;
    }
    break;
  case (undefined *)0x5:
  case (undefined *)0x6:
  case (undefined *)0x7:
    goto switchD_0052ceb6_caseD_5;
  case (undefined *)0x8:
    if (ppuVar2 != &PTR_DAT_01b73eb0) {
      auVar24._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d0300);
      auVar24._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d0304);
      auVar24._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d0308);
      auVar24._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d030c);
      uVar4 = (ushort)(SUB161(auVar24 >> 7,0) & 1) | (ushort)(SUB161(auVar24 >> 0xf,0) & 1) << 1 |
              (ushort)(SUB161(auVar24 >> 0x17,0) & 1) << 2 |
              (ushort)(SUB161(auVar24 >> 0x1f,0) & 1) << 3 |
              (ushort)(SUB161(auVar24 >> 0x27,0) & 1) << 4 |
              (ushort)(SUB161(auVar24 >> 0x2f,0) & 1) << 5 |
              (ushort)(SUB161(auVar24 >> 0x37,0) & 1) << 6 |
              (ushort)(SUB161(auVar24 >> 0x3f,0) & 1) << 7 |
              (ushort)(SUB161(auVar24 >> 0x47,0) & 1) << 8 |
              (ushort)(SUB161(auVar24 >> 0x4f,0) & 1) << 9 |
              (ushort)(SUB161(auVar24 >> 0x57,0) & 1) << 10 |
              (ushort)(SUB161(auVar24 >> 0x5f,0) & 1) << 0xb |
              (ushort)((byte)(auVar24._12_4_ >> 7) & 1) << 0xc |
              (ushort)((byte)(auVar24._12_4_ >> 0xf) & 1) << 0xd |
              (ushort)((byte)(auVar24._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar24._12_4_ >> 0x1f) << 0xf;
joined_r0x0052cf03:
      if (uVar4 != 0xffff) {
        return;
      }
    }
    break;
  case (undefined *)0x9:
    if (ppuVar2 != &PTR_DAT_01b73f2c) {
      auVar23._0_4_ =
           -(uint)(ppuVar2[2] == _DAT_018d02e0 && *(int *)((int)ppuVar2 + 10) == _DAT_018d02f0);
      auVar23._4_4_ =
           -(uint)(ppuVar2[3] == _UNK_018d02e4 && *(int *)((int)ppuVar2 + 0xe) == _UNK_018d02f4);
      auVar23._8_4_ =
           -(uint)(ppuVar2[4] == _UNK_018d02e8 && *(int *)((int)ppuVar2 + 0x12) == _UNK_018d02f8);
      auVar23._12_4_ =
           -(uint)(ppuVar2[5] == _UNK_018d02ec && *(int *)((int)ppuVar2 + 0x16) == _UNK_018d02fc);
      uVar4 = (ushort)(SUB161(auVar23 >> 7,0) & 1) | (ushort)(SUB161(auVar23 >> 0xf,0) & 1) << 1 |
              (ushort)(SUB161(auVar23 >> 0x17,0) & 1) << 2 |
              (ushort)(SUB161(auVar23 >> 0x1f,0) & 1) << 3 |
              (ushort)(SUB161(auVar23 >> 0x27,0) & 1) << 4 |
              (ushort)(SUB161(auVar23 >> 0x2f,0) & 1) << 5 |
              (ushort)(SUB161(auVar23 >> 0x37,0) & 1) << 6 |
              (ushort)(SUB161(auVar23 >> 0x3f,0) & 1) << 7 |
              (ushort)(SUB161(auVar23 >> 0x47,0) & 1) << 8 |
              (ushort)(SUB161(auVar23 >> 0x4f,0) & 1) << 9 |
              (ushort)(SUB161(auVar23 >> 0x57,0) & 1) << 10 |
              (ushort)(SUB161(auVar23 >> 0x5f,0) & 1) << 0xb |
              (ushort)((byte)(auVar23._12_4_ >> 7) & 1) << 0xc |
              (ushort)((byte)(auVar23._12_4_ >> 0xf) & 1) << 0xd |
              (ushort)((byte)(auVar23._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar23._12_4_ >> 0x1f) << 0xf;
      goto joined_r0x0052cf03;
    }
    break;
  case (undefined *)0xa:
    uVar4 = *(ushort *)(ppuVar2 + 4);
    if (uVar4 < 0x49) {
      if (uVar4 != 0x46) {
        if (uVar4 != 0x48) {
          return;
        }
        if (ppuVar2 != &PTR_DAT_01b88118) {
          auVar22._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d02c0 && ppuVar2[3] == _DAT_018d02d0);
          auVar22._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d02c4 && ppuVar2[4] == _UNK_018d02d4);
          auVar22._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d02c8 && ppuVar2[5] == _UNK_018d02d8);
          auVar22._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d02cc && ppuVar2[6] == _UNK_018d02dc);
          uVar4 = (ushort)(SUB161(auVar22 >> 7,0) & 1) | (ushort)(SUB161(auVar22 >> 0xf,0) & 1) << 1
                  | (ushort)(SUB161(auVar22 >> 0x17,0) & 1) << 2 |
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
          goto joined_r0x0052d13e;
        }
        goto LAB_0052cf38;
      }
      if (ppuVar2 != &PTR_DAT_01b73e64) {
        auVar21._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d02a0 && ppuVar2[3] == _DAT_018d02b0);
        auVar21._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d02a4 && ppuVar2[4] == _UNK_018d02b4);
        auVar21._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d02a8 && ppuVar2[5] == _UNK_018d02b8);
        auVar21._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d02ac && ppuVar2[6] == _UNK_018d02bc);
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
        goto joined_r0x0052cf03;
      }
    }
    else if (uVar4 == 0x57) {
      if (ppuVar2 != &PTR_DAT_01b73f4c) {
        auVar19._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d0260 && ppuVar2[3] == _DAT_018d0270);
        auVar19._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d0264 && ppuVar2[4] == _UNK_018d0274);
        auVar19._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d0268 && ppuVar2[5] == _UNK_018d0278);
        auVar19._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d026c && ppuVar2[6] == _UNK_018d027c);
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
        goto joined_r0x0052cf03;
      }
    }
    else {
      if (uVar4 != 0x67) {
        return;
      }
      if (ppuVar2 != &PTR_DAT_01b74288) {
        auVar20._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d0280 && ppuVar2[3] == _DAT_018d0290);
        auVar20._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d0284 && ppuVar2[4] == _UNK_018d0294);
        auVar20._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d0288 && ppuVar2[5] == _UNK_018d0298);
        auVar20._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d028c && ppuVar2[6] == _UNK_018d029c);
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
        goto joined_r0x0052cf03;
      }
    }
    break;
  case (undefined *)0xb:
    if (*(short *)(ppuVar2 + 2) == 0x46) {
      if (ppuVar2 != &PTR_DAT_01b73f08) {
        auVar17._0_4_ =
             -(uint)(ppuVar2[2] == _DAT_018d0220 && *(int *)((int)ppuVar2 + 0xe) == _DAT_018d0230);
        auVar17._4_4_ =
             -(uint)(ppuVar2[3] == _UNK_018d0224 && *(int *)((int)ppuVar2 + 0x12) == _UNK_018d0234);
        auVar17._8_4_ =
             -(uint)(ppuVar2[4] == _UNK_018d0228 && *(int *)((int)ppuVar2 + 0x16) == _UNK_018d0238);
        auVar17._12_4_ =
             -(uint)(ppuVar2[5] == _UNK_018d022c && *(int *)((int)ppuVar2 + 0x1a) == _UNK_018d023c);
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
        goto joined_r0x0052cf03;
      }
    }
    else {
      if (*(short *)(ppuVar2 + 2) != 0x50) {
        return;
      }
      if (ppuVar2 != &PTR_DAT_01b9e670) {
        auVar18._0_4_ =
             -(uint)(ppuVar2[2] == _DAT_018d0240 && *(int *)((int)ppuVar2 + 0xe) == _DAT_018d0250);
        auVar18._4_4_ =
             -(uint)(ppuVar2[3] == _UNK_018d0244 && *(int *)((int)ppuVar2 + 0x12) == _UNK_018d0254);
        auVar18._8_4_ =
             -(uint)(ppuVar2[4] == _UNK_018d0248 && *(int *)((int)ppuVar2 + 0x16) == _UNK_018d0258);
        auVar18._12_4_ =
             -(uint)(ppuVar2[5] == _UNK_018d024c && *(int *)((int)ppuVar2 + 0x1a) == _UNK_018d025c);
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
        goto joined_r0x0052cf03;
      }
    }
    break;
  case (undefined *)0xc:
    switch(*(undefined2 *)(ppuVar2 + 2)) {
    case 0x50:
      if (ppuVar2 != &PTR_DAT_01b9b408) {
        auVar16._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d0130 && ppuVar2[4] == _DAT_018d0210);
        auVar16._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d0134 && ppuVar2[5] == _UNK_018d0214);
        auVar16._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d0138 && ppuVar2[6] == _UNK_018d0218);
        auVar16._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d013c && ppuVar2[7] == _UNK_018d021c);
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
        goto joined_r0x0052cf03;
      }
      goto LAB_0052cf05;
    default:
      goto switchD_0052ceb6_caseD_5;
    case 0x53:
      if (ppuVar2 != &PTR_DAT_01ba7594) {
        auVar15._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d0140 && ppuVar2[4] == _DAT_018d0200);
        auVar15._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d0144 && ppuVar2[5] == _UNK_018d0204);
        auVar15._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d0148 && ppuVar2[6] == _UNK_018d0208);
        auVar15._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d014c && ppuVar2[7] == _UNK_018d020c);
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
joined_r0x0052d13e:
        if (uVar4 != 0xffff) {
          return;
        }
      }
      break;
    case 0x54:
      if (ppuVar2 != &PTR_DAT_01bb68e8) {
        auVar14._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d01e0 && ppuVar2[4] == _DAT_018d01f0);
        auVar14._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d01e4 && ppuVar2[5] == _UNK_018d01f4);
        auVar14._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d01e8 && ppuVar2[6] == _UNK_018d01f8);
        auVar14._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d01ec && ppuVar2[7] == _UNK_018d01fc);
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
        goto joined_r0x0052d13e;
      }
    }
    goto LAB_0052cf38;
  case (undefined *)0xd:
    sVar1 = *(short *)(ppuVar2 + 2);
    if (sVar1 == 0x46) {
      if (ppuVar2 != &PTR_DAT_01b72fac) {
        auVar11._0_4_ =
             -(uint)(ppuVar2[2] == _DAT_018d0160 && *(int *)((int)ppuVar2 + 0x12) == _DAT_018d0170);
        auVar11._4_4_ =
             -(uint)(ppuVar2[3] == _UNK_018d0164 && *(int *)((int)ppuVar2 + 0x16) == _UNK_018d0174);
        auVar11._8_4_ =
             -(uint)(ppuVar2[4] == _UNK_018d0168 && *(int *)((int)ppuVar2 + 0x1a) == _UNK_018d0178);
        auVar11._12_4_ =
             -(uint)(ppuVar2[5] == _UNK_018d016c && *(int *)((int)ppuVar2 + 0x1e) == _UNK_018d017c);
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
        goto joined_r0x0052cf03;
      }
    }
    else {
      if (sVar1 != 0x4c) {
        if (sVar1 != 0x54) {
          return;
        }
        if (ppuVar2 != &PTR_DAT_01bb5a98) {
          auVar13._0_4_ =
               -(uint)(ppuVar2[2] == _DAT_018d01a0 && *(int *)((int)ppuVar2 + 0x12) == _DAT_018d01b0
                      );
          auVar13._4_4_ =
               -(uint)(ppuVar2[3] == _UNK_018d01a4 && *(int *)((int)ppuVar2 + 0x16) == _UNK_018d01b4
                      );
          auVar13._8_4_ =
               -(uint)(ppuVar2[4] == _UNK_018d01a8 && *(int *)((int)ppuVar2 + 0x1a) == _UNK_018d01b8
                      );
          auVar13._12_4_ =
               -(uint)(ppuVar2[5] == _UNK_018d01ac && *(int *)((int)ppuVar2 + 0x1e) == _UNK_018d01bc
                      );
          uVar4 = (ushort)(SUB161(auVar13 >> 7,0) & 1) | (ushort)(SUB161(auVar13 >> 0xf,0) & 1) << 1
                  | (ushort)(SUB161(auVar13 >> 0x17,0) & 1) << 2 |
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
          goto joined_r0x0052d13e;
        }
        goto LAB_0052cf38;
      }
      if (ppuVar2 != &PTR_DAT_01b87d98) {
        auVar12._0_4_ =
             -(uint)(ppuVar2[2] == _DAT_018d0180 && *(int *)((int)ppuVar2 + 0x12) == _DAT_018d0190);
        auVar12._4_4_ =
             -(uint)(ppuVar2[3] == _UNK_018d0184 && *(int *)((int)ppuVar2 + 0x16) == _UNK_018d0194);
        auVar12._8_4_ =
             -(uint)(ppuVar2[4] == _UNK_018d0188 && *(int *)((int)ppuVar2 + 0x1a) == _UNK_018d0198);
        auVar12._12_4_ =
             -(uint)(ppuVar2[5] == _UNK_018d018c && *(int *)((int)ppuVar2 + 0x1e) == _UNK_018d019c);
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
        goto joined_r0x0052cf03;
      }
    }
    break;
  case (undefined *)0xe:
    if (*(short *)(ppuVar2 + 2) != 0x52) {
      if (*(short *)(ppuVar2 + 2) != 0x53) {
        return;
      }
      if (ppuVar2 != &PTR_DAT_01ba7624) {
        auVar10._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d0140 && ppuVar2[5] == _DAT_018d0150);
        auVar10._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d0144 && ppuVar2[6] == _UNK_018d0154);
        auVar10._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d0148 && ppuVar2[7] == _UNK_018d0158);
        auVar10._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d014c && ppuVar2[8] == _UNK_018d015c);
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
        goto joined_r0x0052d13e;
      }
      goto LAB_0052cf38;
    }
    if (ppuVar2 != &PTR_DAT_01ba3ffc) {
      auVar9._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d0120 && ppuVar2[5] == _DAT_018d0130);
      auVar9._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d0124 && ppuVar2[6] == _UNK_018d0134);
      auVar9._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d0128 && ppuVar2[7] == _UNK_018d0138);
      auVar9._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d012c && ppuVar2[8] == _UNK_018d013c);
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
      goto joined_r0x0052cf03;
    }
    break;
  default:
    if (puVar3 == (undefined *)0x16) {
      iVar8 = FUN_00905410();
    }
    else {
      if (puVar3 != (undefined *)0x18) {
        return;
      }
      iVar8 = FUN_00905410();
    }
    if (iVar8 == 0) {
      return;
    }
LAB_0052cf38:
    FUN_0052c080();
    goto switchD_0052ceb6_caseD_5;
  }
LAB_0052cf05:
  FUN_0052c040();
switchD_0052ceb6_caseD_5:
  return;
}

