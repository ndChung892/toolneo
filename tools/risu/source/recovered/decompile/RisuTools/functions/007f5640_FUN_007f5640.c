/* Address: 007f5640 | Ghidra name: FUN_007f5640 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007f5640(int *param_1)

{
  undefined4 *puVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined1 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  uint *puVar9;
  uint *puVar10;
  undefined8 uVar11;
  undefined4 in_stack_fffffe14;
  char *pcVar12;
  undefined4 uVar13;
  undefined **in_stack_fffffe18;
  uint local_18c;
  int local_184;
  undefined4 uStack_180;
  undefined4 uStack_17c;
  int iStack_178;
  int local_174;
  int iStack_170;
  int iStack_16c;
  undefined4 uStack_168;
  undefined4 uStack_164;
  undefined4 uStack_160;
  int local_15c;
  undefined4 local_158;
  undefined4 local_154;
  int local_150;
  int iStack_14c;
  int iStack_148;
  int local_144;
  undefined4 uStack_140;
  undefined4 uStack_13c;
  undefined4 uStack_138;
  undefined4 local_134;
  undefined1 local_130 [4];
  undefined4 local_12c;
  undefined1 local_128 [4];
  undefined4 local_124;
  undefined1 local_120 [4];
  undefined4 local_11c;
  int local_118;
  int iStack_114;
  int iStack_110;
  int local_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  undefined4 uStack_100;
  undefined1 local_fc [4];
  undefined4 local_f8;
  undefined **local_f4;
  undefined **local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined **local_e4;
  undefined **local_e0;
  undefined4 local_dc;
  undefined4 local_d8;
  undefined **local_d4;
  undefined **local_d0;
  undefined4 local_cc;
  undefined4 local_c8;
  undefined **local_c4;
  undefined **local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined **local_b4;
  undefined **local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined **local_a4;
  undefined **local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined **local_94;
  undefined **local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined **local_84;
  undefined **local_80;
  undefined4 local_7c;
  undefined4 local_78;
  uint local_74 [6];
  undefined4 local_5c;
  int local_58;
  uint local_54;
  char local_50;
  undefined4 *local_4c;
  uint local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  uint local_30 [4];
  int local_20;
  uint local_1c;
  int local_18;
  int local_14;
  
  local_184 = 0;
  uStack_180 = 0;
  uStack_17c = 0;
  iStack_178 = 0;
  local_174 = 0;
  iStack_170 = 0;
  iStack_16c = 0;
  uStack_168 = 0;
  iVar5 = -0x150;
  do {
    *(undefined4 *)((int)&local_14 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  local_14 = param_1[7];
  iVar5 = *param_1;
  switch(local_14) {
  case 0:
    local_18 = param_1[10];
    param_1[10] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6e57;
  case 1:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6dc3;
  case 2:
    local_18 = param_1[10];
    param_1[10] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6d08;
  case 3:
    local_18 = param_1[10];
    param_1[10] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6cd2;
  case 4:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6c43;
  case 5:
    local_18 = param_1[10];
    param_1[10] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6bbf;
  case 6:
    local_38 = param_1[0xc];
    param_1[0xc] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6b28;
  case 7:
    local_3c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6adf;
  case 8:
  case 9:
  case 10:
  case 0xb:
  case 0xc:
  case 0xd:
  case 0xe:
  case 0xf:
  case 0x10:
  case 0x11:
    goto switchD_007f56a3_caseD_8;
  case 0x12:
    local_18 = param_1[10];
    param_1[10] = 0;
    local_14 = -1;
    param_1[7] = -1;
LAB_007f6a3f:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00787630();
    FUN_0077b7e0(0x3a0);
    local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[7] = 0x13;
      FUN_00eaecdd();
      FUN_00da1e80();
      FUN_00dfc9c0();
      return;
    }
    goto LAB_007f69a3;
  case 0x13:
    local_18 = param_1[10];
    param_1[10] = 0;
    local_14 = -1;
    param_1[7] = -1;
LAB_007f69a3:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_44 = FUN_0077b620(&PTR_DAT_01bee930,&PTR_DAT_01b55408,0);
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      param_1[7] = 0x14;
      FUN_00eaecdd();
      FUN_00da1e80();
      FUN_00dfca00(&PTR_DAT_01557398);
      return;
    }
LAB_007f6918:
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[7] = 0x15;
      FUN_00eaecdd();
      FUN_00da1e80();
      FUN_00dfc9c0();
      return;
    }
LAB_007f7c19:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_150 = param_1[2];
    local_144 = 0;
    uStack_140 = 0;
    uStack_13c = 0;
    uStack_138 = 0;
    FUN_00eaee5e();
    param_1[0xe] = local_150;
    param_1[0xf] = iStack_14c;
    FUN_00eaee5e();
    uVar11 = FUN_00eaee5e();
    param_1[0x10] = iStack_148;
    param_1[0x11] = local_144;
    *(int *)((int)uVar11 + 4) = (int)((ulonglong)uVar11 >> 0x20);
    *(undefined4 *)((int)uVar11 + 8) = 0;
switchD_007f56a3_caseD_16:
    switch(local_14) {
    case 0x16:
      local_44 = param_1[0x16];
      param_1[0x16] = 0;
      local_14 = -1;
      param_1[7] = -1;
      break;
    case 0x17:
      local_18 = param_1[10];
      param_1[10] = 0;
      local_14 = -1;
      param_1[7] = -1;
      goto LAB_007f6225;
    case 0x18:
      local_44 = param_1[0x16];
      param_1[0x16] = 0;
      local_14 = -1;
      param_1[7] = -1;
      goto LAB_007f7ed3;
    case 0x19:
      local_44 = param_1[0x16];
      param_1[0x16] = 0;
      local_14 = -1;
      param_1[7] = -1;
      goto LAB_007f7e42;
    case 0x1a:
      local_18 = param_1[10];
      param_1[10] = 0;
      local_14 = -1;
      param_1[7] = -1;
      goto LAB_007f7daa;
    case 0x1b:
      local_44 = param_1[0x16];
      param_1[0x16] = 0;
      local_14 = -1;
      param_1[7] = -1;
      goto LAB_007f7cb3;
    default:
      goto switchD_007f7c92_default;
    }
    do {
      if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[7] = 0x17;
        FUN_00eaecdd();
        FUN_00da1e80();
        FUN_00dfc9c0();
        return;
      }
LAB_007f6225:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      do {
        local_44 = FUN_0077b620(&PTR_DAT_01b39360,&PTR_DAT_01b750a0,param_1[0x19]);
        if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
          param_1[7] = 0x18;
          FUN_00eaecdd();
          FUN_00da1e80();
          FUN_00dfca00(&PTR_DAT_01557398);
          return;
        }
LAB_007f7ed3:
        if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_154 = 0x7c;
        iVar7 = FUN_00908570(0,&local_154,1);
        if (*(uint *)(iVar7 + 4) < 2) goto LAB_007f8045;
        iVar7 = *(int *)(iVar7 + 0xc);
        if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_00931d20();
        }
        iVar6 = iVar7 + 8;
        uVar13 = *(undefined4 *)(iVar7 + 4);
        iVar7 = iVar6;
        local_158 = uVar13;
        FUN_00958ea0(iVar6,uVar13);
        iVar7 = FUN_00dd21c0(&local_15c,iVar7,uVar13);
        if (iVar7 != 0) {
          if (iVar7 != 1) {
                    /* WARNING: Subroutine does not return */
            FUN_00de72e0();
          }
                    /* WARNING: Subroutine does not return */
          FUN_00dca280(iVar6,local_158);
        }
        if (local_15c == 3) {
          local_44 = FUN_0077b620(&PTR_DAT_01b46c3c,&PTR_DAT_01b553c4,param_1[0x19]);
          if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
            param_1[7] = 0x19;
            FUN_00eaecdd();
            FUN_00da1e80();
            FUN_00dfca00(&PTR_DAT_01557398);
            return;
          }
