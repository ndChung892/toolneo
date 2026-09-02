/* Address: 007ee960 | Ghidra name: FUN_007ee960 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007ee960(int *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  uint *puVar10;
  uint *puVar11;
  undefined4 in_stack_fffffed8;
  undefined4 local_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 local_a0;
  undefined1 local_9c [4];
  undefined1 local_98 [4];
  undefined4 local_94;
  undefined1 local_90 [4];
  undefined4 local_8c;
  undefined4 local_88;
  undefined1 local_84 [4];
  undefined4 local_80;
  undefined4 local_7c;
  undefined1 local_78 [4];
  undefined1 local_74 [4];
  uint local_70 [6];
  int local_58;
  int local_54;
  int local_50;
  int local_4c;
  int local_48;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  uint local_30 [3];
  char local_24;
  int local_20;
  uint local_1c;
  int local_18;
  int local_14;
  
  local_b0 = 0;
  uStack_ac = 0;
  uStack_a8 = 0;
  uStack_a4 = 0;
  iVar5 = -0x90;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    puVar1 = (undefined4 *)(&stack0x00000000 + iVar5);
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  iVar5 = *param_1;
  switch(param_1[5]) {
  case 0:
    local_14 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    break;
  case 1:
    local_18 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007f08d4;
  case 2:
    local_34 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f07ee;
  case 3:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f074f;
  case 4:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f06bb;
  case 5:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f0621;
  case 6:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007f0519;
  case 7:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f04e3;
  case 8:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007f0449;
  case 9:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007f0407;
  case 10:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f02fc;
  case 0xb:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f02c6;
  case 0xc:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007f01ab;
  case 0xd:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f0128;
  case 0xe:
    local_34 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f0092;
  case 0xf:
    local_40 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[5] = -1;
    goto LAB_007efe60;
  case 0x10:
    local_40 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[5] = -1;
    goto LAB_007efe0a;
  case 0x11:
    local_18 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007efd8f;
  case 0x12:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007efd0c;
  case 0x13:
    local_48 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[5] = -1;
    goto LAB_007efbf0;
  case 0x14:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007efae6;
  case 0x15:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007efa6d;
  case 0x16:
    local_4c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[5] = -1;
    goto LAB_007efa2f;
  case 0x17:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007ef9e3;
  case 0x18:
    local_4c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[5] = -1;
    goto LAB_007ef959;
  case 0x19:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007ef8d6;
  case 0x1a:
    local_34 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007ef7e1;
  case 0x1b:
    local_40 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[5] = -1;
    goto LAB_007ef722;
  case 0x1c:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007ef6ec;
  case 0x1d:
    local_4c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[5] = -1;
    goto LAB_007ef2bc;
  case 0x1e:
    local_4c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[5] = -1;
    goto LAB_007ef201;
  case 0x1f:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007ef180;
  case 0x20:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007ef0e1;
  case 0x21:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007ef054;
  case 0x22:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007ef012;
  case 0x23:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007eefc7;
  case 0x24:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007eeeb9;
  case 0x25:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007eee83;
  case 0x26:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007eede9;
  case 0x27:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007eeda7;
  case 0x28:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007eec9c;
  case 0x29:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007eec0f;
  case 0x2a:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007eeb75;
  case 0x2b:
    local_3c = param_1[0xe];
    param_1[0xe] = 0;
    param_1[5] = -1;
    goto LAB_007eeb33;
  case 0x2c:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007eeab0;
  case 0x2d:
    local_34 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007eea1a;
  case 0x2e:
    local_38 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007ee9ca;
  default:
    local_14 = FUN_0077ad40(5000);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0;
      FUN_00eaecdd();
      FUN_00da1b20();
      FUN_00dfca00(&PTR_DAT_01568fec);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(DAT_01c28a0c + 8) == 0) {
    FUN_00eae9a0();
    FUN_00e9a736();
    FUN_00eaebef();
  }
  FUN_00e4e4a0(&PTR_DAT_01545008,local_74);
  FUN_00eaeca8();
  if (param_1[1] == 0) {
    FUN_007876b0();
  }
  else {
    FUN_00787780();
    local_18 = FUN_0077ae00();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 1;
      FUN_00eaecdd();
      FUN_00da1b20();
      FUN_00dfca00();
      return;
    }
LAB_007f08d4:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar7 = *(int *)(local_18 + 0x20);
    if ((*(char *)(iVar7 + 0x1c) == '\0') || (iVar8 = FUN_00777890(), iVar8 == 0)) {
LAB_007f090c:
      FUN_007876b0();
    }
    else {
      if (DAT_018d65c8 < *(double *)(iVar7 + 4)) {
        param_1[6] = 0;
        do {
          local_34 = FUN_0077ad90();
          if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 2;
            FUN_00eaecdd();
            FUN_00da1b20();
            FUN_00dfca00();
            return;
          }
LAB_007f07ee:
          if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(DAT_01c28a0c + 0xc) == 0) {
            FUN_00eae9a0();
            FUN_00e9a747(in_stack_fffffed8);
            in_stack_fffffed8 = 0x7f0853;
            FUN_00eaebef();
          }
          iVar7 = FUN_00e4e4a0(&PTR_DAT_01544bfc,local_78);
          if (iVar7 == 0) {
            local_38 = FUN_00787840(0,0,0,0);
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 3;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfc9c0();
              return;
            }
LAB_007f074f:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_38 = FUN_007877c0(0,0,0,DAT_018d6558,DAT_018d6550);
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 4;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfc9c0();
              return;
            }
LAB_007f06bb:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00787780();
            while( true ) {
              local_3c = FUN_0077b0a0();
              if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0xc;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfca00();
                return;
              }
LAB_007f01ab:
              if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(local_3c + 0x20) != 0) break;
              param_1[7] = 0;
              while( true ) {
                local_3c = FUN_0077b0a0();
                if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 8;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfca00();
                  return;
                }
LAB_007f0449:
                if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_3c + 0x20) != 0) break;
                while( true ) {
                  local_3c = FUN_0077b0a0();
                  if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                    param_1[5] = 6;
                    FUN_00eaecdd();
                    FUN_00da1b20();
                    FUN_00dfca00();
                    return;
                  }
LAB_007f0519:
                  if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_3c + 0x20) != 0) break;
                  local_7c = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                  FUN_00eaeae1();
                  iVar7 = FUN_00eae9a0();
                  *(undefined4 *)(iVar7 + 4) = 0x118;
                  FUN_00eaebca();
                  iVar7 = FUN_00eae9a0();
                  *(undefined4 *)(iVar7 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
                  local_38 = FUN_00975000();
                  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                    param_1[5] = 5;
                    FUN_00eaecdd();
                    FUN_00da1b20();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007f0621:
                  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  param_1[7] = param_1[7] + 1;
                  if (4 < param_1[7]) {
                    FUN_007876b0();
                    goto LAB_007ee9fd;
                  }
                }
                local_80 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                iVar7 = FUN_00eaeae1();
                *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b91278;
                iVar7 = FUN_00eae9a0();
                *(undefined4 *)(iVar7 + 4) = 2;
                FUN_00eaebca();
                iVar7 = FUN_00eae9a0();
                *(undefined4 *)(iVar7 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(extraout_ECX_02,&PTR_DAT_01befc64);
                local_38 = FUN_00975000();
                if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 7;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007f04e3:
                if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
              local_3c = FUN_0077b0a0();
              if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 9;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfca00();
                return;
              }
LAB_007f0407:
              if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(local_3c + 0x20) != 0) {
                if (*(int *)(DAT_01c28a0c + 0x10) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9a758(in_stack_fffffed8);
                  in_stack_fffffed8 = 0x7ef4c1;
                  FUN_00eaebef();
                }
                FUN_00e4e4a0(&PTR_DAT_01543d24,local_84);
              }
              FUN_00eaeca8();
              local_38 = FUN_00975000();
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 10;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007f02fc:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (param_1[2] == 0) {
                FUN_007876b0();
                goto LAB_007ee9fd;
              }
              uVar2 = *(undefined4 *)(param_1[2] + 8);
              local_88 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
              iVar7 = FUN_00eaeae1();
              *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b9125c;
              iVar8 = FUN_00eae9a0();
              *(undefined4 *)(iVar8 + 4) = uVar2;
              FUN_00eaebca();
              iVar8 = FUN_00eae9a0();
              *(undefined4 *)(iVar8 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(iVar7,&PTR_DAT_01befc64);
              local_38 = FUN_00975000();
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0xb;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007f02c6:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            local_8c = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
            iVar7 = FUN_00eaeae1();
            *(undefined ***)(iVar7 + 8) = &PTR_DAT_01ba04a8;
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = 0;
            FUN_00eaebca();
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_01,&PTR_DAT_01befc64);
            param_1[7] = 0;
            while (param_1[7] < 5) {
              local_38 = FUN_00975000();
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0xd;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007f0128:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_34 = FUN_0077ad90();
              if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0xe;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfca00();
                return;
              }
LAB_007f0092:
              if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(DAT_01c28a0c + 0x14) == 0) {
                FUN_00eae9a0();
                FUN_00e9a769(in_stack_fffffed8);
                in_stack_fffffed8 = 0x7f00f7;
                FUN_00eaebef();
              }
              iVar7 = FUN_00e4d760();
              if (iVar7 != 0) break;
              param_1[7] = param_1[7] + 1;
            }
          }
          else if (*(char *)(iVar7 + 0x3c) == '\0') {
            if (PTR_FUN_01c21b04 != (undefined *)0x0) {
              FUN_00e8e290();
            }
            FUN_00bcb730();
            param_1[0xf] = local_58;
            param_1[0x10] = local_54;
            param_1[0x11] = local_50;
            iVar9 = FUN_00eae9a0();
            *(undefined ***)(iVar9 + 4) = &PTR_DAT_01c0e558;
            iVar7 = param_1[0xf];
            *(int *)(iVar9 + 0xc) = *(int *)(iVar9 + 0xc) + 1;
            iVar8 = *(int *)(iVar9 + 4);
            uVar3 = *(uint *)(iVar9 + 8);
            if (uVar3 < *(uint *)(iVar8 + 4)) {
              *(uint *)(iVar9 + 8) = uVar3 + 1;
              if (*(uint *)(iVar8 + 4) <= uVar3) goto LAB_007f1114;
              *(int *)(iVar8 + 8 + uVar3 * 4) = iVar7;
            }
            else {
              FUN_00bb9060();
            }
            FUN_00eaed7c();
            if ((char)param_1[0x10] != '\0') {
              iVar7 = param_1[3];
              if ((char)param_1[0x10] == '\0') goto LAB_007f10ff;
              iVar8 = param_1[0x11];
              *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
              iVar9 = *(int *)(iVar7 + 4);
              uVar3 = *(uint *)(iVar7 + 8);
              if (uVar3 < *(uint *)(iVar9 + 4)) {
                *(uint *)(iVar7 + 8) = uVar3 + 1;
                if (*(uint *)(iVar9 + 4) <= uVar3) {
LAB_007f1114:
                    /* WARNING: Subroutine does not return */
                  FUN_009c2bf0();
                }
                *(int *)(iVar9 + 8 + uVar3 * 4) = iVar8;
              }
              else {
                FUN_00bb9060();
              }
            }
            local_40 = FUN_0077abc0();
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0xf;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfca00();
              return;
            }
