/* Address: 007f1720 | Ghidra name: FUN_007f1720 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007f1720(int *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int extraout_ECX_01;
  int extraout_ECX_02;
  undefined4 extraout_ECX_03;
  int in_stack_ffffff3c;
  undefined4 local_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 local_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  int iStack_38;
  int local_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int local_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  local_64 = 0;
  uStack_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  local_54 = 0;
  uStack_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  local_44 = 0;
  uStack_40 = 0;
  uStack_3c = 0;
  iStack_38 = 0;
  local_34 = 0;
  iStack_30 = 0;
  iStack_2c = 0;
  iStack_28 = 0;
  local_24 = 0;
  iStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  iVar5 = *param_1;
  switch(param_1[5]) {
  case 0:
    local_14 = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    break;
  case 1:
    iStack_18 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007f2ebc;
  case 2:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f2e1c;
  case 3:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f2d87;
  case 4:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f2d39;
  case 5:
    iStack_20 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f2c9c;
  case 6:
    iStack_20 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f2c5a;
  case 7:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f2b55;
  case 8:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f2b1d;
  case 9:
    iStack_20 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f2a05;
  case 10:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f2981;
  case 0xb:
    iStack_18 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007f28ef;
  case 0xc:
    local_24 = param_1[0x10];
    param_1[0x10] = 0;
    param_1[5] = -1;
    goto LAB_007f28a2;
  case 0xd:
    local_24 = param_1[0x10];
    param_1[0x10] = 0;
    param_1[5] = -1;
    goto LAB_007f2849;
  case 0xe:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f27c5;
  case 0xf:
    iStack_2c = param_1[0x11];
    param_1[0x11] = 0;
    param_1[5] = -1;
    goto LAB_007f26b7;
  case 0x10:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f25b0;
  case 0x11:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f2530;
  case 0x12:
    iStack_30 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[5] = -1;
    goto LAB_007f24ed;
  case 0x13:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f24aa;
  case 0x14:
    iStack_30 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[5] = -1;
    goto LAB_007f241b;
  case 0x15:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f2397;
  case 0x16:
    iStack_18 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007f22aa;
  case 0x17:
    local_24 = param_1[0x10];
    param_1[0x10] = 0;
    param_1[5] = -1;
    goto LAB_007f21f2;
  case 0x18:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f21bc;
  case 0x19:
    iStack_30 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[5] = -1;
    goto LAB_007f1f25;
  case 0x1a:
    iStack_30 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[5] = -1;
    goto LAB_007f1e69;
  case 0x1b:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f1de7;
  case 0x1c:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f1d47;
  case 0x1d:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f1cbb;
  case 0x1e:
    iStack_20 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f1c76;
  case 0x1f:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f1c28;
  case 0x20:
    iStack_20 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f1b8b;
  case 0x21:
    iStack_20 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f1b49;
  case 0x22:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f1a41;
  case 0x23:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f19af;
  case 0x24:
    iStack_20 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f1911;
  case 0x25:
    iStack_20 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[5] = -1;
    goto LAB_007f18cf;
  case 0x26:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f184b;
  case 0x27:
    iStack_18 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007f17c0;
  case 0x28:
    iStack_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007f1780;
  default:
    local_14 = FUN_0077ad40(5000);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0;
      FUN_00eaecdd();
      FUN_00da1c40();
      FUN_00dfca00(&PTR_DAT_01568fec);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(DAT_01c28a14 + 8) == 0) {
    FUN_00eae9a0();
    FUN_00e9a7e0();
    FUN_00eaec14();
  }
  FUN_00e4e4a0(&PTR_DAT_01545008,&uStack_3c);
  FUN_00eaeca8();
  if (*(int *)(extraout_ECX_01 + 4) == 0) {
    FUN_007876b0();
  }
  else {
    FUN_00787780();
    param_1[6] = 0;
    do {
      iStack_18 = FUN_0077ad90();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 1;
        FUN_00eaecdd();
        FUN_00da1c40();
        FUN_00dfca00();
        return;
      }
LAB_007f2ebc:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(DAT_01c28a14 + 0xc) == 0) {
        FUN_00eae9a0();
        FUN_00e9a7f1(in_stack_ffffff3c);
        in_stack_ffffff3c = 0x7f2f1e;
        FUN_00eaebef();
      }
      iVar4 = FUN_00e4e4a0(&PTR_DAT_01544bfc,&uStack_40);
      if (iVar4 == 0) {
        iStack_1c = FUN_00787840(0,0,0,0);
        if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 2;
          FUN_00eaecdd();
          FUN_00da1c40();
          FUN_00dfc9c0();
          return;
        }
LAB_007f2e1c:
        if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_1c = FUN_007877c0(0,0,0,DAT_018d6680,DAT_018d6678);
        if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 3;
          FUN_00eaeca8();
          FUN_00da1c40();
          FUN_00dfc9c0();
          return;
        }
LAB_007f2d87:
        if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00787780();
        while( true ) {
          iStack_20 = FUN_0077b0a0();
          if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 9;
            FUN_00eaeca8();
            FUN_00da1c40();
            FUN_00dfca00();
            return;
          }
LAB_007f2a05:
          if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(iStack_20 + 0x20) != 0) break;
          param_1[7] = 0;
          while( true ) {
            iStack_20 = FUN_0077b0a0();
            if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 5;
              FUN_00eaecdd();
              FUN_00da1c40();
              FUN_00dfca00();
              return;
            }
LAB_007f2c9c:
            if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(iStack_20 + 0x20) != 0) break;
            FUN_00eaeae1();
            iVar4 = FUN_00eae9a0();
            *(undefined4 *)(iVar4 + 4) = 0x19c;
            FUN_00eaebca();
            iVar4 = FUN_00eae9a0();
            *(undefined4 *)(iVar4 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
            iStack_1c = FUN_00975000();
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 4;
              FUN_00eaecdd();
              FUN_00da1c40();
              FUN_00dfc9c0();
              return;
            }
LAB_007f2d39:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[7] = param_1[7] + 1;
            if (4 < param_1[7]) {
              FUN_007876b0();
              goto LAB_007f21a1;
            }
          }
          iStack_20 = FUN_0077b0a0();
          if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 6;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfca00();
            return;
          }
LAB_007f2c5a:
          if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(iStack_20 + 0x20) != 0) {
            if (*(int *)(DAT_01c28a14 + 0x10) == 0) {
              FUN_00eae9a0();
              FUN_00e9a802(in_stack_ffffff3c);
              in_stack_ffffff3c = 0x7f2124;
              FUN_00eaebef();
            }
            FUN_00e4e4a0(&PTR_DAT_01543d24,&local_44);
          }
          FUN_00eaeca8();
          iStack_1c = FUN_00975000();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 7;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f2b55:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (param_1[2] == 0) {
            FUN_007876b0();
            goto LAB_007f21a1;
          }
          uVar1 = *(undefined4 *)(param_1[2] + 8);
          uStack_48 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
          iVar4 = FUN_00eaeae1();
          *(undefined ***)(iVar4 + 8) = &PTR_DAT_01b9125c;
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = uVar1;
          FUN_00eaebca();
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(iVar4,&PTR_DAT_01befc64);
          iStack_1c = FUN_00975000();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 8;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f2b1d:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        iVar4 = FUN_00eaeae1();
        *(undefined ***)(iVar4 + 8) = &PTR_DAT_01ba04a8;
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0;
        FUN_00eaebca();
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_00,&PTR_DAT_01befc64);
        param_1[7] = 0;
        while (param_1[7] < 5) {
          iStack_1c = FUN_00975000();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 10;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f2981:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iStack_18 = FUN_0077ad90();
          if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0xb;
            FUN_00eaeca8();
            FUN_00da1c40();
            FUN_00dfca00();
            return;
          }
LAB_007f28ef:
          if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(DAT_01c28a14 + 0x14) == 0) {
            FUN_00eae9a0();
            FUN_00e9a813(in_stack_ffffff3c);
            in_stack_ffffff3c = 0x7f294d;
            FUN_00eaec14();
          }
          iVar4 = FUN_00e4d760();
          if (iVar4 != 0) break;
          param_1[7] = param_1[7] + 1;
        }
      }
      else if (*(char *)(iVar4 + 0x3c) == '\0') {
        if (PTR_FUN_01c21b04 != (undefined *)0x0) {
          FUN_00e8e290();
        }
        FUN_00bc9a80();
        param_1[0xe] = iStack_38;
        param_1[0xf] = local_34;
        iVar4 = FUN_00eaeae1();
        *(int *)(iVar4 + 8) = param_1[0xe];
        *(int *)(iVar4 + 0xc) = param_1[0xf];
        FUN_00eaeca8();
        local_24 = FUN_0077abc0();
        if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0xc;
          FUN_00eaeca8();
          FUN_00da1c40();
          FUN_00dfca00();
          return;
        }
LAB_007f28a2:
        if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((*(int *)(local_24 + 0x20) == 0) ||
           (*(int *)(*(int *)(local_24 + 0x20) + 0x28) != param_1[0xf])) {
          iVar4 = 0;
        }
        else {
          iVar4 = 1;
        }
        param_1[7] = iVar4;
        while( true ) {
          iStack_30 = FUN_0077ac80();
          if ((*(uint *)(iStack_30 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0x14;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f241b:
          if ((*(uint *)(iStack_30 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(char *)(iStack_30 + 0x20) != '\0') break;
          iStack_28 = *(int *)(iVar5 + 0x1c);
          if ((iStack_28 != 0) && (*(int *)(iStack_28 + 0x10) != 0)) goto LAB_007f3774;
          local_24 = FUN_0077abc0();
          if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0xd;
            FUN_00eaeca8();
            FUN_00da1c40();
            FUN_00dfca00();
            return;
          }
LAB_007f2849:
          if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if ((*(int *)(local_24 + 0x20) != 0) && (*(int *)(*(int *)(local_24 + 0x20) + 0x34) < 2))
          {
            FUN_007876b0();
            goto LAB_007f3783;
          }
          if (*(uint *)(param_1[3] + 4) <= (uint)param_1[7]) {
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          iStack_1c = FUN_00787840(0,0,0,0);
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0xe;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f27c5:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iStack_2c = FUN_0077acc0();
          if ((*(uint *)(iStack_2c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0xf;
            FUN_00eaeca8();
            FUN_00da1c40();
            FUN_00dfca00();
            return;
          }
LAB_007f26b7:
          if ((*(uint *)(iStack_2c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(DAT_01c28a14 + 0x18) == 0) {
            FUN_00eae9a0();
            FUN_00e9a824(in_stack_ffffff3c);
            in_stack_ffffff3c = 0x7f270e;
            FUN_00eaec14();
          }
          FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_4c);
          FUN_00eaeca8();
          iVar4 = param_1[4];
          if (iVar4 == 0) {
            iStack_1c = FUN_00975000();
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x13;
              FUN_00eaecdd();
              FUN_00da1c40();
              FUN_00dfc9c0();
              return;
            }
LAB_007f24aa:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[7] = 1 - param_1[7];
          }
          else {
            iStack_1c = FUN_007877c0(0,0,0,*(double *)(iVar4 + 0xc) / _DAT_018d6688,
                                     *(double *)(iVar4 + 4) / _DAT_018d6688);
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x10;
              FUN_00eaecdd();
              FUN_00da1c40();
              FUN_00dfc9c0();
              return;
            }
LAB_007f25b0:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[8] = 0;
            while (param_1[8] < 5) {
              uVar1 = *(undefined4 *)(param_1[4] + 0x28);
              uStack_50 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
              uVar2 = FUN_00eaeae1();
              iVar4 = FUN_00eae9a0();
              *(undefined4 *)(iVar4 + 4) = uVar1;
              FUN_00eaebca();
              iVar4 = FUN_00eae9a0();
              *(undefined4 *)(iVar4 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(uVar2,&PTR_DAT_01be3a98);
              iStack_1c = FUN_00975000();
              if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x11;
                FUN_00eaecdd();
                FUN_00da1c40();
                FUN_00dfc9c0();
                return;
              }
LAB_007f2530:
              if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              iStack_30 = FUN_0077ac80();
              if ((*(uint *)(iStack_30 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x12;
                FUN_00eaeca8();
                FUN_00da1c40();
                FUN_00dfc9c0();
                return;
              }
LAB_007f24ed:
              if ((*(uint *)(iStack_30 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(char *)(iStack_30 + 0x20) != '\0') break;
              param_1[8] = param_1[8] + 1;
            }
          }
          param_1[4] = 0;
        }
        do {
          iStack_30 = FUN_0077ac80();
          if ((*(uint *)(iStack_30 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0x19;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f1f25:
          if ((*(uint *)(iStack_30 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(char *)(iStack_30 + 0x20) == '\0') goto LAB_007f179c;
          iStack_28 = *(int *)(iVar5 + 0x1c);
          if ((iStack_28 != 0) && (*(int *)(iStack_28 + 0x10) != 0)) {
LAB_007f3774:
                    /* WARNING: Subroutine does not return */
            FUN_00968fa0();
          }
          iStack_1c = FUN_00975000();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0x15;
            FUN_00eaeca8();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f2397:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iStack_18 = FUN_0077ad90();
          if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0x16;
            FUN_00eaeca8();
            FUN_00da1c40();
            FUN_00dfca00();
            return;
          }