LAB_007f7e42:
          if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[7] = 0x1a;
            FUN_00eaecdd();
            FUN_00da1e80();
            FUN_00dfc9c0();
            return;
          }
LAB_007f7daa:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_44 = FUN_0077af40(0,0);
          if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
            param_1[7] = 0x1b;
            FUN_00eaecdd();
            FUN_00da1e80();
            FUN_00dfca00(&PTR_DAT_01557398);
            return;
          }
LAB_007f7cb3:
          if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (((*(int *)(local_44 + 0x20) == 0) || (*(int *)(*(int *)(local_44 + 0x20) + 4) == 0))
             || (iVar7 = FUN_00909ad0(), iVar7 == 0)) goto switchD_007f7c92_default;
          FUN_007876b0();
LAB_007f7d06:
          param_1[0xe] = 0;
          param_1[0xf] = 0;
          param_1[0x10] = 0;
          param_1[0x11] = 0;
          param_1[0x12] = 0;
          param_1[0x13] = 0;
          param_1[0x14] = 0;
          local_44 = FUN_0077b620(&PTR_DAT_01bee930,&PTR_DAT_01b55408,0);
          if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
            param_1[7] = 0x1c;
            FUN_00eaecdd();
            FUN_00da1e80();
            FUN_00dfca00(&PTR_DAT_01557398);
            return;
          }
          goto LAB_007f7b8e;
        }
        param_1[0x17] = 0;
        param_1[0x18] = 0;
        param_1[0x19] = 0;
        param_1[0x1a] = 0;
switchD_007f7c92_default:
        iVar7 = FUN_00aea1c0();
        if (iVar7 == 0) goto LAB_007f7d06;
        FUN_00eaee5e();
        FUN_00eaee5e();
        param_1[0x17] = param_1[0x11];
        param_1[0x18] = param_1[0x12];
      } while (param_1[0x19] != 6);
      local_44 = FUN_0077b620(&PTR_DAT_01bed210,&PTR_DAT_01b55408,0);
      if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
        param_1[7] = 0x16;
        FUN_00eaecdd();
        FUN_00da1e80();
        FUN_00dfca00(&PTR_DAT_01557398);
        return;
      }
    } while( true );
  case 0x14:
    local_44 = param_1[0x16];
    param_1[0x16] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f6918;
  case 0x15:
    local_18 = param_1[10];
    param_1[10] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_007f7c19;
  case 0x16:
  case 0x17:
  case 0x18:
  case 0x19:
  case 0x1a:
  case 0x1b:
    goto switchD_007f56a3_caseD_16;
  case 0x1c:
    local_44 = param_1[0x16];
    param_1[0x16] = 0;
    local_14 = -1;
    param_1[7] = -1;
