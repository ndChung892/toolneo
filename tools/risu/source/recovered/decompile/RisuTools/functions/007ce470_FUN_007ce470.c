/* Address: 007ce470 | Ghidra name: FUN_007ce470 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007ce470(int *param_1)

{
  int iVar1;
  int iVar2;
  double dVar3;
  undefined **ppuVar4;
  undefined4 local_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  local_24 = 0;
  iStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  iVar2 = *param_1;
  switch(param_1[2]) {
  case 0:
    local_14 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    break;
  case 1:
    iStack_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007ce907;
  case 2:
    iStack_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007ce87b;
  case 3:
    iStack_1c = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007ce7a2;
  case 4:
    iStack_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007ce714;
  case 5:
    iStack_1c = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007ce63b;
  case 6:
    iStack_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007ce5ad;
  case 7:
    iStack_1c = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_007ce568;
  case 8:
    iStack_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007ce4f1;
  case 9:
    iStack_18 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007ce4bb;
  default:
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d9e1c0();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) == 0) {
    iVar1 = 0;
  }
  else {
    if (*(int *)(DAT_01c289cc + 0x4c) == 0) {
      FUN_00eae9a0();
      FUN_00e99ed8();
      FUN_00eaec14();
    }
    param_1 = &iStack_20;
    iVar1 = FUN_00e4e4a0(&PTR_DAT_01544440,param_1);
  }
  if (iVar1 != 0) {
    dVar3 = *(double *)(iVar1 + 4) / _DAT_018d55d0;
    iStack_18 = FUN_007877c0(1,0,0,*(double *)(iVar1 + 0xc) / _DAT_018d55d0,dVar3);
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)((ulonglong)dVar3 >> 0x20) + 8) = 1;
      FUN_00eaecdd();
      FUN_00d9e1c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007ce907:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0077a760(0,0x618);
    iVar1 = *(int *)(iVar2 + 0x1c);
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(iVar1 + 8) = 2;
      FUN_00eaeca8();
      FUN_00d9e1c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007ce87b:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    ppuVar4 = &PTR_DAT_01b91278;
    iStack_1c = FUN_0077b0a0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      ppuVar4[2] = (undefined *)0x3;
      FUN_00eaeca8();
      FUN_00d9e1c0();
      FUN_00dfca00();
      return;
    }
LAB_007ce7a2:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (((*(int *)(iStack_1c + 0x20) != 0) &&
        (iVar1 = *(int *)(*(int *)(iStack_1c + 0x20) + 0x10), iVar1 != 0)) &&
       (0 < *(int *)(iVar1 + 8))) {
      if (*(int *)(*(int *)(iVar1 + 4) + 4) == 0) {
LAB_007cebad:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      FUN_0077ab40();
      iVar1 = *(int *)(iVar2 + 0x1c);
      iStack_18 = FUN_00975000();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(iVar1 + 8) = 4;
        FUN_00eaecdd();
        FUN_00d9e1c0();
        FUN_00dfc9c0();
        return;
      }
LAB_007ce714:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      ppuVar4 = &PTR_DAT_01b9125c;
      iStack_1c = FUN_0077b0a0();
      if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
        ppuVar4[2] = (undefined *)0x5;
        FUN_00eaeca8();
        FUN_00d9e1c0();
        FUN_00dfca00();
        return;
      }
LAB_007ce63b:
      if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (((*(int *)(iStack_1c + 0x20) != 0) &&
          (iVar1 = *(int *)(*(int *)(iStack_1c + 0x20) + 0x10), iVar1 != 0)) &&
         (0 < *(int *)(iVar1 + 8))) {
        if (*(int *)(*(int *)(iVar1 + 4) + 4) == 0) goto LAB_007cebad;
        FUN_0077ab40();
        iVar1 = *(int *)(iVar2 + 0x1c);
        iStack_18 = FUN_00975000();
        if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(iVar1 + 8) = 6;
          FUN_00eaecdd();
          FUN_00d9e1c0();
          FUN_00dfc9c0();
          return;
        }
LAB_007ce5ad:
        if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        ppuVar4 = &PTR_DAT_01ba04a8;
        iStack_1c = FUN_0077b0a0();
        if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
          ppuVar4[2] = (undefined *)0x7;
          FUN_00eaeca8();
          FUN_00d9e1c0();
          FUN_00dfca00();
          return;
        }
LAB_007ce568:
        if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(iStack_1c + 0x20) == 0) {
          iVar1 = 0;
        }
        else {
          if (*(int *)(DAT_01c289cc + 0x50) == 0) {
            FUN_00eae9a0();
            FUN_00e99ee9();
            local_24 = 0x7ceb20;
            FUN_00eaec14();
          }
          iVar1 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_24);
        }
        if (iVar1 != 0) {
          FUN_0077ab40();
          iVar2 = *(int *)(iVar2 + 0x1c);
          iStack_18 = FUN_00975000();
          if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(iVar2 + 8) = 8;
            FUN_00eaecdd();
            FUN_00d9e1c0();
            FUN_00dfc9c0();
            return;
          }
LAB_007ce4f1:
          if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
    }
    param_1 = (int *)0x7ce519;
    iStack_18 = FUN_007c66b0();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 9;
      FUN_00eaeca8();
      FUN_00d9e1c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007ce4bb:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (int *)0x7ce4da;
      FUN_0099dbc0();
    }
  }
  param_1[2] = -2;
  if (param_1[3] == 0) {
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

