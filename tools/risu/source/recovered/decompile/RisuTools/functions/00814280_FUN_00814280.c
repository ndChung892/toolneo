/* Address: 00814280 | Ghidra name: FUN_00814280 */

void __fastcall FUN_00814280(int *param_1)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int in_stack_ffffffd4;
  undefined4 local_1c;
  int local_18;
  int local_14;
  
  local_14 = 0;
  local_18 = 0;
  local_1c = 0;
  iVar3 = *param_1;
  switch(param_1[2]) {
  case 0:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    break;
  case 1:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_00814504;
  case 2:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_00814409;
  case 3:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_008143d1;
  case 4:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_00814373;
  case 5:
    local_18 = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_0081432f;
  case 6:
    local_14 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_008142cc;
  default:
    local_14 = FUN_00813c60();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00da49e0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  param_1[4] = 0;
  while( true ) {
    local_18 = FUN_0077b0a0(&PTR_DAT_01b9125c);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 4;
      FUN_00eaecdd();
      FUN_00da49e0();
      FUN_00dfca00(&PTR_DAT_01553b84);
      return;
    }
LAB_00814373:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_18 + 0x20) != 0) || (4 < param_1[4])) break;
    while( true ) {
      local_18 = FUN_0077b0a0(&PTR_DAT_01b91278);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 2;
        FUN_00eaeca8();
        FUN_00da49e0();
        FUN_00dfca00(&PTR_DAT_01553b84);
        return;
      }
LAB_00814409:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_18 + 0x20) != 0) break;
      FUN_00eaeae1();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0x115;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
      local_14 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 1;
        FUN_00eaecdd();
        FUN_00da49e0();
        FUN_00dfc9c0();
        return;
      }
LAB_00814504:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    in_stack_ffffffd4 = FUN_00eaeae1();
    *(undefined ***)(in_stack_ffffffd4 + 8) = &PTR_DAT_01b91278;
    iVar2 = FUN_00eae9a0(in_stack_ffffffd4);
    *(undefined4 *)(iVar2 + 4) = 0;
    FUN_00eaebca();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
    local_14 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 3;
      FUN_00eaecdd();
      FUN_00da49e0();
      FUN_00dfc9c0();
      return;
    }
LAB_008143d1:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[4] = param_1[4] + 1;
  }
  if (param_1[4] < 5) {
    local_18 = FUN_0077b0a0(&PTR_DAT_01b9125c);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 5;
      FUN_00eaecdd();
      FUN_00da49e0();
      FUN_00dfca00(&PTR_DAT_01553b84);
      return;
    }
LAB_0081432f:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_18 + 0x20) != 0) && (*(int *)(*(int *)(local_18 + 0x20) + 0x10) != 0)) {
      if (*(int *)(DAT_01c28a74 + 0x20) == 0) {
        FUN_00eae9a0();
        FUN_00e9b060(in_stack_ffffffd4);
        FUN_00eaebef();
      }
      FUN_00e4e4a0(&PTR_DAT_01543d24,&local_1c);
    }
    FUN_00eaeca8();
    local_14 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 6;
      FUN_00eaecdd();
      FUN_00da49e0();
      FUN_00dfc9c0();
      return;
    }
LAB_008142cc:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (param_1[1] == 0) {
      if (9 < param_1[3] - 1U) {
        FUN_007876b0();
        goto LAB_0081483e;
      }
    }
    else {
      FUN_0077ab40(0,*(undefined4 *)(param_1[1] + 8),&PTR_DAT_01b9125c);
    }
    bVar1 = true;
  }
  else {
    FUN_007876b0();
LAB_0081483e:
    bVar1 = false;
  }
  param_1[2] = -2;
  param_1[1] = 0;
  if (param_1[5] == 0) {
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
    iVar3 = FUN_00b6e080();
    if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