LAB_007f7b8e:
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[7] = 0x1d;
      FUN_00eaecdd();
      FUN_00da1e80();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 0x1d:
    local_18 = param_1[10];
    param_1[10] = 0;
    local_14 = -1;
    param_1[7] = -1;
    break;
  case 0x1e:
  case 0x1f:
  case 0x20:
  case 0x21:
  case 0x22:
  case 0x23:
  case 0x24:
  case 0x25:
  case 0x26:
    goto switchD_007f56a3_caseD_1e;
  case 0x27:
    local_18 = param_1[10];
    param_1[10] = 0;
    param_1[7] = -1;
LAB_007f56b7:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    goto LAB_007f804b;
  default:
    FUN_007876b0();
    FUN_00787780();
    iVar7 = FUN_00eae9a0();
    *(undefined ***)(iVar7 + 4) = &PTR_DAT_01c073e4;
    local_84 = &PTR_DAT_01bfb948;
    local_80 = &PTR_DAT_01b90c14;
    local_78 = CONCAT31(local_78._1_3_,*(undefined1 *)(*(int *)(*(int *)(iVar5 + 4) + 0x28) + 0x38))
    ;
    *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
    uVar2 = *(uint *)(iVar7 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
      *(uint *)(iVar7 + 8) = uVar2 + 1;
      puVar1 = (undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar2 * 0x10);
      FUN_00eaee5e();
      FUN_00eaee5e();
      *puVar1 = local_84;
      puVar1[1] = local_80;
    }
    else {
      FUN_00c58dd0(&PTR_DAT_01bfb948,&PTR_DAT_01b90c14,local_7c,local_78);
    }
    local_94 = &PTR_DAT_01bf9138;
    local_90 = &PTR_DAT_01b844f4;
    local_8c = 1;
    local_88 = CONCAT31(local_88._1_3_,*(undefined1 *)(*(int *)(*(int *)(iVar5 + 4) + 0x2c) + 0x38))
    ;
    *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
    uVar2 = *(uint *)(iVar7 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
      *(uint *)(iVar7 + 8) = uVar2 + 1;
      puVar1 = (undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar2 * 0x10);
      FUN_00eaee5e();
      FUN_00eaee5e();
      *puVar1 = local_94;
      puVar1[1] = local_90;
    }
    else {
      FUN_00c58dd0(&PTR_DAT_01bf9138,&PTR_DAT_01b844f4,1,local_88);
    }
    local_a4 = &PTR_DAT_01bfb274;
    local_a0 = &PTR_DAT_01bca2bc;
    local_9c = 2;
    local_98 = CONCAT31(local_98._1_3_,*(undefined1 *)(*(int *)(*(int *)(iVar5 + 4) + 0x30) + 0x38))
    ;
    *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
    uVar2 = *(uint *)(iVar7 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
      *(uint *)(iVar7 + 8) = uVar2 + 1;
      puVar1 = (undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar2 * 0x10);
      FUN_00eaee5e();
      FUN_00eaee5e();
      *puVar1 = local_a4;
      puVar1[1] = local_a0;
    }
    else {
      FUN_00c58dd0(&PTR_DAT_01bfb274,&PTR_DAT_01bca2bc,2,local_98);
    }
    local_b4 = &PTR_DAT_01bfa6f4;
    local_b0 = &PTR_DAT_01b884d4;
    local_ac = 3;
    local_a8._0_2_ = CONCAT11(1,*(undefined1 *)(*(int *)(*(int *)(iVar5 + 4) + 0x34) + 0x38));
    *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
    uVar2 = *(uint *)(iVar7 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
      *(uint *)(iVar7 + 8) = uVar2 + 1;
      puVar1 = (undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar2 * 0x10);
      FUN_00eaee5e();
      FUN_00eaee5e();
      *puVar1 = local_b4;
      puVar1[1] = local_b0;
    }
    else {
      FUN_00c58dd0(&PTR_DAT_01bfa6f4,&PTR_DAT_01b884d4,3,local_a8);
    }
    local_c4 = &PTR_DAT_01bfbacc;
    local_c0 = &PTR_DAT_01b872a8;
    local_bc = 4;
    local_b8._0_2_ = CONCAT11(1,*(undefined1 *)(*(int *)(*(int *)(iVar5 + 4) + 0x38) + 0x38));
    *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
    uVar2 = *(uint *)(iVar7 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
      *(uint *)(iVar7 + 8) = uVar2 + 1;
      puVar1 = (undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar2 * 0x10);
      FUN_00eaee5e();
      FUN_00eaee5e();
      *puVar1 = local_c4;
      puVar1[1] = local_c0;
    }
    else {
      FUN_00c58dd0(&PTR_DAT_01bfbacc,&PTR_DAT_01b872a8,4,local_b8);
    }
    local_d4 = &PTR_DAT_01bf8dec;
    local_d0 = &PTR_DAT_01b7b4a4;
    local_cc = 5;
    local_c8._0_2_ = CONCAT11(1,*(undefined1 *)(*(int *)(*(int *)(iVar5 + 4) + 0x3c) + 0x38));
    *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
    uVar2 = *(uint *)(iVar7 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
      *(uint *)(iVar7 + 8) = uVar2 + 1;
      puVar1 = (undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar2 * 0x10);
      FUN_00eaee5e();
      FUN_00eaee5e();
      *puVar1 = local_d4;
      puVar1[1] = local_d0;
    }
    else {
      FUN_00c58dd0(&PTR_DAT_01bf8dec,&PTR_DAT_01b7b4a4,5,local_c8);
    }
    local_e4 = &PTR_DAT_01bf9c6c;
    local_e0 = &PTR_DAT_01bc8f2c;
    local_dc = 6;
    local_d8._0_2_ = CONCAT11(1,*(undefined1 *)(*(int *)(*(int *)(iVar5 + 4) + 0x40) + 0x38));
    *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
    uVar2 = *(uint *)(iVar7 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
      *(uint *)(iVar7 + 8) = uVar2 + 1;
      puVar1 = (undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar2 * 0x10);
      FUN_00eaee5e();
      FUN_00eaee5e();
      *puVar1 = local_e4;
      puVar1[1] = local_e0;
    }
    else {
      FUN_00c58dd0(&PTR_DAT_01bf9c6c,&PTR_DAT_01bc8f2c,6,local_d8);
    }
    local_f4 = &PTR_DAT_01bf9b7c;
    local_f0 = &PTR_DAT_01bc8a40;
    local_ec = 7;
    local_e8 = CONCAT31(local_e8._1_3_,*(undefined1 *)(*(int *)(*(int *)(iVar5 + 4) + 0x44) + 0x38))
    ;
    *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
    uVar2 = *(uint *)(iVar7 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
      *(uint *)(iVar7 + 8) = uVar2 + 1;
      puVar1 = (undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar2 * 0x10);
      FUN_00eaee5e();
      FUN_00eaee5e();
      *puVar1 = local_f4;
      puVar1[1] = local_f0;
    }
    else {
      FUN_00c58dd0(&PTR_DAT_01bf9b7c,&PTR_DAT_01bc8a40,7,local_e8);
    }
    FUN_00eaed7c();
    if (*(int *)(DAT_01c28a24 + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e9a8f0(in_stack_fffffe14);
      FUN_00eaebef();
    }
    uVar4 = FUN_00e180e0(&PTR_DAT_01559e7c);
    *(undefined1 *)(param_1 + 8) = uVar4;
    local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[7] = 0;
      FUN_00eaecdd();
      FUN_00da1e80();
      FUN_00dfc9c0();
      return;
    }
