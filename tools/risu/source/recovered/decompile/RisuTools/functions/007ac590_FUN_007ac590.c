/* Address: 007ac590 | Ghidra name: FUN_007ac590 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007ac590(int param_1)

{
  int iVar1;
  int extraout_ECX;
  undefined4 local_24;
  undefined4 uStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  local_24 = 0;
  uStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  switch(*(undefined4 *)(param_1 + 0xc)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac860;
  case 2:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac7c8;
  case 3:
    iStack_1c = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac6ec;
  case 4:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac656;
  case 5:
    iStack_1c = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac611;
  case 6:
    iStack_18 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac5db;
  default:
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 0;
      FUN_00eaecdd();
      FUN_00d99d20();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) != 0) {
    if (*(int *)(DAT_01c289bc + 0xc) == 0) {
      FUN_00eae9a0();
      FUN_00e995bf();
      FUN_00eaec14();
    }
    FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_20);
  }
  FUN_00eaeca8();
  iVar1 = *(int *)(extraout_ECX + 8);
  if (iVar1 != 0) {
    iStack_18 = FUN_007877c0(1,1,*(undefined4 *)
                                  (*(int *)(*(int *)(extraout_ECX + 4) + 0x108) + 0x34),
                             *(double *)(iVar1 + 0xc) / _DAT_018d46f8,
                             *(double *)(iVar1 + 4) / _DAT_018d46f8);
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 1;
      FUN_00eaecdd();
      FUN_00d99d20();
      FUN_00dfc9c0();
      return;
    }
LAB_007ac860:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0077a760(0,*(undefined4 *)(*(int *)(param_1 + 8) + 0x28));
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 2;
      FUN_00eaeca8();
      FUN_00d99d20();
      FUN_00dfc9c0();
      return;
    }
LAB_007ac7c8:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iStack_1c = FUN_0077b0a0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 3;
      FUN_00eaeca8();
      FUN_00d99d20();
      FUN_00dfca00();
      return;
    }
LAB_007ac6ec:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(iStack_1c + 0x20) != 0) &&
       (iVar1 = *(int *)(*(int *)(iStack_1c + 0x20) + 0x10), 0 < *(int *)(iVar1 + 8))) {
      if (*(int *)(*(int *)(iVar1 + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      FUN_0077ab40();
      iStack_18 = FUN_00975000();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 4;
        FUN_00eaecdd();
        FUN_00d99d20();
        FUN_00dfc9c0();
        return;
      }
LAB_007ac656:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_1c = FUN_0077b0a0();
      if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 5;
        FUN_00eaeca8();
        FUN_00d99d20();
        FUN_00dfca00();
        return;
      }
LAB_007ac611:
      if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(iStack_1c + 0x20) == 0) {
        iVar1 = 0;
      }
      else {
        if (*(int *)(DAT_01c289bc + 0x10) == 0) {
          FUN_00eae9a0();
          FUN_00e995d0(param_1);
          param_1 = 0x7acaae;
          FUN_00eaec14();
        }
        iVar1 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_24);
      }
      if (iVar1 != 0) {
        FUN_0077ab40();
        iStack_18 = FUN_00975000();
        if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0xc) = 6;
          FUN_00eaecdd();
          FUN_00d99d20();
          FUN_00dfc9c0();
          return;
        }
LAB_007ac5db:
        if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
  }
  *(undefined4 *)(param_1 + 0xc) = 0xfffffffe;
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_1 + 0x10) == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar1 = FUN_00c0a790();
    if (iVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

