/* Address: 007e96a0 | Ghidra name: FUN_007e96a0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007e96a0(int *param_1)

{
  double dVar1;
  int iVar2;
  int iVar3;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 uVar4;
  float10 fVar5;
  float10 fVar6;
  int iStack_20;
  int local_1c;
  int local_18;
  int local_14;
  
  iVar3 = *param_1;
  switch(param_1[1]) {
  case 0:
    local_14 = param_1[3];
    param_1[3] = 0;
    param_1[1] = -1;
    break;
  case 1:
    local_18 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    goto LAB_007e9d7d;
  case 2:
    local_1c = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    goto LAB_007e9cf1;
  case 3:
    local_18 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    goto LAB_007e9c73;
  case 4:
    local_1c = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    goto LAB_007e9ba0;
  case 5:
    local_18 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    goto LAB_007e9b1c;
  case 6:
    local_14 = param_1[3];
    param_1[3] = 0;
    param_1[1] = -1;
    goto LAB_007e998d;
  case 7:
    local_18 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    goto LAB_007e990f;
  case 8:
    local_1c = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    goto LAB_007e981a;
  case 9:
    local_18 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    goto LAB_007e978c;
  case 10:
    iStack_20 = param_1[6];
    param_1[6] = 0;
    param_1[1] = -1;
    goto LAB_007e96f1;
  default:
    FUN_007876b0();
    FUN_00787780();
    local_14 = FUN_0077abc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 0;
      FUN_00eaecdd();
      FUN_00da1560();
      FUN_00dfca00();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(*(int *)(local_14 + 0x20) + 0x28) != 0x1e) {
    FUN_0077a890(0,0x1e);
    while( true ) {
      local_1c = FUN_0077ac40();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 2;
        FUN_00eaeca8();
        FUN_00da1560();
        FUN_00dfc9c0();
        return;
      }
LAB_007e9cf1:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_1c + 0x20) == '\0') break;
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 1;
        FUN_00eaeca8();
        FUN_00da1560();
        FUN_00dfc9c0();
        return;
      }
LAB_007e9d7d:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  }
  while( true ) {
    local_1c = FUN_0077ac00();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 4;
      FUN_00eaeca8();
      FUN_00da1560();
      FUN_00dfc9c0();
      return;
    }
LAB_007e9ba0:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_1c + 0x20) != '\0') break;
    FUN_00eaeae1();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_01,&PTR_DAT_01be70d8);
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 3;
      FUN_00eaeca8();
      FUN_00da1560();
      FUN_00dfc9c0();
      return;
    }
LAB_007e9c73:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  while( true ) {
    FUN_00eaeae1();
    iVar2 = FUN_00eae9a0();
    *(double *)(iVar2 + 4) = DAT_018d61f0;
    FUN_00eaebca();
    iVar2 = FUN_00eae9a0();
    *(double *)(iVar2 + 4) = DAT_018d6200;
    FUN_00eaebca();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_00,&PTR_DAT_01bf1f80);
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 5;
      FUN_00eaecdd();
      FUN_00da1560();
      FUN_00dfc9c0();
      return;
    }
LAB_007e9b1c:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_14 = FUN_0077abc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) break;
LAB_007e998d:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    dVar1 = *(double *)(*(int *)(local_14 + 0x20) + 0xc);
    fVar5 = (float10)FUN_00eb6460(DAT_018d61f8,
                                  *(double *)(*(int *)(local_14 + 0x20) + 4) - DAT_018d61f0);
    fVar6 = (float10)FUN_00eb6460(DAT_018d61f8,dVar1 - DAT_018d6200);
    if (SQRT((double)fVar6 + (double)fVar5) <= _DAT_018d6208) {
      while( true ) {
        local_1c = FUN_0077ac00();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[1] = 8;
          FUN_00eaeca8();
          FUN_00da1560();
          FUN_00dfc9c0();
          return;
        }
LAB_007e981a:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_1c + 0x20) == '\0') break;
        FUN_00eaeae1();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be70bc);
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[1] = 7;
          FUN_00eaeca8();
          FUN_00da1560();
          FUN_00dfc9c0();
          return;
        }
LAB_007e990f:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      while( true ) {
        FUN_00eaeae1();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 0x905;
        FUN_00eaebca();
        iVar2 = FUN_00eae9a0();
        *(undefined4 *)(iVar2 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[1] = 9;
          FUN_00eaecdd();
          FUN_00da1560();
          FUN_00dfc9c0();
          return;
        }
LAB_007e978c:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_20 = FUN_0077b0a0();
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) break;
LAB_007e96f1:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(iStack_20 + 0x20) != 0) {
          if (*(int *)(DAT_01c289f4 + 8) == 0) {
            FUN_00eae9a0();
            FUN_00e9a659();
            FUN_00eaec14();
          }
          iVar2 = FUN_00e4e4a0();
          if (iVar2 == 0) {
            uVar4 = 4;
          }
          else {
            uVar4 = *(undefined4 *)(iVar2 + 8);
          }
          FUN_0077ab40(0,uVar4,&PTR_DAT_01b91278);
          iVar3 = *(int *)(*(int *)(iVar3 + 4) + 0xb8);
          if (((*(byte *)(iVar3 + 0x34) & 1) == 0) || (*(char *)(iVar3 + 0x38) != '\x01')) {
            FUN_00b6cb10();
          }
          FUN_007876b0();
          param_1[1] = -2;
          if (param_1[2] == 0) {
            if (PTR_FUN_01c22110 != (undefined *)0x0) {
              FUN_00e8eaee();
            }
            FUN_00eaecdd();
          }
          else {
            iVar3 = FUN_00c0a790(0);
            if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
              FUN_00931e50();
            }
          }
          return;
        }
      }
      param_1[1] = 10;
      FUN_00eaeca8();
      FUN_00da1560();
      FUN_00dfca00();
      return;
    }
  }
  param_1[1] = 6;
  FUN_00eaeca8();
  FUN_00da1560();
  FUN_00dfca00();
  return;
}