LAB_007f6e57:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0099d430(1);
    uVar3 = _UNK_018d681c;
    uVar8 = _UNK_018d6818;
    uVar13 = _UNK_018d6814;
    puVar9 = local_74;
    puVar10 = local_30;
    for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar10 = *puVar9;
      puVar9 = puVar9 + 1;
      puVar10 = puVar10 + 1;
    }
    if (local_30[2] <= local_1c) {
      puVar1 = (undefined4 *)(local_20 + local_30[2] * 2);
      if (local_1c - local_30[2] < 9) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d6810;
        puVar1[1] = uVar13;
        puVar1[2] = uVar8;
        puVar1[3] = uVar3;
        *(undefined2 *)(puVar1 + 4) = 0x20;
        local_30[2] = local_30[2] + 9;
      }
      if (*(int *)(DAT_01c28a24 + 0xc) == 0) {
        FUN_00eae9a0();
        FUN_00e9a901(in_stack_fffffe18);
        in_stack_fffffe18 = (undefined **)0x7f6f1a;
        FUN_00eaebef();
      }
      FUN_00e183c0(&PTR_DAT_01559ebc);
      FUN_00e18240();
      FUN_00de77e0();
      uVar3 = _UNK_018d682c;
      uVar8 = _UNK_018d6828;
      uVar13 = _UNK_018d6824;
      if (local_30[2] <= local_1c) {
        puVar1 = (undefined4 *)(local_20 + local_30[2] * 2);
        if (local_1c - local_30[2] < 8) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018d6820;
          puVar1[1] = uVar13;
          puVar1[2] = uVar8;
          puVar1[3] = uVar3;
          local_30[2] = local_30[2] + 8;
        }
        FUN_0099d560();
        FUN_007876b0();
        if ((char)param_1[8] != '\0') {
          do {
            local_34 = FUN_0077abc0();
            if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 1;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfca00(&PTR_DAT_01553fd0);
              return;
            }
LAB_007f6dc3:
            if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00eaecdd();
            local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 2;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfc9c0();
              return;
            }
