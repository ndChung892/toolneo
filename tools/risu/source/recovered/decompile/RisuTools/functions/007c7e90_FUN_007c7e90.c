/* Address: 007c7e90 | Ghidra name: FUN_007c7e90 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007c7e90(undefined **param_1)

{
  undefined *puVar1;
  int iVar2;
  undefined *local_20;
  undefined *local_1c;
  undefined *local_18;
  undefined *local_14;
  
  local_14 = (undefined *)0x0;
  local_18 = (undefined *)0x0;
  local_1c = (undefined *)0x0;
  local_20 = (undefined *)0x0;
  puVar1 = *param_1;
  switch(param_1[2]) {
  case (undefined *)0x0:
    local_14 = param_1[4];
    param_1[4] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    break;
  case (undefined *)0x1:
    local_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007c808a;
  case (undefined *)0x2:
    local_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007c7ff0;
  case (undefined *)0x3:
    local_1c = param_1[6];
    param_1[6] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007c7f13;
  case (undefined *)0x4:
    local_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007c7edd;
  default:
    local_14 = (undefined *)FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = (undefined *)0x0;
      FUN_00eaecdd();
      FUN_00d9d680();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) == 0) {
    iVar2 = 0;
  }
  else {
    if (*(int *)(DAT_01c289cc + 0x68) == 0) {
      FUN_00eae9a0();
      FUN_00e99f4f();
      FUN_00eaec14();
    }
    param_1 = &local_20;
    iVar2 = FUN_00e4e4a0(&PTR_DAT_01544440,param_1);
  }
  if (iVar2 != 0) {
    local_18 = (undefined *)
               FUN_007877c0(1,1,*(undefined4 *)(*(int *)(param_1[1] + 0x108) + 0x34),
                            *(double *)(iVar2 + 0xc) / _DAT_018d52c0,
                            *(double *)(iVar2 + 4) / _DAT_018d52c0);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = (undefined *)0x1;
      FUN_00eaecdd();
      FUN_00d9d680();
      FUN_00dfc9c0();
      return;
    }
LAB_007c808a:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0077a760(0,0x618);
    iVar2 = *(int *)(*(int *)(puVar1 + 4) + 0x1c);
    local_18 = (undefined *)FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(iVar2 + 8) = 2;
      FUN_00eaeca8();
      FUN_00d9d680();
      FUN_00dfc9c0();
      return;
    }
LAB_007c7ff0:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1 = &PTR_DAT_01b91278;
    local_1c = (undefined *)FUN_0077b0a0();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[2] = (undefined *)0x3;
      FUN_00eaeca8();
      FUN_00d9d680();
      FUN_00dfca00();
      return;
    }
LAB_007c7f13:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (undefined **)0x7c7f2e;
      FUN_0099dbc0();
    }
    if ((*(int *)(local_1c + 0x20) != 0) &&
       (iVar2 = *(int *)(*(int *)(local_1c + 0x20) + 0x10), 1 < *(int *)(iVar2 + 8))) {
      if (*(uint *)(*(int *)(iVar2 + 4) + 4) < 2) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      FUN_0077ab40();
      param_1 = *(undefined ***)(*(int *)(puVar1 + 4) + 0x1c);
      local_18 = (undefined *)FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = (undefined *)0x4;
        FUN_00eaecdd();
        FUN_00d9d680();
        FUN_00dfc9c0();
        return;
      }
LAB_007c7edd:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        param_1 = (undefined **)0x7c7efc;
        FUN_0099dbc0();
      }
    }
  }
  param_1[2] = (undefined *)0xfffffffe;
  if (param_1[3] == (undefined *)0x0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar2 = FUN_00c0a790();
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

