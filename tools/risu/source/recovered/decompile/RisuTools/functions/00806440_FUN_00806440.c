/* Address: 00806440 | Ghidra name: FUN_00806440 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00806440(double *param_1)

{
  undefined4 uVar1;
  undefined8 uVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  int extraout_ECX;
  int extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  char *extraout_ECX_06;
  undefined4 extraout_ECX_07;
  undefined4 in_stack_fffffe9c;
  char *in_stack_fffffea0;
  int in_stack_fffffea4;
  char *local_f8;
  char *local_dc;
  uint local_cc;
  undefined4 local_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 local_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined1 local_a4 [4];
  undefined1 local_a0 [4];
  undefined1 local_9c [12];
  double local_90;
  double local_88;
  undefined1 local_80 [4];
  undefined4 local_7c;
  double local_78;
  double local_70;
  undefined1 local_68 [4];
  undefined1 local_64 [4];
  int local_60;
  undefined4 local_5c;
  int local_58;
  uint local_54;
  char local_50;
  undefined4 *local_4c;
  uint local_48;
  int local_44;
  undefined4 local_3c;
  int local_38;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_c4 = 0;
  uStack_c0 = 0;
  uStack_bc = 0;
  uStack_b8 = 0;
  local_b4 = 0;
  uStack_b0 = 0;
  uStack_ac = 0;
  uStack_a8 = 0;
  iVar3 = -0x90;
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
  local_14 = *(int *)(param_1 + 5);
  iVar3 = *(int *)(param_1 + 2);
  switch(local_14) {
  case 0:
    local_18 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    break;
  case 1:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00806c0c;
  case 2:
    local_20 = *(int *)(param_1 + 8);
    *(undefined4 *)(param_1 + 8) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00806ae2;
  case 3:
    local_24 = *(int *)((int)param_1 + 0x44);
    *(undefined4 *)((int)param_1 + 0x44) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00806a7a;
  case 4:
    local_28 = *(int *)((int)param_1 + 0x54);
    *(undefined4 *)((int)param_1 + 0x54) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008069e1;
  case 5:
    local_18 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008068d9;
  case 6:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_0080689a;
  case 7:
    local_28 = *(int *)((int)param_1 + 0x54);
    *(undefined4 *)((int)param_1 + 0x54) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008067d6;
  case 8:
    local_20 = *(int *)(param_1 + 8);
    *(undefined4 *)(param_1 + 8) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00806784;
  case 9:
    local_18 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008066d5;
  case 10:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00806694;
  case 0xb:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00806604;
  case 0xc:
    local_18 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_0080654f;
  case 0xd:
    local_20 = *(int *)(param_1 + 8);
    *(undefined4 *)(param_1 + 8) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008064fd;
  case 0xe:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00808004;
  case 0xf:
    local_18 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807f5b;
  case 0x10:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807ef9;
  case 0x11:
    local_28 = *(int *)((int)param_1 + 0x54);
    *(undefined4 *)((int)param_1 + 0x54) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    local_f8 = in_stack_fffffea0;
    goto LAB_00807e43;
  case 0x12:
    local_24 = *(int *)((int)param_1 + 0x44);
    *(undefined4 *)((int)param_1 + 0x44) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807d9b;
  case 0x13:
    local_20 = *(int *)(param_1 + 8);
    *(undefined4 *)(param_1 + 8) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    local_dc = in_stack_fffffea0;
    goto LAB_00807d3c;
  case 0x14:
    local_20 = *(int *)(param_1 + 8);
    *(undefined4 *)(param_1 + 8) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807ce2;
  case 0x15:
  case 0x16:
    goto switchD_008064a2_caseD_15;
  case 0x17:
    local_20 = *(int *)(param_1 + 8);
    *(undefined4 *)(param_1 + 8) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807c8e;
  case 0x18:
    local_28 = *(int *)((int)param_1 + 0x54);
    *(undefined4 *)((int)param_1 + 0x54) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807be2;
  case 0x19:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807bac;
  case 0x1a:
    local_60 = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807b01;
  case 0x1b:
    local_60 = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807ab8;
  case 0x1c:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807a20;
  case 0x1d:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008079ea;
  case 0x1e:
    local_60 = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008078d9;
  case 0x1f:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807841;
  case 0x20:
    local_60 = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008077f2;
  case 0x21:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008077b6;
  case 0x22:
    local_60 = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807752;
  case 0x23:
    local_60 = *(int *)(param_1 + 0xd);
    *(undefined4 *)(param_1 + 0xd) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_00807707;
  case 0x24:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008075f3;
  case 0x25:
    local_1c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_14 = -1;
    *(undefined4 *)(param_1 + 5) = 0xffffffff;
    goto LAB_008064bf;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    *(undefined4 *)(extraout_ECX_00 + 0x2c) = 0;
    *(undefined1 *)(*(int *)(extraout_ECX_00 + 0x14) + 8) = 0;
    FUN_00787780();
    goto LAB_00806d75;
  }
  do {
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaecdd();
    local_1c = FUN_00975000();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 5) = 1;
      FUN_00eaeca8();
      FUN_00da3800();
      FUN_00dfc9c0();
      return;
    }
LAB_00806c0c:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(param_1 + 4) != 0) && (*(char *)(*(int *)(param_1 + 4) + 0x69) == '\0')) {
      local_20 = FUN_0077ad90();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 5) = 2;
        FUN_00eaecdd();
        FUN_00da3800();
        FUN_00dfca00();
        return;
      }
LAB_00806ae2:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(DAT_01c28a5c + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e9abfe(in_stack_fffffe9c);
        in_stack_fffffe9c = 0x806b4a;
        FUN_00eaebef();
      }
      FUN_00e4e4a0(&PTR_DAT_01544bfc,local_64);
      FUN_00eaebca();
      if (*(int *)(*(int *)(param_1 + 3) + 4) == 0) {
        local_28 = FUN_00805380();
        if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 5) = 0x18;
          FUN_00eaecdd();
          FUN_00da3800();
          FUN_00dfc9c0();
          return;
        }
LAB_00807be2:
        if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_28 + 0x20) == '\0') goto LAB_00808e31;
        FUN_00787780();
        while( true ) {
          local_60 = FUN_0077b0a0();
          if ((*(uint *)(local_60 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 5) = 0x1a;
            FUN_00eaeca8();
            FUN_00da3800();
            FUN_00dfca00();
            return;
          }
LAB_00807b01:
          if ((*(uint *)(local_60 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_60 + 0x20) != 0) break;
          FUN_00eaeae1();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0x42d;
          FUN_00eaebca();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_01,&PTR_DAT_01be3a98);
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 5) = 0x19;
            FUN_00eaecdd();
            FUN_00da3800();
            FUN_00dfc9c0();
            return;
          }
LAB_00807bac:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        local_60 = FUN_0077b0a0();
        if ((*(uint *)(local_60 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 5) = 0x1b;
          FUN_00eaecdd();
          FUN_00da3800();
          FUN_00dfca00();
          return;
        }
LAB_00807ab8:
        if ((*(uint *)(local_60 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_60 + 0x20) == 0) {
          iVar6 = 0;
        }
        else {
          if (*(int *)(DAT_01c28a5c + 0x28) == 0) {
            FUN_00eae9a0();
            FUN_00e9ac86(in_stack_fffffe9c);
            in_stack_fffffe9c = 0x806f4c;
            FUN_00eaec14();
          }
          iVar6 = FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_b0);
        }
        if (iVar6 != 0) {
          FUN_007876b0();
          uVar5 = *(undefined4 *)(iVar6 + 8);
          local_b4 = *(undefined4 *)(*(int *)(iVar3 + 0x14) + 8);
          iVar6 = FUN_00eaeae1();
          *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b9125c;
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = uVar5;
          FUN_00eaebca();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(iVar6,&PTR_DAT_01befc64);
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 5) = 0x1c;
            FUN_00eaecdd();
            FUN_00da3800();
            FUN_00dfc9c0();
            return;
          }
LAB_00807a20:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          while( true ) {
            local_60 = FUN_0077b0a0();
            if ((*(uint *)(local_60 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 5) = 0x1e;
              FUN_00eaeca8();
              FUN_00da3800();
              FUN_00dfca00();
              return;
            }
LAB_008078d9:
            if ((*(uint *)(local_60 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_60 + 0x20) != 0) break;
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 5) = 0x1d;
              FUN_00eaecdd();
              FUN_00da3800();
              FUN_00dfc9c0();
              return;
            }
LAB_008079ea:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          iVar6 = FUN_00eaeae1();
          *(undefined ***)(iVar6 + 8) = &PTR_DAT_01ba04a8;
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0;
          FUN_00eaebca();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_03,&PTR_DAT_01befc64);
          do {
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 5) = 0x1f;
              FUN_00eaecdd();
              FUN_00da3800();
              FUN_00dfc9c0();
              return;
            }
LAB_00807841:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_60 = FUN_0077b0a0();
            if ((*(uint *)(local_60 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 5) = 0x20;
              FUN_00eaeca8();
              FUN_00da3800();
              FUN_00dfca00();
              return;
            }
LAB_008077f2:
            if ((*(uint *)(local_60 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_60 + 0x20) == 0) {
              iVar6 = 0;
            }
            else {
              if (*(int *)(DAT_01c28a5c + 0x2c) == 0) {
                FUN_00eae9a0();
                FUN_00e9ac97(in_stack_fffffe9c);
                in_stack_fffffe9c = 0x8070d4;
                FUN_00eaec14();
              }
              iVar6 = FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_b8);
            }
          } while (iVar6 == 0);
          uVar5 = *(undefined4 *)(iVar6 + 8);
          uStack_bc = *(undefined4 *)(*(int *)(iVar3 + 0x14) + 8);
          iVar6 = FUN_00eaeae1();
          *(undefined ***)(iVar6 + 8) = &PTR_DAT_01ba04a8;
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = uVar5;
          FUN_00eaebca();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(iVar6,&PTR_DAT_01befc64);
        }
        FUN_00787780();
        *(undefined4 *)(param_1 + 6) = 0;
        while( true ) {
          local_60 = FUN_0077b0a0();
          if ((*(uint *)(local_60 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 5) = 0x22;
            FUN_00eaecdd();
            FUN_00da3800();
            FUN_00dfca00();
            return;
          }
LAB_00807752:
          if ((*(uint *)(local_60 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if ((*(int *)(local_60 + 0x20) != 0) || (4 < *(int *)(param_1 + 6))) break;
          uStack_c0 = *(undefined4 *)(*(int *)(iVar3 + 0x14) + 8);
          FUN_00eaeae1();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0x42d;
          FUN_00eaebca();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be3a98);
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 5) = 0x21;
            FUN_00eaecdd();
            FUN_00da3800();
            FUN_00dfc9c0();
            return;
          }
LAB_008077b6:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          *(int *)(param_1 + 6) = *(int *)(param_1 + 6) + 1;
        }
        if (4 < *(int *)(param_1 + 6)) {
          FUN_007876b0();
          goto LAB_00808e31;
        }
        local_60 = FUN_0077b0a0();
        if ((*(uint *)(local_60 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 5) = 0x23;
          FUN_00eaecdd();
          FUN_00da3800();
          FUN_00dfca00();
          return;
        }
LAB_00807707:
        if ((*(uint *)(local_60 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_60 + 0x20) != 0) {
          if (*(int *)(DAT_01c28a5c + 0x30) == 0) {
            FUN_00eae9a0();
            FUN_00e9aca8(in_stack_fffffe9c);
            in_stack_fffffe9c = 0x80734b;
            FUN_00eaebef();
          }
          FUN_00e4e4a0(&PTR_DAT_01543d24,&local_c4);
        }
        FUN_00eaeca8();
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 5) = 0x24;
          FUN_00eaecdd();
          FUN_00da3800();
          FUN_00dfc9c0();
          return;
        }
LAB_008075f3:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)((int)param_1 + 0x24) == 0) {
          FUN_007876b0();
          goto LAB_00808e31;
        }
        uVar5 = *(undefined4 *)(*(int *)((int)param_1 + 0x24) + 8);
        iVar6 = FUN_00eaeae1();
        *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b9125c;
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = uVar5;
        in_stack_fffffea4 = iVar6;
        FUN_00eaebca();
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar6,&PTR_DAT_01befc64);
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 5) = 0x25;
          FUN_00eaecdd();
          FUN_00da3800();
          FUN_00dfc9c0();
          return;
        }
LAB_008064bf:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        *(undefined4 *)((int)param_1 + 0x24) = 0;
LAB_008075c5:
        *(undefined4 *)(param_1 + 3) = 0;
        *(undefined4 *)(param_1 + 4) = 0;
      }
      else {
        uVar5 = FUN_00772d90();
        *(undefined4 *)((int)param_1 + 0x2c) = uVar5;
        if ((*(char *)(*(int *)(*(int *)(param_1 + 3) + 4) + 0x3c) == '\0') ||
           (*(char *)(*(int *)(*(int *)(param_1 + 3) + 8) + 8) != '\0')) {
LAB_00806ab4:
          if ((*(int *)(*(int *)(param_1 + 3) + 4) != 0) &&
             (*(int *)(*(int *)(*(int *)(param_1 + 3) + 4) + 4) != 0)) {
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
          local_dc = &DAT_01c222d8;
          if (PTR_FUN_01c222d4 != (undefined *)0x0) {
            FUN_00e8cd95();
          }
          if (DAT_01c222d8 == '\0') {
            FUN_00dfdf80();
          }
          else {
            FUN_00956500();
          }
          iVar6 = FUN_00909ad0();
          if (iVar6 == 0) {
            FUN_0094bfb0();
            FUN_0094c500();
            if (*local_dc == '\0') {
              FUN_00dfdf80();
            }
            else {
              FUN_00956500();
            }
            iVar6 = FUN_00909ad0();
            if (iVar6 != 0) goto LAB_008074d9;
            FUN_0094bfb0();
            FUN_0094c500();
            if (*local_dc == '\0') {
              FUN_00dfdf80();
            }
            else {
              FUN_00956500();
            }
            iVar6 = FUN_00909ad0();
            if (iVar6 == 0) {
              FUN_0094bfb0();
              FUN_0094c500();
              if (*local_dc == '\0') {
                FUN_00dfdf80();
              }
              else {
                FUN_00956500();
              }
              iVar6 = FUN_00909ad0();
              if (iVar6 != 0) goto LAB_00807560;
              iVar6 = 1;
            }
            else {
LAB_00807560:
              iVar6 = 2;
            }
          }
          else {
LAB_008074d9:
            iVar6 = 0;
          }
          if (iVar6 == 0) {
            local_28 = FUN_00805380();
            if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 5) = 4;
              FUN_00eaecdd();
              FUN_00da3800();
              FUN_00dfc9c0();
              return;
            }
LAB_008069e1:
            if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_28 + 0x20) == '\0') goto LAB_00808e31;
            local_18 = FUN_0077abc0();
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 5) = 5;
              FUN_00eaecdd();
              FUN_00da3800();
              FUN_00dfca00();
              return;
            }
LAB_008068d9:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00eaeca8();
            if (*(int *)(param_1 + 4) != 0) {
              *param_1 = *(double *)(*(int *)(param_1 + 4) + 4) / _DAT_018d6ef8;
              param_1[1] = *(double *)(*(int *)(param_1 + 4) + 0xc) / _DAT_018d6ef8;
              if (PTR_FUN_01c21b04 != (undefined *)0x0) {
                FUN_00e8e290();
              }
              puVar4 = (undefined4 *)FUN_00bca920();
              if (puVar4 == (undefined4 *)0x0) {
                *(undefined4 *)(param_1 + 9) = 0;
                *(undefined4 *)((int)param_1 + 0x4c) = 0;
                *(undefined4 *)(param_1 + 10) = 0;
              }
              else {
                *(undefined4 *)(param_1 + 9) = *puVar4;
                *(undefined4 *)((int)param_1 + 0x4c) = puVar4[1];
                *(undefined4 *)(param_1 + 10) = puVar4[2];
                while( true ) {
                  local_28 = FUN_0077af00();
                  if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 5) = 7;
                    FUN_00eaeca8();
                    FUN_00da3800();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_008067d6:
                  if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(char *)(local_28 + 0x20) != '\0') break;
                  FUN_00906a20();
                  FUN_00782420();
                  local_1c = FUN_00975000();
                  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 5) = 6;
                    FUN_00eaecdd();
                    FUN_00da3800();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0080689a:
                  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
                while( true ) {
                  local_2c = *(int *)(iVar3 + 0x1c);
                  if ((local_2c != 0) && (*(int *)(local_2c + 0x10) != 0)) {
                    /* WARNING: Subroutine does not return */
                    FUN_00968fa0();
                  }
                  local_20 = FUN_0077ad90();
                  if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 5) = 8;
                    FUN_00eaeca8();
                    FUN_00da3800();
                    FUN_00dfca00();
                    return;
                  }
