/* Address: 00789280 | Ghidra name: FUN_00789280 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00789280(int *param_1)

{
  int iVar1;
  undefined1 (*pauVar2) [16];
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  int iVar10;
  uint uVar11;
  undefined1 auVar12 [16];
  undefined8 uVar13;
  undefined **ppuVar14;
  int in_stack_ffffff10;
  undefined1 local_78 [8];
  undefined1 local_70 [4];
  uint local_6c;
  undefined4 local_68;
  int local_64;
  int iStack_60;
  int iStack_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  int local_4c;
  uint local_48;
  char local_44;
  undefined4 *local_40;
  uint local_3c;
  int local_38;
  int local_34;
  undefined4 local_30;
  int local_2c;
  uint local_28;
  char local_24;
  undefined4 *local_20;
  uint local_1c [3];
  
  uVar6 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_1c + uVar6) = 0;
    *(undefined4 *)((int)local_1c + uVar6 + 4) = 0;
    *(undefined4 *)((int)local_1c + uVar6 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + uVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar6) = 0;
    uVar6 = uVar6 + 0x30;
  } while (uVar6 != 0);
  local_1c[2] = param_1[5];
  iVar10 = *param_1;
  local_1c[1] = 0;
  iVar8 = 0;
  local_1c[0] = uVar6;
  switch(local_1c[2]) {
  case 0:
    local_1c[1] = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    break;
  case 1:
    local_1c[1] = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_00789a68;
  case 2:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    local_1c[1] = 0;
    goto LAB_00789a2b;
  case 3:
    goto switchD_007892dc_caseD_3;
  case 4:
    local_1c[1] = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_00789978;
  case 5:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    local_1c[1] = 0;
    goto LAB_007898ee;
  case 6:
    local_1c[1] = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0078987a;
  case 7:
    local_1c[1] = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_0078970d;
  case 8:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    local_1c[1] = iVar8;
    goto LAB_00789678;
  case 9:
    local_1c[1] = param_1[0xb];
    param_1[0xb] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    goto LAB_00789374;
  case 10:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    local_1c[1] = iVar8;
    goto LAB_00789338;
  case 0xb:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_1c[2] = -1;
    param_1[5] = -1;
    local_1c[1] = iVar8;
    goto LAB_007892f7;
  default:
    local_1c[1] = uVar6;
    FUN_00eae9a0();
    FUN_00eaeca8();
    *(int *)(param_1[1] + 8) = param_1[6];
    local_1c[1] = FUN_0077b2c0();
    if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0;
      FUN_00eaecdd();
      FUN_00d95840();
      FUN_00dfca00(&PTR_DAT_01553f90);
      return;
    }
  }
  if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_1c[1] + 0x20) == 0) {
    FUN_007876b0();
  }
  else {
    *(undefined4 *)(param_1[1] + 0xc) = 0;
    while (iVar8 = *(int *)(param_1[1] + 0xc), iVar8 < param_1[7]) {
      iVar7 = FUN_00eae9a0();
      *(int *)(iVar7 + 4) = iVar8;
      FUN_009007a0();
      FUN_00eaeca8();
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      local_2c = FUN_00b848a0();
      uVar5 = _UNK_018d383c;
      uVar4 = _UNK_018d3838;
      uVar9 = _UNK_018d3834;
      if (local_2c == 0) {
        local_20 = (undefined4 *)0x0;
        local_1c[0] = 0;
      }
      else {
        local_20 = (undefined4 *)(local_2c + 8);
        local_1c[0] = *(uint *)(local_2c + 4);
      }
      local_30 = 0;
      local_28 = 0;
      local_24 = '\0';
      if (local_1c[0] < 0x12) {
        FUN_0099d6f0();
      }
      else {
        *local_20 = _DAT_018d3830;
        local_20[1] = uVar9;
        local_20[2] = uVar4;
        local_20[3] = uVar5;
        *(undefined1 (*) [16])(local_20 + 4) = _DAT_018d3840;
        local_20[8] = 0x200044;
        local_28 = 0x12;
      }
      FUN_00de77e0();
      if (local_1c[0] < local_28) goto LAB_0078a732;
      pauVar2 = (undefined1 (*) [16])((int)local_20 + local_28 * 2);
      if (local_1c[0] - local_28 < 0xf) {
        FUN_0099d6f0();
      }
      else {
        *pauVar2 = _DAT_018d3850;
        *(undefined4 *)pauVar2[1] = 0x20006d;
        *(undefined4 *)(pauVar2[1] + 4) = 0x680063;
        *(undefined4 *)(pauVar2[1] + 8) = 0x741ea5;
        *(undefined2 *)(pauVar2[1] + 0xc) = 0x20;
        local_28 = local_28 + 0xf;
      }
      iVar8 = *(int *)(param_1[1] + 0xc);
      iVar7 = FUN_00eae9a0();
      *(int *)(iVar7 + 4) = iVar8 + 1;
      iVar8 = FUN_009007a0();
      if ((local_24 == '\0') && (iVar8 != 0)) {
        if (local_1c[0] < local_28) goto LAB_0078a732;
        if (local_1c[0] - local_28 < *(uint *)(iVar8 + 4)) goto LAB_00789d2d;
        FUN_00930280(*(int *)(iVar8 + 4) * 2);
        local_28 = local_28 + *(int *)(iVar8 + 4);
      }
      else {
LAB_00789d2d:
        FUN_0099d670();
      }
      if (local_1c[0] < local_28) goto LAB_0078a732;
      puVar3 = (undefined4 *)((int)local_20 + local_28 * 2);
      if (local_1c[0] - local_28 < 5) {
        FUN_0099d6f0();
      }
      else {
        *puVar3 = 0x280020;
        puVar3[1] = 0x1eeb0074;
        *(undefined2 *)(puVar3 + 2) = 0x20;
        local_28 = local_28 + 5;
      }
      iVar8 = param_1[2];
      if ((local_24 == '\0') && (iVar8 != 0)) {
        if (local_1c[0] < local_28) goto LAB_0078a732;
        if (local_1c[0] - local_28 < *(uint *)(iVar8 + 4)) goto LAB_00789dc2;
        FUN_00930280(*(int *)(iVar8 + 4) * 2);
        local_28 = local_28 + *(int *)(iVar8 + 4);
      }
      else {
LAB_00789dc2:
        FUN_0099d670();
      }
      if (local_1c[0] < local_28) {
LAB_0078a732:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      puVar3 = (undefined4 *)((int)local_20 + local_28 * 2);
      if (local_1c[0] - local_28 < 5) {
        FUN_0099d6f0();
      }
      else {
        *puVar3 = 0x2e0029;
        puVar3[1] = 0x2e002e;
        *(undefined2 *)(puVar3 + 2) = 0x2e;
        local_28 = local_28 + 5;
      }
      FUN_0099d560();
      FUN_007876b0();
      while( true ) {
        while( true ) {
          if ((*(int *)(iVar10 + 0x1c) != 0) && (*(int *)(*(int *)(iVar10 + 0x1c) + 0x10) != 0))
          goto LAB_00789a02;
          local_1c[1] = FUN_0077b2c0();
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 1;
            FUN_00eaecdd();
            FUN_00d95840();
            FUN_00dfca00(&PTR_DAT_01553f90);
            return;
          }
LAB_00789a68:
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaecdd();
          if (param_1[3] != 0) break;
          FUN_007876b0();
          local_38 = FUN_00975000(*(undefined4 *)(iVar10 + 0x1c));
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 2;
            FUN_00eaecdd();
            FUN_00d95840();
            FUN_00dfc9c0();
            return;
          }
LAB_00789a2b:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        if (*(int *)(DAT_01c28974 + 0x38) == 0) {
          FUN_00eae9a0();
          FUN_00e98e4f(in_stack_ffffff10);
          FUN_00eaebef();
        }
        iVar8 = FUN_00e4de40(&PTR_DAT_01549f10);
        in_stack_ffffff10 = param_1[1];
        if (*(int *)(in_stack_ffffff10 + 4) == 0) {
          FUN_00eae9a0();
          FUN_00e98f5f(in_stack_ffffff10);
          in_stack_ffffff10 = 0x789f5a;
          FUN_00eaebef();
        }
        FUN_00e4ee90(&PTR_DAT_015447b4);
        iVar7 = FUN_00e4ee50();
        local_34 = iVar8 + *(int *)(iVar7 + 8);
        if (local_34 < 5) break;
        iVar7 = FUN_00eae9a0();
        *(undefined ***)(iVar7 + 4) = &PTR_DAT_01c080ac;
        *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
        iVar8 = *(int *)(iVar7 + 4);
        uVar6 = *(uint *)(iVar7 + 8);
        if (uVar6 < *(uint *)(iVar8 + 4)) {
          *(uint *)(iVar7 + 8) = uVar6 + 1;
          if (*(uint *)(iVar8 + 4) <= uVar6) goto LAB_0078a769;
          puVar3 = (undefined4 *)(iVar8 + 8 + uVar6 * 8);
          *puVar3 = &PTR_DAT_01bea980;
          *(undefined1 *)(puVar3 + 1) = 1;
        }
        else {
          FUN_00c8c330(&PTR_DAT_01bea980,1);
        }
        *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
        iVar8 = *(int *)(iVar7 + 4);
        uVar6 = *(uint *)(iVar7 + 8);
        if (uVar6 < *(uint *)(iVar8 + 4)) {
          *(uint *)(iVar7 + 8) = uVar6 + 1;
          if (*(uint *)(iVar8 + 4) <= uVar6) goto LAB_0078a769;
          puVar3 = (undefined4 *)(iVar8 + 8 + uVar6 * 8);
          *puVar3 = &PTR_DAT_01bea9c0;
          *(undefined1 *)(puVar3 + 1) = 0;
        }
        else {
          FUN_00c8c330(&PTR_DAT_01bea9c0,0);
        }
        *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
        iVar8 = *(int *)(iVar7 + 4);
        uVar6 = *(uint *)(iVar7 + 8);
        if (uVar6 < *(uint *)(iVar8 + 4)) {
          *(uint *)(iVar7 + 8) = uVar6 + 1;
          if (*(uint *)(iVar8 + 4) <= uVar6) goto LAB_0078a769;
          puVar3 = (undefined4 *)(iVar8 + 8 + uVar6 * 8);
          *puVar3 = &PTR_DAT_01bea9e0;
          *(undefined1 *)(puVar3 + 1) = 0;
        }
        else {
          FUN_00c8c330(&PTR_DAT_01bea9e0,0);
        }
        *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
        iVar8 = *(int *)(iVar7 + 4);
        uVar6 = *(uint *)(iVar7 + 8);
        if (uVar6 < *(uint *)(iVar8 + 4)) {
          *(uint *)(iVar7 + 8) = uVar6 + 1;
          if (*(uint *)(iVar8 + 4) <= uVar6) goto LAB_0078a769;
          puVar3 = (undefined4 *)(iVar8 + 8 + uVar6 * 8);
          *puVar3 = &PTR_DAT_01beaa00;
          *(undefined1 *)(puVar3 + 1) = 0;
        }
        else {
          FUN_00c8c330(&PTR_DAT_01beaa00,0);
        }
        *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
        iVar8 = *(int *)(iVar7 + 4);
        uVar6 = *(uint *)(iVar7 + 8);
        if (uVar6 < *(uint *)(iVar8 + 4)) {
          *(uint *)(iVar7 + 8) = uVar6 + 1;
          if (*(uint *)(iVar8 + 4) <= uVar6) {
LAB_0078a769:
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          puVar3 = (undefined4 *)(iVar8 + 8 + uVar6 * 8);
          *puVar3 = &PTR_DAT_01beaa20;
          *(undefined1 *)(puVar3 + 1) = 0;
        }
        else {
          FUN_00c8c330(&PTR_DAT_01beaa20,0);
        }
        FUN_00eae9a0();
        FUN_00ccd0c0();
        FUN_00eaecdd();
        local_58 = 0;
        local_54 = 0;
        local_64 = iVar7;
        FUN_00eaee5e();
        param_1[0xd] = local_64;
        param_1[0xe] = iStack_60;
        uVar13 = FUN_00eaee5e();
        param_1[0xf] = iStack_5c;
        *(int *)((int)uVar13 + 4) = (int)((ulonglong)uVar13 >> 0x20);
        *(undefined4 *)((int)uVar13 + 8) = 0;
switchD_007892dc_caseD_3:
        if (local_1c[2] != 3) goto LAB_0078a176;
        local_38 = param_1[0xc];
        param_1[0xc] = 0;
        local_1c[2] = -1;
        param_1[5] = -1;
LAB_0078a15a:
        if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
LAB_0078a176:
        while (iVar8 = FUN_00c1f350(), iVar8 != 0) {
          ppuVar14 = (undefined **)param_1[0x10];
          iVar8 = param_1[0x11];
          if (ppuVar14 == &PTR_DAT_01bea980) {
LAB_0078a1e8:
            uVar6 = 0;
          }
          else {
            if ((ppuVar14 != (undefined **)0x0) && (ppuVar14[1] == (undefined *)0xb)) {
              auVar12._0_4_ =
                   -(uint)(ppuVar14[2] == _DAT_018d3860 &&
                          *(int *)((int)ppuVar14 + 0xe) == _DAT_018d3870);
              auVar12._4_4_ =
                   -(uint)(ppuVar14[3] == _UNK_018d3864 &&
                          *(int *)((int)ppuVar14 + 0x12) == _UNK_018d3874);
              auVar12._8_4_ =
                   -(uint)(ppuVar14[4] == _UNK_018d3868 &&
                          *(int *)((int)ppuVar14 + 0x16) == _UNK_018d3878);
              auVar12._12_4_ =
                   -(uint)(ppuVar14[5] == _UNK_018d386c &&
                          *(int *)((int)ppuVar14 + 0x1a) == _UNK_018d387c);
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
              goto LAB_0078a1e8;
            }
            iVar7 = FUN_00908120(&PTR_DAT_01b39360);
            if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
              FUN_00931d20();
            }
            iVar1 = iVar7 + 8;
            uVar9 = *(undefined4 *)(iVar7 + 4);
            iVar7 = iVar1;
            local_68 = uVar9;
            FUN_00958ea0(iVar1,uVar9);
            iVar7 = FUN_00dd21c0(&local_6c,iVar7,uVar9);
            uVar6 = local_6c;
            if (iVar7 != 0) {
              if (iVar7 != 1) {
                    /* WARNING: Subroutine does not return */
                FUN_00de72e0();
              }
                    /* WARNING: Subroutine does not return */
              FUN_00dca280(iVar1,local_68);
            }
          }
          if (*(uint *)(*(int *)(param_1[3] + 4) + 8) <= uVar6) {
                    /* WARNING: Subroutine does not return */
            FUN_009319a0();
          }
          iVar7 = *(int *)(*(int *)(param_1[3] + 4) + 4);
          if (*(uint *)(iVar7 + 4) <= uVar6) goto LAB_0078a769;
          ppuVar14 = *(undefined ***)(iVar7 + 8 + uVar6 * 4);
          if ((ppuVar14 == &PTR_DAT_01b42b74) ||
             (((ppuVar14 != (undefined **)0x0 && (ppuVar14[1] == (undefined *)0x2)) &&
              (ppuVar14[2] == (undefined *)0x31002d)))) goto LAB_0078a28d;
        }
        param_1[0xd] = 0;
        param_1[0xe] = 0;
        param_1[0xf] = 0;
        param_1[0x10] = 0;
        param_1[0x11] = 0;
        local_1c[1] = FUN_0077b2c0();
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 4;
          FUN_00eaecdd();
          FUN_00d95840();
          FUN_00dfca00(&PTR_DAT_01553f90);
          return;
        }
