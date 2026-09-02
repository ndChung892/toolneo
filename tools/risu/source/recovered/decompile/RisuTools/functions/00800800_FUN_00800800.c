/* Address: 00800800 | Ghidra name: FUN_00800800 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00800800(int *param_1)

{
  char cVar1;
  int iVar2;
  double dVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  int extraout_ECX;
  undefined4 extraout_ECX_00;
  int extraout_ECX_01;
  undefined4 *puVar9;
  undefined4 *puVar10;
  uint uVar11;
  uint uVar12;
  undefined **in_stack_fffffdec;
  int in_stack_fffffdf0;
  int local_16c;
  uint local_140;
  uint local_13c;
  uint local_130;
  undefined4 local_12c;
  undefined4 uStack_128;
  undefined *puStack_124;
  undefined4 uStack_120;
  undefined4 local_11c;
  undefined *puStack_118;
  undefined *puStack_114;
  undefined *puStack_110;
  undefined1 local_10c [12];
  undefined4 local_100;
  int local_f8;
  undefined4 local_f4 [12];
  int local_c4;
  undefined4 local_c0;
  int local_bc;
  uint local_b8;
  char local_b4;
  undefined4 *local_b0;
  uint local_ac;
  undefined4 local_a8;
  int local_a4;
  uint local_a0;
  char local_9c;
  undefined4 *local_98;
  uint local_94;
  int local_90;
  undefined **local_88;
  int local_84;
  int local_80;
  undefined4 local_7c;
  int local_78;
  uint local_74;
  char local_70;
  int local_6c;
  uint local_68;
  undefined4 local_64;
  int local_60;
  uint local_5c;
  char local_58;
  undefined4 *local_54;
  uint local_50;
  int local_48;
  int local_44;
  int local_40;
  undefined4 local_3c;
  int local_38;
  uint local_34;
  undefined1 local_30;
  int local_2c;
  uint local_28;
  int local_20;
  int local_1c [3];
  
  local_12c = 0;
  uStack_128 = 0;
  puStack_124 = (undefined *)0x0;
  uStack_120 = 0;
  local_11c = 0;
  puStack_118 = (undefined *)0x0;
  puStack_114 = (undefined *)0x0;
  puStack_110 = (undefined *)0x0;
  iVar5 = -0xf0;
  do {
    *(undefined4 *)((int)local_1c + iVar5) = 0;
    *(undefined4 *)((int)local_1c + iVar5 + 4) = 0;
    *(undefined4 *)((int)local_1c + iVar5 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  local_1c[2] = param_1[8];
  iVar2 = *param_1;
  iVar8 = 0;
  local_1c[0] = iVar5;
  local_1c[1] = iVar5;
  switch(local_1c[2]) {
  case 0:
    local_1c[1] = param_1[0xe];
    param_1[0xe] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    break;
  case 1:
    local_1c[0] = param_1[0xf];
    param_1[0xf] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_008015c7;
  case 2:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_008014bf;
  case 3:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00801481;
  case 4:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    local_1c[1] = 0;
    goto LAB_008013f2;
  case 5:
    local_1c[1] = param_1[0xe];
    param_1[0xe] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_0080134c;
  case 6:
    local_1c[0] = param_1[0xf];
    param_1[0xf] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00801316;
  case 7:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00801249;
  case 8:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_0080120b;
  case 9:
    local_1c[0] = param_1[0xf];
    param_1[0xf] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    local_1c[1] = iVar8;
    goto LAB_00801187;
  case 10:
    local_1c[0] = param_1[0xf];
    param_1[0xf] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    local_1c[1] = iVar8;
    goto LAB_00801151;
  case 0xb:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    local_1c[0] = 0;
    local_1c[1] = iVar8;
    goto LAB_0080109b;
  case 0xc:
    local_1c[0] = param_1[0xf];
    param_1[0xf] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    local_1c[1] = iVar8;
    goto LAB_0080100c;
  case 0xd:
    local_1c[1] = param_1[0xe];
    param_1[0xe] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    local_1c[0] = 0;
    goto LAB_00800f78;
  case 0xe:
    local_1c[0] = param_1[0xf];
    param_1[0xf] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800e84;
  case 0xf:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800df1;
  case 0x10:
    local_1c[0] = param_1[0xf];
    param_1[0xf] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    local_1c[1] = 0;
    goto LAB_00800d67;
  case 0x11:
    local_1c[1] = param_1[0xe];
    param_1[0xe] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800d09;
  case 0x12:
    local_1c[1] = param_1[0xe];
    param_1[0xe] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800c5e;
  case 0x13:
    local_1c[0] = param_1[0xf];
    param_1[0xf] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800ba0;
  case 0x14:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800af6;
  case 0x15:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800ab0;
  case 0x16:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800a53;
  case 0x17:
  case 0x18:
  case 0x19:
  case 0x1a:
  case 0x1b:
  case 0x1c:
  case 0x1d:
  case 0x1e:
  case 0x1f:
    goto switchD_0080086a_caseD_17;
  case 0x20:
  case 0x21:
  case 0x22:
    goto switchD_0080086a_caseD_20;
  case 0x23:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800a0b;
  case 0x24:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_0080098d;
  case 0x25:
    local_80 = param_1[0x16];
    param_1[0x16] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800956;
  case 0x26:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_008008c2;
  case 0x27:
    local_c4 = param_1[0x17];
    param_1[0x17] = 0;
    local_1c[2] = -1;
    param_1[8] = -1;
    goto LAB_00800888;
  default:
    param_1[9] = 0;
    FUN_00787780();
    goto LAB_008016f9;
  }
LAB_00801672:
  if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00eaecdd();
  local_1c[0] = FUN_00975000();
  if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
    param_1[8] = 1;
    FUN_00eaecdd();
    FUN_00da3100();
    FUN_00dfc9c0();
    return;
  }
LAB_008015c7:
  if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if ((param_1[4] == 0) || (*(char *)(param_1[4] + 0x69) != '\0')) goto LAB_00801720;
  FUN_007feee0();
  param_1[10] = local_20;
  FUN_00eaebef();
  if (param_1[10] == 0) {
    if (PTR_LAB_01c23e7c != (undefined *)0x0) {
      FUN_00e8f54a();
    }
    local_38 = FUN_00b848a0();
    if (local_38 == 0) {
      local_2c = 0;
      local_28 = 0;
    }
    else {
      local_2c = local_38 + 8;
      local_28 = *(uint *)(local_38 + 4);
    }
    local_3c = 0;
    local_34 = 0;
    local_30 = 0;
    if (local_28 < 0x28) {
      FUN_0099d6f0();
    }
    else {
      FUN_00930280();
      local_34 = local_34 + 0x28;
    }
    FUN_00de77e0();
    if (local_28 < local_34) {
LAB_00803b4e:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    if (local_28 == local_34) {
      FUN_0099d6f0();
    }
    else {
      *(undefined2 *)(local_2c + local_34 * 2) = 0x21;
      local_34 = local_34 + 1;
    }
    FUN_0099d560();
    FUN_007876b0();
    goto LAB_00803b54;
  }
  local_40 = FUN_0077ad90();
  if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
    param_1[8] = 2;
    FUN_00eaecdd();
    FUN_00da3100();
    FUN_00dfca00();
    return;
  }
LAB_008014bf:
  if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00eae9a0();
  FUN_00e9aa88(in_stack_fffffdec);
  FUN_00e4e4a0();
  FUN_00eaebca();
  if (*(int *)(param_1[1] + 4) == 0) {
    FUN_007fef80();
    local_44 = FUN_00b6e1a0();
    in_stack_fffffdec = (undefined **)0x8017e8;
    iVar5 = FUN_00b6fc00();
    if (iVar5 == 0) {
      param_1[8] = 0x24;
LAB_008018f9:
      FUN_00eaecdd();
      FUN_00e17930();
      return;
    }
LAB_0080098d:
    FUN_00b6fc70();
    FUN_00787780();
    FUN_00787620();
    FUN_00792dc0();
    local_80 = FUN_00cc8cb0();
    iVar5 = FUN_00b6fc00();
    if (iVar5 == 0) {
      param_1[8] = 0x25;
      FUN_00eaecdd();
      FUN_00e39510(&PTR_PTR_01568da0,param_1);
      return;
    }
LAB_00800956:
    iVar5 = FUN_00cce6b0();
    if (iVar5 == 0) {
      iVar5 = 0;
    }
    else {
      FUN_00eae9a0();
      FUN_00e9ab65(in_stack_fffffdec);
      in_stack_fffffdec = &PTR_PTR_01544418;
      iVar5 = FUN_00e4e370(&PTR_PTR_01544418);
    }
    if (iVar5 == 0) {
      local_f4[0] = 0;
      local_f4[1] = 0;
      local_f4[2] = 0;
      local_f4[3] = 0;
      local_f4[4] = 0;
      local_f4[5] = 0;
      FUN_0099d430();
      puVar9 = local_f4;
      puVar10 = local_f4 + 6;
      for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
        *puVar10 = *puVar9;
        puVar9 = puVar9 + 1;
        puVar10 = puVar10 + 1;
      }
      FUN_0099d5d0();
      FUN_0099d620();
      FUN_0099d5d0();
      FUN_00de77e0();
      FUN_0099d560();
      FUN_007876b0();
LAB_00803b54:
      param_1[8] = -2;
      FUN_0099cd70();
      return;
    }
    FUN_007ff010();
    local_44 = FUN_00b6e1a0();
    iVar5 = FUN_00b6fc00();
    if (iVar5 == 0) {
      param_1[8] = 0x26;
      goto LAB_008018f9;
    }
LAB_008008c2:
    iVar5 = FUN_00b6fc70();
    if (iVar5 == 0) {
      FUN_00906a20();
      FUN_007876b0();
      goto LAB_00803b54;
    }
    FUN_00787620();
    FUN_00792e00();
    local_c4 = FUN_00cc8cb0();
    iVar5 = FUN_00b6fc00();
    if (iVar5 == 0) {
      param_1[8] = 0x27;
      FUN_00eaecdd();
      FUN_00e39510(&PTR_PTR_01553bb4,param_1);
      return;
    }
LAB_00800888:
    iVar5 = FUN_00cce6b0();
    if (iVar5 == 0) {
      iVar5 = 0;
    }
    else {
      FUN_00777680();
      if (*(int *)(DAT_01c28a54 + 0x20) == 0) {
        FUN_00eae9a0();
        FUN_00e9aaff(in_stack_fffffdec);
        in_stack_fffffdec = (undefined **)0x801979;
        FUN_00eaebef();
      }
      iVar5 = FUN_00e4e370();
    }
    if (iVar5 == 0) {
      FUN_00787620();
      FUN_00792d60(0,0);
    }
    else {
      FUN_00787620();
      uVar6 = FUN_00777670();
      FUN_00792d60(0,uVar6);
    }
    FUN_00787780();
LAB_00800ad0:
    param_1[1] = 0;
    param_1[4] = 0;
  }
  else {
    iVar5 = FUN_00772d90();
    param_1[9] = iVar5;
    if (*(char *)(*(int *)(param_1[1] + 4) + 0x3c) == '\0') {
      if ((*(int *)(param_1[1] + 4) != 0) && (*(int *)(*(int *)(param_1[1] + 4) + 4) != 0)) {
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
      }
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
      in_stack_fffffdec = (undefined **)0x801ab3;
      iVar5 = FUN_00909ad0();
      if (iVar5 == 0) {
        FUN_0094bfb0();
        FUN_0094c500();
        if (DAT_01c222d8 == '\0') {
          FUN_00dfdf80();
        }
        else {
          FUN_00956500();
        }
        in_stack_fffffdec = (undefined **)0x801af3;
        iVar5 = FUN_00909ad0();
        if (iVar5 != 0) goto LAB_00801af7;
        FUN_0094bfb0();
        FUN_0094c500();
        if (DAT_01c222d8 == '\0') {
          FUN_00dfdf80();
        }
        else {
          FUN_00956500();
        }
        in_stack_fffffdec = (undefined **)0x801b3a;
        iVar5 = FUN_00909ad0();
        if (iVar5 == 0) {
          FUN_0094bfb0();
          FUN_0094c500();
          if (DAT_01c222d8 == '\0') {
            FUN_00dfdf80();
          }
          else {
            FUN_00956500();
          }
          in_stack_fffffdec = (undefined **)0x801b7a;
          iVar5 = FUN_00909ad0();
          if (iVar5 != 0) goto LAB_00801b7e;
          FUN_0094bfb0();
          FUN_0094c500();
          if (DAT_01c222d8 == '\0') {
            FUN_00dfdf80();
          }
          else {
            FUN_00956500();
          }
          in_stack_fffffdec = (undefined **)0x801bc4;
          iVar5 = FUN_00909ad0();
          if (iVar5 == 0) {
            FUN_0094bfb0();
            FUN_0094c500();
            if (DAT_01c222d8 == '\0') {
              FUN_00dfdf80();
            }
            else {
              FUN_00956500();
            }
            in_stack_fffffdec = (undefined **)0x801c04;
            iVar5 = FUN_00909ad0();
            if (iVar5 != 0) goto LAB_00801c08;
            FUN_0094bfb0();
            FUN_0094c500();
            if (DAT_01c222d8 == '\0') {
              FUN_00dfdf80();
            }
            else {
              FUN_00956500();
            }
            in_stack_fffffdec = (undefined **)0x801c4e;
            iVar5 = FUN_00909ad0();
            if (iVar5 == 0) {
              FUN_0094bfb0();
              FUN_0094c500();
              if (DAT_01c222d8 == '\0') {
                FUN_00dfdf80();
              }
              else {
                FUN_00956500();
              }
              in_stack_fffffdec = (undefined **)0x801c8e;
              iVar5 = FUN_00909ad0();
              if (iVar5 != 0) goto LAB_00801c92;
              uVar6 = 3;
            }
            else {
LAB_00801c92:
              uVar6 = 4;
            }
          }
          else {
LAB_00801c08:
            uVar6 = 2;
          }
        }
        else {
LAB_00801b7e:
          uVar6 = 1;
        }
      }
      else {
LAB_00801af7:
        uVar6 = 0;
      }
      switch(uVar6) {
      case 0:
        in_stack_fffffdec = (undefined **)0x802f37;
        local_44 = FUN_007fef80();
        if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
          param_1[8] = 4;
          FUN_00eaecdd();
          FUN_00da3100();
          FUN_00dfc9c0();
          return;
        }
LAB_008013f2:
        if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_1c[1] = FUN_0077abc0();
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
          param_1[8] = 5;
          FUN_00eaecdd();
          FUN_00da3100();
          FUN_00dfca00();
          return;
        }
LAB_0080134c:
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaecdd();
        if (param_1[4] != 0) {
          while( true ) {
            local_44 = FUN_0077af00();
            if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
              param_1[8] = 7;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfc9c0();
              return;
            }
LAB_00801249:
            if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_44 + 0x20) != '\0') break;
            FUN_00906a20();
            FUN_00782420();
            local_1c[0] = FUN_00975000();
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
              param_1[8] = 6;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfc9c0();
              return;
            }
LAB_00801316:
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          uVar6 = FUN_00eae9a0();
          local_f8 = param_1[10];
          FUN_00e9ab43(in_stack_fffffdec);
          in_stack_fffffdec = (undefined **)0x1;
          local_44 = FUN_00787920(0,0,0,0,0,0,0,uVar6,1);
          if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
            param_1[8] = 8;
            FUN_00eaecdd();
            FUN_00da3100();
            FUN_00dfc9c0();
            return;
          }
LAB_0080120b:
          if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        break;
      case 1:
        FUN_00772e10();
        in_stack_fffffdec = (undefined **)0x802e19;
        FUN_00eaeca8();
        if ((param_1[5] != 0) && (0 < *(int *)(param_1[5] + 0xc))) {
          in_stack_fffffdec = (undefined **)0x0;
          local_1c[0] = FUN_00787840();
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
            param_1[8] = 9;
            FUN_00eaecdd();
            FUN_00da3100();
            FUN_00dfc9c0();
            return;
          }
LAB_00801187:
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          while( true ) {
            local_44 = FUN_0077ac00();
            if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
              param_1[8] = 0xb;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfc9c0();
              return;
            }
LAB_0080109b:
            if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_44 + 0x20) != '\0') break;
            local_100 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
            FUN_00eaeae1();
            iVar5 = FUN_00eae9a0();
            *(undefined4 *)(iVar5 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be70d8);
            local_1c[0] = FUN_00975000();
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
              param_1[8] = 10;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfc9c0();
              return;
            }
LAB_00801151:
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          local_1c[0] = FUN_007877c0();
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
            param_1[8] = 0xc;
            FUN_00eaecdd();
            FUN_00da3100();
            FUN_00dfc9c0();
            return;
          }
LAB_0080100c:
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          param_1[0xb] = 0;
          do {
            local_1c[1] = FUN_0077abc0();
            if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
              param_1[8] = 0xd;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfca00();
              return;
            }
LAB_00800f78:
            if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00eaecdd();
            local_1c[0] = FUN_00975000();
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
              param_1[8] = 0xe;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfc9c0();
              return;
            }
LAB_00800e84:
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[0xb] = param_1[0xb] + 1;
          } while (((param_1[4] != 0) &&
                   ((dVar3 = *(double *)(param_1[4] + 4) / _DAT_018d6cc0 -
                             (double)*(int *)(param_1[5] + 0x10),
                    uVar11 = SUB84(dVar3,0) & _DAT_018d6cd0,
                    uVar12 = (uint)((ulonglong)dVar3 >> 0x20) & _UNK_018d6cd4,
                    _DAT_018d6ce0 <= (double)CONCAT44(uVar12,uVar11) &&
                    (double)CONCAT44(uVar12,uVar11) != _DAT_018d6ce0 ||
                    (dVar3 = *(double *)(param_1[4] + 0xc) / _DAT_018d6cc0 -
                             (double)*(int *)(param_1[5] + 0x14),
                    uVar11 = SUB84(dVar3,0) & _DAT_018d6cd0,
                    uVar12 = (uint)((ulonglong)dVar3 >> 0x20) & _UNK_018d6cd4,
                    _DAT_018d6ce0 <= (double)CONCAT44(uVar12,uVar11) &&
                    (double)CONCAT44(uVar12,uVar11) != _DAT_018d6ce0)))) && (param_1[0xb] < 0xc));
          local_44 = FUN_007fefc0();
          if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
            param_1[8] = 0xf;
            FUN_00eaecdd();
            FUN_00da3100();
            FUN_00dfc9c0();
            return;
          }
LAB_00800df1:
          if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          cVar1 = *(char *)(local_44 + 0x20);
          while (cVar1 != '\0') {
            local_1c[0] = FUN_00975000();
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
              param_1[8] = 0x10;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfc9c0();
              return;
            }
LAB_00800d67:
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_1c[1] = FUN_0077abc0();
            if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
              param_1[8] = 0x11;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfca00();
              return;
            }
LAB_00800d09:
            if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00eaecdd();
            if (param_1[4] == 0) break;
            cVar1 = *(char *)(param_1[4] + 0x69);
          }
        }
        break;
      case 2:
        while( true ) {
          FUN_00eae9a0();
          FUN_00eaeca8();
          FUN_00eaebef();
          local_1c[1] = FUN_0077abc0();
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
            param_1[8] = 0x12;
            FUN_00eaecdd();
            FUN_00da3100();
            FUN_00dfca00();
            return;
          }
LAB_00800c5e:
          if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaecdd();
          if ((param_1[4] == 0) || (*(char *)(param_1[4] + 0x69) == '\0')) break;
          local_1c[0] = FUN_00975000();
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
            param_1[8] = 0x13;
            FUN_00eaecdd();
            FUN_00da3100();
            FUN_00dfc9c0();
            return;
          }
LAB_00800ba0:
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
LAB_00800bbb:
          if ((*(int *)(param_1[1] + 4) == 0) ||
             (*(char *)(*(int *)(param_1[1] + 4) + 0x3c) != '\0')) goto LAB_00800ad0;
        }
        iVar5 = param_1[2];
        if ((*(int *)(*(int *)(iVar5 + 8) + 4) == 0) || (iVar8 = FUN_00e4e3a0(), iVar8 == 0)) {
          uVar6 = 0;
        }
        else {
          uVar6 = *(undefined4 *)(iVar8 + 0xc);
        }
        *(undefined4 *)(iVar5 + 0x10) = uVar6;
        if (*(int *)(*(int *)(param_1[2] + 8) + 4) != 0) {
          FUN_00e4e3a0();
        }
        FUN_00eaebef();
        uVar6 = FUN_00eae9a0();
        if (PTR_FUN_01c21b04 != (undefined *)0x0) {
          FUN_00e8e290();
        }
        FUN_00e9ab76(in_stack_fffffdec);
        FUN_00e23c20(&PTR_DAT_0155b30c,local_10c,uVar6);
        iVar5 = local_48;
        if (((local_48 == 0) && (iVar8 = FUN_00772e10(), iVar8 != 0)) && (0 < *(int *)(iVar8 + 0xc))
           ) {
          iVar5 = *(int *)(iVar8 + 0xc);
        }
        if (0 < iVar5) {
          if (PTR_LAB_01c23e7c != (undefined *)0x0) {
            FUN_00e8f54a();
          }
          local_60 = FUN_00b848a0();
          uVar4 = _UNK_018d6d2c;
          uVar7 = _UNK_018d6d28;
          uVar6 = _UNK_018d6d24;
          if (local_60 == 0) {
            local_54 = (undefined4 *)0x0;
            local_130 = 0;
          }
          else {
            local_54 = (undefined4 *)(local_60 + 8);
            local_130 = *(uint *)(local_60 + 4);
          }
          local_64 = 0;
          local_5c = 0;
          local_58 = '\0';
          local_50 = local_130;
          if (local_130 < 0x1b) {
            FUN_0099d6f0();
          }
          else {
            *local_54 = _DAT_018d6d20;
            local_54[1] = uVar6;
            local_54[2] = uVar7;
            local_54[3] = uVar4;
            uVar4 = _UNK_018d6d3c;
            uVar7 = _UNK_018d6d38;
            uVar6 = _UNK_018d6d34;
            local_54[4] = _DAT_018d6d30;
            local_54[5] = uVar6;
            local_54[6] = uVar7;
            local_54[7] = uVar4;
            uVar4 = _UNK_018d6d4c;
            uVar7 = _UNK_018d6d48;
            uVar6 = _UNK_018d6d44;
            local_54[8] = _DAT_018d6d40;
            local_54[9] = uVar6;
            local_54[10] = uVar7;
            local_54[0xb] = uVar4;
            local_54[0xc] = 0x700061;
            *(undefined2 *)(local_54 + 0xd) = 0x20;
            local_5c = 0x1b;
          }
          FUN_00de77e0();
          uVar4 = _UNK_018d6d5c;
          uVar7 = _UNK_018d6d58;
          uVar6 = _UNK_018d6d54;
          if (local_5c <= local_50) {
            puVar9 = (undefined4 *)((int)local_54 + local_5c * 2);
            if (local_50 - local_5c < 0xd) {
              FUN_0099d6f0();
            }
            else {
              *puVar9 = _DAT_018d6d50;
              puVar9[1] = uVar6;
              puVar9[2] = uVar7;
              puVar9[3] = uVar4;
              puVar9[4] = 0x650050;
              puVar9[5] = 0x200074;
              *(undefined2 *)(puVar9 + 6) = 0x5b;
              local_5c = local_5c + 0xd;
            }
            iVar5 = *(int *)(param_1[2] + 4);
            if ((local_58 == '\0') && (iVar5 != 0)) {
              if (local_50 < local_5c) goto LAB_00803b4e;
              if (local_50 - local_5c < *(uint *)(iVar5 + 4)) goto LAB_00802b91;
              FUN_00930280(*(int *)(iVar5 + 4) * 2);
              local_5c = local_5c + *(int *)(iVar5 + 4);
            }
            else {
LAB_00802b91:
              FUN_0099d670();
            }
            if (local_5c <= local_50) {
              puVar9 = (undefined4 *)((int)local_54 + local_5c * 2);
              if (local_50 - local_5c < 7) {
                FUN_0099d6f0();
              }
              else {
                *puVar9 = 0x20005d;
                puVar9[1] = &DAT_00490028;
                puVar9[2] = 0x3a0044;
                *(undefined2 *)(puVar9 + 3) = 0x20;
                local_5c = local_5c + 7;
              }
              FUN_00de77e0();
              if (local_5c <= local_50) {
                puVar9 = (undefined4 *)((int)local_54 + local_5c * 2);
                if (local_50 - local_5c < 4) {
                  FUN_0099d6f0();
                }
                else {
                  *puVar9 = 0x2e0029;
                  puVar9[1] = 0x2e002e;
                  local_5c = local_5c + 4;
                }
                FUN_0099d560();
                uVar6 = 0x802c6e;
                FUN_007876b0();
                local_16c = *(int *)(*(int *)(param_1[2] + 8) + 0x10);
                if (local_16c == 0) {
                  FUN_00eae9a0();
                  FUN_00e9ab54(in_stack_fffffdf0);
                  uVar6 = 0x802cc4;
                  FUN_00eaebef();
                  local_16c = extraout_ECX;
                }
                uVar7 = FUN_00eae9a0();
                FUN_00e9ab98(uVar6);
                in_stack_fffffdec = (undefined **)0x0;
                local_44 = FUN_00787920(0,0,0,0,0,0,uVar7,local_16c,0);
                if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
                  param_1[8] = 0x14;
                  FUN_00eaecdd();
                  FUN_00da3100();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00800af6:
                if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (((*(char *)(local_44 + 0x20) == '\0') &&
                    (iVar5 = *(int *)(*(int *)(param_1[2] + 8) + 4), iVar5 != 0)) &&
                   (*(char *)(iVar5 + 0x3c) == '\0')) {
                  local_40 = FUN_0077ad90();
                  if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                    param_1[8] = 0x16;
                    FUN_00eaecdd();
                    FUN_00da3100();
                    FUN_00dfca00();
                    return;
                  }
LAB_00800a53:
                  if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_40 + 0x20) != 0) {
                    FUN_00eae9a0();
                    FUN_00e9aa88(in_stack_fffffdec);
                    in_stack_fffffdec = &puStack_110;
                    FUN_00e4e4a0();
                  }
                  FUN_00eaebca();
                  param_1[2] = 0;
                  goto LAB_00800bbb;
                }
                local_44 = FUN_007ff510(*(undefined4 *)(*(int *)(param_1[2] + 8) + 8),param_1[10]);
                if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
                  param_1[8] = 0x15;
                  FUN_00eaecdd();
                  FUN_00da3100();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00800ab0:
                if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                break;
              }
            }
          }
          goto LAB_00803b4e;
        }
        if (PTR_LAB_01c23e7c != (undefined *)0x0) {
          FUN_00e8f54a();
        }
        local_78 = FUN_00b848a0();
        if (local_78 == 0) {
          local_6c = 0;
          local_68 = 0;
        }
        else {
          local_6c = local_78 + 8;
          local_68 = *(uint *)(local_78 + 4);
        }
        local_7c = 0;
        local_74 = 0;
        local_70 = '\0';
        if (local_68 < 0x2b) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280(0x56);
          local_74 = local_74 + 0x2b;
        }
        iVar5 = *(int *)(param_1[2] + 4);
        if ((local_70 == '\0') && (iVar5 != 0)) {
          if (local_68 < local_74) goto LAB_00803b4e;
          if (local_68 - local_74 < *(uint *)(iVar5 + 4)) goto LAB_00802964;
          FUN_00930280(*(int *)(iVar5 + 4) * 2);
          local_74 = local_74 + *(int *)(iVar5 + 4);
        }
        else {
LAB_00802964:
          FUN_0099d670();
        }
        if (local_68 < local_74) goto LAB_00803b4e;
        puVar9 = (undefined4 *)(local_6c + local_74 * 2);
        if (local_68 - local_74 < 7) {
          FUN_0099d6f0();
        }
        else {
          *puVar9 = 0x20005d;
          puVar9[1] = &DAT_00490028;
          puVar9[2] = 0x3a0044;
          *(undefined2 *)(puVar9 + 3) = 0x20;
          local_74 = local_74 + 7;
        }
        FUN_00de77e0();
        if (local_68 < local_74) goto LAB_00803b4e;
        if (local_68 - local_74 < 2) {
          FUN_0099d6f0();
        }
        else {
          *(undefined4 *)(local_6c + local_74 * 2) = 0x210029;
          local_74 = local_74 + 2;
        }
        FUN_0099d560();
        in_stack_fffffdec = (undefined **)0x802a2e;
        FUN_007876b0();
        break;
      default:
        iVar5 = *(int *)(param_1[1] + 4);
        if (((iVar5 != 0) && (*(char *)(iVar5 + 0x3c) == '\0')) && (*(int *)(iVar5 + 0x1c) != 0)) {
          if (*(int *)(DAT_01c28a54 + 0x1c) == 0) {
            FUN_00eae9a0();
            FUN_00e9aaee(in_stack_fffffdf0);
            in_stack_fffffdec = (undefined **)0x803060;
            FUN_00eaebef();
          }
          FUN_00e4ee90();
          FUN_00e4ee50();
          FUN_00eaeca8();
          param_1[0x13] = 0;
          param_1[0x14] = extraout_ECX_01;
          param_1[0x15] = 0;
switchD_0080086a_caseD_20:
          switch(local_1c[2]) {
          case 0x20:
            local_44 = param_1[0x11];
            param_1[0x11] = 0;
            local_1c[2] = -1;
            param_1[8] = -1;
            break;
          case 0x21:
            local_1c[0] = param_1[0xf];
            param_1[0xf] = 0;
            local_1c[2] = -1;
            param_1[8] = -1;
            goto LAB_0080385b;
          case 0x22:
            local_1c[0] = param_1[0xf];
            param_1[0xf] = 0;
            local_1c[2] = -1;
            param_1[8] = -1;
            goto LAB_008030ca;
          default:
            goto switchD_008030af_default;
          }
          do {
            if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_1c[0] = FUN_00975000();
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
              local_1c[2] = 0x21;
              param_1[8] = 0x21;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfc9c0();
              FUN_00803b6b();
              return;
            }
LAB_0080385b:
            if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
switchD_008030af_default:
            while( true ) {
              iVar5 = FUN_00cd0850();
              if (iVar5 == 0) {
                if (local_1c[2] < 0) {
                  FUN_00a806b0();
                }
                param_1[0x12] = 0;
                param_1[0x13] = 0;
                param_1[0x14] = 0;
                param_1[0x15] = 0;
                FUN_00787620();
                FUN_00792dd0();
                local_40 = FUN_00cc8cb0();
                iVar5 = FUN_00b6fc00();
                if (iVar5 == 0) {
                  param_1[8] = 0x23;
                  FUN_00eaecdd();
                  FUN_00e39510(&PTR_PTR_01568f3c,param_1);
                  return;
                }
LAB_00800a0b:
                iVar5 = FUN_00cce6b0();
                if (iVar5 != 0) {
                  FUN_00eae9a0();
                  FUN_00e9aa88(in_stack_fffffdec);
                  in_stack_fffffdec = &PTR_PTR_01544bf4;
                  FUN_00e4e370(&PTR_PTR_01544bf4);
                }
                FUN_00eaebca();
                goto LAB_00803a02;
              }
              iVar5 = param_1[0x13];
              iVar8 = FUN_00eae9a0();
              *(undefined4 *)(iVar8 + 4) = *(undefined4 *)(iVar5 + 0xc);
              local_84 = *(int *)(iVar5 + 0x10) - *(int *)(iVar5 + 0x14);
              if (local_84 < 1) {
                local_84 = 1;
              }
              uVar6 = FUN_00eae9a0();
              if (PTR_FUN_01c21b04 != (undefined *)0x0) {
                FUN_00e8e290();
              }
              FUN_00e9abdc(in_stack_fffffdec);
              FUN_00e21c80(&PTR_DAT_0155b170,&local_12c,uVar6);
              in_stack_fffffdec = local_88;
              if ((local_90 != 0) && (0 < *(int *)(local_90 + 8))) break;
              if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                FUN_00e8f54a();
              }
              local_bc = FUN_00b848a0();
              uVar4 = _UNK_018d6d2c;
              uVar7 = _UNK_018d6d28;
              uVar6 = _UNK_018d6d24;
              if (local_bc == 0) {
                local_b0 = (undefined4 *)0x0;
                local_140 = 0;
              }
              else {
                local_b0 = (undefined4 *)(local_bc + 8);
                local_140 = *(uint *)(local_bc + 4);
              }
              local_c0 = 0;
              local_b8 = 0;
              local_b4 = '\0';
              local_ac = local_140;
              if (local_140 < 0x17) {
                FUN_0099d6f0();
              }
              else {
                *local_b0 = _DAT_018d6d20;
                local_b0[1] = uVar6;
                local_b0[2] = uVar7;
                local_b0[3] = uVar4;
                *(undefined1 (*) [16])(local_b0 + 4) = _DAT_018d6d70;
                local_b0[8] = 0x201eed;
                local_b0[9] = 0x75006d;
                local_b0[10] = 0x200061;
                *(undefined2 *)(local_b0 + 0xb) = 0x5b;
                local_b8 = 0x17;
              }
              iVar5 = *(int *)(iVar5 + 4);
              if ((local_b4 == '\0') && (iVar5 != 0)) {
                if (local_ac < local_b8) goto LAB_00803931;
                if (local_ac - local_b8 < *(uint *)(iVar5 + 4)) goto LAB_008032dd;
                FUN_00930280(*(int *)(iVar5 + 4) * 2);
                local_b8 = local_b8 + *(int *)(iVar5 + 4);
              }
              else {
LAB_008032dd:
                FUN_0099d670();
              }
              if (local_ac < local_b8) goto LAB_00803931;
              puVar9 = (undefined4 *)((int)local_b0 + local_b8 * 2);
              if (local_ac - local_b8 < 3) {
                FUN_0099d6f0();
              }
              else {
                *puVar9 = 0x20005d;
                *(undefined2 *)(puVar9 + 1) = 0x78;
                local_b8 = local_b8 + 3;
              }
              FUN_00de77e0();
              if (local_ac < local_b8) goto LAB_00803931;
              if (local_ac - local_b8 < 3) {
                FUN_0099d6f0();
              }
              else {
                FUN_00dc3460(3);
                local_b8 = local_b8 + 3;
              }
              FUN_0099d560();
              FUN_007876b0();
              FUN_00787620();
              FUN_00779920();
              FUN_00792e20(local_84);
              FUN_007876f0();
              local_1c[0] = FUN_00973a50();
              in_stack_fffffdec = (undefined **)0x80342e;
              iVar5 = FUN_0099db90();
              if (iVar5 == 0) {
                local_1c[2] = 0x22;
                param_1[8] = 0x22;
                FUN_00eaecdd();
                FUN_00dfcac0(param_1);
                FUN_00803b6b();
                return;
              }
LAB_008030ca:
              FUN_0099dba0();
            }
            if (PTR_LAB_01c23e7c != (undefined *)0x0) {
              FUN_00e8f54a();
            }
            local_a4 = FUN_00b848a0();
            uVar4 = _UNK_018d6d2c;
            uVar7 = _UNK_018d6d28;
            uVar6 = _UNK_018d6d24;
            if (local_a4 == 0) {
              local_98 = (undefined4 *)0x0;
              local_13c = 0;
            }
            else {
              local_98 = (undefined4 *)(local_a4 + 8);
              local_13c = *(uint *)(local_a4 + 4);
            }
            local_a8 = 0;
            local_a0 = 0;
            local_9c = '\0';
            local_94 = local_13c;
            if (local_13c < 0x1c) {
              FUN_0099d6f0();
            }
            else {
              *local_98 = _DAT_018d6d20;
              local_98[1] = uVar6;
              local_98[2] = uVar7;
              local_98[3] = uVar4;
              uVar4 = _UNK_018d6d8c;
              uVar7 = _UNK_018d6d88;
              uVar6 = _UNK_018d6d84;
              local_98[4] = _DAT_018d6d80;
              local_98[5] = uVar6;
              local_98[6] = uVar7;
              local_98[7] = uVar4;
              *(undefined1 (*) [16])(local_98 + 8) = _DAT_018d6d90;
              local_98[0xc] = 0x751ec7;
              local_98[0xd] = 0x5b0020;
              local_a0 = 0x1c;
            }
            iVar5 = *(int *)(iVar5 + 4);
            if ((local_9c == '\0') && (iVar5 != 0)) {
              if (local_94 < local_a0) goto LAB_00803931;
              if (local_94 - local_a0 < *(uint *)(iVar5 + 4)) goto LAB_00803581;
              FUN_00930280(*(int *)(iVar5 + 4) * 2);
              local_a0 = local_a0 + *(int *)(iVar5 + 4);
            }
            else {
LAB_00803581:
              FUN_0099d670();
            }
            if (local_94 < local_a0) {
LAB_00803931:
                    /* WARNING: Subroutine does not return */
              FUN_009318f0();
            }
            if (local_94 - local_a0 < 2) {
              FUN_0099d6f0();
            }
            else {
              *(undefined4 *)((int)local_98 + local_a0 * 2) = 0x280020;
              local_a0 = local_a0 + 2;
            }
            FUN_00de77e0();
            if (local_94 < local_a0) goto LAB_00803931;
            puVar9 = (undefined4 *)((int)local_98 + local_a0 * 2);
            if (local_94 - local_a0 < 4) {
              FUN_0099d6f0();
            }
            else {
              *puVar9 = 0x5d0029;
              puVar9[1] = 0x780020;
              local_a0 = local_a0 + 4;
            }
            FUN_00de77e0();
            uVar4 = _UNK_018d6dac;
            uVar7 = _UNK_018d6da8;
            uVar6 = _UNK_018d6da4;
            if (local_94 < local_a0) goto LAB_00803931;
            puVar9 = (undefined4 *)((int)local_98 + local_a0 * 2);
            if (local_94 - local_a0 < 0x13) {
              FUN_0099d6f0();
            }
            else {
              *puVar9 = _DAT_018d6da0;
              puVar9[1] = uVar6;
              puVar9[2] = uVar7;
              puVar9[3] = uVar4;
              *(undefined1 (*) [16])(puVar9 + 4) = _DAT_018d6db0;
              puVar9[8] = 0x430050;
              *(undefined2 *)(puVar9 + 9) = 0x20;
              local_a0 = local_a0 + 0x13;
            }
            FUN_00de77e0();
            if (local_94 < local_a0) goto LAB_00803931;
            puVar9 = (undefined4 *)((int)local_98 + local_a0 * 2);
            if (local_94 - local_a0 < 7) {
              FUN_0099d6f0();
            }
            else {
              *puVar9 = 0x1edf0020;
              puVar9[1] = 0x4d0020;
              puVar9[2] = 0x700061;
              *(undefined2 *)(puVar9 + 3) = 0x20;
              local_a0 = local_a0 + 7;
            }
            FUN_00de77e0();
            uVar4 = _UNK_018d6dcc;
            uVar7 = _UNK_018d6dc8;
            uVar6 = _UNK_018d6dc4;
            if (local_94 < local_a0) goto LAB_00803931;
            puVar9 = (undefined4 *)((int)local_98 + local_a0 * 2);
            if (local_94 - local_a0 < 0x10) {
              FUN_0099d6f0();
            }
            else {
              *puVar9 = _DAT_018d6dc0;
              puVar9[1] = uVar6;
              puVar9[2] = uVar7;
              puVar9[3] = uVar4;
              *(undefined1 (*) [16])(puVar9 + 4) = _DAT_018d6dd0;
              local_a0 = local_a0 + 0x10;
            }
            FUN_0099d560();
            FUN_007876b0();
            uVar6 = FUN_0092af10();
            local_44 = FUN_007878b0(1,0,0,local_84,uVar6,in_stack_fffffdec);
            if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
              local_1c[2] = 0x20;
              param_1[8] = 0x20;
              FUN_00eaecdd();
              FUN_00da3100();
              FUN_00dfc9c0();
              FUN_00803b6b();
              return;
            }
          } while( true );
        }