LAB_00806784:
                  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_20 + 0x20) != 0) {
                    if (*(int *)(DAT_01c28a5c + 0xc) == 0) {
                      FUN_00eae9a0();
                      FUN_00e9ac0f(in_stack_fffffe9c);
                      in_stack_fffffe9c = 0x8080da;
                      FUN_00eaebef();
                    }
                    FUN_00e4e4a0(&PTR_DAT_01544bfc,local_68);
                  }
                  FUN_00eaebca();
                  if ((*(int *)(*(int *)(param_1 + 3) + 4) == 0) ||
                     (*(char *)(*(int *)(*(int *)(param_1 + 3) + 4) + 0x3c) != '\0')) break;
                  local_18 = FUN_0077abc0();
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 5) = 9;
                    FUN_00eaecdd();
                    FUN_00da3800();
                    FUN_00dfca00();
                    return;
                  }
LAB_008066d5:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  FUN_00eaecdd();
                  if ((*(int *)(param_1 + 4) == 0) ||
                     (*(char *)(*(int *)(param_1 + 4) + 0x69) == '\0')) {
                    local_70 = (double)*(int *)(param_1 + 9);
                    local_78 = (double)*(int *)((int)param_1 + 0x4c);
                    local_7c = *(undefined4 *)(*(int *)(iVar3 + 0x14) + 8);
                    FUN_00eaeae1();
                    iVar6 = FUN_00eae9a0();
                    *(double *)(iVar6 + 4) = local_70 * _DAT_018d6ef8;
                    FUN_00eaebca();
                    iVar6 = FUN_00eae9a0();
                    *(double *)(iVar6 + 4) = local_78 * _DAT_018d6ef8;
                    FUN_00eaebca();
                    iVar6 = FUN_00eae9a0();
                    *(undefined4 *)(iVar6 + 4) = 0;
                    FUN_00eaebca();
                    FUN_0077a610(extraout_ECX_04,&PTR_DAT_01bf1f80);
                    local_1c = FUN_00975000();
                    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                      *(undefined4 *)(param_1 + 5) = 0xb;
                      FUN_00eaecdd();
                      FUN_00da3800();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_00806604:
                    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    local_18 = FUN_0077abc0();
                    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                      *(undefined4 *)(param_1 + 5) = 0xc;
                      FUN_00eaeca8();
                      FUN_00da3800();
                      FUN_00dfca00();
                      return;
                    }
