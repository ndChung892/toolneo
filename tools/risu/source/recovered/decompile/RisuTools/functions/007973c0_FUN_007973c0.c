/* Address: 007973c0 | Ghidra name: FUN_007973c0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007973c0(int *param_1)

{
  undefined4 *puVar1;
  undefined **ppuVar2;
  int iVar3;
  int iVar4;
  undefined1 (*pauVar5) [16];
  undefined4 extraout_ECX;
  int extraout_ECX_00;
  int iVar6;
  undefined4 extraout_ECX_01;
  uint uVar7;
  float10 fVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  uint local_60;
  uint local_5c;
  int local_58;
  int local_54;
  uint uStack_48;
  uint local_30;
  int local_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
  iVar4 = *param_1;
  switch(param_1[2]) {
  case 0:
    iStack_14 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    do {
      if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaeca8();
      ppuVar2 = *(undefined ***)(extraout_ECX_00 + 4);
      if ((ppuVar2 == &PTR_DAT_01b86fe8) ||
         ((((ppuVar2 != (undefined **)0x0 && (ppuVar2[1] == (undefined *)0x5)) &&
           (*(short *)(ppuVar2 + 4) == 0x4e &&
            (ppuVar2[2] == (undefined *)0x4f004c && ppuVar2[3] == (undefined *)0x490047))) ||
          (ppuVar2 == &PTR_DAT_01b86f80)))) {
LAB_00797b98:
        *(undefined1 *)((int)param_1 + 0x15) = 1;
      }
      else {
        if ((ppuVar2 != (undefined **)0x0) && (ppuVar2[1] == (undefined *)0xb)) {
          auVar9._0_4_ = -(uint)(ppuVar2[2] ==
                                 (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._0_4_ &&
                                *(int *)((int)ppuVar2 + 0xe) ==
                                u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._16_4_);
          auVar9._4_4_ = -(uint)(ppuVar2[3] ==
                                 (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._4_4_ &&
                                *(int *)((int)ppuVar2 + 0x12) ==
                                u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._20_4_);
          auVar9._8_4_ = -(uint)(ppuVar2[4] ==
                                 (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._8_4_ &&
                                *(int *)((int)ppuVar2 + 0x16) ==
                                u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._24_4_);
          auVar9._12_4_ =
               -(uint)(ppuVar2[5] == (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._12_4_
                      && *(int *)((int)ppuVar2 + 0x1a) ==
                         u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._28_4_);
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
                      (ushort)(byte)(auVar9._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_00797b98;
        }
        if (ppuVar2 == &PTR_DAT_01b55300) goto LAB_00797b98;
        if ((ppuVar2 != (undefined **)0x0) && (ppuVar2[1] == (undefined *)0xb)) {
          auVar10._0_4_ =
               -(uint)(ppuVar2[2] == (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._32_4_
                      && *(int *)((int)ppuVar2 + 0xe) ==
                         u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._48_4_);
          auVar10._4_4_ =
               -(uint)(ppuVar2[3] == (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._36_4_
                      && *(int *)((int)ppuVar2 + 0x12) ==
                         u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._52_4_);
          auVar10._8_4_ =
               -(uint)(ppuVar2[4] == (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._40_4_
                      && *(int *)((int)ppuVar2 + 0x16) ==
                         u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._56_4_);
          auVar10._12_4_ =
               -(uint)(ppuVar2[5] == (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._44_4_
                      && *(int *)((int)ppuVar2 + 0x1a) ==
                         u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._60_4_);
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
                      (ushort)(byte)(auVar10._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_00797b98;
        }
        iVar3 = FUN_00905410();
        if (((iVar3 != 0) || (ppuVar2 = (undefined **)param_1[1], ppuVar2 == &PTR_DAT_01b7bda8)) ||
           ((ppuVar2 != (undefined **)0x0 &&
            ((ppuVar2[1] == (undefined *)0x7 &&
             (*(short *)(ppuVar2 + 5) == 0x45 &&
              ((ppuVar2[2] == (undefined *)0x4e0049 && ppuVar2[3] == (undefined *)0x47005f) &&
              ppuVar2[4] == (undefined *)0x4d0041))))))) goto LAB_00797b98;
      }
      if ((*(char *)(iVar4 + 0x20) != '\0') && (*(char *)((int)param_1 + 0x15) == '\0')) {
        FUN_00916ec0();
        fVar8 = (float10)FUN_00eb6270(local_60 - param_1[7],
                                      ((local_5c & 0x3fffffff) - (param_1[8] & 0x3fffffffU)) -
                                      (uint)(local_60 < (uint)param_1[7]));
        if (_DAT_018d3d68 <= (double)fVar8 / ram0x018d3d60) {
          FUN_00eae9a0();
          FUN_00933830();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
      ppuVar2 = (undefined **)param_1[1];
      if ((ppuVar2 == &PTR_DAT_01b7bda8) ||
         (((ppuVar2 != (undefined **)0x0 && (ppuVar2[1] == (undefined *)0x7)) &&
          (*(short *)(ppuVar2 + 5) == 0x45 &&
           ((ppuVar2[2] == (undefined *)0x4e0049 && ppuVar2[3] == (undefined *)0x47005f) &&
           ppuVar2[4] == (undefined *)0x4d0041))))) {
        FUN_007876b0();
        goto LAB_00797c72;
      }
      local_20 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 5;
        FUN_00eaeca8();
        FUN_00d96f20();
        FUN_00dfca00(&PTR_DAT_01553b90);
        return;
      }
LAB_00797779:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_20 + 0x20) == 0) {
        ppuVar2 = (undefined **)param_1[1];
        if ((ppuVar2 == &PTR_DAT_01bd64cc) ||
           (((ppuVar2 != (undefined **)0x0 && (ppuVar2[1] == (undefined *)0x7)) &&
            (*(short *)(ppuVar2 + 5) == 0x47 &&
             ((ppuVar2[2] == &DAT_00410057 && ppuVar2[3] == (undefined *)0x540049) &&
             ppuVar2[4] == (undefined *)0x4e0049))))) {
          iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 8;
            FUN_00eaecdd();
            FUN_00d96f20();
            FUN_00dfc9c0();
            return;
          }
LAB_007976cf:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        else if ((ppuVar2 == &PTR_DAT_01b86fe8) ||
                (((ppuVar2 != (undefined **)0x0 && (ppuVar2[1] == (undefined *)0x5)) &&
                 (*(short *)(ppuVar2 + 4) == 0x4e &&
                  (ppuVar2[2] == (undefined *)0x4f004c && ppuVar2[3] == (undefined *)0x490047))))) {
          if ((char)param_1[5] == '\0') {
            FUN_007876b0();
            iStack_14 = FUN_0077b4c0(&PTR_DAT_01bde6e8,&PTR_DAT_01b8894c);
            if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 10;
              FUN_00eaecdd();
              FUN_00d96f20();
              FUN_00dfca00(&PTR_DAT_01557398);
              return;
            }
LAB_0079760d:
            if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          else {
            FUN_007876b0();
            iStack_14 = FUN_0077b4c0(&PTR_DAT_01bde730,&PTR_DAT_01b8894c);
            if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 9;
              FUN_00eaecdd();
              FUN_00d96f20();
              FUN_00dfca00(&PTR_DAT_01557398);
              return;
            }
LAB_00797644:
            if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            *(undefined1 *)(param_1 + 5) = 0;
          }
          iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 0xb;
            FUN_00eaecdd();
            FUN_00d96f20();
            FUN_00dfc9c0();
            return;
          }
LAB_007975d7:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        else if (ppuVar2 == &PTR_DAT_01b86f80) {
LAB_0079808c:
          FUN_007876b0();
          iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 0xc;
            FUN_00eaeca8();
            FUN_00d96f20();
            FUN_00dfc9c0();
            return;
          }
LAB_0079756e:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (PTR_LAB_01c23e7c != (undefined *)0x0) {
            FUN_00e8f54a();
          }
          iVar3 = FUN_00b848a0();
          if (iVar3 == 0) {
            pauVar5 = (undefined1 (*) [16])0x0;
            uVar7 = 0;
          }
          else {
            pauVar5 = (undefined1 (*) [16])(iVar3 + 8);
            uVar7 = *(uint *)(iVar3 + 4);
          }
          uStack_48 = 0;
          if (uVar7 < 0xf) {
            FUN_0099d6f0();
          }
          else {
            *pauVar5 = _DAT_018d3d70;
            *(undefined4 *)pauVar5[1] = 0x20006e;
            *(undefined4 *)(pauVar5[1] + 4) = 0xea006b;
            *(undefined4 *)(pauVar5[1] + 8) = 0x68006e;
            *(undefined2 *)(pauVar5[1] + 0xc) = 0x20;
            uStack_48 = 0xf;
          }
          FUN_00de77e0();
          if (uVar7 < uStack_48) {
LAB_00798582:
                    /* WARNING: Subroutine does not return */
            FUN_009318f0();
          }
          if (uVar7 - uStack_48 < 3) {
            FUN_0099d6f0();
          }
          else {
            *(undefined4 *)(*pauVar5 + uStack_48 * 2) = 0x2e002e;
            *(undefined2 *)((int)(*pauVar5 + uStack_48 * 2) + 4) = 0x2e;
          }
          FUN_0099d560();
          FUN_007876b0();
          FUN_0077b470(param_1[3]);
          iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 0xd;
            FUN_00eaeca8();
            FUN_00d96f20();
            FUN_00dfc9c0();
            return;
          }