LAB_00789978:
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_1c[1] + 0x20) == 0) {
LAB_007899f6:
          FUN_007876b0();
          goto LAB_00789a02;
        }
        if (*(int *)(DAT_01c28974 + 0x44) == 0) {
          FUN_00eae9a0();
          FUN_00e98e82(in_stack_ffffff10);
          in_stack_ffffff10 = 0x7899df;
          FUN_00eaebef();
        }
        iVar8 = FUN_00e4d760(&PTR_DAT_01549e90);
        if (iVar8 != 0) goto LAB_007899f6;
        iVar8 = FUN_00eae9a0();
        *(undefined ***)(iVar8 + 4) = &PTR_DAT_01c0f494;
        *(int *)(iVar8 + 0xc) = *(int *)(iVar8 + 0xc) + 1;
        if (*(uint *)(iVar8 + 8) < *(uint *)(*(int *)(iVar8 + 4) + 4)) {
          *(uint *)(iVar8 + 8) = *(uint *)(iVar8 + 8) + 1;
          FUN_0099b2e0(&PTR_DAT_01be3a78);
        }
        else {
          FUN_00ccd380();
        }
        FUN_00ccd480();
        ppuVar14 = &PTR_DAT_01beaa40;
        uVar9 = FUN_00ccde10(&PTR_DAT_01beaa40);
        FUN_0077a610(uVar9,ppuVar14);
        *(undefined1 *)(param_1 + 9) = 0;
        param_1[8] = 0;
        while (param_1[8] < 0xf) {
          local_38 = FUN_00975000(*(undefined4 *)(iVar10 + 0x1c));
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 5;
            FUN_00eaecdd();
            FUN_00d95840();
            FUN_00dfc9c0();
            return;
          }
