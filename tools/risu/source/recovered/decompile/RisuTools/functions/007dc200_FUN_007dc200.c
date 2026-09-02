/* Address: 007dc200 | Ghidra name: FUN_007dc200 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007dc200(int *param_1)

{
  undefined4 uVar1;
  uint uVar2;
  bool bVar3;
  undefined4 uVar4;
  char cVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  int iVar9;
  int *extraout_ECX;
  undefined4 extraout_ECX_00;
  int extraout_ECX_01;
  int extraout_ECX_02;
  undefined4 extraout_ECX_03;
  int *piVar10;
  int in_stack_fffffee4;
  undefined1 local_8c [4];
  undefined4 local_88;
  char local_84;
  undefined1 local_80 [4];
  undefined1 local_7c [4];
  undefined1 local_78 [4];
  undefined4 local_74;
  int local_70;
  uint local_6c;
  char local_68;
  undefined4 *local_64;
  uint local_60;
  undefined4 local_5c;
  int local_58;
  uint local_54;
  char local_50;
  undefined4 *local_4c;
  uint local_48;
  int local_44;
  int local_40;
  undefined4 local_3c;
  int local_38;
  uint local_34;
  undefined1 local_30;
  undefined4 *local_2c;
  uint local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  iVar6 = -0x90;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar6) = 0;
    puVar8 = (undefined4 *)(&stack0x00000000 + iVar6);
    *puVar8 = 0;
    puVar8[1] = 0;
    puVar8[2] = 0;
    puVar8[3] = 0;
    *(undefined4 *)(&stack0x00000010 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar6) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar6) = 0;
    iVar6 = iVar6 + 0x30;
  } while (iVar6 != 0);
  iVar6 = *param_1;
  piVar10 = param_1;
  switch(param_1[10]) {
  case 0:
    local_14 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[10] = -1;
    break;
  case 1:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd699;
  case 2:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd5f8;
  case 3:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd5b9;
  case 4:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd57a;
  case 5:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd4e7;
  case 6:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    param_1[10] = -1;
    goto LAB_007dd438;
  case 7:
    local_20 = param_1[0x10];
    param_1[0x10] = 0;
    param_1[10] = -1;
    goto LAB_007dd376;
  case 8:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd2f3;
  case 9:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd253;
  case 10:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd1c4;
  case 0xb:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    param_1[10] = -1;
    goto LAB_007dd147;
  case 0xc:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dd07e;
  case 0xd:
    local_24 = param_1[0x11];
    param_1[0x11] = 0;
    param_1[10] = -1;
    goto LAB_007dcfd3;
  case 0xe:
    local_14 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[10] = -1;
    goto LAB_007dcf91;
  case 0xf:
    local_20 = param_1[0x10];
    param_1[0x10] = 0;
    param_1[10] = -1;
    goto LAB_007dce50;
  case 0x10:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dce1a;
  case 0x11:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dcd97;
  case 0x12:
    local_40 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[10] = -1;
    goto LAB_007dccd6;
  case 0x13:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dcbd1;
  case 0x14:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dcb4a;
  case 0x15:
    local_20 = param_1[0x10];
    param_1[0x10] = 0;
    param_1[10] = -1;
    goto LAB_007dca92;
  case 0x16:
    local_44 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[10] = -1;
    goto LAB_007dca3f;
  case 0x17:
    local_44 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[10] = -1;
    goto LAB_007dc9a7;
  case 0x18:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dc96f;
  case 0x19:
    local_24 = param_1[0x11];
    param_1[0x11] = 0;
    param_1[10] = -1;
    goto LAB_007dc87d;
  case 0x1a:
    local_40 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[10] = -1;
    goto LAB_007dc7b6;
  case 0x1b:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dc739;
  case 0x1c:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dc701;
  case 0x1d:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dc600;
  case 0x1e:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dc56f;
  case 0x1f:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    param_1[10] = -1;
    goto LAB_007dc4b6;
  case 0x20:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dc42f;
  case 0x21:
    local_20 = param_1[0x10];
    param_1[0x10] = 0;
    param_1[10] = -1;
    goto LAB_007dc3e2;
  case 0x22:
    local_40 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[10] = -1;
    goto LAB_007dc332;
  case 0x23:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dc2af;
  case 0x24:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[10] = -1;
    goto LAB_007dc261;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 0;
      FUN_00eaecdd();
      FUN_00da0320();
      FUN_00dfca00(&PTR_DAT_01568d5c);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00eaecdd();
  if (param_1[4] != 0) {
    if (*(int *)(DAT_01c289d4 + 0x70) == 0) {
      FUN_00eae9a0();
      FUN_00e9a35c();
      FUN_00eaebef();
    }
    iVar9 = FUN_00e4d760();
    if (iVar9 != 0) {
      FUN_007876b0();
      local_18 = FUN_007d30d0();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 1;
        FUN_00eaecdd();
        FUN_00da0320();
        FUN_00dfc9c0();
        return;
      }
LAB_007dd699:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    if (*(int *)(DAT_01c289d4 + 0x74) == 0) {
      FUN_00eae9a0();
      FUN_00e9a36d(in_stack_fffffee4);
      in_stack_fffffee4 = 0x7dd6f6;
      FUN_00eaebef();
    }
    FUN_00e4e4a0(&PTR_DAT_01544440,local_78);
    FUN_00eaeca8();
    if (param_1[5] != 0) {
      FUN_007876b0();
      local_18 = FUN_007877c0(0,0,0,*(double *)(param_1[5] + 0xc) / _DAT_018d5be8,
                              *(double *)(param_1[5] + 4) / _DAT_018d5be8);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 2;
        FUN_00eaecdd();
        FUN_00da0320();
        FUN_00dfc9c0();
        return;
      }
LAB_007dd5f8:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_0077a760(0,*(undefined4 *)(param_1[5] + 0x28));
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 3;
        FUN_00eaeca8();
        FUN_00da0320();
        FUN_00dfc9c0();
        return;
      }
LAB_007dd5b9:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      bVar3 = true;
      goto LAB_007de809;
    }
    param_1[5] = 0;
  }
  FUN_007876b0();
  local_18 = FUN_007877c0(0,0,0,DAT_018d5c00,DAT_018d5bf8);
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    param_1[10] = 4;
    FUN_00eaecdd();
    FUN_00da0320();
    FUN_00dfc9c0();
    return;
  }
LAB_007dd57a:
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (param_1[4] == 0) {
    iVar9 = 0;
  }
  else {
    if (*(int *)(DAT_01c289d4 + 0x78) == 0) {
      FUN_00eae9a0();
      FUN_00e9a37e(in_stack_fffffee4);
      in_stack_fffffee4 = 0x7dd9db;
      FUN_00eaebef();
    }
    iVar9 = FUN_00e4e4a0(&PTR_DAT_01544440,local_7c);
  }
  if (iVar9 == 0) {
    iVar9 = 0x9c4;
  }
  else {
    iVar9 = *(int *)(iVar9 + 0x28);
  }
  param_1[0xb] = iVar9;
  FUN_0077a760(0,param_1[0xb]);
  local_18 = FUN_00975000();
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    param_1[10] = 5;
    FUN_00eaecdd();
    FUN_00da0320();
    FUN_00dfc9c0();
    return;
  }
LAB_007dd4e7:
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_1c = FUN_0077b0a0();
  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
    param_1[10] = 6;
    FUN_00eaeca8();
    FUN_00da0320();
    FUN_00dfca00();
    return;
  }
LAB_007dd438:
  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar9 = *(int *)(local_1c + 0x20);
  if ((iVar9 == 0) || (*(int *)(iVar9 + 8) == 0)) {
    FUN_007876b0();
    local_20 = FUN_0077abc0();
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 7;
      FUN_00eaecdd();
      FUN_00da0320();
      FUN_00dfca00();
      return;
    }
LAB_007dd376:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar9 = *(int *)(local_20 + 0x20);
    if (iVar9 != 0) {
      local_18 = FUN_007877c0(0,0,0,*(double *)(iVar9 + 0xc) / _DAT_018d5be8,
                              *(double *)(iVar9 + 4) / _DAT_018d5be8 + _DAT_018d5bf0);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 8;
        FUN_00eaecdd();
        FUN_00da0320();
        FUN_00dfc9c0();
        return;
      }
LAB_007dd2f3:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 9;
        FUN_00eaeca8();
        FUN_00da0320();
        FUN_00dfc9c0();
        return;
      }
LAB_007dd253:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_0077a760(0,param_1[0xb]);
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 10;
      FUN_00eaeca8();
      FUN_00da0320();
      FUN_00dfc9c0();
      return;
    }
LAB_007dd1c4:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_1c = FUN_0077b0a0();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 0xb;
      FUN_00eaeca8();
      FUN_00da0320();
      FUN_00dfca00();
      return;
    }
LAB_007dd147:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar9 = *(int *)(local_1c + 0x20);
  }
  if ((iVar9 != 0) && (*(int *)(iVar9 + 8) != 0)) {
    puVar8 = (undefined4 *)FUN_00a511c0();
    if (puVar8[7] == 0) {
      FUN_00a51650();
      puVar8 = (undefined4 *)FUN_00a51200();
      if (puVar8[7] != 0) {
        if ((undefined *)*puVar8 == &DAT_01626e9c) {
          FUN_00a4fcf0();
        }
        else {
          FUN_00a502b0();
        }
        FUN_00a4f4a0();
        FUN_00a4f280();
        FUN_009097a0();
        FUN_00eaebca();
      }
    }
    else {
      if ((undefined *)*puVar8 == &DAT_01626e9c) {
        FUN_00a4fcf0();
      }
      else {
        FUN_00a502b0();
      }
      FUN_00a4f4a0();
      FUN_00a4f280();
      FUN_009097a0();
      FUN_00eaebca();
    }
    if ((*(int *)(iVar6 + 0x20) != 0) && (*(int *)(*(int *)(iVar6 + 0x20) + 4) != 0)) {
      FUN_00a51650();
      FUN_00a512d0();
      FUN_009097a0();
      FUN_00eaebca();
    }
  }
  if ((*(int *)(iVar6 + 0x20) != 0) && (*(int *)(*(int *)(iVar6 + 0x20) + 4) != 0)) {
    FUN_00906a20();
    FUN_007876b0();
    FUN_00eaeae1();
    iVar9 = FUN_00eae9a0();
    *(undefined4 *)(iVar9 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_03,&PTR_DAT_01beaee0);
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[10] = 0xc;
      FUN_00eaecdd();
      FUN_00da0320();
      FUN_00dfc9c0();
      return;
    }
LAB_007dd07e:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eae9a0();
    FUN_00bb89d0();
    FUN_00eaec5e();
    *(undefined4 *)(param_1[2] + 0x24) = 0xffffffff;
    do {
      local_24 = FUN_0077b280();
      if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 0xd;
        FUN_00eaeca8();
        FUN_00da0320();
        FUN_00dfca00();
        return;
      }
LAB_007dcfd3:
      if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_24 + 0x20) != 0) {
        if (*(int *)(param_1[2] + 0xc) == 0) {
          FUN_00eae9a0();
          FUN_00e9a45b(in_stack_fffffee4);
          in_stack_fffffee4 = 0x7dd043;
          FUN_00eaec14();
        }
        iVar9 = FUN_00e4de40();
        if (5 < iVar9) {
          FUN_007876b0();
          goto LAB_007de7d5;
        }
      }
      local_14 = FUN_0077acc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[10] = 0xe;
        FUN_00eaecdd();
        FUN_00da0320();
        FUN_00dfca00();
        return;
      }
LAB_007dcf91:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar9 = *(int *)(local_14 + 0x20);
      if (iVar9 != 0) {
        if (*(int *)(param_1[2] + 0x10) == 0) {
          FUN_00eae9a0();
          FUN_00e9a46c(in_stack_fffffee4);
          in_stack_fffffee4 = 0x7ddcc5;
          FUN_00eaebef();
        }
        FUN_00e4ee90();
        FUN_00e4ee50();
      }
      FUN_00eaeca8();
      if (*(int *)(param_1[2] + 0x24) != -1) {
        if (iVar9 == 0) {
          iVar9 = 0;
        }
        else {
          if (*(int *)(param_1[2] + 0x14) == 0) {
            FUN_00eae9a0();
            FUN_00e9a47d(in_stack_fffffee4);
            in_stack_fffffee4 = 0x7ddd4a;
            FUN_00eaebef();
          }
          iVar9 = FUN_00e4e4a0(&PTR_DAT_01544440,local_80);
        }
        if (iVar9 == 0) {
          *(undefined4 *)(param_1[2] + 0x24) = 0xffffffff;
        }
        else {
          iVar9 = FUN_00eae9a0();
          *(undefined ***)(iVar9 + 4) = &PTR_DAT_01c11034;
          *(int *)(iVar9 + 0xc) = *(int *)(iVar9 + 0xc) + 1;
          uVar2 = *(uint *)(iVar9 + 8);
          if (uVar2 < *(uint *)(*(int *)(iVar9 + 4) + 4)) {
            *(uint *)(iVar9 + 8) = uVar2 + 1;
            if (*(uint *)(*(int *)(iVar9 + 4) + 4) <= uVar2) {
                    /* WARNING: Subroutine does not return */
              FUN_009c2bf0();
            }
            FUN_00eaec5e();
          }
          else {
            FUN_00ccd380();
          }
          FUN_00eaeca8();
        }
      }
      if (((*(int *)(param_1[2] + 0x24) == -1) && (param_1[6] != 0)) &&
         (0 < *(int *)(param_1[6] + 8))) {
        FUN_00eae9a0();
        FUN_00eaeca8();
        *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01b39360;
        iVar9 = FUN_00909ad0();
        if (iVar9 == 0) {
          iVar9 = FUN_00909ad0();
          if (iVar9 == 0) {
            iVar9 = FUN_00909ad0();
            if (iVar9 == 0) {
              iVar9 = FUN_00909ad0();
              if (iVar9 == 0) {
                iVar9 = FUN_00909ad0();
                if (iVar9 != 0) {
                  *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01b4690c;
                }
              }
              else {
                *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01b468f4;
              }
            }
            else {
              *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01b468dc;
            }
          }
          else {
            *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01b46924;
          }
        }
        else {
          *(undefined ***)(param_1[3] + 4) = &PTR_DAT_01b468c4;
        }
        if ((*(int *)(param_1[3] + 4) != 0) && (*(int *)(*(int *)(param_1[3] + 4) + 4) != 0)) {
          FUN_00eae9a0();
          FUN_00e9a4c1(in_stack_fffffee4);
          FUN_00e4ee90(&PTR_DAT_01544498);
          in_stack_fffffee4 = 0x7ddf05;
          iVar9 = FUN_00e4ee50();
          if (0 < *(int *)(iVar9 + 8)) {
            in_stack_fffffee4 = 0x7ddf13;
            FUN_00eaeca8();
          }
        }
        local_20 = FUN_0077abc0();
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          param_1[10] = 0xf;
          FUN_00eaeca8();
          FUN_00da0320();
          FUN_00dfca00();
          return;
        }
