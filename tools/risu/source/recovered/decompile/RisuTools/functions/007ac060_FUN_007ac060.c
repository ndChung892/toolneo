/* Address: 007ac060 | Ghidra name: FUN_007ac060 */

void __fastcall FUN_007ac060(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 extraout_ECX;
  int local_1c;
  int local_18;
  int local_14;
  
  switch(*(undefined4 *)(param_1 + 0xc)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    break;
  case 1:
    local_18 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac375;
  case 2:
    local_18 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac267;
  case 3:
    local_1c = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac1d6;
  case 4:
    local_18 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac0e0;
  case 5:
    local_18 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_007ac0aa;
  default:
    local_14 = FUN_007ab030();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 0;
      FUN_00eaecdd();
      FUN_00d99c00();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(char *)(local_14 + 0x20) == '\0') {
    local_18 = FUN_00787840(0,0,1,*(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 1;
      FUN_00eaecdd();
      FUN_00d99c00();
      FUN_00dfc9c0();
      return;
    }
LAB_007ac375:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_007877c0(0,1,*(undefined4 *)(*(int *)(*(int *)(param_1 + 4) + 0x108) + 0x34),
                            DAT_018d46d0,DAT_018d46c8);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 2;
      FUN_00eaeca8();
      FUN_00d99c00();
      FUN_00dfc9c0();
      return;
    }
LAB_007ac267:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    do {
      uVar1 = FUN_00eaeae1();
      iVar2 = FUN_00eae9a0(uVar1);
      *(undefined4 *)(iVar2 + 4) = 0xc6;
      FUN_00eaebca();
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
      local_1c = FUN_0077b0a0();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 3;
        FUN_00eaecdd();
        FUN_00d99c00();
        FUN_00dfca00();
        return;
      }
LAB_007ac1d6:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 4;
        FUN_00eaeca8();
        FUN_00d99c00();
        FUN_00dfc9c0();
        return;
      }
LAB_007ac0e0:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0x10) + 1;
      iVar2 = *(int *)(param_1 + 8);
      if ((iVar2 != 0) && (*(int *)(*(int *)(iVar2 + 0x10) + 8) != 0)) goto LAB_007ac124;
    } while (*(int *)(param_1 + 0x10) < 5);
    if (iVar2 != 0) {
LAB_007ac124:
      if (0 < *(int *)(*(int *)(iVar2 + 0x10) + 8)) {
        if (*(int *)(*(int *)(*(int *)(iVar2 + 0x10) + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        FUN_0077ab40();
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0xc) = 5;
          FUN_00eaecdd();
          FUN_00d99c00();
          FUN_00dfc9c0();
          return;
        }
LAB_007ac0aa:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
  }
  *(undefined4 *)(param_1 + 0xc) = 0xfffffffe;
  *(undefined4 *)(param_1 + 8) = 0;
  if (*(int *)(param_1 + 0x14) == 0) {
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

