/* Address: 008097e0 | Ghidra name: FUN_008097e0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_008097e0(double *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  double dVar4;
  undefined4 uVar5;
  undefined1 uVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined1 uVar10;
  uint *puVar11;
  uint *puVar12;
  float10 fVar13;
  undefined1 in_stack_fffffeec;
  undefined4 in_stack_fffffef0;
  undefined2 local_b0;
  undefined1 local_a8 [4];
  undefined4 local_a4;
  undefined4 local_a0;
  undefined1 local_9c [4];
  undefined4 local_98;
  undefined4 local_94;
  undefined1 local_90 [4];
  undefined4 local_8c;
  undefined4 local_88;
  double local_84;
  double local_7c;
  double local_74;
  undefined1 local_6c [4];
  uint local_68 [6];
  double local_50;
  double local_48;
  int local_40;
  uint local_3c [4];
  int local_2c;
  uint local_28;
  int local_24;
  int local_20;
  int local_1c [3];
  
  iVar7 = -0xf0;
  do {
    *(undefined4 *)((int)local_1c + iVar7) = 0;
    *(undefined4 *)((int)local_1c + iVar7 + 4) = 0;
    *(undefined4 *)((int)local_1c + iVar7 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar7) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar7) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar7) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar7) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar7) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar7) = 0;
    iVar7 = iVar7 + 0x30;
  } while (iVar7 != 0);
  iVar2 = *(int *)((int)param_1 + 0xc);
  local_1c[0] = iVar7;
  local_1c[1] = iVar7;
  local_1c[2] = iVar7;
  switch(*(undefined4 *)((int)param_1 + 0x1c)) {
  case 0:
    local_1c[2] = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
LAB_0080a432:
    if ((*(uint *)(local_1c[2] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_1c[2] + 0x20) != '\0') {
      local_1c[1] = FUN_0077abc0();
      if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 1;
        FUN_00eaecdd();
        FUN_00da3a40();
        FUN_00dfca00(&PTR_DAT_01553fe8);
        return;
      }
      goto LAB_0080a3aa;
    }
    break;
  case 1:
    local_1c[1] = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
LAB_0080a3aa:
    if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_1c[0] = FUN_0077acc0();
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 2;
      FUN_00eaecdd();
      FUN_00da3a40();
      FUN_00dfca00(&PTR_DAT_01568d74);
      return;
    }
    goto LAB_0080a368;
  case 2:
    local_1c[0] = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
LAB_0080a368:
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_1c[0] + 0x20) != 0) {
      FUN_00eae9a0();
      FUN_00e9ad52(in_stack_fffffeec);
      FUN_00e4e4a0(&PTR_DAT_01544440,(char)local_6c);
    }
    FUN_00eaeca8();
    if (*(int *)((int)param_1 + 0x14) == 0) {
      FUN_00906aa0(0x40);
      FUN_007876b0();
    }
    else {
      *param_1 = DAT_018d7040;
      while (_DAT_018d7048 < *param_1) {
        local_1c[1] = FUN_0077abc0();
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 3;
          FUN_00eaecdd();
          FUN_00da3a40();
          FUN_00dfca00(0xe8);
          return;
        }
LAB_0080a156:
        if ((*(uint *)(local_1c[1] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_48 = *(double *)(*(int *)(local_1c[1] + 0x20) + 0xc) / _DAT_018d7030;
        local_74 = *(double *)(*(int *)((int)param_1 + 0x14) + 0xc) / _DAT_018d7030;
        dVar4 = *(double *)(*(int *)(local_1c[1] + 0x20) + 4) / _DAT_018d7030 -
                *(double *)(*(int *)((int)param_1 + 0x14) + 4) / _DAT_018d7030;
        fVar13 = (float10)FUN_00eb6460(DAT_018d7038,SUB84(dVar4,0),(char)((ulonglong)dVar4 >> 0x20))
        ;
        local_7c = (double)fVar13;
        fVar13 = (float10)FUN_00eb6460(DAT_018d7038,SUB84(local_48 - local_74,0),
                                       (char)((ulonglong)(local_48 - local_74) >> 0x20));
        in_stack_fffffef0 = (undefined4)((ulonglong)(double)fVar13 >> 0x20);
        *param_1 = SQRT((double)fVar13 + local_7c);
        local_50 = *(double *)(*(int *)((int)param_1 + 0x14) + 4) / _DAT_018d7030;
        local_84 = *(double *)(*(int *)((int)param_1 + 0x14) + 0xc) / _DAT_018d7030;
        local_88 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
        FUN_00eaeae1();
        iVar7 = FUN_00eae9a0();
        *(double *)(iVar7 + 4) = local_50 * _DAT_018d7030;
        FUN_00eaebca();
        iVar7 = FUN_00eae9a0();
        *(double *)(iVar7 + 4) = local_84 * _DAT_018d7030;
        FUN_00eaebca();
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_00,0x80);
        local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 4;
          FUN_00eaecdd();
          FUN_00da3a40();
          FUN_00dfc9c0();
          return;
        }
LAB_0080a120:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      FUN_00787780();
      while( true ) {
        local_24 = FUN_0077b0a0(0xa8);
        if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 0x11;
          FUN_00eaecdd();
          FUN_00da3a40();
          FUN_00dfca00(0xa8);
          return;
        }
LAB_00809aa1:
        if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_24 + 0x20) != 0) break;
        while( true ) {
          local_24 = FUN_0077b0a0(0x5c);
          if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)param_1 + 0x1c) = 6;
            FUN_00eaecdd();
            FUN_00da3a40();
            FUN_00dfca00(0xa8);
            return;
          }
LAB_00809ff9:
          if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_24 + 0x20) != 0) break;
          uVar3 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 2) + 4) + 0x28);
          local_8c = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
          uVar9 = FUN_00eaeae1();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = uVar3;
          FUN_00eaebca();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(uVar9,0x98);
          local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
          if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)param_1 + 0x1c) = 5;
            FUN_00eaecdd();
            FUN_00da3a40();
            FUN_00dfc9c0();
            return;
          }
LAB_0080a093:
          if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        local_24 = FUN_0077b0a0(0x5c);
        if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 7;
          FUN_00eaecdd();
          FUN_00da3a40();
          FUN_00dfca00(0xa8);
          return;
        }
LAB_00809fb7:
        if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iVar7 = *(int *)(local_24 + 0x20);
        if (iVar7 == 0) {
          iVar8 = 0;
        }
        else {
          if (*(int *)(DAT_01c28a5c + 0x3c) == 0) {
            FUN_00eae9a0();
            FUN_00e9acdb(in_stack_fffffef0);
            in_stack_fffffef0 = 0x80a6eb;
            FUN_00eaebef();
          }
          iVar8 = FUN_00e4e4a0(&PTR_DAT_01543d24,(char)local_90);
        }
        if (iVar8 != 0) {
          FUN_007876b0();
          uVar3 = *(undefined4 *)(iVar8 + 8);
          local_94 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
          iVar7 = FUN_00eaeae1();
          *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b9125c;
          iVar8 = FUN_00eae9a0();
          *(undefined4 *)(iVar8 + 4) = uVar3;
          FUN_00eaebca();
          iVar8 = FUN_00eae9a0();
          *(undefined4 *)(iVar8 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(iVar7,100);
          local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
          if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)param_1 + 0x1c) = 8;
            FUN_00eaecdd();
            FUN_00da3a40();
            FUN_00dfc9c0();
            return;
          }
LAB_00809f2a:
          if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          while( true ) {
            local_24 = FUN_0077b0a0(0xa8);
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)((int)param_1 + 0x1c) = 10;
              FUN_00eaecdd();
              FUN_00da3a40();
              FUN_00dfca00(0xa8);
              return;
            }
LAB_00809def:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_24 + 0x20) != 0) break;
            local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)((int)param_1 + 0x1c) = 9;
              FUN_00eaecdd();
              FUN_00da3a40();
              FUN_00dfc9c0();
              return;
            }
LAB_00809efb:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          local_98 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
          iVar7 = FUN_00eaeae1();
          *(undefined ***)(iVar7 + 8) = &PTR_DAT_01ba04a8;
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = 0;
          FUN_00eaebca();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX,100);
          do {
            local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)((int)param_1 + 0x1c) = 0xb;
              FUN_00eaecdd();
              FUN_00da3a40();
              FUN_00dfc9c0();
              return;
            }
LAB_00809d62:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_24 = FUN_0077b0a0(0xa8);
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)((int)param_1 + 0x1c) = 0xc;
              FUN_00eaecdd();
              FUN_00da3a40();
              FUN_00dfca00(0xa8);
              return;
            }
LAB_00809d20:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_24 + 0x20) == 0) {
              iVar7 = 0;
            }
            else {
              if (*(int *)(DAT_01c28a5c + 0x40) == 0) {
                FUN_00eae9a0();
                FUN_00e9acec(in_stack_fffffef0);
                in_stack_fffffef0 = 0x80a88e;
                FUN_00eaebef();
              }
              iVar7 = FUN_00e4e4a0(&PTR_DAT_01543d24,(char)local_9c);
            }
          } while (iVar7 == 0);
          uVar3 = *(undefined4 *)(iVar7 + 8);
          local_a0 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
          iVar7 = FUN_00eaeae1();
          *(undefined ***)(iVar7 + 8) = &PTR_DAT_01ba04a8;
          iVar8 = FUN_00eae9a0();
          *(undefined4 *)(iVar8 + 4) = uVar3;
          FUN_00eaebca();
          iVar8 = FUN_00eae9a0();
          *(undefined4 *)(iVar8 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(iVar7,100);
          FUN_00787780();
          while( true ) {
            local_24 = FUN_0077b0a0(0x5c);
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)((int)param_1 + 0x1c) = 0xe;
              FUN_00eaecdd();
              FUN_00da3a40();
              FUN_00dfca00(0xa8);
              return;
            }
LAB_00809c50:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_24 + 0x20) != 0) break;
            uVar3 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 2) + 4) + 0x28);
            local_a4 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
            uVar9 = FUN_00eaeae1();
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = uVar3;
            FUN_00eaebca();
            iVar7 = FUN_00eae9a0();
            *(undefined4 *)(iVar7 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(uVar9,0x98);
            local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)((int)param_1 + 0x1c) = 0xd;
              FUN_00eaecdd();
              FUN_00da3a40();
              FUN_00dfc9c0();
              return;
            }
LAB_00809cea:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          local_24 = FUN_0077b0a0(0x5c);
          if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)param_1 + 0x1c) = 0xf;
            FUN_00eaecdd();
            FUN_00da3a40();
            FUN_00dfca00(0xa8);
            return;
          }
LAB_00809c0e:
          if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar7 = *(int *)(local_24 + 0x20);
        }
        if (iVar7 != 0) {
          if (*(int *)(*(int *)(param_1 + 2) + 0xc) == 0) {
            FUN_00eae9a0();
            FUN_00e9ad63(in_stack_fffffef0);
            in_stack_fffffef0 = 0x80aab5;
            FUN_00eaebef();
          }
          FUN_00e4e4a0(&PTR_DAT_01543d24,(char)local_a8);
        }
        FUN_00eaeca8();
        local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 0x10;
          FUN_00eaecdd();
          FUN_00da3a40();
          FUN_00dfc9c0();
          return;
        }
LAB_00809b4b:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(param_1 + 3) == 0) goto LAB_0080ac78;
        uVar3 = *(undefined4 *)(*(int *)(param_1 + 3) + 8);
        iVar7 = FUN_00eaeae1();
        *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b9125c;
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = uVar3;
        FUN_00eaebca();
        iVar8 = FUN_00eae9a0();
        *(undefined4 *)(iVar8 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar7,100);
        *(undefined4 *)(param_1 + 3) = 0;
      }
      FUN_0077ab40();
      local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0x12;
        FUN_00eaecdd();
        FUN_00da3a40();
        FUN_00dfc9c0();
        return;
      }
LAB_00809a14:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_24 = FUN_0077b0a0(0xa8);
      if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0x13;
        FUN_00eaecdd();
        FUN_00da3a40();
        FUN_00dfca00(0xa8);
        return;
      }
LAB_00809975:
      if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_24 + 0x20) != 0) {
        FUN_007876b0();
        FUN_00787780();
        local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 0x14;
          FUN_00eaecdd();
          FUN_00da3a40();
          FUN_00dfc9c0();
          return;
        }
LAB_0080993c:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        uVar10 = 0;
        uVar6 = 1;
        goto LAB_0080ad16;
      }
      FUN_0099d430(1);
      uVar5 = _UNK_018d705c;
      uVar9 = _UNK_018d7058;
      uVar3 = _UNK_018d7054;
      puVar11 = local_68;
      puVar12 = local_3c;
      for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
        *puVar12 = *puVar11;
        puVar11 = puVar11 + 1;
        puVar12 = puVar12 + 1;
      }
      if (local_28 < local_3c[2]) {
LAB_0080ad10:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      puVar1 = (undefined4 *)(local_2c + local_3c[2] * 2);
      if (local_28 - local_3c[2] < 0xb) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d7050;
        puVar1[1] = uVar3;
        puVar1[2] = uVar9;
        puVar1[3] = uVar5;
        puVar1[4] = 0x68006e;
        *(undefined2 *)(puVar1 + 5) = 0x20;
        local_3c[2] = local_3c[2] + 0xb;
      }
      FUN_00de77e0();
      uVar5 = _UNK_018d706c;
      uVar9 = _UNK_018d7068;
      uVar3 = _UNK_018d7064;
      if (local_28 < local_3c[2]) goto LAB_0080ad10;
      puVar1 = (undefined4 *)(local_2c + local_3c[2] * 2);
      if (local_28 - local_3c[2] < 0xc) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d7060;
        puVar1[1] = uVar3;
        puVar1[2] = uVar9;
        puVar1[3] = uVar5;
        puVar1[4] = 0x20006d;
        puVar1[5] = 0x1ee50076;
        local_3c[2] = local_3c[2] + 0xc;
      }
      FUN_0099d560();
      FUN_007876b0();
      if (0xe < *(int *)(param_1 + 4)) {
        local_20 = FUN_00975000((char)*(undefined4 *)(iVar2 + 0x1c));
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 0x15;
          FUN_00eaecdd();
          FUN_00da3a40();
          FUN_00dfc9c0();
          return;
        }
LAB_008098b9:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      local_40 = FUN_0077ad90();
      if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0x16;
        FUN_00eaecdd();
        FUN_00da3a40();
        FUN_00dfca00(0x20);
        return;
      }
LAB_0080984d:
      if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eae9a0();
      FUN_00e9ad74(in_stack_fffffef0);
      iVar7 = FUN_00e4d760(&PTR_DAT_01544bc8);
      if (iVar7 == 0) {
        uVar10 = 1;
        uVar6 = 0;
        goto LAB_0080ad16;
      }
    }
    break;
  case 3:
    local_1c[1] = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080a156;
  case 4:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080a120;
  case 5:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080a093;
  case 6:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809ff9;
  case 7:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809fb7;
  case 8:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809f2a;
  case 9:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809efb;
  case 10:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809def;
  case 0xb:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809d62;
  case 0xc:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809d20;
  case 0xd:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809cea;
  case 0xe:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809c50;
  case 0xf:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809c0e;
  case 0x10:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809b4b;
  case 0x11:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809aa1;
  case 0x12:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809a14;
  case 0x13:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00809975;
  case 0x14:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080993c;
  case 0x15:
    local_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_008098b9;
  case 0x16:
    local_40 = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080984d;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    FUN_00779650();
    FUN_00eaebca();
    if (*(int *)(*(int *)(param_1 + 2) + 4) != 0) {
      local_1c[2] = FUN_00805380();
      if ((*(uint *)(local_1c[2] + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0;
        FUN_00eaecdd();
        FUN_00da3a40();
        FUN_00dfc9c0();
        return;
      }
      goto LAB_0080a432;
    }
  }
LAB_0080ac78:
  uVar10 = 0;
  uVar6 = 0;
LAB_0080ad16:
  *(undefined4 *)((int)param_1 + 0x1c) = 0xfffffffe;
  *(undefined4 *)(param_1 + 2) = 0;
  if (*(int *)((int)param_1 + 0x24) == 0) {
    local_b0 = CONCAT11(uVar6,uVar10);
    if (local_b0 == 0) {
      if (PTR_FUN_01c25738 != (undefined *)0x0) {
        FUN_00e8f946();
      }
    }
    else {
      iVar7 = FUN_00eae9a0();
      *(undefined4 *)(iVar7 + 0x1c) = 0x1000000;
      *(undefined1 *)(iVar7 + 0x20) = uVar10;
      *(undefined1 *)(iVar7 + 0x21) = uVar6;
    }
    FUN_00eaed7c();
  }
  else {
    iVar7 = FUN_00c56280(uVar10);
    if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

