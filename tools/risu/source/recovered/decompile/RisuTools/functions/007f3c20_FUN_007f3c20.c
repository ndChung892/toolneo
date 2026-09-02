/* Address: 007f3c20 | Ghidra name: FUN_007f3c20 */

void __fastcall FUN_007f3c20(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 extraout_ECX;
  int extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  int extraout_ECX_03;
  int in_stack_ffffff40;
  undefined4 uVar5;
  undefined1 local_74 [4];
  undefined4 local_70;
  undefined1 local_6c [4];
  undefined1 local_68 [4];
  undefined4 local_64;
  undefined1 local_60 [4];
  undefined4 local_5c;
  undefined1 local_58 [4];
  undefined1 local_54 [4];
  undefined4 local_50;
  int local_4c;
  uint local_48;
  undefined1 local_44;
  undefined4 *local_40;
  uint local_3c;
  undefined4 local_38;
  int local_34;
  uint local_30;
  undefined1 local_2c;
  undefined4 *local_28;
  uint local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  iVar3 = -0x60;
  do {
    *(undefined4 *)((int)&local_14 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar3) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar3) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar3) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar3) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar3) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar3) = 0;
    iVar3 = iVar3 + 0x30;
  } while (iVar3 != 0);
  iVar1 = *param_1;
  local_14 = 0;
  switch(param_1[2]) {
  case 0:
    local_18 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    break;
  case 1:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f4800;
  case 2:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f4779;
  case 3:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f46ed;
  case 4:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f469f;
  case 5:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f4602;
  case 6:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f45c0;
  case 7:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f44b8;
  case 8:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f447c;
  case 9:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f4378;
  case 10:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f42ea;
  case 0xb:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f42a5;
  case 0xc:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f4243;
  case 0xd:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f41a1;
  case 0xe:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f4115;
  case 0xf:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f40d0;
  case 0x10:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f403a;
  case 0x11:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f3fec;
  case 0x12:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f3f4f;
  case 0x13:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f3f0d;
  case 0x14:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f3e08;
  case 0x15:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f3dd0;
  case 0x16:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f3d30;
  case 0x17:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[2] = -1;
    goto LAB_007f3cee;
  case 0x18:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f3cb8;
  case 0x19:
    local_1c = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    goto LAB_007f3c82;
  default:
    param_1[3] = 0;
    local_14 = iVar3;
    FUN_00787780();
    param_1[4] = 10;
    param_1[5] = 0;
    goto LAB_007f4987;
  }
  do {
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(DAT_01c28a1c + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e9a88a(in_stack_ffffff40);
      in_stack_ffffff40 = 0x7f48fa;
      FUN_00eaec14();
    }
    iVar3 = FUN_00e4e4a0(&PTR_DAT_01544bfc,local_54);
    if (iVar3 == 0) {
      local_1c = FUN_00787840(0,0,0,0);
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 1;
        FUN_00eaecdd();
        FUN_00da1d60();
        FUN_00dfc9c0();
        return;
      }
LAB_007f4800:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_1c = FUN_007877c0(0,0,0,DAT_018d6700,DAT_018d66f8);
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 2;
        FUN_00eaeca8();
        FUN_00da1d60();
        FUN_00dfc9c0();
        return;
      }
LAB_007f4779:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00787780();
      local_1c = FUN_00975000();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 3;
        FUN_00eaeca8();
        FUN_00da1d60();
        FUN_00dfc9c0();
        return;
      }
LAB_007f46ed:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      while( true ) {
        local_20 = FUN_0077b0a0();
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 9;
          FUN_00eaeca8();
          FUN_00da1d60();
          FUN_00dfca00();
          return;
        }
LAB_007f4378:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_20 + 0x20) != 0) break;
        param_1[6] = 0;
        while( true ) {
          local_20 = FUN_0077b0a0();
          if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 5;
            FUN_00eaecdd();
            FUN_00da1d60();
            FUN_00dfca00();
            return;
          }