LAB_0080654f:
                    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    FUN_00eaeca8();
                    if ((*(int *)(extraout_ECX + 0x20) == 0) ||
                       (*(char *)(*(int *)(extraout_ECX + 0x20) + 0x69) == '\0')) {
                      local_20 = FUN_0077ad90();
                      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                        *(undefined4 *)(param_1 + 5) = 0xd;
                        FUN_00eaecdd();
                        FUN_00da3800();
                        FUN_00dfca00();
                        return;
                      }
LAB_008064fd:
                      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                      if (*(int *)(local_20 + 0x20) != 0) {
                        if (*(int *)(DAT_01c28a5c + 0x10) == 0) {
                          FUN_00eae9a0();
                          FUN_00e9ac20(in_stack_fffffe9c);
                          in_stack_fffffe9c = 0x8082c4;
                          FUN_00eaebef();
                        }
                        FUN_00e4e4a0(&PTR_DAT_01544bfc,local_80);
                      }
                      FUN_00eaebca();
                      if ((*(int *)(*(int *)(param_1 + 3) + 4) == 0) ||
                         (*(char *)(*(int *)(*(int *)(param_1 + 3) + 4) + 0x3c) != '\0')) break;
                      local_88 = *param_1;
                      local_90 = param_1[1];
                      FUN_00eaeae1();
                      iVar6 = FUN_00eae9a0();
                      *(double *)(iVar6 + 4) = local_88 * _DAT_018d6ef8;
                      FUN_00eaebca();
                      iVar6 = FUN_00eae9a0();
                      *(double *)(iVar6 + 4) = local_90 * _DAT_018d6ef8;
                      FUN_00eaebca();
                      iVar6 = FUN_00eae9a0();
                      *(undefined4 *)(iVar6 + 4) = 0;
                      FUN_00eaebca();
                      FUN_0077a610(extraout_ECX_05,&PTR_DAT_01bf1f80);
                      local_1c = FUN_00975000();
                      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                        *(undefined4 *)(param_1 + 5) = 0xe;
                        FUN_00eaecdd();
                        FUN_00da3800();
                        FUN_00dfc9c0();
                        return;
                      }