LAB_007898ee:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_1c[1] = FUN_0077b2c0();
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 6;
            FUN_00eaecdd();
            FUN_00d95840();
            FUN_00dfca00(&PTR_DAT_01553f90);
            return;
          }
LAB_0078987a:
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_1c[1] + 0x20) != 0) {
            uVar11 = 1;
            iVar8 = *(int *)(*(int *)(local_1c[1] + 0x20) + 4);
            uVar6 = *(uint *)(iVar8 + 8);
            if (uVar6 < 2) goto LAB_0078a763;
            while( true ) {
              iVar7 = *(int *)(iVar8 + 4);
              if (*(uint *)(iVar7 + 4) <= uVar11) goto LAB_0078a769;
              ppuVar14 = *(undefined ***)(iVar7 + 8 + uVar11 * 4);
              if ((ppuVar14 != &PTR_DAT_01b42b74) &&
                 (((ppuVar14 == (undefined **)0x0 || (ppuVar14[1] != (undefined *)0x2)) ||
                  (ppuVar14[2] != (undefined *)0x31002d)))) break;
              uVar11 = uVar11 + 1;
              if (4 < (int)uVar11) {
                *(undefined1 *)(param_1 + 9) = 1;
                goto LAB_0078a6be;
              }
              if (uVar6 <= uVar11) goto LAB_0078a763;
            }
          }
          param_1[8] = param_1[8] + 1;
        }