LAB_007dce50:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaebca();
        if (*(int *)(*(int *)(extraout_ECX_02 + 0xc) + 8) != 0) {
          FUN_00eae9a0();
          FUN_00e9a4d2(in_stack_fffffee4);
          FUN_00eae9a0();
          FUN_00cf24b0();
          FUN_00e4ee50();
          in_stack_fffffee4 = 0x7dcef8;
          FUN_00eaeca8();
        }
        param_1[3] = 0;
      }
      if ((param_1[6] == 0) || (*(int *)(param_1[6] + 8) == 0)) {
        FUN_007876b0();
        FUN_00b43350();
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[10] = 0x10;
          FUN_00eaecdd();
          FUN_00da0320();
          FUN_00dfc9c0();
          return;
        }
LAB_007dce1a:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      else {
        FUN_00e4e3a0();
        if (local_84 == '\0') {
                    /* WARNING: Subroutine does not return */
          FUN_00860240();
        }
        FUN_00eaeca8();
        if (PTR_LAB_01c23e7c != (undefined *)0x0) {
          FUN_00e8f54a();
        }
        local_38 = FUN_00b848a0();
        uVar4 = _UNK_018d5c1c;
        uVar7 = _UNK_018d5c18;
        uVar1 = _UNK_018d5c14;
        if (local_38 == 0) {
          local_2c = (undefined4 *)0x0;
          local_28 = 0;
        }
        else {
          local_2c = (undefined4 *)(local_38 + 8);
          local_28 = *(uint *)(local_38 + 4);
        }
        local_3c = 0;
        local_34 = 0;
        local_30 = 0;
        if (local_28 < 0x16) {
          FUN_0099d6f0();
        }
        else {
          *local_2c = _DAT_018d5c10;
          local_2c[1] = uVar1;
          local_2c[2] = uVar7;
          local_2c[3] = uVar4;
          uVar4 = _UNK_018d5c2c;
          uVar7 = _UNK_018d5c28;
          uVar1 = _UNK_018d5c24;
          local_2c[4] = _DAT_018d5c20;
          local_2c[5] = uVar1;
          local_2c[6] = uVar7;
          local_2c[7] = uVar4;
          local_2c[8] = 0x280020;
          local_2c[9] = 0x440049;
          local_2c[10] = 0x20003a;
          local_34 = 0x16;
        }
        FUN_00de77e0();
        if (local_28 < local_34) goto LAB_007de7fd;
        puVar8 = (undefined4 *)((int)local_2c + local_34 * 2);
        if (local_28 - local_34 < 4) {
          FUN_0099d6f0();
        }
        else {
          *puVar8 = 0x2e0029;
          puVar8[1] = 0x2e002e;
          local_34 = local_34 + 4;
        }
        FUN_0099d560();
        FUN_007876b0();
        local_18 = FUN_007877c0(1,0,0,*(double *)(param_1[5] + 0xc) / _DAT_018d5be8,
                                *(double *)(param_1[5] + 4) / _DAT_018d5be8);
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[10] = 0x11;
          FUN_00eaeca8();
          FUN_00da0320();
          FUN_00dfc9c0();
          return;
        }