LAB_007f4602:
          if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_20 + 0x20) != 0) break;
          FUN_00eaeae1();
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 0x4ef;
          FUN_00eaebca();
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be3a98);
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 4;
            FUN_00eaecdd();
            FUN_00da1d60();
            FUN_00dfc9c0();
            return;
          }
LAB_007f469f:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          param_1[6] = param_1[6] + 1;
          if (4 < param_1[6]) {
            FUN_007876b0();
            goto LAB_007f53db;
          }
        }
        local_20 = FUN_0077b0a0();
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 6;
          FUN_00eaecdd();
          FUN_00da1d60();
          FUN_00dfca00();
          return;
        }
LAB_007f45c0:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_20 + 0x20) != 0) {
          if (*(int *)(DAT_01c28a1c + 0xc) == 0) {
            FUN_00eae9a0();
            FUN_00e9a89b(in_stack_ffffff40);
            in_stack_ffffff40 = 0x7f5124;
            FUN_00eaebef();
          }
          FUN_00e4e4a0(&PTR_DAT_01543d24,local_58);
        }
        FUN_00eaeca8();
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 7;
          FUN_00eaecdd();
          FUN_00da1d60();
          FUN_00dfc9c0();
          return;
        }
LAB_007f44b8:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (param_1[1] == 0) {
          FUN_007876b0();
          goto LAB_007f53db;
        }
        uVar2 = *(undefined4 *)(param_1[1] + 8);
        local_5c = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
        iVar3 = FUN_00eaeae1();
        *(undefined ***)(iVar3 + 8) = &PTR_DAT_01b9125c;
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = uVar2;
        FUN_00eaebca();
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar3,&PTR_DAT_01befc64);
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 8;
          FUN_00eaecdd();
          FUN_00da1d60();
          FUN_00dfc9c0();
          return;
        }
LAB_007f447c:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      iVar3 = FUN_00eaeae1();
      *(undefined ***)(iVar3 + 8) = &PTR_DAT_01ba04a8;
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = 0;
      FUN_00eaebca();
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
      local_1c = FUN_00975000();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 10;
        FUN_00eaecdd();
        FUN_00da1d60();
        FUN_00dfc9c0();
        return;
      }
LAB_007f42ea:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_20 = FUN_0077b0a0();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xb;
        FUN_00eaeca8();
        FUN_00da1d60();
        FUN_00dfca00();
        return;
      }
LAB_007f42a5:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_20 + 0x20) != 0) {
        if (*(int *)(DAT_01c28a1c + 0x10) == 0) {
          FUN_00eae9a0();
          FUN_00e9a8ac(in_stack_ffffff40);
          in_stack_ffffff40 = 0x7f51e2;
          FUN_00eaec14();
        }
        FUN_00e4e4a0(&PTR_DAT_01543d24,local_60);
      }
      FUN_00eaeca8();
      if (*(int *)(extraout_ECX_03 + 4) != 0) {
        uVar2 = *(undefined4 *)(*(int *)(extraout_ECX_03 + 4) + 8);
        local_64 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
        iVar3 = FUN_00eaeae1();
        *(undefined ***)(iVar3 + 8) = &PTR_DAT_01ba04a8;
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = uVar2;
        FUN_00eaebca();
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar3,&PTR_DAT_01befc64);
        param_1[3] = param_1[3] + 1;
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 0xc;
          FUN_00eaecdd();
          FUN_00da1d60();
          FUN_00dfc9c0();
          return;
        }