LAB_00803a02:
        if ((*(int *)(param_1[1] + 4) == 0) || (iVar5 = FUN_007794d0(), iVar5 == 0)) {
          FUN_007876b0();
          goto LAB_00803b54;
        }
        break;
      case 4:
        in_stack_fffffdec = (undefined **)0x801cd0;
        iVar5 = FUN_00eaecdd();
        param_1[0x13] = 0;
        param_1[0x14] = iVar5;
        param_1[0x15] = 0;
switchD_0080086a_caseD_17:
        switch(local_1c[2]) {
        case 0x17:
          local_1c[0] = param_1[0xf];
          param_1[0xf] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          break;
        case 0x18:
          local_80 = param_1[0x16];
          param_1[0x16] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          goto LAB_0080200d;
        case 0x19:
          local_40 = param_1[0x10];
          param_1[0x10] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          goto LAB_00801fb3;
        case 0x1a:
          local_1c[0] = param_1[0xf];
          param_1[0xf] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          goto LAB_00801f2f;
        case 0x1b:
          local_44 = param_1[0x11];
          param_1[0x11] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          goto LAB_00801ee9;
        case 0x1c:
          local_1c[0] = param_1[0xf];
          param_1[0xf] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          goto LAB_00801eac;
        case 0x1d:
          local_44 = param_1[0x11];
          param_1[0x11] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          goto LAB_00801dfa;
        case 0x1e:
          local_1c[0] = param_1[0xf];
          param_1[0xf] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          goto LAB_00801d70;
        case 0x1f:
          local_40 = param_1[0x10];
          param_1[0x10] = 0;
          local_1c[2] = -1;
          param_1[8] = -1;
          goto LAB_00801d16;
        default:
          goto switchD_00801cfb_default;
        }
        do {
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_80 = FUN_0077acc0();
          if ((*(uint *)(local_80 + 0x1c) & 0x1600000) == 0) {
            param_1[8] = 0x18;
            FUN_00eaecdd();
            FUN_00da3100();
            FUN_00dfca00();
            return;
          }
LAB_0080200d:
          if ((*(uint *)(local_80 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_80 + 0x20) != 0) {
            FUN_00eae9a0();
            FUN_00e9aba9(in_stack_fffffdec);
            in_stack_fffffdec = &puStack_114;
            FUN_00e4e4a0();
          }
          FUN_00eaeca8();
          if (param_1[7] != 0) {
            iVar5 = param_1[6];
            while ((iVar5 != 0 && (*(int *)(iVar5 + 0x14) < *(int *)(iVar5 + 0x10)))) {
              *(undefined1 *)(param_1 + 0xc) = 0;
              param_1[0xb] = 0;
              while (((char)param_1[0xc] == '\0' && (param_1[0xb] < 10))) {
                local_40 = FUN_0077ad90();
                if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                  param_1[8] = 0x19;
                  FUN_00eaecdd();
                  FUN_00da3100();
                  FUN_00dfca00();
                  return;
                }
LAB_00801fb3:
                if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_40 + 0x20) != 0) {
                  FUN_00eae9a0();
                  FUN_00e9aa88(in_stack_fffffdec);
                  in_stack_fffffdec = &puStack_118;
                  FUN_00e4e4a0();
                }
                FUN_00eaebca();
                if (*(int *)(param_1[1] + 4) == 0) {
                  iVar5 = 0;
                }
                else {
                  in_stack_fffffdf0 = param_1[3];
                  if (*(int *)(in_stack_fffffdf0 + 0x10) == 0) {
                    FUN_00eae9a0();
                    FUN_00e9abba(in_stack_fffffdec);
                    in_stack_fffffdec = (undefined **)0x802504;
                    FUN_00eaebef();
                  }
                  iVar5 = FUN_00e4e4a0(&PTR_DAT_01544e10,&local_11c);
                }
                if ((iVar5 == 0) || (*(int *)(iVar5 + 0x10) <= *(int *)(iVar5 + 0x14))) break;
                uVar6 = *(undefined4 *)(param_1[7] + 0x28);
                uStack_120 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
                uVar7 = FUN_00eaeae1();
                iVar5 = FUN_00eae9a0();
                *(undefined4 *)(iVar5 + 4) = uVar6;
                FUN_00eaebca();
                iVar5 = FUN_00eae9a0();
                *(undefined4 *)(iVar5 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(uVar7,&PTR_DAT_01be3a98);
                local_1c[0] = FUN_00975000();
                if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
                  param_1[8] = 0x1a;
                  FUN_00eaecdd();
                  FUN_00da3100();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00801f2f:
                if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_44 = FUN_0077ac80();
                if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
                  param_1[8] = 0x1b;
                  FUN_00eaecdd();
                  FUN_00da3100();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00801ee9:
                if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                *(undefined1 *)(param_1 + 0xc) = *(undefined1 *)(local_44 + 0x20);
                param_1[0xb] = param_1[0xb] + 1;
              }
              if ((char)param_1[0xc] != '\0') {
                FUN_00906aa0();
                FUN_007876b0();
                while( true ) {
                  local_44 = FUN_0077ac80();
                  if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
                    param_1[8] = 0x1d;
                    FUN_00eaecdd();
                    FUN_00da3100();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00801dfa:
                  if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(char *)(local_44 + 0x20) == '\0') break;
                  local_1c[0] = FUN_00975000();
                  if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
                    param_1[8] = 0x1c;
                    FUN_00eaecdd();
                    FUN_00da3100();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00801eac:
                  if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
                FUN_00906aa0();
                FUN_007876b0();
                local_1c[0] = FUN_00975000();
                if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
                  param_1[8] = 0x1e;
                  FUN_00eaecdd();
                  FUN_00da3100();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00801d70:
                if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
              local_40 = FUN_0077ad90();
              if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                param_1[8] = 0x1f;
                FUN_00eaecdd();
                FUN_00da3100();
                FUN_00dfca00();
                return;
              }
LAB_00801d16:
              if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(local_40 + 0x20) != 0) {
                FUN_00eae9a0();
                FUN_00e9aa88(in_stack_fffffdec);
                in_stack_fffffdec = &puStack_124;
                FUN_00e4e4a0();
              }
              FUN_00eaebca();
              if (*(int *)(param_1[1] + 4) == 0) {
                iVar5 = 0;
              }
              else {
                in_stack_fffffdec = (undefined **)param_1[3];
                if (in_stack_fffffdec[5] == (undefined *)0x0) {
                  FUN_00eae9a0();
                  FUN_00e9abcb(in_stack_fffffdec);
                  in_stack_fffffdec = (undefined **)0x802774;
                  FUN_00eaebef();
                }
                iVar5 = FUN_00e4e4a0(&PTR_DAT_01544e10,&uStack_128);
              }
            }
            param_1[3] = 0;
            param_1[7] = 0;
            param_1[6] = 0;
          }