LAB_007dcd97:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_40 = FUN_0077af00();
        if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
          param_1[10] = 0x12;
          FUN_00eaeca8();
          FUN_00da0320();
          FUN_00dfc9c0();
          return;
        }
LAB_007dccd6:
        if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_40 + 0x20) != '\0') {
          FUN_00906a20();
          FUN_00782420();
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[10] = 0x13;
            FUN_00eaecdd();
            FUN_00da0320();
            FUN_00dfc9c0();
            return;
          }
LAB_007dcbd1:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        uVar1 = *(undefined4 *)(param_1[5] + 0x28);
        local_88 = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
        uVar7 = FUN_00eaeae1();
        iVar9 = FUN_00eae9a0();
        *(undefined4 *)(iVar9 + 4) = uVar1;
        FUN_00eaebca();
        iVar9 = FUN_00eae9a0();
        *(undefined4 *)(iVar9 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(uVar7,&PTR_DAT_01be3a98);
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[10] = 0x14;
          FUN_00eaeca8();
          FUN_00da0320();
          FUN_00dfc9c0();
          return;
        }
LAB_007dcb4a:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_20 = FUN_0077abc0();
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          param_1[10] = 0x15;
          FUN_00eaeca8();
          FUN_00da0320();
          FUN_00dfca00();
          return;
        }