LAB_00808004:
                      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                    }
                  }
                  else {
                    local_1c = FUN_00975000();
                    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                      *(undefined4 *)(param_1 + 5) = 10;
                      FUN_00eaecdd();
                      FUN_00da3800();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_00806694:
                    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                  }
                }
              }
            }
          }
          else {
            if (iVar6 == 2) {
              do {
                FUN_00eae9a0();
                FUN_00eaeca8();
                FUN_00eaebef();
                local_18 = FUN_0077abc0();
                in_stack_fffffea0 = local_dc;
                if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 5) = 0xf;
                  FUN_00eaecdd();
                  FUN_00da3800();
                  FUN_00dfca00();
                  return;
                }
LAB_00807f5b:
                if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                FUN_00eaecdd();
                if ((*(int *)(param_1 + 4) == 0) ||
                   (*(char *)(*(int *)(param_1 + 4) + 0x69) == '\0')) {
                  iVar6 = *(int *)((int)param_1 + 0x1c);
                  if ((*(int *)(*(int *)(iVar6 + 8) + 4) == 0) ||
                     (iVar7 = FUN_00e4e3a0(), iVar7 == 0)) {
                    uVar5 = 0;
                  }
                  else {
                    uVar5 = *(undefined4 *)(iVar7 + 0xc);
                  }
                  *(undefined4 *)(iVar6 + 0x10) = uVar5;
                  if (*(int *)(*(int *)(*(int *)((int)param_1 + 0x1c) + 8) + 4) != 0) {
                    FUN_00e4e3a0();
                  }
                  FUN_00eaebef();
                  uVar5 = FUN_00eae9a0();
                  if (PTR_FUN_01c21b04 != (undefined *)0x0) {
                    FUN_00e8e290();
                  }
                  FUN_00e9ad0e(in_stack_fffffe9c);
                  FUN_00e23c20(&PTR_DAT_0155b30c,local_9c,uVar5);
                  local_f8 = *(char **)(*(int *)(*(int *)((int)param_1 + 0x1c) + 8) + 0xc);
                  if (local_f8 == (char *)0x0) {
                    FUN_00eae9a0();
                    FUN_00e9acfd(in_stack_fffffea0);
                    FUN_00eaebef();
                    local_f8 = extraout_ECX_06;
                  }
                  in_stack_fffffe9c = FUN_00eae9a0();
                  FUN_00e9ad30(in_stack_fffffea4);
                  in_stack_fffffea4 = 0;
                  local_28 = FUN_00787920(0,0,0,0,0,0,in_stack_fffffe9c,local_f8,0);
                  if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 5) = 0x11;
                    FUN_00eaecdd();
                    FUN_00da3800();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00807e43:
                  in_stack_fffffea0 = local_f8;
                  if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                    in_stack_fffffea0 = local_f8;
                  }
                  if ((((*(char *)(local_28 + 0x20) != '\0') ||
                       (iVar6 = *(int *)(*(int *)(*(int *)((int)param_1 + 0x1c) + 8) + 4),
                       iVar6 == 0)) || (*(char *)(iVar6 + 0x3c) != '\0')) &&
                     (*(char *)(*(int *)(*(int *)(*(int *)((int)param_1 + 0x1c) + 8) + 8) + 8) ==
                      '\0')) {
                    local_24 = FUN_008053c0();
                    if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
                      *(undefined4 *)(param_1 + 5) = 0x12;
                      FUN_00eaecdd();
                      FUN_00da3800();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_00807d9b:
                    if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    if (*(char *)(local_24 + 0x21) == '\0') goto LAB_008075c5;
                    *(undefined1 *)(*(int *)(*(int *)(*(int *)((int)param_1 + 0x1c) + 8) + 8) + 8) =
                         1;
                  }
                  local_20 = FUN_0077ad90();
                  local_dc = in_stack_fffffea0;
                  if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 5) = 0x13;
                    FUN_00eaecdd();
                    FUN_00da3800();
                    FUN_00dfca00();
                    return;
                  }
