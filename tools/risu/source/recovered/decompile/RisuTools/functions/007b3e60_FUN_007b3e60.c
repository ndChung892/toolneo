/* Address: 007b3e60 | Ghidra name: FUN_007b3e60 */

void __fastcall FUN_007b3e60(int param_1)

{
  undefined4 uVar1;
  bool bVar2;
  int iVar3;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  int extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 in_stack_ffffffa8;
  undefined4 local_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 local_24;
  undefined4 uStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  local_34 = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  local_24 = 0;
  uStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b4487;
  case 2:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b444b;
  case 3:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b43b8;
  case 4:
    iStack_1c = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b425b;
  case 5:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b41cb;
  case 6:
    iStack_1c = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b4184;
  case 7:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b40f1;
  case 8:
    iStack_1c = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b40ac;
  case 9:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b3ff6;
  case 10:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b3f60;
  case 0xb:
    local_14 = *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007b3eaf;
  default:
    FUN_00906aa0(&PTR_DAT_01bddb60);
    FUN_007876b0();
    FUN_00787780();
    local_14 = FUN_0077b0f0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 0;
      FUN_00eaecdd();
      FUN_00d9a7c0();
      FUN_00dfca00(&PTR_DAT_01568c48);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) != 0) {
    if (*(int *)(DAT_01c289bc + 0x18) == 0) {
      FUN_00eae9a0();
      FUN_00e995f2();
      FUN_00eaebef();
    }
    iVar3 = FUN_00e4d760();
    if (iVar3 != 0) {
      FUN_00906aa0();
      FUN_007876b0();
LAB_007b45cf:
      bVar2 = true;
      goto LAB_007b4a6e;
    }
  }
  iStack_18 = FUN_00787840(0,0,1,*(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34));
  if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 8) = 1;
    FUN_00eaecdd();
    FUN_00d9a7c0();
    FUN_00dfc9c0();
    return;
  }
LAB_007b4487:
  if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iStack_18 = FUN_007877c0(0,1,*(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34),
                           DAT_018d4ba8,DAT_018d4ba0);
  if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 8) = 2;
    FUN_00eaeca8();
    FUN_00d9a7c0();
    FUN_00dfc9c0();
    return;
  }
LAB_007b444b:
  if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  *(undefined4 *)(param_1 + 0xc) = 0;
  while (*(int *)(param_1 + 0xc) < 3) {
    FUN_00eaeae1();
    iVar3 = FUN_00eae9a0();
    *(undefined4 *)(iVar3 + 4) = 200;
    FUN_00eaebca();
    iVar3 = FUN_00eae9a0();
    *(undefined4 *)(iVar3 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 3;
      FUN_00eaecdd();
      FUN_00d9a7c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007b43b8:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iStack_1c = FUN_0077b0a0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 4;
      FUN_00eaeca8();
      FUN_00d9a7c0();
      FUN_00dfca00();
      return;
    }
LAB_007b425b:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iStack_1c + 0x20) != 0) {
      if (*(int *)(DAT_01c289bc + 0x1c) == 0) {
        FUN_00eae9a0();
        FUN_00e99603(in_stack_ffffffa8);
        in_stack_ffffffa8 = 0x7b42bc;
        FUN_00eaec14();
      }
      iVar3 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_24);
      if (iVar3 != 0) {
        uStack_20 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34);
        uStack_28 = *(undefined4 *)(iVar3 + 8);
        iVar3 = FUN_00eaeae1();
        *(undefined ***)(iVar3 + 8) = &PTR_DAT_01b9125c;
        iVar3 = FUN_00eae9a0();
        *(undefined4 *)(iVar3 + 4) = uStack_28;
        FUN_00eaebca();
        iVar3 = FUN_00eae9a0();
        *(undefined4 *)(iVar3 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
        iStack_18 = FUN_00975000();
        if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 8) = 5;
          FUN_00eaecdd();
          FUN_00d9a7c0();
          FUN_00dfc9c0();
          return;
        }