LAB_007efe60:
            if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if ((*(int *)(local_40 + 0x20) == 0) || ((char)param_1[0x10] == '\0')) {
LAB_007efea6:
              iVar7 = 0;
            }
            else {
              if ((char)param_1[0x10] == '\0') {
LAB_007f10ff:
                    /* WARNING: Subroutine does not return */
                FUN_009322f0();
              }
              if (*(int *)(*(int *)(local_40 + 0x20) + 0x28) != param_1[0x11]) goto LAB_007efea6;
              iVar7 = 1;
            }
            param_1[7] = iVar7;
            while( true ) {
              local_4c = FUN_0077ac80();
              if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x18;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007ef959:
              if ((*(uint *)(local_4c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(char *)(local_4c + 0x20) != '\0') break;
              local_44 = *(int *)(iVar5 + 0x1c);
              if ((local_44 != 0) && (*(int *)(local_44 + 0x10) != 0)) goto LAB_007f110b;
              local_40 = FUN_0077abc0();
              if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x10;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfca00();
                return;
              }
LAB_007efe0a:
              if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if ((*(int *)(local_40 + 0x20) != 0) &&
                 (*(int *)(*(int *)(local_40 + 0x20) + 0x34) < 2)) {
                FUN_007876b0();
                goto LAB_007ef6cf;
              }
              local_18 = FUN_0077ae00();
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x11;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfca00();
                return;
              }
LAB_007efd8f:
              if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              iVar7 = *(int *)(local_18 + 0x20);
              if ((*(char *)(iVar7 + 0x1c) == '\0') || (iVar8 = FUN_00777890(), iVar8 == 0))
              goto LAB_007f090c;
              if (*(double *)(iVar7 + 4) <= 0.0) {
                FUN_00906aa0();
                FUN_007876b0();
                goto LAB_007ef6cf;
              }
              if (*(uint *)(param_1[3] + 8) <= (uint)param_1[7]) {
                    /* WARNING: Subroutine does not return */
                FUN_009319a0();
              }
              if (*(uint *)(*(int *)(param_1[3] + 4) + 4) <= (uint)param_1[7]) goto LAB_007f1114;
              local_38 = FUN_00787840(0,0,0,0);
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x12;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007efd0c:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_48 = FUN_0077acc0();
              if ((*(uint *)(local_48 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x13;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfca00();
                return;
              }
LAB_007efbf0:
              if ((*(uint *)(local_48 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(DAT_01c28a0c + 0x18) == 0) {
                FUN_00eae9a0();
                FUN_00e9a77a(in_stack_fffffed8);
                in_stack_fffffed8 = 0x7efc55;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01544440,local_90);
              FUN_00eaeca8();
              iVar7 = param_1[4];
              if (iVar7 == 0) {
                local_38 = FUN_00975000();
                if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 0x17;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007ef9e3:
                if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (1 < *(int *)(param_1[3] + 8)) {
                  param_1[7] = (param_1[7] + 1) % *(int *)(param_1[3] + 8);
                }
              }
              else {
                local_38 = FUN_007877c0(0,0,0,*(double *)(iVar7 + 0xc) / _DAT_018d65c0,
                                        *(double *)(iVar7 + 4) / _DAT_018d65c0);
                if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 0x14;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007efae6:
                if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                param_1[8] = 0;
                while (param_1[8] < 5) {
                  uVar2 = *(undefined4 *)(param_1[4] + 0x28);
                  local_94 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                  uVar6 = FUN_00eaeae1();
                  iVar7 = FUN_00eae9a0();
                  *(undefined4 *)(iVar7 + 4) = uVar2;
                  FUN_00eaebca();
                  iVar7 = FUN_00eae9a0();
                  *(undefined4 *)(iVar7 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(uVar6,&PTR_DAT_01be3a98);
                  local_38 = FUN_00975000();
                  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                    param_1[5] = 0x15;
                    FUN_00eaecdd();
                    FUN_00da1b20();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007efa6d:
                  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_4c = FUN_0077ac80();
                  if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
                    param_1[5] = 0x16;
                    FUN_00eaecdd();
                    FUN_00da1b20();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007efa2f:
                  if ((*(uint *)(local_4c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(char *)(local_4c + 0x20) != '\0') break;
                  param_1[8] = param_1[8] + 1;
                }
              }
              param_1[4] = 0;
            }
            do {
              local_4c = FUN_0077ac80();
              if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x1d;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007ef2bc:
              if ((*(uint *)(local_4c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(char *)(local_4c + 0x20) == '\0') goto LAB_007ee9e5;
              local_44 = *(int *)(iVar5 + 0x1c);
              if ((local_44 != 0) && (*(int *)(local_44 + 0x10) != 0)) {
LAB_007f110b:
                    /* WARNING: Subroutine does not return */
                FUN_00968fa0();
              }
              local_38 = FUN_00975000();
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x19;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007ef8d6:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_34 = FUN_0077ad90();
              if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x1a;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfca00();
                return;
              }
LAB_007ef7e1:
              if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(DAT_01c28a0c + 0x1c) == 0) {
                FUN_00eae9a0();
                FUN_00e9a78b(in_stack_fffffed8);
                in_stack_fffffed8 = 0x7ef846;
                FUN_00eaebef();
              }
              iVar7 = FUN_00e4e4a0(&PTR_DAT_01544bfc,local_98);
            } while ((iVar7 == 0) || (*(char *)(iVar7 + 0x3c) == '\0'));
            local_40 = FUN_0077abc0();
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x1b;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfca00();
              return;
            }
LAB_007ef722:
            if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_40 + 0x20) != 0) {
              FUN_00906a20();
              FUN_00782420();
              local_38 = FUN_00975000();
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x1c;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007ef6ec:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
          }
          else {
            local_4c = FUN_0077ac80();
            if ((*(uint *)(local_4c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x1e;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfc9c0();
              return;
            }
LAB_007ef201:
            if ((*(uint *)(local_4c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_4c + 0x20) != '\0') {
              in_stack_fffffed8 = *(undefined4 *)(*(int *)(*(int *)(iVar5 + 0x14) + 4) + 4);
              FUN_00906a20();
              FUN_00782420();
            }
            local_38 = FUN_00975000();
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x1f;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfc9c0();
              return;
            }
LAB_007ef180:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_38 = FUN_00787840(0,0,0,0);
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x20;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfc9c0();
              return;
            }
LAB_007ef0e1:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_38 = FUN_007877c0(0,0,0,DAT_018d6558,DAT_018d6550);
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x21;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfc9c0();
              return;
            }
LAB_007ef054:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_3c = FUN_0077b0a0();
            if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x22;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfca00();
              return;
            }
LAB_007ef012:
            if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_3c + 0x20) != 0) {
              if (*(int *)(DAT_01c28a0c + 0x20) == 0) {
                FUN_00eae9a0();
                FUN_00e9a79c(in_stack_fffffed8);
                in_stack_fffffed8 = 0x7f0b8f;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543d24,local_9c);
            }
            FUN_00eaeca8();
            if (param_1[2] == 0) {
              while( true ) {
                local_3c = FUN_0077b0a0();
                if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 0x2a;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfca00();
                  return;
                }
LAB_007eeb75:
                if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_3c + 0x20) != 0) break;
                param_1[7] = 0;
                while( true ) {
                  local_3c = FUN_0077b0a0();
                  if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                    param_1[5] = 0x26;
                    FUN_00eaecdd();
                    FUN_00da1b20();
                    FUN_00dfca00();
                    return;
                  }
LAB_007eede9:
                  if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_3c + 0x20) != 0) break;
                  while( true ) {
                    local_3c = FUN_0077b0a0();
                    if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                      param_1[5] = 0x24;
                      FUN_00eaecdd();
                      FUN_00da1b20();
                      FUN_00dfca00();
                      return;
                    }
