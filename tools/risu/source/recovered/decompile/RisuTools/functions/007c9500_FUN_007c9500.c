/* Address: 007c9500 | Ghidra name: FUN_007c9500 */

void __fastcall FUN_007c9500(undefined **param_1)

{
  undefined *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_20;
  undefined *local_1c;
  undefined *local_18;
  undefined *local_14;
  
  local_14 = (undefined *)0x0;
  local_18 = (undefined *)0x0;
  local_1c = (undefined *)0x0;
  local_20 = 0;
  puVar1 = param_1[1];
  switch(param_1[3]) {
  case (undefined *)0x0:
    local_14 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[3] = (undefined *)0xffffffff;
    break;
  case (undefined *)0x1:
    local_18 = param_1[6];
    param_1[6] = (undefined *)0x0;
    param_1[3] = (undefined *)0xffffffff;
    goto LAB_007c96fa;
  case (undefined *)0x2:
    local_1c = param_1[7];
    param_1[7] = (undefined *)0x0;
    param_1[3] = (undefined *)0xffffffff;
    goto LAB_007c965b;
  case (undefined *)0x3:
    local_1c = param_1[7];
    param_1[7] = (undefined *)0x0;
    param_1[3] = (undefined *)0xffffffff;
    goto LAB_007c9584;
  case (undefined *)0x4:
    local_18 = param_1[6];
    param_1[6] = (undefined *)0x0;
    param_1[3] = (undefined *)0xffffffff;
    goto LAB_007c954e;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    local_14 = (undefined *)FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = (undefined *)0x0;
      FUN_00eaecdd();
      FUN_00d9d9e0();
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
    FUN_00eae9a0();
    FUN_00e9a0a3(param_1);
    iVar2 = FUN_00e4e4a0(&PTR_DAT_01544440,&local_20);
  }
  if (iVar2 == 0) {
    FUN_00906aa0(&PTR_DAT_01b3df68);
    param_1 = (undefined **)0x7c987f;
    FUN_007876b0();
  }
  else {
    uVar3 = *(undefined4 *)(*(int *)(puVar1 + 0x14) + 8);
    FUN_0077a760(0,*(undefined4 *)(iVar2 + 0x28));
    iVar2 = *(int *)(puVar1 + 0x1c);
    local_18 = (undefined *)FUN_00975000(iVar2);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(iVar2 + 0xc) = 1;
      FUN_00eaecdd(uVar3);
      FUN_00d9d9e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007c96fa:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1 = &PTR_DAT_01b91278;
    local_1c = (undefined *)FUN_0077b0a0(&PTR_DAT_01b91278);
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[3] = (undefined *)0x2;
      FUN_00eaeca8();
      FUN_00d9d9e0();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
LAB_007c965b:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (undefined **)0x7c9676;
      FUN_0099dbc0();
    }
    iVar2 = *(int *)(local_1c + 0x20);
    if (iVar2 == 0) {
      param_1 = &PTR_DAT_01b9125c;
      local_1c = (undefined *)FUN_0077b0a0(&PTR_DAT_01b9125c);
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[3] = (undefined *)0x3;
        FUN_00eaecdd();
        FUN_00d9d9e0();
        FUN_00dfca00(&PTR_DAT_01553b90);
        return;
      }
LAB_007c9584:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        param_1 = (undefined **)0x7c959f;
        FUN_0099dbc0();
      }
      iVar2 = *(int *)(local_1c + 0x20);
    }
    if (((iVar2 != 0) && (iVar2 = *(int *)(iVar2 + 0x10), iVar2 != 0)) && (0 < *(int *)(iVar2 + 8)))
    {
      if (*(int *)(*(int *)(iVar2 + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      FUN_0077ab40(0,*(undefined4 *)(*(int *)(*(int *)(iVar2 + 4) + 8) + 8),&PTR_DAT_01b91278);
      param_1 = *(undefined ***)(puVar1 + 0x1c);
      local_18 = (undefined *)FUN_00975000(param_1);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = (undefined *)0x4;
        FUN_00eaeca8();
        FUN_00d9d9e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007c954e:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        param_1 = (undefined **)0x7c956d;
        FUN_0099dbc0();
      }
    }
  }
  param_1[3] = (undefined *)0xfffffffe;
  param_1[2] = (undefined *)0x0;
  if (param_1[4] == (undefined *)0x0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar2 = FUN_00c0a790(0);
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