LAB_007dca92:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaeca8();
        if ((*(int *)(extraout_ECX_01 + 0x1c) != 0) &&
           (*(char *)(*(int *)(extraout_ECX_01 + 0x1c) + 0x69) != '\0')) {
          local_44 = FUN_0077b200();
          if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
            param_1[10] = 0x16;
            FUN_00eaeca8();
            FUN_00da0320();
            FUN_00dfca00();
            return;
          }
LAB_007dca3f:
          if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaecdd();
          if ((param_1[8] == 0) || (*(int *)(param_1[8] + 4) == 0)) {
            cVar5 = '\0';
          }
          else {
            if (*(int *)(param_1[2] + 0x18) == 0) {
              FUN_00eae9a0();
              FUN_00e9a48e(in_stack_fffffee4);
              in_stack_fffffee4 = 0x7de16e;
              FUN_00eaebef();
            }
            cVar5 = FUN_00e4d760();
          }
          if (cVar5 != '\0') {
            if (PTR_LAB_01c23e7c != (undefined *)0x0) {
              FUN_00e8f54a();
            }
            local_58 = FUN_00b848a0();
            uVar4 = _UNK_018d5c7c;
            uVar7 = _UNK_018d5c78;
            uVar1 = _UNK_018d5c74;
            if (local_58 == 0) {
              local_4c = (undefined4 *)0x0;
              local_48 = 0;
            }
            else {
              local_4c = (undefined4 *)(local_58 + 8);
              local_48 = *(uint *)(local_58 + 4);
            }
            local_5c = 0;
            local_54 = 0;
            local_50 = '\0';
            if (local_48 < 0x13) {
              FUN_0099d6f0();
            }
            else {
              *local_4c = _DAT_018d5c70;
              local_4c[1] = uVar1;
              local_4c[2] = uVar7;
              local_4c[3] = uVar4;
              uVar4 = _UNK_018d5c8c;
              uVar7 = _UNK_018d5c88;
              uVar1 = _UNK_018d5c84;
              local_4c[4] = _DAT_018d5c80;
              local_4c[5] = uVar1;
              local_4c[6] = uVar7;
              local_4c[7] = uVar4;
              local_4c[8] = 0x791ea5;
              *(undefined2 *)(local_4c + 9) = 0x20;
              local_54 = 0x13;
            }
            iVar9 = *(int *)(iVar6 + 0x20);
            if ((local_50 == '\0') && (iVar9 != 0)) {
              if (local_48 < local_54) goto LAB_007de7fd;
              if (local_48 - local_54 < *(uint *)(iVar9 + 4)) goto LAB_007de467;
              FUN_00930280();
              local_54 = local_54 + *(int *)(iVar9 + 4);
            }
            else {
LAB_007de467:
              FUN_0099d670();
            }
            uVar4 = _UNK_018d5c4c;
            uVar7 = _UNK_018d5c48;
            uVar1 = _UNK_018d5c44;
            if (local_54 <= local_48) {
              puVar8 = (undefined4 *)((int)local_4c + local_54 * 2);
              if (local_48 - local_54 < 9) {
                FUN_0099d6f0();
              }
              else {
                *puVar8 = _DAT_018d5c40;
                puVar8[1] = uVar1;
                puVar8[2] = uVar7;
                puVar8[3] = uVar4;
                *(undefined2 *)(puVar8 + 4) = 0x20;
                local_54 = local_54 + 9;
              }
              FUN_00de77e0();
              if (local_54 <= local_48) {
                if (local_48 == local_54) {
                  FUN_0099d6f0();
                }
                else {
                  *(undefined2 *)((int)local_4c + local_54 * 2) = 0x21;
                  local_54 = local_54 + 1;
                }
                FUN_0099d560();
                FUN_007876b0();
                *(undefined4 *)(param_1[2] + 0x24) = *(undefined4 *)(param_1[5] + 0x28);
                piVar10 = param_1;
LAB_007de52f:
                while ((piVar10[7] != 0 && (*(char *)(piVar10[7] + 0x69) != '\0'))) {
                  local_44 = FUN_0077b200();
                  if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
                    piVar10[10] = 0x17;
                    FUN_00eaecdd();
                    FUN_00da0320();
                    FUN_00dfca00();
                    return;
                  }
LAB_007dc9a7:
                  if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  FUN_00eaecdd();
                  if (piVar10[8] != 0) {
                    if (*(int *)(piVar10[8] + 4) != 0) {
                      in_stack_fffffee4 = piVar10[2];
                      if (*(int *)(in_stack_fffffee4 + 0x1c) == 0) {
                        FUN_00eae9a0();
                        FUN_00e9a49f(in_stack_fffffee4);
                        in_stack_fffffee4 = 0x7de5f4;
                        FUN_00eaebef();
                      }
                      FUN_00e4e4a0(&PTR_DAT_01543ac4,local_8c);
                    }
                    FUN_00eaeca8();
                    if (*(char *)(piVar10[8] + 8) == '\0') goto LAB_007dc640;
                    local_24 = FUN_0077b280();
                    if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
                      piVar10[10] = 0x19;
                      FUN_00eaecdd();
                      FUN_00da0320();
                      FUN_00dfca00();
                      return;
                    }
LAB_007dc87d:
                    if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    if (*(int *)(local_24 + 0x20) == 0) {
LAB_007de67f:
                      if (piVar10[9] == 0) {
                        iVar9 = FUN_00eaeae1();
                        *(undefined ***)(iVar9 + 8) = &PTR_DAT_01b9dd54;
                        *(undefined ***)(iVar9 + 0xc) = &PTR_DAT_01be2e44;
                        FUN_0077a610(iVar9,&PTR_DAT_01be3a14);
                        local_18 = FUN_00975000();
                        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                          param_1[10] = 0x1e;
                          FUN_00eaecdd();
                          FUN_00da0320();
                          FUN_00dfc9c0();
                          return;
                        }
LAB_007dc56f:
                        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                        }
                        local_1c = FUN_0077b0a0();
                        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                          param_1[10] = 0x1f;
                          FUN_00eaeca8();
                          FUN_00da0320();
                          FUN_00dfca00();
                          return;
                        }
LAB_007dc4b6:
                        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                        }
                        if (*(int *)(local_1c + 0x20) != 0) {
                          iVar9 = FUN_00eaeae1();
                          *(undefined ***)(iVar9 + 8) = &PTR_DAT_01bb04a8;
                          iVar9 = FUN_00eae9a0();
                          *(undefined4 *)(iVar9 + 4) = 1;
                          FUN_00eaebca();
                          iVar9 = FUN_00eae9a0();
                          *(undefined4 *)(iVar9 + 4) = 0;
                          FUN_00eaebca();
                          FUN_0077a610(extraout_ECX_00,&PTR_DAT_01befc64);
                        }
                      }
                      else {
                        iVar9 = FUN_00eaeae1();
                        *(undefined ***)(iVar9 + 8) = &PTR_DAT_01b9dd54;
                        *(undefined ***)(iVar9 + 0xc) = &PTR_DAT_01be2e00;
                        FUN_0077a610(iVar9,&PTR_DAT_01be3a14);
                        local_18 = FUN_00975000();
                        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                          param_1[10] = 0x1d;
                          FUN_00eaecdd();
                          FUN_00da0320();
                          FUN_00dfc9c0();
                          return;
                        }
