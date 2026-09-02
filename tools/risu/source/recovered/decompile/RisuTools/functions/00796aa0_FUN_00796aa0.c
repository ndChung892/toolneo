/* Address: 00796aa0 | Ghidra name: FUN_00796aa0 */

void __fastcall FUN_00796aa0(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int *extraout_ECX;
  int *piVar4;
  int extraout_ECX_00;
  undefined4 in_stack_ffffffdc;
  undefined **ppuVar5;
  undefined4 in_stack_ffffffe0;
  int local_18;
  int local_14;
  
  local_14 = param_1[2];
  iVar3 = *param_1;
  piVar4 = param_1;
  switch(local_14) {
  case 0:
    local_18 = param_1[4];
    param_1[4] = 0;
    local_14 = -1;
    param_1[2] = -1;
    break;
  case 1:
    local_18 = param_1[4];
    param_1[4] = 0;
    local_14 = -1;
    param_1[2] = -1;
    goto LAB_00796af2;
  case 2:
    goto switchD_00796ad7_caseD_2;
  default:
    FUN_00787780();
    if (*(int *)(DAT_01c2898c + 8) == 0) {
      FUN_00eae9a0();
      FUN_00e990b3(in_stack_ffffffdc);
      FUN_00eaec14();
    }
    FUN_00e4ee90(&PTR_DAT_01542e14);
    if (*(int *)(DAT_01c2898c + 0xc) == 0) {
      FUN_00eae9a0();
      FUN_00e990c4(in_stack_ffffffe0);
      FUN_00eaec14();
    }
    FUN_00e672b0(&PTR_DAT_01542f04);
    FUN_00de6210();
    FUN_00eaeca8();
    if (*(int *)(*(int *)(extraout_ECX_00 + 4) + 8) == 0) {
      FUN_007876b0();
LAB_00796e25:
      param_1[2] = -2;
      param_1[1] = 0;
      if (param_1[3] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaeca8();
        return;
      }
      iVar3 = FUN_00c0a790(0);
      if (iVar3 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    FUN_0077b520(&PTR_DAT_01be2ebc,&PTR_DAT_01b8f9bc);
    local_18 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaeca8();
      FUN_00d96ce0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar1 = FUN_00eae9a0();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01c0f494;
  *(int *)(iVar1 + 0xc) = *(int *)(iVar1 + 0xc) + 1;
  if (*(uint *)(iVar1 + 8) < *(uint *)(*(int *)(iVar1 + 4) + 4)) {
    *(uint *)(iVar1 + 8) = *(uint *)(iVar1 + 8) + 1;
    FUN_0099b2e0(&PTR_DAT_01bf0d9c);
  }
  else {
    FUN_00ccd380(iVar1);
  }
  FUN_00ccd480();
  ppuVar5 = &PTR_DAT_01beaa40;
  uVar2 = FUN_00ccde10(&PTR_DAT_01beaa40);
  FUN_0077a610(uVar2,ppuVar5);
  local_18 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 1;
    FUN_00eaeca8();
    FUN_00d96ce0();
    FUN_00dfc9c0();
  }
  else {
LAB_00796af2:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar1 = *(int *)(param_1[1] + 0xc);
    FUN_00eaeca8();
    extraout_ECX[6] = iVar1;
    extraout_ECX[7] = 0;
    extraout_ECX[8] = 0;
    piVar4 = extraout_ECX;
switchD_00796ad7_caseD_2:
    if (local_14 != 2) goto LAB_00796b5c;
    local_18 = piVar4[4];
    piVar4[4] = 0;
    piVar4[2] = -1;
    do {
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
LAB_00796b5c:
      iVar1 = FUN_00bba0a0();
      if ((iVar1 == 0) ||
         ((*(int *)(iVar3 + 0x1c) != 0 && (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) != 0)))) {
        param_1[5] = 0;
        param_1[6] = 0;
        param_1[7] = 0;
        param_1[8] = 0;
        FUN_007876b0();
        goto LAB_00796e25;
      }
      local_18 = FUN_00787b30(2);
    } while ((*(uint *)(local_18 + 0x1c) & 0x1600000) != 0);
    param_1[2] = 2;
    FUN_00eaeca8();
    FUN_00d96ce0();
    FUN_00dfc9c0();
  }
  return;
}