LAB_007eeeb9:
                    if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    if (*(int *)(local_3c + 0x20) != 0) break;
                    local_a0 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                    FUN_00eaeae1();
                    iVar7 = FUN_00eae9a0();
                    *(undefined4 *)(iVar7 + 4) = 0x118;
                    FUN_00eaebca();
                    iVar7 = FUN_00eae9a0();
                    *(undefined4 *)(iVar7 + 4) = 0;
                    FUN_00eaebca();
                    FUN_0077a610(extraout_ECX_03,&PTR_DAT_01be3a98);
                    local_38 = FUN_00975000();
                    if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                      param_1[5] = 0x23;
                      FUN_00eaecdd();
                      FUN_00da1b20();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_007eefc7:
                    if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    param_1[7] = param_1[7] + 1;
                    if (7 < param_1[7]) {
                      FUN_007876b0();
                      goto LAB_007f111a;
                    }
                  }
                  uStack_a4 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                  iVar7 = FUN_00eaeae1();
                  *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b91278;
                  iVar7 = FUN_00eae9a0();
                  *(undefined4 *)(iVar7 + 4) = 2;
                  FUN_00eaebca();
                  iVar7 = FUN_00eae9a0();
                  *(undefined4 *)(iVar7 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
                  local_38 = FUN_00975000();
                  if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                    param_1[5] = 0x25;
                    FUN_00eaecdd();
                    FUN_00da1b20();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_007eee83:
                  if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
                local_3c = FUN_0077b0a0();
                if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 0x27;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfca00();
                  return;
                }
