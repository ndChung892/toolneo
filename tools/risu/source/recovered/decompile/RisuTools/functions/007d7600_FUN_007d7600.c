/* Address: 007d7600 | Ghidra name: FUN_007d7600 */

void __fastcall FUN_007d7600(int param_1)

{
  bool bVar1;
  int iVar2;
  int extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 in_stack_ffffffc4;
  undefined4 local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  local_20 = 0;
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    break;
  case 1:
    local_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007d7b8c;
  case 2:
    local_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007d7b50;
  case 3:
    local_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007d7abd;
  case 4:
    local_1c = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007d7949;
  case 5:
    local_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007d7852;
  case 6:
    local_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007d779a;
  case 7:
    local_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007d7704;
  case 8:
    local_14 = *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007d764d;
  default:
    FUN_00906aa0(&PTR_DAT_01bddcb8);
    FUN_007876b0();
    FUN_0077a730();
    local_14 = FUN_0077b0f0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 0;
      FUN_00eaecdd();
      FUN_00d9f7e0();
      FUN_00dfca00(&PTR_DAT_01568c48);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) != 0) {
    if (*(int *)(DAT_01c289d4 + 0x98) == 0) {
      FUN_00eae9a0();
      FUN_00e9a406();
      FUN_00eaebef();
    }
    iVar2 = FUN_00e4d760();
    if (iVar2 != 0) {
      FUN_00906aa0();
      FUN_007876b0();
LAB_007d7cda:
      bVar1 = true;
      goto LAB_007d7ed3;
    }
  }
  local_18 = FUN_00787840(0,0,1,*(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34));
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 8) = 1;
    FUN_00eaecdd();
    FUN_00d9f7e0();
    FUN_00dfc9c0();
    return;
  }
LAB_007d7b8c:
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_18 = FUN_007877c0(0,1,*(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34),
                          DAT_018d5920,DAT_018d5918);
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 8) = 2;
    FUN_00eaeca8();
    FUN_00d9f7e0();
    FUN_00dfc9c0();
    return;
  }
LAB_007d7b50:
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  *(undefined4 *)(param_1 + 0xc) = 0;
  while (*(int *)(param_1 + 0xc) < 3) {
    FUN_00eaeae1();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 200;
    FUN_00eaebca();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be3a98);
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 3;
      FUN_00eaecdd();
      FUN_00d9f7e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d7abd:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_1c = FUN_0077b0a0();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 4;
      FUN_00eaeca8();
      FUN_00d9f7e0();
      FUN_00dfca00();
      return;
    }
LAB_007d7949:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_1c + 0x20) != 0) {
      if (*(int *)(DAT_01c289d4 + 0x9c) == 0) {
        FUN_00eae9a0();
        FUN_00e9a417(in_stack_ffffffc4);
        in_stack_ffffffc4 = 0x7d79b0;
        FUN_00eaec14();
      }
      iVar2 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_20);
      if (iVar2 != 0) {
        FUN_00eaeae1();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 0xc4ca;
        FUN_00eaebca();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 200;
        FUN_00eaebca();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 1;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_01,&PTR_DAT_01bf0f44);
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 8) = 5;
          FUN_00eaecdd();
          FUN_00d9f7e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007d7852:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        in_stack_ffffffc4 = FUN_00eaeae1();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 0xc4ca;
        FUN_00eaebca();
        *(undefined ***)(extraout_ECX + 0xc) = &PTR_DAT_01b39360;
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 1;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be6fdc);
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 8) = 6;
          FUN_00eaeca8();
          FUN_00d9f7e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007d779a:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    FUN_00906a20();
    FUN_00782420();
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 7;
      FUN_00eaeca8();
      FUN_00d9f7e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d7704:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_14 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 8) = 8;
      FUN_00eaeca8();
      FUN_00d9f7e0();
      FUN_00dfca00();
      return;
    }
LAB_007d764d:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_14 + 0x20) != 0) {
      if (*(int *)(DAT_01c289d4 + 0xa0) == 0) {
        FUN_00eae9a0();
        FUN_00e9a428(in_stack_ffffffc4);
        in_stack_ffffffc4 = 0x7d76b1;
        FUN_00eaec5e();
      }
      iVar2 = FUN_00e4d760();
      if (iVar2 != 0) {
        FUN_00906aa0();
        FUN_007876b0();
        goto LAB_007d7cda;
      }
    }
    *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + 1;
  }
  FUN_00906aa0();
  FUN_007876b0();
  bVar1 = false;
LAB_007d7ed3:
  *(undefined4 *)(param_1 + 8) = 0xfffffffe;
  if (*(int *)(param_1 + 0x10) == 0) {
    if (bVar1) {
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
    iVar2 = FUN_00b6e080();
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