LAB_007f4243:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (PTR_LAB_01c23e7c != (undefined *)0x0) {
          FUN_00e8f54a();
        }
        local_34 = FUN_00b848a0();
        if (local_34 == 0) {
          local_28 = (undefined4 *)0x0;
          local_24 = 0;
        }
        else {
          local_28 = (undefined4 *)(local_34 + 8);
          local_24 = *(uint *)(local_34 + 4);
        }
        local_38 = 0;
        local_30 = 0;
        local_2c = 0;
        if (local_24 < 5) {
          FUN_0099d6f0();
        }
        else {
          *local_28 = 0x6f0058;
          local_28[1] = 0x67006e;
          *(undefined2 *)(local_28 + 2) = 0x20;
          local_30 = 5;
        }
        FUN_00de77e0();
        if (local_24 < local_30) {
LAB_007f53d2:
                    /* WARNING: Subroutine does not return */
          FUN_009318f0();
        }
        if (local_24 - local_30 < 0x22) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280();
          local_30 = local_30 + 0x22;
        }
        FUN_0099d560();
        FUN_007876b0();
      }
    }
    else {
      if (*(char *)(iVar3 + 0x3c) == '\0') {
        FUN_007876b0();
        goto LAB_007f53db;
      }
      local_1c = FUN_00787840(0,0,0,0);
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xd;
        FUN_00eaecdd();
        FUN_00da1d60();
        FUN_00dfc9c0();
        return;
      }
LAB_007f41a1:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_1c = FUN_007877c0(0,0,0,DAT_018d6700,DAT_018d66f8);
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xe;
        FUN_00eaeca8();
        FUN_00da1d60();
        FUN_00dfc9c0();
        return;
      }
LAB_007f4115:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_20 = FUN_0077b0a0();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xf;
        FUN_00eaeca8();
        FUN_00da1d60();
        FUN_00dfca00();
        return;
      }
LAB_007f40d0:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_20 + 0x20) != 0) {
        if (*(int *)(DAT_01c28a1c + 0x14) == 0) {
          FUN_00eae9a0();
          FUN_00e9a8bd(in_stack_ffffff40);
          in_stack_ffffff40 = 0x7f4aa3;
          FUN_00eaec14();
        }
        FUN_00e4e4a0(&PTR_DAT_01543d24,local_68);
      }
      FUN_00eaeca8();
      if (*(int *)(extraout_ECX_00 + 4) == 0) {
        FUN_00787780();
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 0x10;
          FUN_00eaecdd();
          FUN_00da1d60();
          FUN_00dfc9c0();
          return;
        }
LAB_007f403a:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1[6] = 0;
        while( true ) {
          local_20 = FUN_0077b0a0();
          if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 0x16;
            FUN_00eaeca8();
            FUN_00da1d60();
            FUN_00dfca00();
            return;
          }
LAB_007f3d30:
          if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_20 + 0x20) != 0) break;
          param_1[6] = param_1[6] + 1;
          if (10 < param_1[6]) {
            FUN_007876b0();
            goto LAB_007f53db;
          }
          param_1[7] = 0;
          while( true ) {
            local_20 = FUN_0077b0a0();
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 0x12;
              FUN_00eaecdd();
              FUN_00da1d60();
              FUN_00dfca00();
              return;
            }
LAB_007f3f4f:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_20 + 0x20) != 0) break;
            FUN_00eaeae1();
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = 0x4ef;
            FUN_00eaebca();
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_01,&PTR_DAT_01be3a98);
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 0x11;
              FUN_00eaecdd();
              FUN_00da1d60();
              FUN_00dfc9c0();
              return;
            }
LAB_007f3fec:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[7] = param_1[7] + 1;
            if (7 < param_1[7]) {
              FUN_007876b0();
              goto LAB_007f53db;
            }
          }
          local_20 = FUN_0077b0a0();
          if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 0x13;
            FUN_00eaecdd();
            FUN_00da1d60();
            FUN_00dfca00();
            return;
          }
LAB_007f3f0d:
          if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_20 + 0x20) != 0) {
            if (*(int *)(DAT_01c28a1c + 0x18) == 0) {
              FUN_00eae9a0();
              FUN_00e9a8ce(in_stack_ffffff40);
              in_stack_ffffff40 = 0x7f4c9f;
              FUN_00eaebef();
            }
            FUN_00e4e4a0(&PTR_DAT_01543d24,local_6c);
          }
          FUN_00eaeca8();
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 0x14;
            FUN_00eaecdd();
            FUN_00da1d60();
            FUN_00dfc9c0();
            return;
          }