LAB_00807d3c:
                  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_20 + 0x20) != 0) {
                    if (*(int *)(DAT_01c28a5c + 0x18) == 0) {
                      FUN_00eae9a0();
                      FUN_00e9ac42(in_stack_fffffe9c);
                      in_stack_fffffe9c = 0x80867e;
                      FUN_00eaebef();
                    }
                    FUN_00e4e4a0(&PTR_DAT_01544bfc,local_a0);
                  }
                  FUN_00eaebef();
                  *(undefined4 *)((int)param_1 + 0x1c) = 0;
                }
                else {
                  local_1c = FUN_00975000();
                  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 5) = 0x10;
                    FUN_00eaecdd();
                    FUN_00da3800();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00807ef9:
                  local_dc = in_stack_fffffea0;
                  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                    local_dc = in_stack_fffffea0;
                  }
                }
                iVar6 = *(int *)(*(int *)(param_1 + 3) + 4);
                if ((iVar6 == 0) ||
                   (*(char *)(*(int *)(*(int *)(param_1 + 3) + 8) + 8) == '\0' &&
                    *(char *)(iVar6 + 0x3c) != '\0')) goto LAB_008075c5;
              } while( true );
            }
            local_20 = FUN_0077ad90();
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 5) = 0x14;
              FUN_00eaecdd();
              FUN_00da3800();
              FUN_00dfca00();
              return;
            }