LAB_007f22aa:
          if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(DAT_01c28a14 + 0x1c) == 0) {
            FUN_00eae9a0();
            FUN_00e9a835(in_stack_ffffff3c);
            in_stack_ffffff3c = 0x7f2307;
            FUN_00eaec14();
          }
          iVar4 = FUN_00e4e4a0(&PTR_DAT_01544bfc,&local_54);
        } while ((iVar4 == 0) || (*(char *)(iVar4 + 0x3c) == '\0'));
        local_24 = FUN_0077abc0();
        if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x17;
          FUN_00eaecdd();
          FUN_00da1c40();
          FUN_00dfca00();
          return;
        }
LAB_007f21f2:
        if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_24 + 0x20) != 0) {
          FUN_00906a20();
          FUN_00782420();
          iStack_1c = FUN_00975000();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0x18;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f21bc:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
      else {
        iStack_30 = FUN_0077ac80();
        if ((*(uint *)(iStack_30 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1a;
          FUN_00eaecdd();
          FUN_00da1c40();
          FUN_00dfc9c0();
          return;
        }
LAB_007f1e69:
        if ((*(uint *)(iStack_30 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(iStack_30 + 0x20) != '\0') {
          FUN_00906a20();
          FUN_00782420();
        }
        iStack_1c = FUN_00975000();
        if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1b;
          FUN_00eaeca8();
          FUN_00da1c40();
          FUN_00dfc9c0();
          return;
        }
LAB_007f1de7:
        if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_1c = FUN_00787840(0,0,0,0);
        if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1c;
          FUN_00eaeca8();
          FUN_00da1c40();
          FUN_00dfc9c0();
          return;
        }
LAB_007f1d47:
        if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_1c = FUN_007877c0(0,0,0,DAT_018d6680,DAT_018d6678);
        if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1d;
          FUN_00eaeca8();
          FUN_00da1c40();
          FUN_00dfc9c0();
          return;
        }
LAB_007f1cbb:
        if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_20 = FUN_0077b0a0();
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x1e;
          FUN_00eaeca8();
          FUN_00da1c40();
          FUN_00dfca00();
          return;
        }
LAB_007f1c76:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(iStack_20 + 0x20) != 0) {
          if (*(int *)(DAT_01c28a14 + 0x20) == 0) {
            FUN_00eae9a0();
            FUN_00e9a846(in_stack_ffffff3c);
            in_stack_ffffff3c = 0x7f318b;
            FUN_00eaec14();
          }
          FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_58);
        }
        FUN_00eaeca8();
        if (*(int *)(extraout_ECX_02 + 8) == 0) {
          while( true ) {
            iStack_20 = FUN_0077b0a0();
            if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x24;
              FUN_00eaeca8();
              FUN_00da1c40();
              FUN_00dfca00();
              return;
            }
LAB_007f1911:
            if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(iStack_20 + 0x20) != 0) break;
            param_1[7] = 0;
            while( true ) {
              iStack_20 = FUN_0077b0a0();
              if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x20;
                FUN_00eaecdd();
                FUN_00da1c40();
                FUN_00dfca00();
                return;
              }