LAB_007dc600:
                        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                          FUN_0099dbc0();
                        }
                        FUN_0077b300();
                      }
                      goto LAB_007dc640;
                    }
                    if (*(int *)(piVar10[2] + 0x20) == 0) {
                      FUN_00eae9a0();
                      FUN_00e9a4b0(in_stack_fffffee4);
                      in_stack_fffffee4 = 0x7dc8f3;
                      FUN_00eaebef();
                    }
                    iVar9 = FUN_00e4de40();
                    if (iVar9 < 6) goto LAB_007de67f;
                    local_40 = FUN_0077af00();
                    if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                      piVar10[10] = 0x1a;
                      FUN_00eaecdd();
                      FUN_00da0320();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_007dc7b6:
                    if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    if (*(char *)(local_40 + 0x20) == '\0') {
                      iVar9 = FUN_00eaeae1();
                      *(undefined ***)(iVar9 + 8) = &PTR_DAT_01b9dd54;
                      *(undefined ***)(iVar9 + 0xc) = &PTR_DAT_01be2de4;
                      FUN_0077a610(iVar9,&PTR_DAT_01be3a14);
                    }
                    local_18 = FUN_007d31a0();
                    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                      piVar10[10] = 0x1b;
                      FUN_00eaecdd();
                      FUN_00da0320();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_007dc739:
                    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    local_18 = FUN_00975000();
                    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                      piVar10[10] = 0x1c;
                      FUN_00eaeca8();
                      FUN_00da0320();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_007dc701:
                    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    break;
                  }
                  local_18 = FUN_00975000();
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    piVar10[10] = 0x18;
                    FUN_00eaecdd();
                    FUN_00da0320();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007dc96f:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
                goto LAB_007dc27c;
              }
            }