LAB_007f6d08:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar7 = param_1[3];
          } while ((iVar7 == 0) || (*(char *)(iVar7 + 0x69) != '\0'));
          if (*(int *)(iVar7 + 0x28) != 0x1f) {
            FUN_0077a890(0,0x1f);
            while( true ) {
              local_38 = FUN_0077ac40();
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[7] = 4;
                FUN_00eaecdd();
                FUN_00da1e80();
                FUN_00dfc9c0();
                return;
              }
LAB_007f6c43:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(char *)(local_38 + 0x20) == '\0') break;
              local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                param_1[7] = 3;
                FUN_00eaecdd();
                FUN_00da1e80();
                FUN_00dfc9c0();
                return;
              }
LAB_007f6cd2:
              if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
          }
          while( true ) {
            local_38 = FUN_0077ac00();
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 6;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfc9c0();
              return;
            }
LAB_007f6b28:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_38 + 0x20) != '\0') break;
            local_f8 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
            FUN_00eaeae1();
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be70d8);
            local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 5;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfc9c0();
              return;
            }
LAB_007f6bbf:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          do {
            local_3c = FUN_0077acc0();
            if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 7;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfca00(&PTR_DAT_01568d68);
              return;
            }
LAB_007f6adf:
            if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_3c + 0x20) != 0) {
              if (*(int *)(DAT_01c28a24 + 0x10) == 0) {
                FUN_00eae9a0();
                FUN_00e9a912(in_stack_fffffe18);
                in_stack_fffffe18 = (undefined **)0x7f70da;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01544440,local_fc);
            }
            FUN_00eaeca8();
          } while (param_1[4] == 0);
          FUN_00787780();
          param_1[5] = 0;
          param_1[6] = 0;
          local_118 = param_1[2];
          local_10c = 0;
          uStack_108 = 0;
          uStack_104 = 0;
          uStack_100 = 0;
          FUN_00eaee5e();
          param_1[0xe] = local_118;
          param_1[0xf] = iStack_114;
          FUN_00eaee5e();
          uVar11 = FUN_00eaee5e();
          param_1[0x10] = iStack_110;
          param_1[0x11] = local_10c;
          *(int *)((int)uVar11 + 4) = (int)((ulonglong)uVar11 >> 0x20);
          *(undefined4 *)((int)uVar11 + 8) = 0;
switchD_007f56a3_caseD_8:
          switch(local_14) {
          case 8:
            local_18 = param_1[10];
            param_1[10] = 0;
            local_14 = -1;
            param_1[7] = -1;
            break;
          case 9:
            local_40 = param_1[0x15];
            param_1[0x15] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f7747;
          case 10:
            local_18 = param_1[10];
            param_1[10] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f76b1;
          case 0xb:
            local_18 = param_1[10];
            param_1[10] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f7606;
          case 0xc:
            local_18 = param_1[10];
            param_1[10] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f756c;
          case 0xd:
            local_40 = param_1[0x15];
            param_1[0x15] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f7468;
          case 0xe:
            local_18 = param_1[10];
            param_1[10] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f7358;
          case 0xf:
            local_18 = param_1[10];
            param_1[10] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f72be;
          case 0x10:
            local_40 = param_1[0x15];
            param_1[0x15] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f726f;
          case 0x11:
            local_18 = param_1[10];
            param_1[10] = 0;
            local_14 = -1;
            param_1[7] = -1;
            goto LAB_007f718c;
          default:
            goto switchD_007f716b_default;
          }
          do {
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_40 = FUN_0077b0a0(&PTR_DAT_01b9125c);
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 9;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfca00(&PTR_DAT_01553b90);
              return;
            }
LAB_007f7747:
            if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00eaecdd();
            local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 10;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfc9c0();
              return;
            }
LAB_007f76b1:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (param_1[5] != 0) {
              local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                param_1[7] = 0xb;
                FUN_00eaecdd();
                FUN_00da1e80();
                FUN_00dfc9c0();
                return;
              }