LAB_007f1b8b:
              if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(iStack_20 + 0x20) != 0) break;
              FUN_00eaeae1();
              iVar4 = FUN_00eae9a0();
              *(undefined4 *)(iVar4 + 4) = 0x19c;
              FUN_00eaebca();
              iVar4 = FUN_00eae9a0();
              *(undefined4 *)(iVar4 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX_03,&PTR_DAT_01be3a98);
              iStack_1c = FUN_00975000();
              if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
                param_1[5] = 0x1f;
                FUN_00eaecdd();
                FUN_00da1c40();
                FUN_00dfc9c0();
                return;
              }
LAB_007f1c28:
              if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[7] = param_1[7] + 1;
              if (7 < param_1[7]) {
                FUN_007876b0();
                goto LAB_007f3783;
              }
            }
            iStack_20 = FUN_0077b0a0();
            if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x21;
              FUN_00eaecdd();
              FUN_00da1c40();
              FUN_00dfca00();
              return;
            }
LAB_007f1b49:
            if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(iStack_20 + 0x20) != 0) {
              if (*(int *)(DAT_01c28a14 + 0x24) == 0) {
                FUN_00eae9a0();
                FUN_00e9a857(in_stack_ffffff3c);
                in_stack_ffffff3c = 0x7f331d;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_5c);
            }
            FUN_00eaeca8();
            iStack_1c = FUN_00975000();
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x22;
              FUN_00eaecdd();
              FUN_00da1c40();
              FUN_00dfc9c0();
              return;
            }
