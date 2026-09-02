/* Address: 007e7240 | Ghidra name: FUN_007e7240 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007e7240(double *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined **ppuVar7;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined **ppuVar8;
  uint *puVar9;
  uint *puVar10;
  float10 fVar11;
  float10 fVar12;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  double dVar15;
  uint local_b0;
  uint local_74 [6];
  int local_5c;
  int local_58;
  undefined4 local_54;
  int local_50;
  undefined4 local_4c;
  undefined1 local_48;
  undefined4 *local_44;
  uint local_40;
  int local_3c;
  int local_38;
  int local_34;
  uint local_30 [4];
  int local_20;
  uint local_1c;
  int local_18 [2];
  
  iVar6 = -0x90;
  do {
    *(undefined4 *)((int)local_18 + iVar6) = 0;
    *(undefined4 *)((int)local_18 + iVar6 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar6) = 0;
    iVar6 = iVar6 + 0x30;
  } while (iVar6 != 0);
  iVar2 = *(int *)(param_1 + 1);
  local_18[0] = 0;
  switch(*(undefined4 *)(param_1 + 2)) {
  case 0:
    local_18[0] = *(int *)((int)param_1 + 0x24);
    *(undefined4 *)((int)param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    break;
  case 1:
    local_34 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7ea9;
  case 2:
    local_38 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7e26;
  case 3:
    local_38 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7df7;
  case 4:
    local_3c = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7d31;
  case 5:
    local_34 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7b4b;
  case 6:
    local_38 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7b15;
  case 7:
    local_18[0] = *(int *)((int)param_1 + 0x24);
    *(undefined4 *)((int)param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7aa5;
  case 8:
    local_58 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7a4a;
  case 9:
    local_38 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e79bd;
  case 10:
    local_58 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7982;
  case 0xb:
    local_38 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e78f5;
  case 0xc:
    local_58 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e745c;
  case 0xd:
    local_38 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e73dd;
  case 0xe:
    local_5c = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e739b;
  case 0xf:
    local_58 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e7359;
  case 0x10:
    local_38 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e72de;
  case 0x11:
    local_38 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 2) = 0xffffffff;
    goto LAB_007e72a7;
  default:
    local_18[0] = iVar6;
    FUN_007876b0();
    FUN_00787780();
    local_18[0] = FUN_0077aec0();
    if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 2) = 0;
      FUN_00eaecdd();
      FUN_00da1320();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_18[1] = *(int *)(local_18[0] + 0x20);
  FUN_0099d430();
  uVar5 = _UNK_018d610c;
  uVar4 = _UNK_018d6108;
  uVar3 = _UNK_018d6104;
  puVar9 = local_74;
  puVar10 = local_30;
  for (iVar6 = 6; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  if (local_1c < local_30[2]) {
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  puVar1 = (undefined4 *)(local_20 + local_30[2] * 2);
  if (local_1c - local_30[2] < 0x19) {
    FUN_0099d6f0();
  }
  else {
    *puVar1 = _DAT_018d6100;
    puVar1[1] = uVar3;
    puVar1[2] = uVar4;
    puVar1[3] = uVar5;
    uVar5 = _UNK_018d611c;
    uVar4 = _UNK_018d6118;
    uVar3 = _UNK_018d6114;
    puVar1[4] = _DAT_018d6110;
    puVar1[5] = uVar3;
    puVar1[6] = uVar4;
    puVar1[7] = uVar5;
    *(undefined1 (*) [16])(puVar1 + 8) = _DAT_018d6120;
    *(undefined2 *)(puVar1 + 0xc) = 0x20;
    local_30[2] = local_30[2] + 0x19;
  }
  FUN_00de77e0();
  FUN_0099d560();
  FUN_007876b0();
  if ((local_18[1] == -1) || (0x1d < local_18[1])) {
    FUN_007876b0();
    local_34 = FUN_0077abc0();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 2) = 1;
      FUN_00eaecdd();
      FUN_00da1320();
      FUN_00dfca00();
    }
    else {
LAB_007e7ea9:
      if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((*(int *)(local_34 + 0x20) != 0) && (*(int *)(*(int *)(local_34 + 0x20) + 0x28) != 0x26))
      {
        FUN_0077a890(0,0x26);
        local_38 = FUN_00975000();
        if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 2) = 2;
          FUN_00eaecdd();
          FUN_00da1320();
          FUN_00dfc9c0();
          return;
        }
LAB_007e7e26:
        if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
LAB_007e7e41:
      local_3c = FUN_0077ac00();
      if ((*(uint *)(local_3c + 0x1c) & 0x1600000) != 0) {
LAB_007e7d31:
        if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_3c + 0x20) == '\0') goto LAB_007e8094;
        *param_1 = DAT_018d60f0;
        while (_DAT_018d60d8 < *param_1) {
          local_34 = FUN_0077abc0();
          if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 2) = 5;
            FUN_00eaecdd();
            FUN_00da1320();
            FUN_00dfca00();
            return;
          }
LAB_007e7b4b:
          if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar6 = *(int *)(local_34 + 0x20);
          if (iVar6 != 0) {
            dVar15 = *(double *)(iVar6 + 0xc) / _DAT_018d60b8;
            fVar11 = (float10)FUN_00eb6460(CONCAT44(DAT_018d60c8._4_4_,(undefined4)DAT_018d60c8),
                                           *(double *)(iVar6 + 4) / _DAT_018d60b8 - _DAT_018d60c0);
            fVar12 = (float10)FUN_00eb6460((undefined4)DAT_018d60c8,DAT_018d60c8._4_4_,
                                           dVar15 - _DAT_018d60d0);
            *param_1 = SQRT((double)fVar12 + (double)fVar11);
            if (_DAT_018d60d8 < *param_1) {
              FUN_00eaeae1();
              iVar6 = FUN_00eae9a0();
              *(undefined8 *)(iVar6 + 4) = DAT_018d60e0;
              FUN_00eaebca();
              iVar6 = FUN_00eae9a0();
              *(undefined8 *)(iVar6 + 4) = DAT_018d60e8;
              FUN_00eaebca();
              iVar6 = FUN_00eae9a0();
              *(undefined4 *)(iVar6 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX,&PTR_DAT_01bf1f80);
            }
          }
          local_38 = FUN_00975000();
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 2) = 6;
            FUN_00eaecdd();
            FUN_00da1320();
            FUN_00dfc9c0();
            return;
          }
LAB_007e7b15:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        FUN_007876b0();
LAB_007e7d83:
        do {
          FUN_00eae9a0();
          FUN_00eaeca8();
          local_18[0] = FUN_0077aec0();
          if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 2) = 7;
            FUN_00eaecdd();
            FUN_00da1320();
            FUN_00dfc9c0();
            return;
          }
LAB_007e7aa5:
          if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar6 = *(int *)(local_18[0] + 0x20);
          if (PTR_LAB_01c23e7c != (undefined *)0x0) {
            FUN_00e8f54a();
          }
          local_50 = FUN_00b848a0();
          uVar5 = _UNK_018d610c;
          uVar4 = _UNK_018d6108;
          uVar3 = _UNK_018d6104;
          if (local_50 == 0) {
            local_44 = (undefined4 *)0x0;
            local_b0 = 0;
          }
          else {
            local_44 = (undefined4 *)(local_50 + 8);
            local_b0 = *(uint *)(local_50 + 4);
          }
          local_54 = 0;
          local_4c = 0;
          local_48 = 0;
          local_40 = local_b0;
          if (local_b0 < 0x19) {
            FUN_0099d6f0();
          }
          else {
            *local_44 = _DAT_018d6100;
            local_44[1] = uVar3;
            local_44[2] = uVar4;
            local_44[3] = uVar5;
            uVar5 = _UNK_018d611c;
            uVar4 = _UNK_018d6118;
            uVar3 = _UNK_018d6114;
            local_44[4] = _DAT_018d6110;
            local_44[5] = uVar3;
            local_44[6] = uVar4;
            local_44[7] = uVar5;
            *(undefined1 (*) [16])(local_44 + 8) = _DAT_018d6120;
            *(undefined2 *)(local_44 + 0xc) = 0x20;
            local_4c = 0x19;
          }
          FUN_00de77e0();
          FUN_0099d560();
          FUN_007876b0();
          if (iVar6 < 0x1e) {
            FUN_007876b0();
            goto LAB_007e8782;
          }
          FUN_007876b0();
          FUN_00eaeae1();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0x1c9;
          FUN_00eaebca();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_01,&PTR_DAT_01be3a98);
          local_58 = FUN_0077b0a0();
          if ((*(uint *)(local_58 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 2) = 8;
            FUN_00eaecdd();
            FUN_00da1320();
            FUN_00dfca00();
            return;
          }
LAB_007e7a4a:
          if ((*(uint *)(local_58 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar6 = *(int *)(local_58 + 0x20);
          *(undefined4 *)((int)param_1 + 0x14) = 0;
          while (iVar6 == 0) {
            if (4 < *(int *)((int)param_1 + 0x14)) {
              FUN_007876b0();
              goto LAB_007e7d83;
            }
            local_38 = FUN_00975000();
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 2) = 9;
              FUN_00eaecdd();
              FUN_00da1320();
              FUN_00dfc9c0();
              return;
            }
LAB_007e79bd:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_58 = FUN_0077b0a0();
            if ((*(uint *)(local_58 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 2) = 10;
              FUN_00eaecdd();
              FUN_00da1320();
              FUN_00dfca00();
              return;
            }
LAB_007e7982:
            if ((*(uint *)(local_58 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar6 = *(int *)(local_58 + 0x20);
            *(int *)((int)param_1 + 0x14) = *(int *)((int)param_1 + 0x14) + 1;
          }
          ppuVar8 = *(undefined ***)(*(int *)(*(int *)(iVar2 + 4) + 0x124) + 8);
          if ((ppuVar8 == &PTR_DAT_01be49a4) ||
             (((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x6)) &&
              (ppuVar8[4] == (undefined *)0x750068 &&
               (ppuVar8[3] == (undefined *)0x74005f && ppuVar8[2] == (undefined *)0x610064)))))
          goto LAB_007e84be;
          if ((ppuVar8 == &PTR_DAT_01bee60c) ||
             (((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x6)) &&
              (ppuVar8[4] == (undefined *)0x65006c &&
               (ppuVar8[3] == (undefined *)0x5f0061 && ppuVar8[2] == (undefined *)0x680070))))) {
            ppuVar7 = &PTR_DAT_01bfa280;
          }
          else if ((ppuVar8 == &PTR_DAT_01be74f4) ||
                  (((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x7)) &&
                   (*(short *)(ppuVar8 + 5) == 99 &&
                    (ppuVar8[4] == (undefined *)0x6f0076 &&
                    (ppuVar8[3] == (undefined *)0x5f006d && ppuVar8[2] == (undefined *)0x610067)))))
                  ) {
            ppuVar7 = &PTR_DAT_01bfb19c;
          }
          else if ((ppuVar8 == &PTR_DAT_01be872c) ||
                  (((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x6)) &&
                   (ppuVar8[4] == (undefined *)0x74006f &&
                    (ppuVar8[3] == (undefined *)0x74005f && ppuVar8[2] == (undefined *)0x6f0067)))))
          {
            ppuVar7 = &PTR_DAT_01bf868c;
          }
          else if (ppuVar8 == &PTR_DAT_01beac5c) {
LAB_007e84c5:
            ppuVar7 = &PTR_DAT_01bfafec;
          }
          else {
            if ((ppuVar8 != (undefined **)0x0) && (ppuVar8[1] == (undefined *)0xd)) {
              auVar13._0_4_ =
                   -(uint)(ppuVar8[2] == _DAT_018d6130 &&
                          *(int *)((int)ppuVar8 + 0x12) == _DAT_018d6140);
              auVar13._4_4_ =
                   -(uint)(ppuVar8[3] == _UNK_018d6134 &&
                          *(int *)((int)ppuVar8 + 0x16) == _UNK_018d6144);
              auVar13._8_4_ =
                   -(uint)(ppuVar8[4] == _UNK_018d6138 &&
                          *(int *)((int)ppuVar8 + 0x1a) == _UNK_018d6148);
              auVar13._12_4_ =
                   -(uint)(ppuVar8[5] == _UNK_018d613c &&
                          *(int *)((int)ppuVar8 + 0x1e) == _UNK_018d614c);
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
                          (ushort)(byte)(auVar13._12_4_ >> 0x1f) << 0xf) == 0xffff)
              goto LAB_007e84c5;
            }
LAB_007e84be:
            ppuVar7 = &PTR_DAT_01bfabf4;
          }
          *(undefined ***)(*(int *)((int)param_1 + 0xc) + 4) = ppuVar7;
          if ((ppuVar8 == &PTR_DAT_01be49a4) ||
             (((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x6)) &&
              ((ppuVar8[2] == (undefined *)0x610064 && ppuVar8[3] == (undefined *)0x74005f) &&
               ppuVar8[4] == (undefined *)0x750068)))) goto LAB_007e8618;
          if ((ppuVar8 == &PTR_DAT_01bee60c) ||
             (((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x6)) &&
              ((ppuVar8[2] == (undefined *)0x680070 && ppuVar8[3] == (undefined *)0x5f0061) &&
               ppuVar8[4] == (undefined *)0x65006c)))) {
            ppuVar8 = &PTR_DAT_01b9b8a8;
          }
          else if ((ppuVar8 == &PTR_DAT_01be74f4) ||
                  (((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x7)) &&
                   (((ppuVar8[2] == (undefined *)0x610067 && ppuVar8[3] == (undefined *)0x5f006d) &&
                    ppuVar8[4] == (undefined *)0x6f0076) && *(short *)(ppuVar8 + 5) == 99)))) {
            ppuVar8 = &PTR_DAT_01b78614;
          }
          else if ((ppuVar8 == &PTR_DAT_01be872c) ||
                  (((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x6)) &&
                   ((ppuVar8[2] == (undefined *)0x6f0067 && ppuVar8[3] == (undefined *)0x74005f) &&
                    ppuVar8[4] == (undefined *)0x74006f)))) {
            ppuVar8 = &PTR_DAT_01b788d8;
          }
          else if (ppuVar8 == &PTR_DAT_01beac5c) {
LAB_007e861f:
            ppuVar8 = &PTR_DAT_01b86964;
          }
          else {
            if ((ppuVar8 != (undefined **)0x0) && (ppuVar8[1] == (undefined *)0xd)) {
              auVar14._0_4_ =
                   -(uint)(ppuVar8[2] == _DAT_018d6130 &&
                          *(int *)((int)ppuVar8 + 0x12) == _DAT_018d6140);
              auVar14._4_4_ =
                   -(uint)(ppuVar8[3] == _UNK_018d6134 &&
                          *(int *)((int)ppuVar8 + 0x16) == _UNK_018d6144);
              auVar14._8_4_ =
                   -(uint)(ppuVar8[4] == _UNK_018d6138 &&
                          *(int *)((int)ppuVar8 + 0x1a) == _UNK_018d6148);
              auVar14._12_4_ =
                   -(uint)(ppuVar8[5] == _UNK_018d613c &&
                          *(int *)((int)ppuVar8 + 0x1e) == _UNK_018d614c);
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
                          (ushort)(byte)(auVar14._12_4_ >> 0x1f) << 0xf) == 0xffff)
              goto LAB_007e861f;
            }
LAB_007e8618:
            ppuVar8 = &PTR_DAT_01b679d8;
          }
          *(undefined ***)(*(int *)((int)param_1 + 0xc) + 8) = ppuVar8;
          FUN_00906a20();
          FUN_007876b0();
          FUN_00eae9a0();
          FUN_00e9a615();
          iVar6 = FUN_00e4e4a0();
          if (iVar6 == 0) {
            FUN_00906aa0(&PTR_DAT_01b42d2c);
            FUN_007876b0();
          }
          else {
            uVar3 = *(undefined4 *)(iVar6 + 8);
            iVar6 = FUN_00eaeae1();
            *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b9125c;
            iVar6 = FUN_00eae9a0();
            *(undefined4 *)(iVar6 + 4) = uVar3;
            FUN_00eaebca();
            iVar6 = FUN_00eae9a0();
            *(undefined4 *)(iVar6 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610();
            local_38 = FUN_00975000(*(undefined4 *)(iVar2 + 0x1c));
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 2) = 0xb;
              FUN_00eaecdd();
              FUN_00da1320();
              FUN_00dfc9c0();
              return;
            }
LAB_007e78f5:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_58 = FUN_0077b0a0();
            if ((*(uint *)(local_58 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 2) = 0xc;
              FUN_00eaecdd();
              FUN_00da1320();
              FUN_00dfca00();
              return;
            }
LAB_007e745c:
            if ((*(uint *)(local_58 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_58 + 0x20) != 0) {
              if (*(int *)(DAT_01c289e4 + 8) == 0) {
                FUN_00eae9a0();
                FUN_00e9a5f3();
                FUN_00eaebef();
              }
              iVar6 = FUN_00e4e4a0();
              if (iVar6 != 0) {
                uVar3 = *(undefined4 *)(iVar6 + 8);
                iVar6 = FUN_00eaeae1();
                *(undefined ***)(iVar6 + 8) = &PTR_DAT_01ba04a8;
                iVar6 = FUN_00eae9a0();
                *(undefined4 *)(iVar6 + 4) = uVar3;
                FUN_00eaebca();
                iVar6 = FUN_00eae9a0();
                *(undefined4 *)(iVar6 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610();
                FUN_007876b0();
              }
              *(undefined1 *)((int)param_1 + 0x1c) = 0;
              *(undefined4 *)(param_1 + 3) = 0;
              while (*(int *)(param_1 + 3) < 5) {
                local_38 = FUN_00975000(*(undefined4 *)(iVar2 + 0x1c));
                if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 2) = 0xd;
                  FUN_00eaecdd();
                  FUN_00da1320();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007e73dd:
                if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_5c = FUN_0077ad90();
                if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 2) = 0xe;
                  FUN_00eaecdd();
                  FUN_00da1320();
                  FUN_00dfca00();
                  return;
                }
LAB_007e739b:
                if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_5c + 0x20) == 0) {
                  iVar6 = 0;
                }
                else {
                  if (*(int *)(*(int *)((int)param_1 + 0xc) + 0xc) == 0) {
                    FUN_00eae9a0();
                    FUN_00e9a626();
                    FUN_00eaebef();
                  }
                  iVar6 = FUN_00e4e4a0();
                }
                if ((iVar6 != 0) && (*(char *)(iVar6 + 0x3c) != '\0')) {
                  *(undefined1 *)((int)param_1 + 0x1c) = 1;
                  break;
                }
                *(int *)(param_1 + 3) = *(int *)(param_1 + 3) + 1;
              }
              if (*(char *)((int)param_1 + 0x1c) == '\0') {
                FUN_007876b0();
              }
              else {
                local_58 = FUN_0077b0a0(&PTR_DAT_01ba04a8);
                if ((*(uint *)(local_58 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 2) = 0xf;
                  FUN_00eaecdd();
                  FUN_00da1320();
                  FUN_00dfca00(&PTR_DAT_01553b90);
                  return;
                }
LAB_007e7359:
                if ((*(uint *)(local_58 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_58 + 0x20) == 0) {
                  iVar6 = 0;
                }
                else {
                  if (*(int *)(DAT_01c289e4 + 0xc) == 0) {
                    FUN_00eae9a0();
                    FUN_00e9a604();
                    FUN_00eaebef();
                  }
                  iVar6 = FUN_00e4e4a0();
                }
                if (iVar6 != 0) {
                  uVar3 = *(undefined4 *)(iVar6 + 8);
                  iVar6 = FUN_00eaeae1();
                  *(undefined ***)(iVar6 + 8) = &PTR_DAT_01ba04a8;
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = uVar3;
                  FUN_00eaebca();
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610();
                  FUN_007876b0();
                  local_38 = FUN_00975000(*(undefined4 *)(iVar2 + 0x1c));
                  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 2) = 0x10;
                    FUN_00eaecdd();
                    FUN_00da1320();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007e72de:
                  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
              }
            }
          }
          local_38 = FUN_00975000(*(undefined4 *)(iVar2 + 0x1c));
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 2) = 0x11;
            FUN_00eaecdd();
            FUN_00da1320();
            FUN_00dfc9c0();
            return;
          }
LAB_007e72a7:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          *(undefined4 *)((int)param_1 + 0xc) = 0;
        } while( true );
      }
      *(undefined4 *)(param_1 + 2) = 4;
      FUN_00eaecdd();
      FUN_00da1320();
      FUN_00dfc9c0();
    }
  }
  else {
    FUN_007876b0();
LAB_007e8782:
    *(undefined4 *)(param_1 + 2) = 0xfffffffe;
    if (*(int *)(param_1 + 4) == 0) {
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaeca8();
    }
    else {
      iVar6 = FUN_00c0a790();
      if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
  }
  return;
LAB_007e8094:
  FUN_00eaeae1();
  iVar6 = FUN_00eae9a0();
  *(undefined4 *)(iVar6 + 4) = 0;
  FUN_00eaebca();
  FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be70d8);
  local_38 = FUN_00975000();
  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 2) = 3;
    FUN_00eaecdd();
    FUN_00da1320();
    FUN_00dfc9c0();
    return;
  }
LAB_007e7df7:
  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  goto LAB_007e7e41;
}

