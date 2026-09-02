/* Address: 0080d740 | Ghidra name: FUN_0080d740 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0080d740(double *param_1)

{
  undefined4 *puVar1;
  double dVar2;
  undefined4 uVar3;
  undefined1 uVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int iVar8;
  undefined1 uVar9;
  uint *puVar10;
  undefined4 uVar11;
  uint *puVar12;
  float10 fVar13;
  undefined1 in_stack_ffffff08;
  undefined4 in_stack_ffffff0c;
  undefined2 local_a8;
  undefined1 local_a0 [4];
  undefined4 local_9c;
  undefined1 local_98 [4];
  undefined4 local_94;
  undefined4 local_90;
  double local_8c;
  double local_84;
  double local_7c;
  undefined4 local_74;
  undefined1 local_70 [4];
  uint local_6c [6];
  double local_54;
  double local_4c;
  uint local_44 [4];
  int local_34;
  uint local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  iVar5 = -0xc0;
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
  iVar5 = *(int *)((int)param_1 + 0xc);
  switch(*(undefined4 *)((int)param_1 + 0x1c)) {
  case 0:
    local_14 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
LAB_0080e2f9:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(byte *)(*(int *)(*(int *)(param_1 + 2) + 4) + 0x30) &
        *(int *)(*(int *)(*(int *)(param_1 + 2) + 4) + 0x34) ==
        *(int *)(*(int *)(local_14 + 0x20) + 0x28)) == 0) {
      local_18 = FUN_00787840(0,0,0,0);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 1;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfc9c0();
        return;
      }
      goto LAB_0080e27a;
    }
    goto LAB_0080e216;
  case 1:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
LAB_0080e27a:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 2;
      FUN_00eaecdd();
      FUN_00da4040();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 2:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    break;
  case 3:
    local_1c = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080e1b9;
  case 4:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080e13c;
  case 5:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080e07d;
  case 6:
    local_14 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080de65;
  case 7:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080de2f;
  case 8:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080ddac;
  case 9:
    local_28 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080dc68;
  case 10:
    local_2c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080dc26;
  case 0xb:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080db99;
  case 0xc:
    local_2c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080daff;
  case 0xd:
    local_2c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080dabd;
  case 0xe:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080d9fa;
  case 0xf:
    local_2c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080d950;
  case 0x10:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080d8c3;
  case 0x11:
    local_2c = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080d824;
  case 0x12:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080d7eb;
  case 0x13:
    local_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080d7b2;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    FUN_00779650();
    FUN_00eaebca();
    if (*(int *)(*(int *)(param_1 + 2) + 4) != 0) {
      local_14 = FUN_0077abc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfca00(&PTR_DAT_01553fe8);
        return;
      }
      goto LAB_0080e2f9;
    }
    goto LAB_0080e493;
  }
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
LAB_0080e216:
  local_1c = FUN_0077acc0();
  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)((int)param_1 + 0x1c) = 3;
    FUN_00eaecdd();
    FUN_00da4040();
    FUN_00dfca00(&PTR_DAT_01568d74);
    return;
  }
LAB_0080e1b9:
  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_1c + 0x20) != 0) {
    FUN_00eae9a0();
    FUN_00e9ae84(in_stack_ffffff08);
    FUN_00e4e4a0(&PTR_DAT_01544440,(char)local_70);
  }
  FUN_00eaeca8();
  if (*(int *)((int)param_1 + 0x14) == 0) {
    FUN_00906aa0(0x40);
    FUN_007876b0();
LAB_0080e493:
    uVar9 = 0;
    uVar4 = 0;
  }
  else {
    while( true ) {
      local_20 = FUN_0077ac00();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 5;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfc9c0();
        return;
      }
LAB_0080e07d:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_20 + 0x20) != '\0') break;
      local_74 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
      FUN_00eaeae1();
      iVar8 = FUN_00eae9a0();
      *(undefined4 *)(iVar8 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_00,0xd8);
      local_18 = FUN_00975000((char)*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 4;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfc9c0();
        return;
      }
LAB_0080e13c:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    *param_1 = DAT_018d71f0;
    while (_DAT_018d71f8 < *param_1) {
      local_14 = FUN_0077abc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 6;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfca00(0xe8);
        return;
      }
LAB_0080de65:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_4c = *(double *)(*(int *)(local_14 + 0x20) + 0xc) / _DAT_018d71e0;
      local_7c = *(double *)(*(int *)((int)param_1 + 0x14) + 0xc) / _DAT_018d71e0;
      dVar2 = *(double *)(*(int *)(local_14 + 0x20) + 4) / _DAT_018d71e0 -
              *(double *)(*(int *)((int)param_1 + 0x14) + 4) / _DAT_018d71e0;
      fVar13 = (float10)FUN_00eb6460(DAT_018d71e8,SUB84(dVar2,0),(char)((ulonglong)dVar2 >> 0x20));
      local_84 = (double)fVar13;
      fVar13 = (float10)FUN_00eb6460(DAT_018d71e8,SUB84(local_4c - local_7c,0),
                                     (char)((ulonglong)(local_4c - local_7c) >> 0x20));
      in_stack_ffffff0c = (undefined4)((ulonglong)(double)fVar13 >> 0x20);
      *param_1 = SQRT((double)fVar13 + local_84);
      local_54 = *(double *)(*(int *)((int)param_1 + 0x14) + 4) / _DAT_018d71e0;
      local_8c = *(double *)(*(int *)((int)param_1 + 0x14) + 0xc) / _DAT_018d71e0;
      local_90 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
      FUN_00eaeae1();
      iVar8 = FUN_00eae9a0();
      *(double *)(iVar8 + 4) = local_54 * _DAT_018d71e0;
      FUN_00eaebca();
      iVar8 = FUN_00eae9a0();
      *(double *)(iVar8 + 4) = local_8c * _DAT_018d71e0;
      FUN_00eaebca();
      iVar8 = FUN_00eae9a0();
      *(undefined4 *)(iVar8 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,0x80);
      local_18 = FUN_00975000((char)*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 7;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfc9c0();
        return;
      }
LAB_0080de2f:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_00787780();
    while( true ) {
      local_2c = FUN_0077b0a0(0xa8);
      if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0xf;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfca00(0xa8);
        return;
      }
LAB_0080d950:
      if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_2c + 0x20) != 0) break;
      while( true ) {
        local_2c = FUN_0077b0a0(0x5c);
        if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 0xc;
          FUN_00eaecdd();
          FUN_00da4040();
          FUN_00dfca00(0xa8);
          return;
        }
LAB_0080daff:
        if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_2c + 0x20) != 0) break;
        do {
          uVar11 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 2) + 4) + 0x28);
          local_94 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
          uVar7 = FUN_00eaeae1();
          iVar8 = FUN_00eae9a0();
          *(undefined4 *)(iVar8 + 4) = uVar11;
          FUN_00eaebca();
          iVar8 = FUN_00eae9a0();
          *(undefined4 *)(iVar8 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(uVar7,0x98);
          local_18 = FUN_00975000((char)*(undefined4 *)(iVar5 + 0x1c));
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)param_1 + 0x1c) = 8;
            FUN_00eaecdd();
            FUN_00da4040();
            FUN_00dfc9c0();
            return;
          }
LAB_0080ddac:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_28 = FUN_0077b060();
          if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)param_1 + 0x1c) = 9;
            FUN_00eaecdd();
            FUN_00da4040();
            FUN_00dfca00(0x74);
            return;
          }
LAB_0080dc68:
          if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(DAT_01c28a64 + 0x24) == 0) {
            FUN_00eae9a0();
            FUN_00e9adfc(in_stack_ffffff0c);
            in_stack_ffffff0c = 0x80dcc8;
            FUN_00eaebef();
          }
          local_24 = FUN_00e4d760(0x90);
          if (*(int *)(DAT_01c28a64 + 0x28) == 0) {
            FUN_00eae9a0();
            FUN_00e9ae0d(in_stack_ffffff0c);
            in_stack_ffffff0c = 0x80dd19;
            FUN_00eaebef();
          }
          iVar8 = FUN_00e4d760(0x90);
        } while (local_24 == 0);
        if (iVar8 != 0) {
          local_2c = FUN_0077b0a0(0x78);
          if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)param_1 + 0x1c) = 10;
            FUN_00eaecdd();
            FUN_00da4040();
            FUN_00dfca00(0xa8);
            return;
          }
LAB_0080dc26:
          if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_2c + 0x20) == 0) {
            iVar8 = 0;
          }
          else {
            if (*(int *)(DAT_01c28a64 + 0x2c) == 0) {
              FUN_00eae9a0();
              FUN_00e9ae1e(in_stack_ffffff0c);
              in_stack_ffffff0c = 0x80e6ac;
              FUN_00eaebef();
            }
            iVar8 = FUN_00e4e4a0(&PTR_DAT_01543d24,(char)local_98);
          }
          if (iVar8 == 0) {
            uVar11 = 0;
          }
          else {
            uVar11 = *(undefined4 *)(iVar8 + 8);
          }
          local_9c = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
          iVar8 = FUN_00eaeae1();
          *(undefined ***)(iVar8 + 8) = &PTR_DAT_01b91278;
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = uVar11;
          FUN_00eaebca();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(iVar8,100);
          local_18 = FUN_00975000((char)*(undefined4 *)(iVar5 + 0x1c));
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)param_1 + 0x1c) = 0xb;
            FUN_00eaecdd();
            FUN_00da4040();
            FUN_00dfc9c0();
            return;
          }
LAB_0080db99:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
      local_2c = FUN_0077b0a0(0x5c);
      if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0xd;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfca00(0xa8);
        return;
      }
LAB_0080dabd:
      if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_2c + 0x20) != 0) {
        if (*(int *)(*(int *)(param_1 + 2) + 0xc) == 0) {
          FUN_00eae9a0();
          FUN_00e9ae95(in_stack_ffffff0c);
          in_stack_ffffff0c = 0x80e7ed;
          FUN_00eaebef();
        }
        FUN_00e4e4a0(&PTR_DAT_01543d24,(char)local_a0);
      }
      FUN_00eaeca8();
      local_18 = FUN_00975000((char)*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0xe;
        FUN_00eaecdd();
        FUN_00da4040();
        FUN_00dfc9c0();
        return;
      }
LAB_0080d9fa:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(param_1 + 3) != 0) {
        uVar11 = *(undefined4 *)(*(int *)(param_1 + 3) + 8);
        iVar8 = FUN_00eaeae1();
        *(undefined ***)(iVar8 + 8) = &PTR_DAT_01b9125c;
        iVar6 = FUN_00eae9a0();
        *(undefined4 *)(iVar6 + 4) = uVar11;
        FUN_00eaebca();
        iVar6 = FUN_00eae9a0();
        *(undefined4 *)(iVar6 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar8,100);
      }
      *(undefined4 *)(param_1 + 3) = 0;
    }
    FUN_0077ab40();
    local_18 = FUN_00975000((char)*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 0x10;
      FUN_00eaecdd();
      FUN_00da4040();
      FUN_00dfc9c0();
      return;
    }
LAB_0080d8c3:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_2c = FUN_0077b0a0(0xa8);
    if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 0x11;
      FUN_00eaecdd();
      FUN_00da4040();
      FUN_00dfca00(0xa8);
      return;
    }
LAB_0080d824:
    if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_2c + 0x20) == 0) {
      FUN_0099d430(1);
      uVar3 = _UNK_018d720c;
      uVar7 = _UNK_018d7208;
      uVar11 = _UNK_018d7204;
      puVar10 = local_6c;
      puVar12 = local_44;
      for (iVar8 = 6; iVar8 != 0; iVar8 = iVar8 + -1) {
        *puVar12 = *puVar10;
        puVar10 = puVar10 + 1;
        puVar12 = puVar12 + 1;
      }
      if (local_44[2] <= local_30) {
        puVar1 = (undefined4 *)(local_34 + local_44[2] * 2);
        if (local_30 - local_44[2] < 0xb) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018d7200;
          puVar1[1] = uVar11;
          puVar1[2] = uVar7;
          puVar1[3] = uVar3;
          puVar1[4] = 0x68006e;
          *(undefined2 *)(puVar1 + 5) = 0x20;
          local_44[2] = local_44[2] + 0xb;
        }
        FUN_00de77e0();
        uVar3 = _UNK_018d721c;
        uVar7 = _UNK_018d7218;
        uVar11 = _UNK_018d7214;
        if (local_44[2] <= local_30) {
          puVar1 = (undefined4 *)(local_34 + local_44[2] * 2);
          if (local_30 - local_44[2] < 0xc) {
            FUN_0099d6f0();
          }
          else {
            *puVar1 = _DAT_018d7210;
            puVar1[1] = uVar11;
            puVar1[2] = uVar7;
            puVar1[3] = uVar3;
            puVar1[4] = 0x20006d;
            puVar1[5] = 0x1ee50076;
            local_44[2] = local_44[2] + 0xc;
          }
          FUN_0099d560();
          FUN_007876b0();
          if (0x13 < *(int *)(param_1 + 4)) {
            local_18 = FUN_00975000((char)*(undefined4 *)(iVar5 + 0x1c));
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)((int)param_1 + 0x1c) = 0x13;
              FUN_00eaecdd();
              FUN_00da4040();
              FUN_00dfc9c0();
              return;
            }
LAB_0080d7b2:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          uVar9 = 1;
          uVar4 = 0;
          goto LAB_0080e994;
        }
      }
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    FUN_007876b0();
    FUN_00787780();
    local_18 = FUN_00975000((char)*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 0x12;
      FUN_00eaecdd();
      FUN_00da4040();
      FUN_00dfc9c0();
      return;
    }
LAB_0080d7eb:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar9 = 0;
    uVar4 = 1;
  }
LAB_0080e994:
  *(undefined4 *)((int)param_1 + 0x1c) = 0xfffffffe;
  *(undefined4 *)(param_1 + 2) = 0;
  if (*(int *)((int)param_1 + 0x24) == 0) {
    local_a8 = CONCAT11(uVar4,uVar9);
    if (local_a8 == 0) {
      if (PTR_FUN_01c25738 != (undefined *)0x0) {
        FUN_00e8f946();
      }
    }
    else {
      iVar5 = FUN_00eae9a0();
      *(undefined4 *)(iVar5 + 0x1c) = 0x1000000;
      *(undefined1 *)(iVar5 + 0x20) = uVar9;
      *(undefined1 *)(iVar5 + 0x21) = uVar4;
    }
    FUN_00eaed7c();
  }
  else {
    iVar5 = FUN_00c56280(uVar9);
    if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