switchD_00801cfb_default:
          do {
            do {
              iVar5 = FUN_00cd0850();
              if (iVar5 == 0) {
                param_1[0x12] = 0;
                param_1[0x13] = 0;
                param_1[0x14] = 0;
                param_1[0x15] = 0;
                goto LAB_00800ad0;
              }
              FUN_00eaecdd();
              FUN_00eae9a0();
              FUN_00eaeca8();
            } while (*(int *)(param_1[6] + 0x10) <= *(int *)(param_1[6] + 0x14));
            FUN_00eaebef();
            iVar8 = 0;
            *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01b39360;
            *(undefined ***)(param_1[3] + 0xc) = &PTR_DAT_01b39360;
            iVar5 = FUN_00909ad0();
            if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
              iVar5 = FUN_00909ad0();
              if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                iVar5 = FUN_00909ad0();
                if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                  iVar5 = FUN_00909ad0();
                  if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                    iVar5 = FUN_00909ad0();
                    if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
                      iVar5 = FUN_00909ad0();
                      if ((iVar5 != 0) || (iVar5 = FUN_00909ad0(), iVar5 != 0)) {
                        iVar8 = 0x20;
                        *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01bf92a4;
                        *(undefined ***)(param_1[3] + 0xc) = &PTR_DAT_01bc82c4;
                      }
                    }
                    else {
                      iVar8 = 0xb;
                      *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01bf9bbc;
                      *(undefined ***)(param_1[3] + 0xc) = &PTR_DAT_01b88250;
                    }
                  }
                  else {
                    iVar8 = 0x27;
                    *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01bf925c;
                    *(undefined ***)(param_1[3] + 0xc) = &PTR_DAT_01b7ae6c;
                  }
                }
                else {
                  iVar8 = 0x19;
                  *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01bfa450;
                  *(undefined ***)(param_1[3] + 0xc) = &PTR_DAT_01b88e58;
                }
              }
              else {
                iVar8 = 0xd;
                *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01bfa664;
                *(undefined ***)(param_1[3] + 0xc) = &PTR_DAT_01b884b4;
              }
            }
            else {
              iVar8 = 0xc;
              *(undefined ***)(param_1[3] + 8) = &PTR_DAT_01bfaddc;
              *(undefined ***)(param_1[3] + 0xc) = &PTR_DAT_01b54234;
            }
          } while (iVar8 == 0);
          local_1c[0] = FUN_00787840(0,0,0,0);
          if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
            param_1[8] = 0x17;
            FUN_00eaecdd();
            FUN_00da3100();
            FUN_00dfc9c0();
            return;
          }
        } while( true );
      }
      goto LAB_00800ad0;
    }
    in_stack_fffffdec = (undefined **)param_1[10];
    local_44 = FUN_007ff510();
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      param_1[8] = 3;
      FUN_00eaecdd();
      FUN_00da3100();
      FUN_00dfc9c0();
      return;
    }
LAB_00801481:
    if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
LAB_008016f9:
  if (9 < param_1[9]) {
    FUN_007876b0();
    *(undefined1 *)(iVar2 + 0x18) = 1;
    goto LAB_00803b54;
  }
  FUN_00eae9a0();
  FUN_00eaeca8();
  FUN_00eaec14();
LAB_00801720:
  local_1c[1] = FUN_0077abc0();
  if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
    param_1[8] = 0;
    FUN_00eaecdd();
    FUN_00da3100();
    FUN_00dfca00();
    return;
  }
  goto LAB_00801672;
}