LAB_00807ce2:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_20 + 0x20) != 0) {
              if (*(int *)(DAT_01c28a5c + 0x1c) == 0) {
                FUN_00eae9a0();
                FUN_00e9ac53(in_stack_fffffe9c);
                in_stack_fffffe9c = 0x80874d;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01544bfc,local_a4);
            }
            FUN_00eaebef();
            iVar6 = *(int *)(*(int *)(param_1 + 3) + 4);
            if (iVar6 != 0) {
              if (*(char *)(iVar6 + 0x3c) != '\0') goto LAB_008075c5;
              if (*(int *)(iVar6 + 0x1c) != 0) {
                if (*(int *)(DAT_01c28a5c + 0x20) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9ac64(in_stack_fffffe9c);
                  in_stack_fffffe9c = 0x8087e9;
                  FUN_00eaebef();
                }
                FUN_00e4ee90();
                FUN_00e4ee50();
                FUN_00eaeca8();
                *(undefined4 *)((int)param_1 + 0x5c) = 0;
                *(undefined4 *)(param_1 + 0xc) = extraout_ECX_07;
                *(undefined4 *)((int)param_1 + 100) = 0;
switchD_008064a2_caseD_15:
                if (local_14 != 0x15) {
                  uVar5 = in_stack_fffffe9c;
                  if (local_14 != 0x16) goto LAB_008088eb;
                  local_1c = *(int *)((int)param_1 + 0x3c);
                  *(undefined4 *)((int)param_1 + 0x3c) = 0;
                  local_14 = -1;
                  *(undefined4 *)(param_1 + 5) = 0xffffffff;
                  goto LAB_008088d0;
                }
                local_28 = *(int *)((int)param_1 + 0x54);
                *(undefined4 *)((int)param_1 + 0x54) = 0;
                local_14 = -1;
                *(undefined4 *)(param_1 + 5) = 0xffffffff;
LAB_00808843:
                if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 5) = 0x16;
                  FUN_00eaecdd();
                  FUN_00da3800();
                  FUN_00dfc9c0();
                  return;
                }