LAB_007f3e08:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (param_1[1] == 0) {
            FUN_007876b0();
            goto LAB_007f53db;
          }
          uVar2 = *(undefined4 *)(param_1[1] + 8);
          local_70 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
          iVar3 = FUN_00eaeae1();
          *(undefined ***)(iVar3 + 8) = &PTR_DAT_01b9125c;
          iVar4 = FUN_00eae9a0();
          *(undefined4 *)(iVar4 + 4) = uVar2;
          FUN_00eaebca();
          iVar4 = FUN_00eae9a0();
          *(undefined4 *)(iVar4 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(iVar3,&PTR_DAT_01befc64);
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 0x15;
            FUN_00eaecdd();
            FUN_00da1d60();
            FUN_00dfc9c0();
            return;
          }
LAB_007f3dd0:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
      local_20 = FUN_0077b0a0();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0x17;
        FUN_00eaecdd();
        FUN_00da1d60();
        FUN_00dfca00();
        return;
      }
LAB_007f3cee:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_20 + 0x20) != 0) {
        if (*(int *)(DAT_01c28a1c + 0x1c) == 0) {
          FUN_00eae9a0();
          FUN_00e9a8df(in_stack_ffffff40);
          in_stack_ffffff40 = 0x7f4d68;
          FUN_00eaec14();
        }
        FUN_00e4e4a0(&PTR_DAT_01543d24,local_74);
      }
      FUN_00eaeca8();
      if (param_1[1] == 0) {
        FUN_00787780();
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 0x19;
          FUN_00eaecdd();
          FUN_00da1d60();
          FUN_00dfc9c0();
          return;
        }
LAB_007f3c82:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      else {
        uVar2 = *(undefined4 *)(param_1[1] + 8);
        uVar5 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 4);
        iVar3 = FUN_00eaeae1();
        *(undefined ***)(iVar3 + 8) = &PTR_DAT_01ba04a8;
        iVar4 = FUN_00eae9a0(iVar3,uVar5);
        *(undefined4 *)(iVar4 + 4) = uVar2;
        in_stack_ffffff40 = iVar3;
        FUN_00eaebca();
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar3,&PTR_DAT_01befc64);
        param_1[3] = param_1[3] + 1;
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
        local_44 = 0;
        if (local_3c < 5) {
          FUN_0099d6f0();
        }
        else {
          *local_40 = 0x6f0058;
          local_40[1] = 0x67006e;
          *(undefined2 *)(local_40 + 2) = 0x20;
          local_48 = 5;
        }
        FUN_00de77e0();
        if (local_3c < local_48) goto LAB_007f53d2;
        if (local_3c - local_48 < 0x22) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280();
          local_48 = local_48 + 0x22;
        }
        FUN_0099d560();
        FUN_007876b0();
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 0x18;
          FUN_00eaeca8();
          FUN_00da1d60();
          FUN_00dfc9c0();
          return;
        }
LAB_007f3cb8:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    if (1 < param_1[3]) {
LAB_007f53db:
      param_1[2] = -2;
      param_1[1] = 0;
      if (param_1[8] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaecdd();
        return;
      }
      iVar3 = FUN_00c0a790();
      if (iVar3 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
LAB_007f4987:
    local_14 = *(int *)(iVar1 + 0x1c);
    if ((local_14 != 0) && (*(int *)(local_14 + 0x10) != 0)) {
                    /* WARNING: Subroutine does not return */
      FUN_00968fa0();
    }
    param_1[5] = param_1[5] + 1;
    if (param_1[4] < param_1[5]) {
      FUN_007876b0();
      goto LAB_007f53db;
    }
    local_18 = FUN_0077ad90();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00da1d60();
      FUN_00dfca00();
      return;
    }
  } while( true );
}

