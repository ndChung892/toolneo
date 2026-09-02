/* Address: 007de8c0 | Ghidra name: FUN_007de8c0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007de8c0(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined **ppuVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  undefined **in_stack_ffffffa0;
  undefined4 local_40;
  undefined4 uStack_3c;
  int iStack_38;
  uint uStack_34;
  uint local_30;
  undefined4 *puStack_2c;
  uint uStack_28;
  int iStack_24;
  int local_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
  local_40 = 0;
  uStack_3c = 0;
  iStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  puStack_2c = (undefined4 *)0x0;
  uStack_28 = 0;
  iStack_24 = 0;
  local_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  iStack_14 = 0;
  switch(*(undefined4 *)(param_1 + 4)) {
  case 0:
    iStack_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007def26;
  case 2:
    iStack_1c = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007deee4;
  case 3:
    iStack_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007dee56;
  case 4:
    local_20 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007dedaa;
  case 5:
    iStack_24 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007deceb;
  case 6:
    iStack_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007dec6b;
  case 7:
    iStack_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007deb85;
  case 8:
    iStack_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007deaf9;
  case 9:
    local_20 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007de9dd;
  case 10:
    iStack_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007de953;
  case 0xb:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_007de90e;
  default:
    FUN_007876b0();
    iStack_14 = FUN_007877c0(0,0,0,DAT_018d5cd8,DAT_018d5cd0);
    if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaecdd();
      FUN_00da0440();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  do {
    if ((5 < *(int *)(param_1 + 8)) || (2 < *(int *)(param_1 + 0xc))) {
      *(undefined4 *)(param_1 + 4) = 0xfffffffe;
      if (*(int *)(param_1 + 0x18) == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaecdd();
      }
      else {
        iVar6 = FUN_00c0a790();
        if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_00931e50();
        }
      }
      return;
    }
    iStack_18 = FUN_0077b280();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 1;
      FUN_00eaecdd();
      FUN_00da0440();
      FUN_00dfca00();
      return;
    }
LAB_007def26:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iStack_18 + 0x20) == 0) {
      uVar4 = 0;
    }
    else {
      FUN_00eae9a0();
      FUN_00e9a15e(in_stack_ffffffa0);
      in_stack_ffffffa0 = &PTR_DAT_015448c8;
      uVar4 = FUN_00e4de40(&PTR_DAT_015448c8);
    }
    *(undefined4 *)(param_1 + 0x10) = uVar4;
    iStack_1c = FUN_0077acc0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 2;
      FUN_00eaecdd();
      FUN_00da0440();
      FUN_00dfca00();
      return;
    }
LAB_007deee4:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iStack_1c + 0x20) == 0) {
      iVar6 = 0;
    }
    else {
      if (*(int *)(DAT_01c289d4 + 0x7c) == 0) {
        FUN_00eae9a0();
        FUN_00e9a38f(in_stack_ffffffa0);
        in_stack_ffffffa0 = (undefined **)0x7df122;
        FUN_00eaec14();
      }
      iVar6 = FUN_00e4e4a0(&PTR_DAT_01544440,&local_40);
    }
    if (iVar6 == 0) {
      uVar4 = 0x9c4;
    }
    else {
      uVar4 = *(undefined4 *)(iVar6 + 0x28);
    }
    *(undefined4 *)(param_1 + 0x14) = uVar4;
    uVar4 = *(undefined4 *)(param_1 + 0x14);
    uVar5 = FUN_00eaeae1();
    iVar6 = FUN_00eae9a0();
    *(undefined4 *)(iVar6 + 4) = uVar4;
    FUN_00eaebca();
    iVar6 = FUN_00eae9a0();
    *(undefined4 *)(iVar6 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar5,&PTR_DAT_01be3a98);
    iStack_14 = FUN_00975000();
    if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 3;
      FUN_00eaecdd();
      FUN_00da0440();
      FUN_00dfc9c0();
      return;
    }
LAB_007dee56:
    if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_20 = FUN_0077b0a0();
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 4;
      FUN_00eaeca8();
      FUN_00da0440();
      FUN_00dfca00();
      return;
    }
LAB_007dedaa:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar6 = *(int *)(local_20 + 0x20);
    if ((iVar6 == 0) || (*(int *)(*(int *)(iVar6 + 0x10) + 8) == 0)) {
      FUN_007876b0();
      iStack_24 = FUN_0077abc0();
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 4) = 5;
        FUN_00eaecdd();
        FUN_00da0440();
        FUN_00dfca00();
        return;
      }
LAB_007deceb:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar6 = *(int *)(iStack_24 + 0x20);
      if (iVar6 != 0) {
        iStack_14 = FUN_007877c0(0,0,0,*(double *)(iVar6 + 0xc) / _DAT_018d5cc0,
                                 *(double *)(iVar6 + 4) / _DAT_018d5cc0 + _DAT_018d5cc8);
        if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 4) = 6;
          FUN_00eaecdd();
          FUN_00da0440();
          FUN_00dfc9c0();
          return;
        }
LAB_007dec6b:
        if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_14 = FUN_00975000();
        if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 4) = 7;
          FUN_00eaeca8();
          FUN_00da0440();
          FUN_00dfc9c0();
          return;
        }
LAB_007deb85:
        if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      uVar4 = *(undefined4 *)(param_1 + 0x14);
      uVar5 = FUN_00eaeae1();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = uVar4;
      FUN_00eaebca();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar5,&PTR_DAT_01be3a98);
      iStack_14 = FUN_00975000();
      if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 4) = 8;
        FUN_00eaeca8();
        FUN_00da0440();
        FUN_00dfc9c0();
        return;
      }
LAB_007deaf9:
      if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_20 = FUN_0077b0a0();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 4) = 9;
        FUN_00eaeca8();
        FUN_00da0440();
        FUN_00dfca00();
        return;
      }
LAB_007de9dd:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar6 = *(int *)(local_20 + 0x20);
    }
    if ((iVar6 == 0) || (*(int *)(*(int *)(iVar6 + 0x10) + 8) < 1)) {
      *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + 1;
    }
    else {
      iVar6 = *(int *)(*(int *)(iVar6 + 0x10) + 4);
      if (*(int *)(iVar6 + 4) == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      uVar4 = *(undefined4 *)(*(int *)(iVar6 + 8) + 8);
      ppuVar3 = (undefined **)FUN_00eaeae1();
      ppuVar3[2] = (undefined *)&PTR_DAT_01b91278;
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = uVar4;
      in_stack_ffffffa0 = ppuVar3;
      FUN_00eaebca();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(ppuVar3,&PTR_DAT_01befc64);
      iStack_14 = FUN_00975000();
      if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 4) = 10;
        FUN_00eaecdd();
        FUN_00da0440();
        FUN_00dfc9c0();
        return;
      }
LAB_007de953:
      if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iStack_18 = FUN_0077b280();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0xb;
      FUN_00eaeca8();
      FUN_00da0440();
      FUN_00dfca00();
      return;
    }
LAB_007de90e:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iStack_18 + 0x20) == 0) {
      iVar6 = 0;
    }
    else {
      FUN_00eae9a0();
      FUN_00e9a16f(in_stack_ffffffa0);
      in_stack_ffffffa0 = &PTR_DAT_015448c8;
      iVar6 = FUN_00e4de40(&PTR_DAT_015448c8);
    }
    if (iVar6 < *(int *)(param_1 + 0x10)) {
      *(int *)(param_1 + 8) = *(int *)(param_1 + 8) + (*(int *)(param_1 + 0x10) - iVar6);
      *(undefined4 *)(param_1 + 0xc) = 0;
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      iStack_38 = FUN_00b848a0();
      uVar2 = _UNK_018d5cec;
      uVar5 = _UNK_018d5ce8;
      uVar4 = _UNK_018d5ce4;
      if (iStack_38 == 0) {
        puStack_2c = (undefined4 *)0x0;
        uStack_28 = 0;
      }
      else {
        puStack_2c = (undefined4 *)(iStack_38 + 8);
        uStack_28 = *(uint *)(iStack_38 + 4);
      }
      uStack_3c = 0;
      uStack_34 = 0;
      local_30 = local_30 & 0xffffff00;
      if (uStack_28 < 8) {
        FUN_0099d6f0();
      }
      else {
        *puStack_2c = _DAT_018d5ce0;
        puStack_2c[1] = uVar4;
        puStack_2c[2] = uVar5;
        puStack_2c[3] = uVar2;
        uStack_34 = 8;
      }
      FUN_00de77e0();
      uVar2 = _UNK_018d5cfc;
      uVar5 = _UNK_018d5cf8;
      uVar4 = _UNK_018d5cf4;
      if (uStack_28 < uStack_34) {
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      puVar1 = (undefined4 *)((int)puStack_2c + uStack_34 * 2);
      if (uStack_28 - uStack_34 < 9) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d5cf0;
        puVar1[1] = uVar4;
        puVar1[2] = uVar5;
        puVar1[3] = uVar2;
        *(undefined2 *)(puVar1 + 4) = 0x2e;
        uStack_34 = uStack_34 + 9;
      }
      FUN_0099d560();
      FUN_007876b0();
    }
    else {
      *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0xc) + 1;
    }
  } while( true );
}