LAB_007eeda7:
                if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_3c + 0x20) != 0) {
                  if (*(int *)(DAT_01c28a0c + 0x24) == 0) {
                    FUN_00eae9a0();
                    FUN_00e9a7ad(in_stack_fffffed8);
                    in_stack_fffffed8 = 0x7f0d94;
                    FUN_00eaebef();
                  }
                  FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_a8);
                }
                FUN_00eaeca8();
                local_38 = FUN_00975000();
                if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 0x28;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007eec9c:
                if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (param_1[2] == 0) {
                  FUN_007876b0();
                  FUN_00787780();
                  goto LAB_007f111a;
                }
                uVar2 = *(undefined4 *)(param_1[2] + 8);
                uStack_ac = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
                iVar7 = FUN_00eaeae1();
                *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b9125c;
                iVar8 = FUN_00eae9a0();
                *(undefined4 *)(iVar8 + 4) = uVar2;
                FUN_00eaebca();
                iVar8 = FUN_00eae9a0();
                *(undefined4 *)(iVar8 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(iVar7,&PTR_DAT_01befc64);
                local_38 = FUN_00975000();
                if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 0x29;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007eec0f:
                if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
            }
            local_3c = FUN_0077b0a0();
            if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x2b;
              FUN_00eaecdd();
              FUN_00da1b20();
              FUN_00dfca00();
              return;
            }