LAB_008088d0:
                uVar5 = in_stack_fffffe9c;
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                  uVar5 = in_stack_fffffe9c;
                }
LAB_008088eb:
                iVar6 = FUN_00cd0850();
                if (iVar6 != 0) break;
                *(undefined4 *)(param_1 + 0xb) = 0;
                *(undefined4 *)((int)param_1 + 0x5c) = 0;
                *(undefined4 *)(param_1 + 0xc) = 0;
                *(undefined4 *)((int)param_1 + 100) = 0;
                local_20 = FUN_0077ad90();
                in_stack_fffffe9c = uVar5;
                if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 5) = 0x17;
                  FUN_00eaeca8();
                  FUN_00da3800();
                  FUN_00dfca00();
                  return;
                }
LAB_00807c8e:
                if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_20 + 0x20) != 0) {
                  if (*(int *)(DAT_01c28a5c + 0x24) == 0) {
                    FUN_00eae9a0();
                    FUN_00e9ac75(in_stack_fffffe9c);
                    in_stack_fffffe9c = 0x808d8e;
                    FUN_00eaebef();
                  }
                  FUN_00e4e4a0(&PTR_DAT_01544bfc,&uStack_ac);
                }
                FUN_00eaebca();
              }
            }
            if ((*(int *)(*(int *)(param_1 + 3) + 4) == 0) ||
               (*(char *)(*(int *)(*(int *)(param_1 + 3) + 4) + 0x3c) == '\0')) {
              FUN_007876b0();
              goto LAB_00808e31;
            }
          }
          goto LAB_008075c5;
        }
        local_24 = FUN_008053c0();
        if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 5) = 3;
          FUN_00eaecdd();
          FUN_00da3800();
          FUN_00dfc9c0();
          return;
        }
LAB_00806a7a:
        if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_24 + 0x21) != '\0') {
          *(undefined1 *)(*(int *)(*(int *)(param_1 + 3) + 8) + 8) = 1;
          goto LAB_00806ab4;
        }
      }