LAB_0078a6be:
        if ((char)param_1[9] == '\0') {
          FUN_007876b0();
        }
        else {
          local_1c[1] = FUN_0077b2c0();
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 7;
            FUN_00eaecdd();
            FUN_00d95840();
            FUN_00dfca00(&PTR_DAT_01553f90);
            return;
          }
LAB_0078970d:
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_1c[1] + 0x20) != 0) {
            iVar8 = *(int *)(*(int *)(local_1c[1] + 0x20) + 4);
            if (*(int *)(iVar8 + 8) == 0) {
LAB_0078a763:
                    /* WARNING: Subroutine does not return */
              FUN_009319a0();
            }
            iVar8 = *(int *)(iVar8 + 4);
            if (*(int *)(iVar8 + 4) == 0) goto LAB_0078a769;
            ppuVar14 = *(undefined ***)(iVar8 + 8);
            if ((ppuVar14 != &PTR_DAT_01b42b74) &&
               (((ppuVar14 == (undefined **)0x0 || (ppuVar14[1] != (undefined *)0x2)) ||
                (ppuVar14[2] != (undefined *)0x31002d)))) {
              iVar8 = FUN_00eaeae1();
              *(undefined ***)(iVar8 + 8) = &PTR_DAT_01b9b844;
              *(undefined ***)(iVar8 + 0xc) = &PTR_DAT_01bea980;
              FUN_0077a610(iVar8,&PTR_DAT_01be3a14);
              local_38 = FUN_00975000(*(undefined4 *)(iVar10 + 0x1c));
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 8;
                FUN_00eaecdd();
                FUN_00d95840();
                FUN_00dfc9c0();
                return;
              }
LAB_00789678:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[8] = 0;
              while (param_1[8] < 3) {
                local_1c[1] = FUN_0077b2c0();
                if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 9;
                  FUN_00eaecdd();
                  FUN_00d95840();
                  FUN_00dfca00(&PTR_DAT_01553f90);
                  return;
                }
LAB_00789374:
                if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_1c[1] + 0x20) != 0) {
                  iVar8 = *(int *)(*(int *)(local_1c[1] + 0x20) + 4);
                  if (*(int *)(iVar8 + 8) == 0) goto LAB_0078a763;
                  iVar8 = *(int *)(iVar8 + 4);
                  if (*(int *)(iVar8 + 4) == 0) goto LAB_0078a769;
                  ppuVar14 = *(undefined ***)(iVar8 + 8);
                  if ((ppuVar14 == &PTR_DAT_01b42b74) ||
                     (((ppuVar14 != (undefined **)0x0 && (ppuVar14[1] == (undefined *)0x2)) &&
                      (ppuVar14[2] == (undefined *)0x31002d)))) break;
                }
                iVar8 = FUN_00eaeae1();
                *(undefined ***)(iVar8 + 8) = &PTR_DAT_01b9b844;
                *(undefined ***)(iVar8 + 0xc) = &PTR_DAT_01bea980;
                FUN_0077a610(iVar8,&PTR_DAT_01be3a14);
                local_38 = FUN_00975000(*(undefined4 *)(iVar10 + 0x1c));
                if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 10;
                  FUN_00eaecdd();
                  FUN_00d95840();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00789338:
                if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                param_1[8] = param_1[8] + 1;
              }
            }
          }
          local_38 = FUN_00975000(*(undefined4 *)(iVar10 + 0x1c));
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0xb;
            FUN_00eaecdd();
            FUN_00d95840();
            FUN_00dfc9c0();
            return;
          }
