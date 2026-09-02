/* Address: 00793220 | Ghidra name: FUN_00793220 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00793220(double *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  double *extraout_ECX;
  double *pdVar4;
  int extraout_ECX_00;
  undefined4 in_stack_ffffffa4;
  undefined **ppuVar5;
  int in_stack_ffffffa8;
  int in_stack_ffffffac;
  undefined4 local_30;
  undefined4 uStack_2c;
  int iStack_28;
  int iStack_24;
  undefined4 local_20;
  undefined4 local_1c;
  int local_18;
  int local_14;
  
  local_30 = 0;
  uStack_2c = 0;
  iStack_28 = 0;
  iStack_24 = 0;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = *(int *)((int)param_1 + 0x1c);
  iVar3 = *(int *)(param_1 + 2);
  pdVar4 = param_1;
  switch(local_14) {
  case 0:
    local_18 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    local_14 = -1;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    break;
  case 1:
    iStack_24 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    local_14 = -1;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_007937cf;
  case 2:
    local_18 = *(int *)(param_1 + 5);
    *(undefined4 *)(param_1 + 5) = 0;
    local_14 = -1;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_007934cc;
  case 3:
    iStack_28 = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    local_14 = -1;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00793462;
  case 4:
    iStack_24 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    local_14 = -1;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_007933db;
  case 5:
    iStack_24 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    local_14 = -1;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_007932cd;
  case 6:
    goto switchD_00793265_caseD_6;
  case 7:
    iStack_24 = *(int *)((int)param_1 + 0x2c);
    *(undefined4 *)((int)param_1 + 0x2c) = 0;
    local_14 = -1;
    *(undefined4 *)((int)param_1 + 0x1c) = 0xffffffff;
    goto LAB_00793280;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    if (*(int *)(DAT_01c2897c + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e98f81(in_stack_ffffffa4);
      FUN_00eaebef();
    }
    FUN_00e4ee90(&PTR_DAT_01542e14);
    if (*(int *)(DAT_01c2897c + 0xc) == 0) {
      FUN_00eae9a0();
      FUN_00e98f92(in_stack_ffffffa8);
      in_stack_ffffffa8 = 0x7939b7;
      FUN_00eaebef();
    }
    FUN_00e672b0(&PTR_DAT_01542f04);
    FUN_00de6210();
    FUN_00eaebca();
    if (*(int *)(*(int *)(*(int *)((int)param_1 + 0x14) + 4) + 8) == 0) {
      FUN_007876b0();
      goto LAB_00793acf;
    }
    FUN_00de6b80(&DAT_01b41178,2);
    FUN_00906aa0(&PTR_DAT_01bdd8c8);
    FUN_007876b0();
    FUN_00787780();
    local_18 = FUN_0077abc0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 0;
      FUN_00eaecdd();
      FUN_00d96720();
      FUN_00dfca00(&PTR_DAT_01553fd0);
      return;
    }
  }
  iVar2 = in_stack_ffffffa8;
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
    iVar2 = in_stack_ffffffa8;
  }
  if (*(int *)(local_18 + 0x20) != 0) {
    *(undefined4 *)(param_1 + 4) = *(undefined4 *)(*(int *)(*(int *)(iVar3 + 4) + 0x140) + 0x34);
    in_stack_ffffffa8 = iVar2;
    if (*(int *)(param_1 + 4) < 1) {
      in_stack_ffffffa8 = FUN_00eae9a0();
      if (PTR_FUN_01c21b04 != (undefined *)0x0) {
        FUN_00e8e290();
      }
      FUN_00e98fa3(iVar2);
      FUN_00e23c20(&PTR_DAT_0155b30c,&local_30,in_stack_ffffffa8);
      *(undefined4 *)(param_1 + 4) = local_1c;
      if (*(int *)(param_1 + 4) < 1) {
        FUN_007876b0();
        goto LAB_00793acf;
      }
    }
    iStack_24 = FUN_00787840();
    if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 1;
      FUN_00eaecdd();
      FUN_00d96720();
      FUN_00dfc9c0();
      return;
    }
LAB_007937cf:
    if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_0077abc0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)param_1 + 0x1c) = 2;
      FUN_00eaeca8();
      FUN_00d96720();
      FUN_00dfca00(&PTR_DAT_01553fd0);
      return;
    }
LAB_007934cc:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar2 = *(int *)(local_18 + 0x20);
    *param_1 = *(double *)(iVar2 + 4) / _DAT_018d3b10;
    param_1[1] = *(double *)(iVar2 + 0xc) / _DAT_018d3b10;
    while( true ) {
      if ((*(int *)(iVar3 + 0x1c) != 0) && (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) != 0))
      goto LAB_00793acf;
      FUN_00eae9a0();
      FUN_00eaeca8();
      FUN_00eaebef();
      *(undefined1 *)(*(int *)(param_1 + 3) + 8) = 0;
      uVar1 = FUN_00eae9a0();
      uStack_2c = *(undefined4 *)(param_1 + 4);
      FUN_00e98fd6(in_stack_ffffffa8);
      iVar2 = *(int *)(*(int *)(*(int *)(param_1 + 3) + 4) + 0x10);
      if (iVar2 == 0) {
        FUN_00eae9a0();
        FUN_00e98fc5(in_stack_ffffffac);
        FUN_00eaebef();
        iVar2 = extraout_ECX_00;
      }
      iStack_28 = FUN_00787920(1,0,param_1[1],1,0,*param_1,iVar2,uVar1,0);
      if ((*(uint *)(iStack_28 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 3;
        FUN_00eaecdd();
        FUN_00d96720();
        FUN_00dfc9c0();
        return;
      }
LAB_00793462:
      if ((*(uint *)(iStack_28 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(*(int *)(param_1 + 3) + 8) == '\0') goto LAB_00793acf;
      if (*(int *)(*(int *)(*(int *)(iVar3 + 4) + 0x150) + 0x34) == 0) break;
      FUN_007876b0();
      iVar2 = FUN_00eaeae1();
      *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b8f9bc;
      *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01be2ebc;
      FUN_0077a610(iVar2,&PTR_DAT_01be3a14);
      iStack_24 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 4;
        FUN_00eaecdd();
        FUN_00d96720();
        FUN_00dfc9c0();
        return;
      }
LAB_007933db:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      in_stack_ffffffac = FUN_00eae9a0();
      *(undefined ***)(in_stack_ffffffac + 4) = &PTR_DAT_01c0f494;
      *(int *)(in_stack_ffffffac + 0xc) = *(int *)(in_stack_ffffffac + 0xc) + 1;
      in_stack_ffffffa8 = *(int *)(in_stack_ffffffac + 4);
      if (*(uint *)(in_stack_ffffffac + 8) < *(uint *)(in_stack_ffffffa8 + 4)) {
        *(uint *)(in_stack_ffffffac + 8) = *(uint *)(in_stack_ffffffac + 8) + 1;
        FUN_0099b2e0(&PTR_DAT_01bf0d9c);
      }
      else {
        FUN_00ccd380();
      }
      FUN_00ccd480();
      ppuVar5 = &PTR_DAT_01beaa40;
      uVar1 = FUN_00ccde10(&PTR_DAT_01beaa40);
      FUN_0077a610(uVar1,ppuVar5);
      iStack_24 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 5;
        FUN_00eaeca8();
        FUN_00d96720();
        FUN_00dfc9c0();
        return;
      }
LAB_007932cd:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      uVar1 = *(undefined4 *)(*(int *)(*(int *)(*(int *)(param_1 + 3) + 4) + 4) + 0xc);
      FUN_00eaeca8();
      *(undefined4 *)(extraout_ECX + 7) = uVar1;
      *(undefined4 *)((int)extraout_ECX + 0x3c) = 0;
      *(undefined4 *)(extraout_ECX + 8) = 0;
      pdVar4 = extraout_ECX;
switchD_00793265_caseD_6:
      if (local_14 != 6) goto LAB_00793344;
      iStack_24 = *(int *)((int)pdVar4 + 0x2c);
      *(undefined4 *)((int)pdVar4 + 0x2c) = 0;
      local_14 = -1;
      *(undefined4 *)((int)pdVar4 + 0x1c) = 0xffffffff;
      while( true ) {
        if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
LAB_00793344:
        iVar2 = FUN_00bba0a0();
        if ((iVar2 == 0) ||
           ((*(int *)(iVar3 + 0x1c) != 0 && (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) != 0)))) break;
        iStack_24 = FUN_00787b30(*(undefined4 *)(*(int *)(*(int *)(iVar3 + 4) + 0x150) + 0x34));
        if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)((int)param_1 + 0x1c) = 6;
          FUN_00eaeca8();
          FUN_00d96720();
          FUN_00dfc9c0();
          return;
        }
      }
      *(undefined4 *)((int)param_1 + 0x34) = 0;
      *(undefined4 *)(param_1 + 7) = 0;
      *(undefined4 *)((int)param_1 + 0x3c) = 0;
      *(undefined4 *)(param_1 + 8) = 0;
      FUN_00787780();
      iStack_24 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 7;
        FUN_00eaeca8();
        FUN_00d96720();
        FUN_00dfc9c0();
        return;
      }
LAB_00793280:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_007876b0();
      *(undefined4 *)(param_1 + 3) = 0;
    }
    FUN_007876b0();
  }
LAB_00793acf:
  *(undefined4 *)((int)param_1 + 0x1c) = 0xfffffffe;
  *(undefined4 *)((int)param_1 + 0x14) = 0;
  if (*(int *)((int)param_1 + 0x24) == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaeca8();
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