LAB_007b41cb:
        if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_1c = FUN_0077b0a0();
        if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 8) = 6;
          FUN_00eaeca8();
          FUN_00d9a7c0();
          FUN_00dfca00();
          return;
        }
LAB_007b4184:
        if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(iStack_1c + 0x20) == 0) {
          iVar3 = 0;
        }
        else {
          if (*(int *)(DAT_01c289bc + 0x20) == 0) {
            FUN_00eae9a0();
            FUN_00e99614(in_stack_ffffffa8);
            in_stack_ffffffa8 = 0x7b47b8;
            FUN_00eaec14();
          }
          iVar3 = FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_2c);
        }
        if (iVar3 != 0) {
          uStack_30 = *(undefined4 *)(iVar3 + 8);
          iVar3 = FUN_00eaeae1();
          *(undefined ***)(iVar3 + 8) = &PTR_DAT_01ba04a8;
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = uStack_30;
          FUN_00eaebca();
          iVar3 = FUN_00eae9a0();
          *(undefined4 *)(iVar3 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_01,&PTR_DAT_01befc64);
          iStack_18 = FUN_00975000();
          if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 8) = 7;
            FUN_00eaecdd();
            FUN_00d9a7c0();
            FUN_00dfc9c0();
            return;
          }
LAB_007b40f1:
          if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iStack_1c = FUN_0077b0a0();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 8) = 8;
            FUN_00eaeca8();
            FUN_00d9a7c0();
            FUN_00dfca00();
            return;
          }
LAB_007b40ac:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(iStack_1c + 0x20) == 0) {
            iVar3 = 0;
          }
          else {
            if (*(int *)(DAT_01c289bc + 0x24) == 0) {
              FUN_00eae9a0();
              FUN_00e99625(in_stack_ffffffa8);
              in_stack_ffffffa8 = 0x7b48d6;
              FUN_00eaec14();
            }
            iVar3 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_34);
          }
          if (iVar3 != 0) {
            uVar1 = *(undefined4 *)(iVar3 + 8);
            iVar3 = FUN_00eaeae1();
            *(undefined ***)(iVar3 + 8) = &PTR_DAT_01ba04a8;
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = uVar1;
            FUN_00eaebca();
            iVar3 = FUN_00eae9a0();
            *(undefined4 *)(iVar3 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_02,&PTR_DAT_01befc64);
          }
          iStack_18 = FUN_00975000();
          if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 8) = 9;
            FUN_00eaecdd();
            FUN_00d9a7c0();
            FUN_00dfc9c0();
            return;
          }
LAB_007b3ff6:
          if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
    }
    FUN_00906a20();
    FUN_00782420();
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 10;
      FUN_00eaeca8();
      FUN_00d9a7c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007b3f60:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_14 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 0xb;
      FUN_00eaeca8();
      FUN_00d9a7c0();
      FUN_00dfca00();
      return;
    }
LAB_007b3eaf:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_14 + 0x20) != 0) {
      if (*(int *)(DAT_01c289bc + 0x28) == 0) {
        FUN_00eae9a0();
        FUN_00e99636(in_stack_ffffffa8);
        in_stack_ffffffa8 = 0x7b3f0d;
        FUN_00eaec5e();
      }
      iVar3 = FUN_00e4d760();
      if (iVar3 != 0) {
        FUN_00906aa0();
        FUN_007876b0();
        goto LAB_007b45cf;
      }
    }
    if (0 < *(int *)(param_1 + 0xc)) {
      in_stack_ffffffa8 = FUN_00eaeae1();
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = 0x5b8;
      FUN_00eaebca();
      *(undefined ***)(extraout_ECX_03 + 0xc) = &PTR_DAT_01b39360;
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = 1;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_04,&PTR_DAT_01be6fdc);
    }
    *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + 1;
  }
  FUN_00906aa0();
  FUN_007876b0();
  bVar2 = false;
LAB_007b4a6e:
  *(undefined4 *)(param_1 + 8) = 0xfffffffe;
  if (*(int *)(param_1 + 0x10) == 0) {
    if (bVar2) {
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
    iVar3 = FUN_00b6e080();
    if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