LAB_007f7606:
              if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_00eae9a0();
              FUN_00e9a945(in_stack_fffffe18);
              FUN_00e4e4a0(&PTR_DAT_01543d24,local_120);
              FUN_00eaeca8();
              if (param_1[6] == 0) {
                FUN_00906aa0(&PTR_DAT_01b43118);
                in_stack_fffffe18 = (undefined **)0x7f768d;
                FUN_007876b0();
              }
              else {
                uVar13 = *(undefined4 *)(param_1[6] + 8);
                local_124 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                iVar7 = FUN_00eaeae1();
                *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b9125c;
                iVar6 = FUN_00eae9a0();
                *(undefined4 *)(iVar6 + 4) = uVar13;
                FUN_00eaebca();
                iVar6 = FUN_00eae9a0();
                *(undefined4 *)(iVar6 + 4) = 0;
                FUN_00eaebca();
                in_stack_fffffe18 = &PTR_DAT_01befc64;
                FUN_0077a610(iVar7,&PTR_DAT_01befc64);
                do {
                  local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    param_1[7] = 0xc;
                    FUN_00eaecdd();
                    FUN_00da1e80();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007f756c:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_40 = FUN_0077b0a0(&PTR_DAT_01ba04a8);
                  if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                    param_1[7] = 0xd;
                    FUN_00eaecdd();
                    FUN_00da1e80();
                    FUN_00dfca00(&PTR_DAT_01553b90);
                    return;
                  }
LAB_007f7468:
                  if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                } while (*(int *)(local_40 + 0x20) == 0);
                if (*(int *)(DAT_01c28a24 + 0x14) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9a923(in_stack_fffffe18);
                  in_stack_fffffe18 = (undefined **)0x7f74d3;
                  FUN_00eaebef();
                }
                FUN_00e4e4a0(&PTR_DAT_01543d24,local_128);
                FUN_00eaeca8();
                if (param_1[6] != 0) {
                  local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    param_1[7] = 0xe;
                    FUN_00eaecdd();
                    FUN_00da1e80();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007f7358:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  uVar13 = *(undefined4 *)(param_1[6] + 8);
                  local_12c = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                  iVar7 = FUN_00eaeae1();
                  *(undefined ***)(iVar7 + 8) = &PTR_DAT_01ba04a8;
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = uVar13;
                  FUN_00eaebca();
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(iVar7,&PTR_DAT_01befc64);
                }
                do {
                  local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    param_1[7] = 0xf;
                    FUN_00eaecdd();
                    FUN_00da1e80();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007f72be:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_40 = FUN_0077b0a0(&PTR_DAT_01ba04a8);
                  if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                    param_1[7] = 0x10;
                    FUN_00eaecdd();
                    FUN_00da1e80();
                    FUN_00dfca00(&PTR_DAT_01553b90);
                    return;
                  }
LAB_007f726f:
                  if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_40 + 0x20) != 0) {
                    if (*(int *)(DAT_01c28a24 + 0x18) == 0) {
                      FUN_00eae9a0();
                      FUN_00e9a934(in_stack_fffffe18);
                      in_stack_fffffe18 = (undefined **)0x7f7a79;
                      FUN_00eaebef();
                    }
                    FUN_00e4e4a0(&PTR_DAT_01543d24,local_130);
                  }
                  FUN_00eaeca8();
                } while (param_1[6] == 0);
                uVar13 = *(undefined4 *)(param_1[6] + 8);
                local_134 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                iVar7 = FUN_00eaeae1();
                *(undefined ***)(iVar7 + 8) = &PTR_DAT_01ba04a8;
                iVar6 = FUN_00eae9a0();
                *(undefined4 *)(iVar6 + 4) = uVar13;
                FUN_00eaebca();
                iVar6 = FUN_00eae9a0();
                *(undefined4 *)(iVar6 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(iVar7,&PTR_DAT_01befc64);
                local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
                if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                  param_1[7] = 0x11;
                  FUN_00eaecdd();
                  FUN_00da1e80();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007f718c:
                if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                param_1[1] = 0;
              }
switchD_007f716b_default:
              do {
                iVar7 = FUN_00aea1c0();
                if (iVar7 == 0) {
                  param_1[0xe] = 0;
                  param_1[0xf] = 0;
                  param_1[0x10] = 0;
                  param_1[0x11] = 0;
                  param_1[0x12] = 0;
                  param_1[0x13] = 0;
                  param_1[0x14] = 0;
                  FUN_0077b570(&PTR_DAT_01bf8820,&PTR_DAT_01b5b2bc);
                  local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    param_1[7] = 0x12;
                    FUN_00eaecdd();
                    FUN_00da1e80();
                    FUN_00dfc9c0();
                    return;
                  }
                  goto LAB_007f6a3f;
                }
                FUN_00eae9a0();
                FUN_00eaeca8();
                iVar7 = param_1[1];
                FUN_00eaee5e();
                FUN_00eaee5e();
                *(int *)(iVar7 + 4) = param_1[0x11];
                *(int *)(iVar7 + 8) = param_1[0x12];
              } while (*(char *)(param_1[1] + 0x10) == '\0');
            }
            uVar13 = *(undefined4 *)(param_1[4] + 0x28);
            local_11c = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
            uVar8 = FUN_00eaeae1();
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = uVar13;
            FUN_00eaebca();
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(uVar8,&PTR_DAT_01be3a98);
            local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 8;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfc9c0();
              return;
            }
          } while( true );
        }
        FUN_007876b0();
