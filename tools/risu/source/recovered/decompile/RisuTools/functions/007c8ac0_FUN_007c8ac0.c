/* Address: 007c8ac0 | Ghidra name: FUN_007c8ac0 */

/* WARNING: Removing unreachable block (ram,0x007c8fbc) */
/* WARNING: Removing unreachable block (ram,0x007c901b) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007c8ac0(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int extraout_ECX;
  int extraout_ECX_00;
  undefined4 in_stack_ffffffc0;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  switch(*(undefined4 *)(param_1 + 0x20)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    while( true ) {
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_14 + 0x20) != 0) {
        if (*(int *)(*(int *)(param_1 + 8) + 8) == 0) {
          FUN_00eae9a0();
          FUN_00e9a081(in_stack_ffffffc0);
          in_stack_ffffffc0 = 0x7c93cd;
          FUN_00eaec14();
        }
        FUN_00e4ee90();
        FUN_00e4ee50();
      }
      FUN_00eaeca8();
      if ((*(int *)(extraout_ECX_00 + 0x18) == 0) ||
         (iVar2 = *(int *)(*(int *)(extraout_ECX_00 + 0x18) + 8), iVar2 == 0)) break;
      if (0 < iVar2) {
        FUN_00eae9a0();
        FUN_00eaeca8();
        iStack_20 = FUN_0077abc0();
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x20) = 5;
          FUN_00eaecdd();
          FUN_00d9d8c0();
          FUN_00dfca00();
          return;
        }
        goto LAB_007c8f0f;
      }
LAB_007c8cb0:
      if (*(int *)(param_1 + 0xc) == 0) {
        if (*(char *)(param_1 + 0x28) == '\0') goto LAB_007c9482;
      }
      else {
        iStack_18 = FUN_0077b0a0();
        if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x20) = 10;
          FUN_00eaecdd();
          FUN_00d9d8c0();
          FUN_00dfca00();
          return;
        }
LAB_007c8bec:
        if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iVar2 = *(int *)(iStack_18 + 0x20);
        if (iVar2 == 0) {
          iStack_18 = FUN_0077b0a0();
          if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x20) = 0xb;
            FUN_00eaecdd();
            FUN_00d9d8c0();
            FUN_00dfca00();
            return;
          }
LAB_007c8b44:
          if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar2 = *(int *)(iStack_18 + 0x20);
        }
        if (((iVar2 != 0) && (*(int *)(iVar2 + 8) != 0)) && (iVar2 = FUN_00909ad0(), iVar2 != 0)) {
          iStack_1c = FUN_007c66b0();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x20) = 0xc;
            FUN_00eaecdd();
            FUN_00d9d8c0();
            FUN_00dfc9c0();
            return;
          }
          goto LAB_007c8b0e;
        }
      }
      *(undefined4 *)(param_1 + 0x18) = 0;
LAB_007c9345:
      local_14 = FUN_0077acc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x20) = 0;
        FUN_00eaecdd();
        FUN_00d9d8c0();
        FUN_00dfca00();
        return;
      }
    }
    if (*(int *)(param_1 + 0xc) != 0) {
      *(undefined4 *)(param_1 + 0x24) = 0;
      while (*(int *)(param_1 + 0x24) < 3) {
        iStack_18 = FUN_0077b0a0();
        if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x20) = 1;
          FUN_00eaecdd();
          FUN_00d9d8c0();
          FUN_00dfca00();
          return;
        }
LAB_007c9255:
        if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iVar2 = *(int *)(iStack_18 + 0x20);
        if (iVar2 == 0) {
          iStack_18 = FUN_0077b0a0();
          if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x20) = 2;
            FUN_00eaecdd();
            FUN_00d9d8c0();
            FUN_00dfca00();
            return;
          }
LAB_007c91ad:
          if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar2 = *(int *)(iStack_18 + 0x20);
        }
        if (((iVar2 != 0) && (*(int *)(iVar2 + 8) != 0)) && (iVar2 = FUN_00909ad0(), iVar2 != 0)) {
          iStack_1c = FUN_007c66b0();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x20) = 3;
            FUN_00eaecdd();
            FUN_00d9d8c0();
            FUN_00dfc9c0();
            return;
          }
          goto LAB_007c9177;
        }
        iStack_1c = FUN_00975000();
        if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x20) = 4;
          FUN_00eaecdd();
          FUN_00d9d8c0();
          FUN_00dfc9c0();
          return;
        }
LAB_007c913b:
        if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        *(int *)(param_1 + 0x24) = *(int *)(param_1 + 0x24) + 1;
      }
    }
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    goto LAB_007c9255;
  case 2:
    iStack_18 = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    goto LAB_007c91ad;
  case 3:
    iStack_1c = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
LAB_007c9177:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    break;
  case 4:
    iStack_1c = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    goto LAB_007c913b;
  case 5:
    iStack_20 = *(int *)(param_1 + 0x3c);
    *(undefined4 *)(param_1 + 0x3c) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
LAB_007c8f0f:
    if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaebca();
    if (*(int *)(*(int *)(extraout_ECX + 0x14) + 4) != 0) {
      FUN_00eae9a0();
      FUN_00e9a092(in_stack_ffffffc0);
      uVar3 = FUN_00eae9a0();
      FUN_00cf24b0();
      FUN_00e4ee50(uVar3);
      FUN_00eaeca8();
    }
    FUN_00e4e3a0();
                    /* WARNING: Subroutine does not return */
    FUN_00860240();
  case 6:
    iVar2 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar3 = *(undefined4 *)(*(int *)(param_1 + 0x1c) + 0x28);
    uVar1 = FUN_00eaeae1();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = uVar3;
    in_stack_ffffffc0 = uVar1;
    FUN_00eaebca();
    iVar2 = FUN_00eae9a0();
    *(undefined4 *)(iVar2 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar1,&PTR_DAT_01be3a98);
    iStack_1c = FUN_00975000();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x20) = 7;
      FUN_00eaeca8();
      FUN_00d9d8c0();
      FUN_00dfc9c0();
      return;
    }
    goto LAB_007c8dab;
  case 7:
    iStack_1c = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
LAB_007c8dab:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iStack_1c = FUN_007c67a0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x20) = 8;
      FUN_00eaeca8();
      FUN_00d9d8c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007c8d30:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iStack_1c = FUN_007c66b0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x20) = 9;
      FUN_00eaeca8();
      FUN_00d9d8c0();
      FUN_00dfc9c0();
      return;
    }
LAB_007c8c8a:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0;
    goto LAB_007c8cb0;
  case 8:
    iStack_1c = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    goto LAB_007c8d30;
  case 9:
    iStack_1c = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    goto LAB_007c8c8a;
  case 10:
    iStack_18 = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    goto LAB_007c8bec;
  case 0xb:
    iStack_18 = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
    goto LAB_007c8b44;
  case 0xc:
    iStack_1c = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x20) = 0xffffffff;
LAB_007c8b0e:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    break;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    goto LAB_007c9345;
  }
LAB_007c9482:
  *(undefined4 *)(param_1 + 0x20) = 0xfffffffe;
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_1 + 0x2c) == 0) {
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