LAB_007de7fd:
                    /* WARNING: Subroutine does not return */
            FUN_009318f0();
          }
          if (PTR_LAB_01c23e7c != (undefined *)0x0) {
            FUN_00e8f54a();
          }
          local_70 = FUN_00b848a0();
          uVar4 = _UNK_018d5c3c;
          uVar7 = _UNK_018d5c38;
          uVar1 = _UNK_018d5c34;
          if (local_70 == 0) {
            local_64 = (undefined4 *)0x0;
            local_60 = 0;
          }
          else {
            local_64 = (undefined4 *)(local_70 + 8);
            local_60 = *(uint *)(local_70 + 4);
          }
          local_74 = 0;
          local_6c = 0;
          local_68 = '\0';
          if (local_60 < 9) {
            FUN_0099d6f0();
          }
          else {
            *local_64 = _DAT_018d5c30;
            local_64[1] = uVar1;
            local_64[2] = uVar7;
            local_64[3] = uVar4;
            *(undefined2 *)(local_64 + 4) = 0x20;
            local_6c = 9;
          }
          iVar9 = *(int *)(iVar6 + 0x20);
          if ((local_68 == '\0') && (iVar9 != 0)) {
            if (local_60 < local_6c) goto LAB_007de7fd;
            if (local_60 - local_6c < *(uint *)(iVar9 + 4)) goto LAB_007de23b;
            FUN_00930280();
            local_6c = local_6c + *(int *)(iVar9 + 4);
          }
          else {
LAB_007de23b:
            FUN_0099d670();
          }
          uVar4 = _UNK_018d5c4c;
          uVar7 = _UNK_018d5c48;
          uVar1 = _UNK_018d5c44;
          if (local_60 < local_6c) goto LAB_007de7fd;
          puVar8 = (undefined4 *)((int)local_64 + local_6c * 2);
          if (local_60 - local_6c < 9) {
            FUN_0099d6f0();
          }
          else {
            *puVar8 = _DAT_018d5c40;
            puVar8[1] = uVar1;
            puVar8[2] = uVar7;
            puVar8[3] = uVar4;
            *(undefined2 *)(puVar8 + 4) = 0x20;
            local_6c = local_6c + 9;
          }
          FUN_00de77e0();
          uVar4 = _UNK_018d5c5c;
          uVar7 = _UNK_018d5c58;
          uVar1 = _UNK_018d5c54;
          if (local_60 < local_6c) goto LAB_007de7fd;
          puVar8 = (undefined4 *)((int)local_64 + local_6c * 2);
          if (local_60 - local_6c < 0x17) {
            FUN_0099d6f0();
          }
          else {
            *puVar8 = _DAT_018d5c50;
            puVar8[1] = uVar1;
            puVar8[2] = uVar7;
            puVar8[3] = uVar4;
            uVar4 = _UNK_018d5c6c;
            uVar7 = _UNK_018d5c68;
            uVar1 = _UNK_018d5c64;
            puVar8[4] = _DAT_018d5c60;
            puVar8[5] = uVar1;
            puVar8[6] = uVar7;
            puVar8[7] = uVar4;
            puVar8[8] = 0x680063;
            puVar8[9] = 0x741ebf;
            puVar8[10] = 0x2e002e;
            *(undefined2 *)(puVar8 + 0xb) = 0x2e;
            local_6c = local_6c + 0x17;
          }
          FUN_0099d560();
          FUN_007876b0();
          FUN_00bb8bc0();
          *(undefined4 *)(param_1[2] + 0x24) = 0xffffffff;
          local_40 = FUN_0077af00();
          if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
            param_1[10] = 0x22;
            FUN_00eaeca8();
            FUN_00da0320();
            FUN_00dfc9c0();
            return;
          }