LAB_007892f7:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          param_1[3] = 0;
          param_1[4] = 0;
        }
      }
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      local_4c = FUN_00b848a0();
      if (local_4c == 0) {
        local_40 = (undefined4 *)0x0;
        local_3c = 0;
      }
      else {
        local_40 = (undefined4 *)(local_4c + 8);
        local_3c = *(uint *)(local_4c + 4);
      }
      local_50 = 0;
      local_48 = 0;
      local_44 = '\0';
      if (local_3c < 3) {
        FUN_0099d6f0();
      }
      else {
        *local_40 = 0x440049;
        *(undefined2 *)(local_40 + 1) = 0x20;
        local_48 = 3;
      }
      FUN_00de77e0();
      if (local_3c < local_48) goto LAB_0078a732;
      pauVar2 = (undefined1 (*) [16])((int)local_40 + local_48 * 2);
      if (local_3c - local_48 < 0xb) {
        FUN_0099d6f0();
      }
      else {
        *pauVar2 = _DAT_018d3810;
        *(undefined4 *)pauVar2[1] = 0x741ea5;
        *(undefined2 *)(pauVar2[1] + 4) = 0x20;
        local_48 = local_48 + 0xb;
      }
      iVar8 = param_1[2];
      if ((local_44 == '\0') && (iVar8 != 0)) {
        if (local_3c < local_48) goto LAB_0078a732;
        if (local_3c - local_48 < *(uint *)(iVar8 + 4)) goto LAB_0078957f;
        FUN_00930280(*(int *)(iVar8 + 4) * 2);
        local_48 = local_48 + *(int *)(iVar8 + 4);
      }
      else {
LAB_0078957f:
        FUN_0099d670();
      }
      if (local_3c < local_48) goto LAB_0078a732;
      pauVar2 = (undefined1 (*) [16])((int)local_40 + local_48 * 2);
      if (local_3c - local_48 < 9) {
        FUN_0099d6f0();
      }
      else {
        *pauVar2 = _DAT_018d3820;
        *(undefined2 *)pauVar2[1] = 0x20;
        local_48 = local_48 + 9;
      }
      FUN_00de77e0();
      if (local_3c < local_48) goto LAB_0078a732;
      if (local_3c - local_48 < 0x2c) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280(0x58);
        local_48 = local_48 + 0x2c;
      }
      FUN_0099d560();
      FUN_007876b0();