LAB_00797538:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        else {
          if ((ppuVar2 != (undefined **)0x0) && (ppuVar2[1] == (undefined *)0xb)) {
            auVar11._0_4_ =
                 -(uint)(ppuVar2[2] ==
                         (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._0_4_ &&
                        *(int *)((int)ppuVar2 + 0xe) ==
                        u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._16_4_);
            auVar11._4_4_ =
                 -(uint)(ppuVar2[3] ==
                         (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._4_4_ &&
                        *(int *)((int)ppuVar2 + 0x12) ==
                        u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._20_4_);
            auVar11._8_4_ =
                 -(uint)(ppuVar2[4] ==
                         (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._8_4_ &&
                        *(int *)((int)ppuVar2 + 0x16) ==
                        u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._24_4_);
            auVar11._12_4_ =
                 -(uint)(ppuVar2[5] ==
                         (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._12_4_ &&
                        *(int *)((int)ppuVar2 + 0x1a) ==
                        u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._28_4_);
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
                        (ushort)(byte)(auVar11._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_0079808c;
          }
          iVar3 = FUN_00905410();
          if (iVar3 == 0) {
            ppuVar2 = (undefined **)param_1[1];
            if (ppuVar2 == &PTR_DAT_01b55300) {
LAB_00797fc2:
              iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
              if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
                param_1[2] = 0x10;
                FUN_00eaecdd();
                FUN_00d96f20();
                FUN_00dfc9c0();
                return;
              }
LAB_0079744b:
              if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            else {
              if ((ppuVar2 != (undefined **)0x0) && (ppuVar2[1] == (undefined *)0xb)) {
                auVar12._0_4_ =
                     -(uint)(ppuVar2[2] ==
                             (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._32_4_ &&
                            *(int *)((int)ppuVar2 + 0xe) ==
                            u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._48_4_);
                auVar12._4_4_ =
                     -(uint)(ppuVar2[3] ==
                             (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._36_4_ &&
                            *(int *)((int)ppuVar2 + 0x12) ==
                            u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._52_4_);
                auVar12._8_4_ =
                     -(uint)(ppuVar2[4] ==
                             (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._40_4_ &&
                            *(int *)((int)ppuVar2 + 0x16) ==
                            u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._56_4_);
                auVar12._12_4_ =
                     -(uint)(ppuVar2[5] ==
                             (undefined *)u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._44_4_ &&
                            *(int *)((int)ppuVar2 + 0x1a) ==
                            u_LINE_SELE_SELECTCHAR_SELR_SELECT_018d3d20._60_4_);
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
                            (ushort)(byte)(auVar12._12_4_ >> 0x1f) << 0xf) == 0xffff)
                goto LAB_00797fc2;
              }
              iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
              if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
                param_1[2] = 0x11;
                FUN_00eaeca8();
                FUN_00d96f20();
                FUN_00dfc9c0();
                return;
              }
LAB_00797415:
              if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
          }
          else {
            FUN_007876b0();
            iStack_14 = FUN_0077b4c0(&PTR_DAT_01be2f9c,&PTR_DAT_01b5b1e0);
            if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 0xe;
              FUN_00eaecdd();
              FUN_00d96f20();
              FUN_00dfca00(&PTR_DAT_01557398);
              return;
            }
LAB_007974b7:
            if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 0xf;
              FUN_00eaeca8();
              FUN_00d96f20();
              FUN_00dfc9c0();
              return;
            }
LAB_00797481:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
        }
        param_1[1] = 0;
      }
      else {
        iVar3 = FUN_00909ad0();
        if (iVar3 == 0) {
          param_1[4] = param_1[4] + 1;
          if (PTR_LAB_01c23e7c != (undefined *)0x0) {
            FUN_00e8f54a();
          }
          iVar3 = FUN_00b848a0();
          if (iVar3 == 0) {
            iVar6 = 0;
            uVar7 = 0;
          }
          else {
            iVar6 = iVar3 + 8;
            uVar7 = *(uint *)(iVar3 + 4);
          }
          local_30 = 0;
          if (uVar7 < 0x2e) {
            FUN_0099d6f0();
          }
          else {
            FUN_00930280(0x5c);
            local_30 = 0x2e;
          }
          FUN_00de77e0();
          if (uVar7 < local_30) goto LAB_00798582;
          puVar1 = (undefined4 *)(iVar6 + local_30 * 2);
          if (uVar7 - local_30 < 3) {
            FUN_0099d6f0();
          }
          else {
            *puVar1 = 0x33002f;
            *(undefined2 *)(puVar1 + 1) = 0x2e;
          }
          FUN_0099d560();
          FUN_007876b0();
          if (2 < param_1[4]) {
            FUN_007876b0();
            goto LAB_0079858b;
          }
          FUN_007876b0();
          iVar3 = FUN_00eaeae1();
          *(undefined ***)(iVar3 + 8) = &PTR_DAT_01bb04a8;
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 1;
          FUN_00eaebca();
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_01,&PTR_DAT_01befc64);
          iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 7;
            FUN_00eaecdd();
            FUN_00d96f20();
            FUN_00dfc9c0();
            return;
          }
LAB_0079770b:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        else {
          FUN_007876b0();
          *(undefined1 *)(param_1 + 5) = 1;
          iVar3 = FUN_00eaeae1();
          *(undefined ***)(iVar3 + 8) = &PTR_DAT_01bb04a8;
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 1;
          FUN_00eaebca();
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
          iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 6;
            FUN_00eaecdd();
            FUN_00d96f20();
            FUN_00dfc9c0();
            return;
          }
LAB_00797743:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
LAB_00797d67:
      if ((*(int *)(iVar4 + 0x1c) != 0) && (*(int *)(*(int *)(iVar4 + 0x1c) + 0x10) != 0))
      goto LAB_0079858b;
      iStack_14 = FUN_0077b3b0();
      if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0;
        FUN_00eaeca8();
        FUN_00d96f20();
        FUN_00dfca00(&PTR_DAT_01557398);
        return;
      }
    } while( true );
  case 1:
    iStack_18 = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_0079799b;
  case 2:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
LAB_0079791f:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 3;
      FUN_00eaeca8();
      FUN_00d96f20();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 3:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    break;
  case 4:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007978ab;
  case 5:
    local_20 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[2] = -1;
    goto LAB_00797779;
  case 6:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_00797743;
  case 7:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_0079770b;
  case 8:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007976cf;
  case 9:
    iStack_14 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    goto LAB_00797644;
  case 10:
    iStack_14 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    goto LAB_0079760d;
  case 0xb:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007975d7;
  case 0xc:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_0079756e;
  case 0xd:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_00797538;
  case 0xe:
    iStack_14 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    goto LAB_007974b7;
  case 0xf:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_00797481;
  case 0x10:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_0079744b;
  case 0x11:
    iStack_1c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_00797415;
  default:
    FUN_007876b0();
    param_1[3] = *(int *)(*(int *)(*(int *)(iVar4 + 4) + 0x24) + 0x34);
    param_1[4] = 0;
    *(undefined1 *)(param_1 + 5) = 0;
    FUN_00916ec0();
    param_1[7] = local_58;
    param_1[8] = local_54;
    *(undefined1 *)((int)param_1 + 0x15) = 0;
    goto LAB_00797d67;
  }
  if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_007876b0();
LAB_0079858b:
  param_1[2] = -2;
  if (param_1[6] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaeca8();
    return;
  }
  iVar4 = FUN_00c0a790(0);
  if (iVar4 != 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931e50();
LAB_00797c72:
  if ((*(int *)(iVar4 + 0x1c) != 0) && (*(int *)(*(int *)(iVar4 + 0x1c) + 0x10) != 0))
  goto LAB_0079858b;
  iStack_18 = FUN_0077b3f0();
  if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 1;
    FUN_00eaeca8();
    FUN_00d96f20();
    FUN_00dfc9c0();
    return;
  }
LAB_0079799b:
  if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(char *)(iStack_18 + 0x20) != '\0') {
    FUN_007876b0();
    iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 2;
      FUN_00eaecdd();
      FUN_00d96f20();
      FUN_00dfc9c0();
      return;
    }
    goto LAB_0079791f;
  }
  iStack_1c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
  if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 4;
    FUN_00eaecdd();
    FUN_00d96f20();
    FUN_00dfc9c0();
    return;
  }
LAB_007978ab:
  if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  goto LAB_00797c72;
}