LAB_007f804b:
        param_1[7] = -2;
        param_1[2] = 0;
        param_1[3] = 0;
        param_1[4] = 0;
        param_1[5] = 0;
        param_1[6] = 0;
        if (param_1[9] == 0) {
          if (PTR_FUN_01c22110 != (undefined *)0x0) {
            FUN_00e8eaee();
          }
          FUN_00eaeca8();
          return;
        }
        iVar5 = FUN_00c0a790(0);
        if (iVar5 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iStack_178 = param_1[2];
  iStack_16c = 0;
  uStack_168 = 0;
  uStack_164 = 0;
  uStack_160 = 0;
  FUN_00eaee5e();
  param_1[0xe] = iStack_178;
  param_1[0xf] = local_174;
  FUN_00eaee5e();
  uVar11 = FUN_00eaee5e();
  param_1[0x10] = iStack_170;
  param_1[0x11] = iStack_16c;
  *(int *)((int)uVar11 + 4) = (int)((ulonglong)uVar11 >> 0x20);
  *(undefined4 *)((int)uVar11 + 8) = 0;
switchD_007f56a3_caseD_1e:
  switch(local_14) {
  case 0x1e:
    local_44 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[7] = -1;
    break;
  case 0x1f:
    local_18 = param_1[10];
    param_1[10] = 0;
    param_1[7] = -1;
    goto LAB_007f57c3;
  case 0x20:
    local_44 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[7] = -1;
    goto LAB_007f5efd;
  case 0x21:
    local_44 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[7] = -1;
    goto LAB_007f5e73;
  case 0x22:
    local_18 = param_1[10];
    param_1[10] = 0;
    param_1[7] = -1;
    goto LAB_007f5dd7;
  case 0x23:
    local_44 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[7] = -1;
    goto LAB_007f5d4d;
  case 0x24:
    local_18 = param_1[10];
    param_1[10] = 0;
    param_1[7] = -1;
    goto LAB_007f5cba;
  case 0x25:
    local_40 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[7] = -1;
    goto LAB_007f5bd4;
  case 0x26:
    local_18 = param_1[10];
    param_1[10] = 0;
    param_1[7] = -1;
    goto LAB_007f5787;
  default:
    goto switchD_007f576d_default;
  }
  do {
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[7] = 0x1f;
      FUN_00eaecdd();
      FUN_00da1e80();
      FUN_00dfc9c0();
      return;
    }
LAB_007f57c3:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    do {
      local_44 = FUN_0077b620(&PTR_DAT_01b39360,&PTR_DAT_01b750a0,param_1[0x19]);
      if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
        param_1[7] = 0x20;
        FUN_00eaecdd();
        FUN_00da1e80();
        FUN_00dfca00(&PTR_DAT_01557398);
        return;
      }
LAB_007f5efd:
      if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar7 = *(int *)(local_44 + 0x20);
      iVar6 = FUN_00905b10(0);
      if (iVar6 == 0) {
        if (PTR_LAB_01c23e7c != (undefined *)0x0) {
          FUN_00e8f54a();
        }
        local_58 = FUN_00b848a0();
        uVar3 = _UNK_018d67ec;
        uVar8 = _UNK_018d67e8;
        uVar13 = _UNK_018d67e4;
        if (local_58 == 0) {
          local_4c = (undefined4 *)0x0;
          local_18c = 0;
        }
        else {
          local_4c = (undefined4 *)(local_58 + 8);
          local_18c = *(uint *)(local_58 + 4);
        }
        local_5c = 0;
        local_54 = 0;
        local_50 = '\0';
        local_48 = local_18c;
        if (local_18c < 0x1b) {
          FUN_0099d6f0();
        }
        else {
          *local_4c = _DAT_018d67e0;
          local_4c[1] = uVar13;
          local_4c[2] = uVar8;
          local_4c[3] = uVar3;
          uVar3 = DAT_018d67fc;
          uVar8 = _UNK_018d67f8;
          uVar13 = _UNK_018d67f4;
          local_4c[4] = _DAT_018d67f0;
          local_4c[5] = uVar13;
          local_4c[6] = uVar8;
          local_4c[7] = uVar3;
          uVar3 = DAT_018d680c;
          uVar8 = _UNK_018d6808;
          uVar13 = _UNK_018d6804;
          local_4c[8] = _DAT_018d6800;
          local_4c[9] = uVar13;
          local_4c[10] = uVar8;
          local_4c[0xb] = uVar3;
          local_4c[0xc] = 0x440049;
          *(undefined2 *)(local_4c + 0xd) = 0x20;
          local_54 = 0x1b;
        }
        FUN_00de77e0();
        if (local_48 < local_54) {
LAB_007f803f:
                    /* WARNING: Subroutine does not return */
          FUN_009318f0();
        }
        if (local_48 - local_54 < 2) {
          FUN_0099d6f0();
        }
        else {
          *(undefined4 *)((int)local_4c + local_54 * 2) = 0x20003a;
          local_54 = local_54 + 2;
        }
        if (local_50 == '\0') {
          if (local_48 < local_54) goto LAB_007f803f;
          if (local_48 - local_54 < *(uint *)(iVar7 + 4)) goto LAB_007f5aa1;
          FUN_00930280(*(int *)(iVar7 + 4) * 2);
          local_54 = local_54 + *(int *)(iVar7 + 4);
        }
        else {
LAB_007f5aa1:
          FUN_0099d670();
        }
        FUN_0099d560();
        FUN_007876b0();
      }
      else {
        uStack_17c = 0x7c;
        iVar7 = FUN_00908570(0,&uStack_17c,1);
        uVar2 = *(uint *)(iVar7 + 4);
        if (3 < (int)uVar2) {
          if (uVar2 < 2) {
LAB_007f8045:
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          iVar7 = *(int *)(iVar7 + 0xc);
          if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
            FUN_00931d20();
          }
          iVar6 = iVar7 + 8;
          uVar13 = *(undefined4 *)(iVar7 + 4);
          iVar7 = iVar6;
          uStack_180 = uVar13;
          FUN_00958ea0(iVar6,uVar13);
          iVar7 = FUN_00dd21c0(&local_184,iVar7,uVar13);
          if (iVar7 != 0) {
            if (iVar7 != 1) {
                    /* WARNING: Subroutine does not return */
              FUN_00de72e0();
            }
                    /* WARNING: Subroutine does not return */
            FUN_00dca280(iVar6,uStack_180);
          }
          if (uVar2 < 4) goto LAB_007f8045;
          if (local_184 == 0) {
            if (*(char *)((int)param_1 + 0x69) != '\0') {
              local_44 = FUN_0077b620(&PTR_DAT_01b45ff8,&PTR_DAT_01ba5368,param_1[0x19]);
              if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
                param_1[7] = 0x21;
                FUN_00eaecdd();
                FUN_00da1e80();
                FUN_00dfca00(&PTR_DAT_01557398);
                return;
              }
LAB_007f5e73:
              if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                param_1[7] = 0x22;
                FUN_00eaecdd();
                FUN_00da1e80();
                FUN_00dfc9c0();
                return;
              }
LAB_007f5dd7:
              if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            local_44 = FUN_0077b620(&PTR_DAT_01b436a0,&PTR_DAT_01b553c4,param_1[0x19]);
            if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 0x23;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfca00(&PTR_DAT_01557398);
              return;
            }
LAB_007f5d4d:
            if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 0x24;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfc9c0();
              return;
            }
LAB_007f5cba:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_40 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[7] = 0x25;
              FUN_00eaecdd();
              FUN_00da1e80();
              FUN_00dfca00(&PTR_DAT_01553b90);
              return;
            }