LAB_007eeb33:
            if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_3c + 0x20) != 0) {
              if (*(int *)(DAT_01c28a0c + 0x28) == 0) {
                FUN_00eae9a0();
                FUN_00e9a7be(in_stack_fffffed8);
                in_stack_fffffed8 = 0x7f0e63;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543d24,&local_b0);
            }
            FUN_00eaeca8();
            if (param_1[2] != 0) {
              uVar2 = *(undefined4 *)(param_1[2] + 8);
              iVar7 = FUN_00eaeae1();
              *(undefined ***)(iVar7 + 8) = &PTR_DAT_01ba04a8;
              iVar8 = FUN_00eae9a0();
              *(undefined4 *)(iVar8 + 4) = uVar2;
              FUN_00eaebca();
              iVar8 = FUN_00eae9a0();
              *(undefined4 *)(iVar8 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(iVar7,&PTR_DAT_01befc64);
              param_1[7] = 0;
              while (param_1[7] < 5) {
                local_38 = FUN_00975000();
                if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 0x2c;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007eeab0:
                if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_34 = FUN_0077ad90();
                if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                  param_1[5] = 0x2d;
                  FUN_00eaecdd();
                  FUN_00da1b20();
                  FUN_00dfca00();
                  return;
                }
LAB_007eea1a:
                if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(DAT_01c28a0c + 0x2c) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9a7cf(in_stack_fffffed8);
                  in_stack_fffffed8 = 0x7eea7f;
                  FUN_00eaebef();
                }
                iVar7 = FUN_00e4d760();
                if (iVar7 == 0) break;
                param_1[7] = param_1[7] + 1;
              }
              param_1[6] = param_1[6] + 1;
              local_38 = FUN_00975000();
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x2e;
                FUN_00eaecdd();
                FUN_00da1b20();
                FUN_00dfc9c0();
                return;
              }
