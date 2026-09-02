/* Address: 00803d80 | Ghidra name: FUN_00803d80 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00803d80(double *param_1)

{
  bool bVar1;
  double dVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 extraout_ECX;
  int extraout_ECX_00;
  undefined4 extraout_ECX_01;
  float10 fVar6;
  undefined4 in_stack_ffffff8c;
  undefined4 in_stack_ffffff90;
  undefined4 local_54;
  double dStack_50;
  double dStack_48;
  double dStack_40;
  undefined4 uStack_38;
  double local_34;
  double dStack_2c;
  int local_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  local_54 = 0;
  dStack_50 = 0.0;
  dStack_48 = 0.0;
  dStack_40 = 0.0;
  uStack_38 = 0;
  local_34 = 0.0;
  dStack_2c = 0.0;
  local_24 = 0;
  iStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  iVar5 = *(int *)((int)param_1 + 0xc);
  switch(*(undefined4 *)((int)param_1 + 0x1c)) {
  case 0:
    local_14 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    break;
  case 1:
    iStack_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_008042c4;
  case 2:
    iStack_1c = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080427f;
  case 3:
    iStack_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_008041fd;
  case 4:
    local_14 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_0080414a;
  case 5:
    iStack_18 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00803f60;
  case 6:
    iStack_20 = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00803f27;
  case 7:
    local_14 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00803e8c;
  case 8:
    local_24 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00803dd8;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    local_14 = FUN_007fef80();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 0;
      FUN_00eaecdd();
      FUN_00da3340();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iStack_18 = FUN_0077abc0();
  if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)((int)param_1 + 0x1c) = 1;
    FUN_00eaeca8();
    FUN_00da3340();
    FUN_00dfca00(&PTR_DAT_01553fc4);
    return;
  }
LAB_008042c4:
  if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iStack_1c = FUN_0077acc0();
  if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)((int)param_1 + 0x1c) = 2;
    FUN_00eaeca8();
    FUN_00da3340();
    FUN_00dfca00(&PTR_DAT_01568d5c);
    return;
  }
LAB_0080427f:
  if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(iStack_1c + 0x20) != 0) {
    FUN_00eae9a0();
    FUN_00e9abed(in_stack_ffffff8c);
    FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_38);
  }
  FUN_00eaeca8();
  if (*(int *)(extraout_ECX_00 + 0x18) == 0) {
    bVar1 = false;
  }
  else {
    while( true ) {
      local_14 = FUN_0077ac00();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 4;
        FUN_00eaeca8();
        FUN_00da3340();
        FUN_00dfc9c0();
        return;
      }
LAB_0080414a:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_14 + 0x20) != '\0') break;
      FUN_00eaeae1();
      iVar4 = FUN_00eae9a0();
      *(undefined4 *)(iVar4 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_01,&PTR_DAT_01be70d8);
      iStack_20 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 3;
        FUN_00eaeca8();
        FUN_00da3340();
        FUN_00dfc9c0();
        return;
      }
LAB_008041fd:
      if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    *param_1 = DAT_018d6e18;
    while (_DAT_018d6e20 < *param_1) {
      iStack_18 = FUN_0077abc0();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 5;
        FUN_00eaeca8();
        FUN_00da3340();
        FUN_00dfca00(&PTR_DAT_01553fc4);
        return;
      }
LAB_00803f60:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      dVar2 = DAT_018d6e08;
      dStack_2c = *(double *)(*(int *)(iStack_18 + 0x20) + 0xc) / DAT_018d6e08;
      dStack_40 = *(double *)(*(int *)(param_1 + 3) + 0xc) / DAT_018d6e08;
      fVar6 = (float10)FUN_00eb6460(DAT_018d6e10,
                                    *(double *)(*(int *)(iStack_18 + 0x20) + 4) / DAT_018d6e08 -
                                    *(double *)(*(int *)(param_1 + 3) + 4) / DAT_018d6e08);
      dStack_48 = (double)fVar6;
      fVar6 = (float10)FUN_00eb6460(DAT_018d6e10,dStack_2c - dStack_40);
      in_stack_ffffff90 = (undefined4)((ulonglong)(double)fVar6 >> 0x20);
      *param_1 = SQRT((double)fVar6 + dStack_48);
      local_34 = *(double *)(*(int *)(param_1 + 3) + 4) / dVar2;
      dStack_50 = *(double *)(*(int *)(param_1 + 3) + 0xc) / dVar2;
      uVar3 = FUN_00eaeae1();
      iVar4 = FUN_00eae9a0(in_stack_ffffff90,uVar3);
      *(double *)(iVar4 + 4) = dVar2 * local_34;
      FUN_00eaebca();
      iVar4 = FUN_00eae9a0();
      *(double *)(iVar4 + 4) = dVar2 * dStack_50;
      FUN_00eaebca();
      iVar4 = FUN_00eae9a0();
      *(undefined4 *)(iVar4 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,&PTR_DAT_01bf1f80);
      iStack_20 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 6;
        FUN_00eaeca8();
        FUN_00da3340();
        FUN_00dfc9c0();
        return;
      }
LAB_00803f27:
      if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_00787780();
    local_14 = FUN_007ff010(*(undefined4 *)((int)param_1 + 0x14));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 7;
      FUN_00eaeca8();
      FUN_00da3340();
      FUN_00dfc9c0();
      return;
    }
LAB_00803e8c:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_14 + 0x20) != '\0') {
      local_24 = FUN_0077b0a0(&PTR_DAT_01ba04a8);
      if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 8;
        FUN_00eaeca8();
        FUN_00da3340();
        FUN_00dfca00(&PTR_DAT_01553b84);
        return;
      }
LAB_00803dd8:
      if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_24 + 0x20) != 0) {
        if (*(int *)(DAT_01c28a54 + 0x24) == 0) {
          FUN_00eae9a0();
          FUN_00e9ab10(in_stack_ffffff90);
          FUN_00eaec14();
        }
        iVar5 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_54);
        if (iVar5 == 0) {
          FUN_0077ab40();
        }
        else {
          FUN_0077ab40();
        }
      }
    }
    FUN_00787780();
    bVar1 = true;
  }
  *(undefined4 *)((int)param_1 + 0x1c) = 0xfffffffe;
  *(undefined4 *)(param_1 + 2) = 0;
  *(undefined4 *)(param_1 + 3) = 0;
  if (*(int *)((int)param_1 + 0x24) == 0) {
    if (bVar1) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
    }
    else if (PTR_FUN_01c2211c != (undefined *)0x0) {
      FUN_00e8eaff();
    }
    FUN_00eaed7c();
  }
  else {
    iVar5 = FUN_00b6e080();
    if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

