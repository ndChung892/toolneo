/* Address: 007d40f0 | Ghidra name: FUN_007d40f0 */

void __fastcall FUN_007d40f0(int *param_1)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  
  iVar4 = 0;
  iVar3 = 0;
  iVar1 = *param_1;
  switch(param_1[2]) {
  case 0:
    iVar4 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    piVar2 = param_1;
    break;
  case 1:
    iVar4 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_007d42e1;
  case 2:
    iVar4 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_007d4249;
  case 3:
    iVar3 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_007d416d;
  case 4:
    iVar1 = param_1[4];
    param_1[4] = 0;
    param_1[2] = -1;
    goto LAB_007d4137;
  default:
    FUN_00906aa0();
    FUN_007876b0();
    piVar2 = param_1;
    iVar4 = FUN_007d31e0();
    if ((*(uint *)(iVar4 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d9f0a0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0(piVar2,iVar3);
  }
  iVar4 = FUN_007877c0(1,1,*(undefined4 *)(*(int *)(param_1[1] + 0x108) + 0x34),DAT_018d5790,
                       DAT_018d5788);
  param_1 = piVar2;
  if ((*(uint *)(iVar4 + 0x1c) & 0x1600000) == 0) {
    piVar2[2] = 1;
    FUN_00eaeca8();
    FUN_00d9f0a0();
    FUN_00dfc9c0();
  }
  else {
LAB_007d42e1:
    if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0(param_1,iVar3);
    }
    FUN_0077a760(0,*(undefined4 *)(*(int *)(iVar1 + 8) + 0x28));
    iVar4 = FUN_00975000();
    if ((*(uint *)(iVar4 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 2;
      FUN_00eaeca8();
      FUN_00d9f0a0();
      FUN_00dfc9c0();
    }
    else {
LAB_007d4249:
      if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0(param_1,iVar3);
      }
      iVar3 = FUN_0077b0a0();
      if ((*(uint *)(iVar3 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 3;
        FUN_00eaeca8();
        FUN_00d9f0a0();
        FUN_00dfca00();
      }
      else {
LAB_007d416d:
        if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0(param_1,iVar3,iVar4);
        }
        if ((*(int *)(iVar3 + 0x20) != 0) &&
           (iVar1 = *(int *)(*(int *)(iVar3 + 0x20) + 0x10), 0 < *(int *)(iVar1 + 8))) {
          if (*(int *)(*(int *)(iVar1 + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          FUN_0077ab40();
          iVar1 = FUN_00975000();
          if ((*(uint *)(iVar1 + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 4;
            FUN_00eaecdd();
            FUN_00d9f0a0();
            FUN_00dfc9c0();
            return;
          }
LAB_007d4137:
          if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0(param_1,iVar3);
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
          iVar1 = FUN_00c0a790();
          if (iVar1 == 0) {
                    /* WARNING: Subroutine does not return */
            FUN_00931e50();
          }
        }
      }
    }
  }
  return;
}