LAB_007f1a41:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (param_1[2] == 0) {
              FUN_007876b0();
              FUN_00787780();
              goto LAB_007f3783;
            }
            uVar1 = *(undefined4 *)(param_1[2] + 8);
            uStack_60 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
            iVar4 = FUN_00eaeae1();
            *(undefined ***)(iVar4 + 8) = &PTR_DAT_01b9125c;
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = uVar1;
            FUN_00eaebca();
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(iVar4,&PTR_DAT_01befc64);
            iStack_1c = FUN_00975000();
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x23;
              FUN_00eaecdd();
              FUN_00da1c40();
              FUN_00dfc9c0();
              return;
            }
LAB_007f19af:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
        }
        iStack_20 = FUN_0077b0a0();
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 0x25;
          FUN_00eaecdd();
          FUN_00da1c40();
          FUN_00dfca00();
          return;
        }
LAB_007f18cf:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(iStack_20 + 0x20) != 0) {
          if (*(int *)(DAT_01c28a14 + 0x28) == 0) {
            FUN_00eae9a0();
            FUN_00e9a868(in_stack_ffffff3c);
            in_stack_ffffff3c = 0x7f33dc;
            FUN_00eaec14();
          }
          FUN_00e4e4a0(&PTR_DAT_01543d24,&local_64);
        }
        FUN_00eaeca8();
        if (param_1[2] != 0) {
          uVar1 = *(undefined4 *)(param_1[2] + 8);
          uVar2 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 4);
          iVar4 = FUN_00eaeae1();
          *(undefined ***)(iVar4 + 8) = &PTR_DAT_01ba04a8;
          iVar3 = FUN_00eae9a0(iVar4,uVar2);
          *(undefined4 *)(iVar3 + 4) = uVar1;
          in_stack_ffffff3c = iVar4;
          FUN_00eaebca();
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(iVar4,&PTR_DAT_01befc64);
          param_1[7] = 0;
          while (param_1[7] < 5) {
            iStack_1c = FUN_00975000();
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x26;
              FUN_00eaecdd();
              FUN_00da1c40();
              FUN_00dfc9c0();
              return;
            }
LAB_007f184b:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iStack_18 = FUN_0077ad90();
            if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
              param_1[5] = 0x27;
              FUN_00eaeca8();
              FUN_00da1c40();
              FUN_00dfca00();
              return;
            }
LAB_007f17c0:
            if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(DAT_01c28a14 + 0x2c) == 0) {
              FUN_00eae9a0();
              FUN_00e9a879(in_stack_ffffff3c);
              in_stack_ffffff3c = 0x7f1817;
              FUN_00eaec14();
            }
            iVar4 = FUN_00e4d760();
            if (iVar4 == 0) break;
            param_1[7] = param_1[7] + 1;
          }
          param_1[6] = param_1[6] + 1;
          iStack_1c = FUN_00975000();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 0x28;
            FUN_00eaecdd();
            FUN_00da1c40();
            FUN_00dfc9c0();
            return;
          }
LAB_007f1780:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
LAB_007f179c:
    } while (param_1[6] < 2);
LAB_007f21a1:
    *(undefined1 *)(iVar5 + 0x20) = 1;
  }
LAB_007f3783:
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