LAB_007f5bd4:
            if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (((*(int *)(local_40 + 0x20) != 0) &&
                (iVar7 = *(int *)(*(int *)(local_40 + 0x20) + 8), iVar7 != 0)) &&
               (*(int *)(iVar7 + 4) != 0)) {
              iVar7 = FUN_00909ad0();
              if ((iVar7 == 0) || (iVar7 = FUN_00909ad0(), iVar7 == 0)) {
                FUN_0094bfb0();
                FUN_0094c500();
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
                pcVar12 = "8";
                FUN_0094c500();
                if (*pcVar12 == '\0') {
                  FUN_00dfdf80();
                }
                else {
                  FUN_00956500();
                }
                iVar7 = FUN_00909ad0();
                if (iVar7 != 0) {
                  FUN_0094bfb0();
                  pcVar12 = "8";
                  FUN_0094c500();
                  if (*pcVar12 == '\0') {
                    FUN_00dfdf80();
                  }
                  else {
                    FUN_00956500();
                  }
                  FUN_0094bfb0();
                  pcVar12 = "8";
                  FUN_0094c500();
                  if (*pcVar12 == '\0') {
                    FUN_00dfdf80();
                  }
                  else {
                    FUN_00956500();
                  }
                  iVar7 = FUN_00909ad0();
                  if (iVar7 != 0) goto LAB_007f6121;
                }
              }
              else {
LAB_007f6121:
                iVar7 = FUN_00eaeae1();
                *(undefined ***)(iVar7 + 8) = &PTR_DAT_01bb04a8;
                iVar7 = FUN_00eae9a0(iVar7);
                *(undefined4 *)(iVar7 + 4) = 1;
                FUN_00eaebca();
                iVar7 = FUN_00eae9a0();
                *(undefined4 *)(iVar7 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
                local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
                if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                  param_1[7] = 0x26;
                  FUN_00eaecdd();
                  FUN_00da1e80();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007f5787:
                if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
            }
          }
          else {
            FUN_007876b0();
          }
        }
      }
      param_1[0x17] = 0;
      param_1[0x18] = 0;
      param_1[0x19] = 0;
      param_1[0x1a] = 0;
switchD_007f576d_default:
      do {
        iVar7 = FUN_00aea1c0();
        if (iVar7 == 0) {
          param_1[0xe] = 0;
          param_1[0xf] = 0;
          param_1[0x10] = 0;
          param_1[0x11] = 0;
          param_1[0x12] = 0;
          param_1[0x13] = 0;
          param_1[0x14] = 0;
          FUN_007876b0();
          FUN_0077b570(&PTR_DAT_01bf8820,&PTR_DAT_01b39360);
          iVar7 = *(int *)(*(int *)(iVar5 + 4) + 200);
          if (((*(byte *)(iVar7 + 0x34) & 1) == 0) || (*(char *)(iVar7 + 0x38) != '\x01')) {
            FUN_00b6cb10();
          }
          local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[7] = 0x27;
            FUN_00eaecdd();
            FUN_00da1e80();
            FUN_00dfc9c0();
            return;
          }
          goto LAB_007f56b7;
        }
        FUN_00eaee5e();
        FUN_00eaee5e();
        param_1[0x17] = param_1[0x11];
        param_1[0x18] = param_1[0x12];
      } while ((char)param_1[0x1a] == '\0');
    } while (param_1[0x19] < 6);
    local_44 = FUN_0077b620(&PTR_DAT_01bed210,&PTR_DAT_01b55408,0);
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      param_1[7] = 0x1e;
      FUN_00eaecdd();
      FUN_00da1e80();
      FUN_00dfca00(&PTR_DAT_01557398);
      return;
    }
  } while( true );
}