LAB_007ee9ca:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
          }
LAB_007ee9e5:
        } while (param_1[6] < 2);
LAB_007ee9fd:
        *(undefined2 *)(iVar5 + 0x20) = 0x101;
        goto LAB_007f111a;
      }
      FUN_0099d430();
      uVar4 = _UNK_018d656c;
      uVar6 = _UNK_018d6568;
      uVar2 = _UNK_018d6564;
      puVar10 = local_70;
      puVar11 = local_30;
      for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
        *puVar11 = *puVar10;
        puVar10 = puVar10 + 1;
        puVar11 = puVar11 + 1;
      }
      if (local_1c < local_30[2]) goto LAB_007f10ef;
      puVar1 = (undefined4 *)(local_20 + local_30[2] * 2);
      if (local_1c - local_30[2] < 8) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d6560;
        puVar1[1] = uVar2;
        puVar1[2] = uVar6;
        puVar1[3] = uVar4;
        local_30[2] = local_30[2] + 8;
      }
      iVar8 = *(int *)(iVar7 + 0x14);
      if ((local_24 == '\0') && (iVar8 != 0)) {
        if (local_1c < local_30[2]) goto LAB_007f10ef;
        if (local_1c - local_30[2] < *(uint *)(iVar8 + 4)) goto LAB_007ef5ce;
        FUN_00930280();
        local_30[2] = local_30[2] + *(int *)(iVar8 + 4);
      }
      else {
LAB_007ef5ce:
        FUN_0099d670();
      }
      uVar4 = _UNK_018d657c;
      uVar6 = _UNK_018d6578;
      uVar2 = _UNK_018d6574;
      if (local_1c < local_30[2]) {
LAB_007f10ef:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      puVar1 = (undefined4 *)(local_20 + local_30[2] * 2);
      if (local_1c - local_30[2] < 0x11) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d6570;
        puVar1[1] = uVar2;
        puVar1[2] = uVar6;
        puVar1[3] = uVar4;
        uVar4 = _UNK_018d658c;
        uVar6 = _UNK_018d6588;
        uVar2 = _UNK_018d6584;
        puVar1[4] = _DAT_018d6580;
        puVar1[5] = uVar2;
        puVar1[6] = uVar6;
        puVar1[7] = uVar4;
        *(undefined2 *)(puVar1 + 8) = 0x20;
        local_30[2] = local_30[2] + 0x11;
      }
      FUN_00dde1c0(*(undefined8 *)(iVar7 + 4));
      uVar4 = _UNK_018d659c;
      uVar6 = _UNK_018d6598;
      uVar2 = _UNK_018d6594;
      if (local_1c < local_30[2]) goto LAB_007f10ef;
      puVar1 = (undefined4 *)(local_20 + local_30[2] * 2);
      if (local_1c - local_30[2] < 0x1b) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d6590;
        puVar1[1] = uVar2;
        puVar1[2] = uVar6;
        puVar1[3] = uVar4;
        uVar4 = _UNK_018d65ac;
        uVar6 = _UNK_018d65a8;
        uVar2 = _UNK_018d65a4;
        puVar1[4] = _DAT_018d65a0;
        puVar1[5] = uVar2;
        puVar1[6] = uVar6;
        puVar1[7] = uVar4;
        uVar4 = _UNK_018d65bc;
        uVar6 = _UNK_018d65b8;
        uVar2 = _UNK_018d65b4;
        puVar1[8] = _DAT_018d65b0;
        puVar1[9] = uVar2;
        puVar1[10] = uVar6;
        puVar1[0xb] = uVar4;
        puVar1[0xc] = &DAT_00691edb;
        *(undefined2 *)(puVar1 + 0xd) = 0x21;
        local_30[2] = local_30[2] + 0x1b;
      }
      FUN_0099d560();
      FUN_007876b0();
    }
  }
LAB_007ef6cf:
  *(undefined2 *)(iVar5 + 0x20) = 0;
LAB_007f111a:
  param_1[5] = -2;
  param_1[1] = 0;
  param_1[2] = 0;
  if (param_1[9] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar5 = FUN_00c0a790();
    if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

