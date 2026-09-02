/* Address: 008cd460 | Ghidra name: FUN_008cd460 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall FUN_008cd460(int param_1)

{
  short sVar1;
  int iVar2;
  undefined **ppuVar3;
  uint uVar4;
  uint uVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 local_1c;
  
  local_1c = 0;
  do {
    iVar2 = FUN_00cd0850();
    if (iVar2 == 0) {
      return 1;
    }
    uVar16 = local_1c;
    if (PTR_FUN_01c22014 != (undefined *)0x0) {
      FUN_00e8ea44();
    }
    uVar15 = *(undefined4 *)(DAT_01c28ec0 + 4);
    if (PTR_FUN_01c222d4 != (undefined *)0x0) {
      FUN_00e8cd95(uVar15);
    }
    if (DAT_01c222d8 == '\0') {
      ppuVar3 = (undefined **)FUN_00dfdf80();
    }
    else {
      ppuVar3 = (undefined **)FUN_00956500();
    }
    uVar5 = 0;
    uVar4 = (uint)(_DAT_00000008 == 0);
    if (ppuVar3 == (undefined **)0x0) goto switchD_008cd4ed_default;
    switch(ppuVar3[1]) {
    case (undefined *)0x6:
      if ((ppuVar3 == &PTR_DAT_01beed04) ||
         (ppuVar3[4] == (undefined *)0x630069 &&
          (ppuVar3[2] == (undefined *)0x750070 && ppuVar3[3] == (undefined *)0x6c0062))) {
        uVar5 = 0x200;
        break;
      }
    default:
switchD_008cd4ed_default:
      FUN_008ccb60();
      (*(code *)PTR_FUN_01c52258)();
      goto LAB_008cd56a;
    case (undefined *)0x7:
      if (*(short *)(ppuVar3 + 2) == 0x6d) {
        if ((ppuVar3 == &PTR_DAT_01bec3a4) ||
           (((ppuVar3[2] == (undefined *)0x61006d && ppuVar3[3] == (undefined *)0x2d0078) &&
            ppuVar3[4] == (undefined *)0x670061) && *(short *)(ppuVar3 + 5) == 0x65)) {
          uVar5 = 1;
          uVar4 = FUN_008cdac0(uVar15,_DAT_00000008,uVar16);
          break;
        }
      }
      else if ((*(short *)(ppuVar3 + 2) == 0x70) &&
              ((ppuVar3 == &PTR_DAT_01beea2c ||
               (((ppuVar3[2] == (undefined *)0x720070 && ppuVar3[3] == &DAT_00760069) &&
                ppuVar3[4] == (undefined *)0x740061) && *(short *)(ppuVar3 + 5) == 0x65)))) {
        uVar5 = 0x400;
        uVar4 = FUN_008cd9c0();
        break;
      }
      goto switchD_008cd4ed_default;
    case (undefined *)0x8:
      sVar1 = *(short *)((int)ppuVar3 + 0xe);
      if (sVar1 == 0x61) {
        if (ppuVar3 != &PTR_DAT_01bef670) {
          auVar8._0_4_ = -(uint)(ppuVar3[2] == _DAT_018d9820);
          auVar8._4_4_ = -(uint)(ppuVar3[3] == _UNK_018d9824);
          auVar8._8_4_ = -(uint)(ppuVar3[4] == _UNK_018d9828);
          auVar8._12_4_ = -(uint)(ppuVar3[5] == _UNK_018d982c);
          if ((ushort)((ushort)(SUB161(auVar8 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar8 >> 0xf,0) & 1) << 1 |
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
                      (ushort)(byte)(auVar8._12_4_ >> 0x1f) << 0xf) != 0xffff)
          goto switchD_008cd4ed_default;
        }
        uVar5 = 2;
        uVar4 = FUN_008cdac0(uVar15,_DAT_00000008,uVar16);
      }
      else if (sVar1 == 99) {
        if (ppuVar3 != &PTR_DAT_01bed404) {
          auVar9._0_4_ = -(uint)(ppuVar3[2] == _DAT_018d9830);
          auVar9._4_4_ = -(uint)(ppuVar3[3] == _UNK_018d9834);
          auVar9._8_4_ = -(uint)(ppuVar3[4] == _UNK_018d9838);
          auVar9._12_4_ = -(uint)(ppuVar3[5] == _UNK_018d983c);
          if ((ushort)((ushort)(SUB161(auVar9 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar9 >> 0xf,0) & 1) << 1 |
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
                      (ushort)(byte)(auVar9._12_4_ >> 0x1f) << 0xf) != 0xffff)
          goto switchD_008cd4ed_default;
        }
        uVar5 = 0x10;
        uVar4 = FUN_008cd9c0();
      }
      else {
        if (sVar1 != 0x73) goto switchD_008cd4ed_default;
        if (ppuVar3 != &PTR_DAT_01bed48c) {
          auVar10._0_4_ = -(uint)(ppuVar3[2] == _DAT_018d9840);
          auVar10._4_4_ = -(uint)(ppuVar3[3] == _UNK_018d9844);
          auVar10._8_4_ = -(uint)(ppuVar3[4] == _UNK_018d9848);
          auVar10._12_4_ = -(uint)(ppuVar3[5] == _UNK_018d984c);
          if ((ushort)((ushort)(SUB161(auVar10 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar10 >> 0xf,0) & 1) << 1 |
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
                      (ushort)(byte)(auVar10._12_4_ >> 0x1f) << 0xf) != 0xffff)
          goto switchD_008cd4ed_default;
        }
        uVar5 = 0x20;
      }
      break;
    case (undefined *)0x9:
      if (*(short *)((int)ppuVar3 + 10) != 0x61) {
        if (*(short *)((int)ppuVar3 + 10) == 0x69) {
          if (ppuVar3 != &PTR_DAT_01beca38) {
            auVar7._0_4_ = -(uint)(ppuVar3[2] == _DAT_018d9800 &&
                                  *(int *)((int)ppuVar3 + 10) == _DAT_018d9810);
            auVar7._4_4_ = -(uint)(ppuVar3[3] == _UNK_018d9804 &&
                                  *(int *)((int)ppuVar3 + 0xe) == _UNK_018d9814);
            auVar7._8_4_ = -(uint)(ppuVar3[4] == _UNK_018d9808 &&
                                  *(int *)((int)ppuVar3 + 0x12) == _UNK_018d9818);
            auVar7._12_4_ =
                 -(uint)(ppuVar3[5] == _UNK_018d980c &&
                        *(int *)((int)ppuVar3 + 0x16) == _UNK_018d981c);
            if ((ushort)((ushort)(SUB161(auVar7 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar7 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar7 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar7 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar7 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar7 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar7 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar7 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar7 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar7 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar7 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar7 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar7._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar7._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar7._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar7._12_4_ >> 0x1f) << 0xf) != 0xffff)
            goto switchD_008cd4ed_default;
          }
          uVar5 = 8;
          uVar4 = FUN_008cdac0(uVar15,_DAT_00000008,uVar16);
          break;
        }
        goto switchD_008cd4ed_default;
      }
      if (ppuVar3 != &PTR_DAT_01bec53c) {
        auVar6._0_4_ = -(uint)(ppuVar3[2] == _DAT_018d97e0 &&
                              *(int *)((int)ppuVar3 + 10) == _DAT_018d97f0);
        auVar6._4_4_ = -(uint)(ppuVar3[3] == _UNK_018d97e4 &&
                              *(int *)((int)ppuVar3 + 0xe) == _UNK_018d97f4);
        auVar6._8_4_ = -(uint)(ppuVar3[4] == _UNK_018d97e8 &&
                              *(int *)((int)ppuVar3 + 0x12) == _UNK_018d97f8);
        auVar6._12_4_ =
             -(uint)(ppuVar3[5] == _UNK_018d97ec && *(int *)((int)ppuVar3 + 0x16) == _UNK_018d97fc);
        if ((ushort)((ushort)(SUB161(auVar6 >> 7,0) & 1) |
                     (ushort)(SUB161(auVar6 >> 0xf,0) & 1) << 1 |
                     (ushort)(SUB161(auVar6 >> 0x17,0) & 1) << 2 |
                     (ushort)(SUB161(auVar6 >> 0x1f,0) & 1) << 3 |
                     (ushort)(SUB161(auVar6 >> 0x27,0) & 1) << 4 |
                     (ushort)(SUB161(auVar6 >> 0x2f,0) & 1) << 5 |
                     (ushort)(SUB161(auVar6 >> 0x37,0) & 1) << 6 |
                     (ushort)(SUB161(auVar6 >> 0x3f,0) & 1) << 7 |
                     (ushort)(SUB161(auVar6 >> 0x47,0) & 1) << 8 |
                     (ushort)(SUB161(auVar6 >> 0x4f,0) & 1) << 9 |
                     (ushort)(SUB161(auVar6 >> 0x57,0) & 1) << 10 |
                     (ushort)(SUB161(auVar6 >> 0x5f,0) & 1) << 0xb |
                     (ushort)((byte)(auVar6._12_4_ >> 7) & 1) << 0xc |
                     (ushort)((byte)(auVar6._12_4_ >> 0xf) & 1) << 0xd |
                     (ushort)((byte)(auVar6._12_4_ >> 0x17) & 1) << 0xe |
                    (ushort)(byte)(auVar6._12_4_ >> 0x1f) << 0xf) != 0xffff)
        goto switchD_008cd4ed_default;
      }
      uVar5 = 0x40;
      iVar2 = FUN_008cdac0(uVar15,_DAT_00000008,uVar16);
      if (iVar2 == 0) break;
      uVar5 = 0x44;
      goto LAB_008cd56a;
    case (undefined *)0xa:
    case (undefined *)0xb:
    case (undefined *)0xd:
      goto switchD_008cd4ed_default;
    case (undefined *)0xc:
      if (ppuVar3 != &PTR_DAT_01bed4ac) {
        auVar14._0_4_ = -(uint)(ppuVar3[2] == _DAT_018d98a0 && ppuVar3[4] == _DAT_018d98b0);
        auVar14._4_4_ = -(uint)(ppuVar3[3] == _UNK_018d98a4 && ppuVar3[5] == _UNK_018d98b4);
        auVar14._8_4_ = -(uint)(ppuVar3[4] == _UNK_018d98a8 && ppuVar3[6] == _UNK_018d98b8);
        auVar14._12_4_ = -(uint)(ppuVar3[5] == _UNK_018d98ac && ppuVar3[7] == _UNK_018d98bc);
        if ((ushort)((ushort)(SUB161(auVar14 >> 7,0) & 1) |
                     (ushort)(SUB161(auVar14 >> 0xf,0) & 1) << 1 |
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
                    (ushort)(byte)(auVar14._12_4_ >> 0x1f) << 0xf) != 0xffff)
        goto switchD_008cd4ed_default;
      }
      uVar5 = 0x80;
      break;
    case (undefined *)0xe:
      if (ppuVar3 != &PTR_DAT_01beda40) {
        auVar13._0_4_ = -(uint)(ppuVar3[2] == _DAT_018d9880 && ppuVar3[5] == _DAT_018d9890);
        auVar13._4_4_ = -(uint)(ppuVar3[3] == _UNK_018d9884 && ppuVar3[6] == _UNK_018d9894);
        auVar13._8_4_ = -(uint)(ppuVar3[4] == _UNK_018d9888 && ppuVar3[7] == _UNK_018d9898);
        auVar13._12_4_ = -(uint)(ppuVar3[5] == _UNK_018d988c && ppuVar3[8] == _UNK_018d989c);
        if ((ushort)((ushort)(SUB161(auVar13 >> 7,0) & 1) |
                     (ushort)(SUB161(auVar13 >> 0xf,0) & 1) << 1 |
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
                    (ushort)(byte)(auVar13._12_4_ >> 0x1f) << 0xf) != 0xffff)
        goto switchD_008cd4ed_default;
      }
      uVar5 = 0x100;
      break;
    case (undefined *)0xf:
      if (ppuVar3 != &PTR_DAT_01becde4) {
        auVar12._0_4_ =
             -(uint)(ppuVar3[2] == _DAT_018d9870 &&
                    *(undefined **)((int)ppuVar3 + 0x16) == _DAT_018d9860);
        auVar12._4_4_ =
             -(uint)(ppuVar3[3] == _UNK_018d9874 &&
                    *(undefined **)((int)ppuVar3 + 0x1a) == _UNK_018d9864);
        auVar12._8_4_ =
             -(uint)(ppuVar3[4] == _UNK_018d9878 &&
                    *(undefined **)((int)ppuVar3 + 0x1e) == _UNK_018d9868);
        auVar12._12_4_ =
             -(uint)(ppuVar3[5] == _UNK_018d987c &&
                    *(undefined **)((int)ppuVar3 + 0x22) == _UNK_018d986c);
        if ((ushort)((ushort)(SUB161(auVar12 >> 7,0) & 1) |
                     (ushort)(SUB161(auVar12 >> 0xf,0) & 1) << 1 |
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
                    (ushort)(byte)(auVar12._12_4_ >> 0x1f) << 0xf) != 0xffff)
        goto switchD_008cd4ed_default;
      }
      uVar5 = 0x800;
      break;
    case (undefined *)0x10:
      if (ppuVar3 != &PTR_DAT_01beec14) {
        auVar11._0_4_ = -(uint)(ppuVar3[2] == _DAT_018d9850 && ppuVar3[6] == _DAT_018d9860);
        auVar11._4_4_ = -(uint)(ppuVar3[3] == _UNK_018d9854 && ppuVar3[7] == _UNK_018d9864);
        auVar11._8_4_ = -(uint)(ppuVar3[4] == _UNK_018d9858 && ppuVar3[8] == _UNK_018d9868);
        auVar11._12_4_ = -(uint)(ppuVar3[5] == _UNK_018d985c && ppuVar3[9] == _UNK_018d986c);
        if ((ushort)((ushort)(SUB161(auVar11 >> 7,0) & 1) |
                     (ushort)(SUB161(auVar11 >> 0xf,0) & 1) << 1 |
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
                    (ushort)(byte)(auVar11._12_4_ >> 0x1f) << 0xf) != 0xffff)
        goto switchD_008cd4ed_default;
      }
      uVar5 = 0x1000;
    }
    if (uVar4 == 0) {
      return 0;
    }
LAB_008cd56a:
    *(uint *)(param_1 + 0x10) = *(uint *)(param_1 + 0x10) | uVar5;
  } while( true );
}