LAB_007dc332:
          if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(char *)(local_40 + 0x20) == '\0') {
            FUN_00906a20();
            FUN_00782420();
          }
          local_18 = FUN_007d31a0();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[10] = 0x23;
            FUN_00eaeca8();
            FUN_00da0320();
            FUN_00dfc9c0();
            return;
          }
LAB_007dc2af:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[10] = 0x24;
            FUN_00eaeca8();
            FUN_00da0320();
            FUN_00dfc9c0();
            return;
          }
LAB_007dc261:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
LAB_007dc27c:
          param_1[8] = 0;
        }
        param_1[6] = 0;
        param_1[5] = 0;
        param_1[7] = 0;
      }
    } while( true );
  }
  FUN_007876b0();
LAB_007de7d5:
  bVar3 = false;
LAB_007de809:
  param_1[10] = -2;
  param_1[2] = 0;
  param_1[4] = 0;
  if (param_1[0xc] == 0) {
    if (bVar3) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
    }
    else if (PTR_FUN_01c2211c != (undefined *)0x0) {
      FUN_00e8eaff();
    }
    FUN_00eaed47();
  }
  else {
    iVar6 = FUN_00b6e080();
    if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
LAB_007dc640:
  if (*(char *)(param_1[8] + 9) != '\0') {
    iVar9 = FUN_00eaeae1();
    *(undefined ***)(iVar9 + 8) = &PTR_DAT_01b9b7c8;
    *(undefined ***)(iVar9 + 0xc) = &PTR_DAT_01be2e20;
    FUN_0077a610(iVar9,&PTR_DAT_01be3a14);
  }
  local_18 = FUN_00975000();
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    param_1[10] = 0x20;
    FUN_00eaecdd();
    FUN_00da0320();
    FUN_00dfc9c0();
    return;
  }
LAB_007dc42f:
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_20 = FUN_0077abc0();
  if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
    param_1[10] = 0x21;
    FUN_00eaeca8();
    FUN_00da0320();
    FUN_00dfca00();
    return;
  }
LAB_007dc3e2:
  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00eaeca8();
  extraout_ECX[9] = 0;
  piVar10 = extraout_ECX;
  goto LAB_007de52f;
}