LAB_00806d75:
      if (0xe < *(int *)((int)param_1 + 0x2c)) {
LAB_00808e31:
        *(undefined4 *)(param_1 + 5) = 0xfffffffe;
        *(undefined4 *)((int)param_1 + 0x14) = 0;
        if (*(int *)((int)param_1 + 0x34) == 0) {
          if (PTR_FUN_01c22110 != (undefined *)0x0) {
            FUN_00e8eaee();
          }
          FUN_00eaeca8();
          return;
        }
        iVar3 = FUN_00c0a790();
        if (iVar3 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
      FUN_00eae9a0();
      FUN_00eaeca8();
      FUN_00eaebca();
    }
    local_18 = FUN_0077abc0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 5) = 0;
      FUN_00eaecdd();
      FUN_00da3800();
      FUN_00dfca00();
      return;
    }
  } while( true );
  iVar6 = *(int *)((int)param_1 + 0x5c);
  iVar7 = FUN_00eae9a0();
  *(undefined4 *)(iVar7 + 4) = *(undefined4 *)(iVar6 + 0xc);
  local_38 = *(int *)(iVar6 + 0x10) - *(int *)(iVar6 + 0x14);
  if (local_38 < 1) {
    local_38 = 1;
  }
  uVar8 = FUN_00eae9a0();
  if (PTR_FUN_01c21b04 != (undefined *)0x0) {
    FUN_00e8e290();
  }
  FUN_00e9ad41(uVar5);
  FUN_00e21c80(&PTR_DAT_0155b170,&uStack_a8,uVar8);
  in_stack_fffffe9c = local_3c;
  uVar5 = uVar8;
  if ((local_44 == 0) || (*(int *)(local_44 + 8) < 1)) goto LAB_008088eb;
  if (PTR_LAB_01c23e7c != (undefined *)0x0) {
    FUN_00e8f54a();
  }
  local_58 = FUN_00b848a0();
  uVar1 = _UNK_018d6f0c;
  uVar8 = _UNK_018d6f08;
  uVar5 = _UNK_018d6f04;
  if (local_58 == 0) {
    local_4c = (undefined4 *)0x0;
    local_cc = 0;
  }
  else {
    local_4c = (undefined4 *)(local_58 + 8);
    local_cc = *(uint *)(local_58 + 4);
  }
  local_5c = 0;
  local_54 = 0;
  local_50 = '\0';
  local_48 = local_cc;
  if (local_cc < 0x19) {
    FUN_0099d6f0();
  }
  else {
    *local_4c = _DAT_018d6f00;
    local_4c[1] = uVar5;
    local_4c[2] = uVar8;
    local_4c[3] = uVar1;
    uVar1 = _UNK_018d6f1c;
    uVar8 = _UNK_018d6f18;
    uVar5 = _UNK_018d6f14;
    local_4c[4] = _DAT_018d6f10;
    local_4c[5] = uVar5;
    local_4c[6] = uVar8;
    local_4c[7] = uVar1;
    uVar2 = _UNK_018d6f28;
    *(undefined8 *)(local_4c + 8) = _DAT_018d6f20;
    *(undefined8 *)(local_4c + 10) = uVar2;
    *(undefined2 *)(local_4c + 0xc) = 0x5b;
    local_54 = 0x19;
  }
  iVar6 = *(int *)(iVar6 + 4);
  if ((local_50 == '\0') && (iVar6 != 0)) {
    if (local_48 < local_54) goto LAB_00808e2b;
    if (local_48 - local_54 < *(uint *)(iVar6 + 4)) goto LAB_00808a94;
    FUN_00930280(*(int *)(iVar6 + 4) * 2);
    local_54 = local_54 + *(int *)(iVar6 + 4);
  }
  else {
LAB_00808a94:
    FUN_0099d670();
  }
  if (local_54 <= local_48) {
    if (local_48 - local_54 < 2) {
      FUN_0099d6f0();
    }
    else {
      *(undefined4 *)((int)local_4c + local_54 * 2) = 0x280020;
      local_54 = local_54 + 2;
    }
    FUN_00de77e0();
    if (local_54 <= local_48) {
      puVar4 = (undefined4 *)((int)local_4c + local_54 * 2);
      if (local_48 - local_54 < 4) {
        FUN_0099d6f0();
      }
      else {
        *puVar4 = 0x5d0029;
        puVar4[1] = 0x780020;
        local_54 = local_54 + 4;
      }
      FUN_00de77e0();
      uVar1 = _UNK_018d6f3c;
      uVar8 = _UNK_018d6f38;
      uVar5 = _UNK_018d6f34;
      if (local_54 <= local_48) {
        puVar4 = (undefined4 *)((int)local_4c + local_54 * 2);
        if (local_48 - local_54 < 0x1e) {
          FUN_0099d6f0();
        }
        else {
          *puVar4 = _DAT_018d6f30;
          puVar4[1] = uVar5;
          puVar4[2] = uVar8;
          puVar4[3] = uVar1;
          uVar1 = _UNK_018d6f4c;
          uVar8 = _UNK_018d6f48;
          uVar5 = _UNK_018d6f44;
          puVar4[4] = _DAT_018d6f40;
          puVar4[5] = uVar5;
          puVar4[6] = uVar8;
          puVar4[7] = uVar1;
          uVar2 = _UNK_018d6f58;
          *(undefined8 *)(puVar4 + 8) = _DAT_018d6f50;
          *(undefined8 *)(puVar4 + 10) = uVar2;
          puVar4[0xc] = 0x4d0028;
          puVar4[0xd] = 0x700061;
          puVar4[0xe] = 0x20003a;
          local_54 = local_54 + 0x1e;
        }
        FUN_00de77e0();
        if (local_54 <= local_48) {
          puVar4 = (undefined4 *)((int)local_4c + local_54 * 2);
          if (local_48 - local_54 < 7) {
            FUN_0099d6f0();
          }
          else {
            *puVar4 = 0x20002c;
            puVar4[1] = 0x50004e;
            puVar4[2] = 0x3a0043;
            *(undefined2 *)(puVar4 + 3) = 0x20;
            local_54 = local_54 + 7;
          }
          FUN_00de77e0();
          uVar1 = _UNK_018d6f6c;
          uVar8 = _UNK_018d6f68;
          uVar5 = _UNK_018d6f64;
          if (local_54 <= local_48) {
            puVar4 = (undefined4 *)((int)local_4c + local_54 * 2);
            if (local_48 - local_54 < 0x11) {
              FUN_0099d6f0();
            }
            else {
              *puVar4 = _DAT_018d6f60;
              puVar4[1] = uVar5;
              puVar4[2] = uVar8;
              puVar4[3] = uVar1;
              uVar2 = _UNK_018d6f78;
              *(undefined8 *)(puVar4 + 4) = _DAT_018d6f70;
              *(undefined8 *)(puVar4 + 6) = uVar2;
              *(undefined2 *)(puVar4 + 8) = 0x2e;
              local_54 = local_54 + 0x11;
            }
            FUN_0099d560();
            FUN_007876b0();
            FUN_0092af10();
            local_28 = FUN_007878b0();
            if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 5) = 0x15;
              FUN_00eaecdd();
              FUN_00da3800();
              FUN_00dfc9c0();
              return;
            }
            goto LAB_00808843;
          }
        }
      }
    }
  }
LAB_00808e2b:
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