LAB_00789a02:
      param_1[2] = 0;
      *(int *)(param_1[1] + 0xc) = *(int *)(param_1[1] + 0xc) + 1;
    }
    FUN_007876b0();
  }
  param_1[5] = -2;
  param_1[1] = 0;
  if (param_1[10] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar10 = FUN_00c0a790(0);
    if (iVar10 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
LAB_0078a28d:
  if ((char)iVar8 == '\0') {
    if (*(int *)(DAT_01c28974 + 0x40) == 0) {
      FUN_00eae9a0();
      FUN_00e98e71(in_stack_ffffff10);
      in_stack_ffffff10 = 0x78a2f2;
      FUN_00eaebef();
    }
    iVar8 = FUN_00e4e4a0(&PTR_DAT_01544780,local_78);
    if (iVar8 == 0) {
      iVar8 = FUN_00e4e3a0(&PTR_PTR_01544760);
    }
  }
  else {
    if (*(int *)(DAT_01c28974 + 0x3c) == 0) {
      FUN_00eae9a0();
      FUN_00e98e60(in_stack_ffffff10);
      in_stack_ffffff10 = 0x78a379;
      FUN_00eaebef();
    }
    iVar8 = FUN_00e4e4a0(&PTR_DAT_01544780,local_70);
    if (iVar8 == 0) {
      iVar8 = FUN_00e4e3a0(&PTR_PTR_01544760);
    }
  }
  if (iVar8 != 0) goto code_r0x0078a3af;
  goto LAB_0078a176;
code_r0x0078a3af:
  iVar8 = FUN_00e51370(&PTR_PTR_01544804,*(undefined4 *)(param_1[4] + 8),0);
  if (-1 < iVar8) {
    FUN_00b5b3e0();
  }
  FUN_00787b90();
  FUN_00eaeae1();
  FUN_00eaebef();
  FUN_00eaec5e();
  iVar8 = FUN_00eae9a0();
  *(undefined ***)(iVar8 + 4) = &PTR_DAT_01c0f494;
  *(int *)(iVar8 + 0xc) = *(int *)(iVar8 + 0xc) + 1;
  if (*(uint *)(iVar8 + 8) < *(uint *)(*(int *)(iVar8 + 4) + 4)) {
    *(uint *)(iVar8 + 8) = *(uint *)(iVar8 + 8) + 1;
    FUN_0099b2e0(&PTR_DAT_01befdc8);
  }
  else {
    FUN_00ccd380();
  }
  FUN_00ccd480();
  ppuVar14 = &PTR_DAT_01beaa40;
  uVar9 = FUN_00ccde10(&PTR_DAT_01beaa40);
  FUN_0077a610(uVar9,ppuVar14);
  local_38 = FUN_00975000(*(undefined4 *)(iVar10 + 0x1c));
  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 3;
    FUN_00eaecdd();
    FUN_00d95840();
    FUN_00dfc9c0();
    return;
  }
  goto LAB_0078a15a;
}

