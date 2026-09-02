/* Address: 007d7f80 | Ghidra name: FUN_007d7f80 */

/* WARNING: Removing unreachable block (ram,0x007d8398) */
/* WARNING: Removing unreachable block (ram,0x007d88e9) */
/* WARNING: Removing unreachable block (ram,0x007d83b2) */
/* WARNING: Removing unreachable block (ram,0x007d83d5) */
/* WARNING: Removing unreachable block (ram,0x007d83cd) */
/* WARNING: Removing unreachable block (ram,0x007d83d9) */
/* WARNING: Removing unreachable block (ram,0x007d83fa) */
/* WARNING: Removing unreachable block (ram,0x007d8419) */
/* WARNING: Removing unreachable block (ram,0x007d840a) */
/* WARNING: Removing unreachable block (ram,0x007d8433) */
/* WARNING: Removing unreachable block (ram,0x007d88f3) */
/* WARNING: Removing unreachable block (ram,0x007d8450) */
/* WARNING: Removing unreachable block (ram,0x007d846f) */
/* WARNING: Removing unreachable block (ram,0x007d8460) */
/* WARNING: Removing unreachable block (ram,0x007d8485) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007d7f80(int *param_1)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int extraout_ECX;
  int extraout_ECX_00;
  undefined4 in_stack_ffffffa0;
  int iStack_3c;
  int iStack_38;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
  iVar5 = *param_1;
  switch(param_1[5]) {
  case 0:
    iStack_14 = param_1[8];
    param_1[8] = 0;
    param_1[5] = -1;
    goto LAB_007d85dc;
  case 1:
    iStack_18 = param_1[9];
    param_1[9] = 0;
    param_1[5] = -1;
    goto LAB_007d859a;
  case 2:
    iStack_1c = param_1[10];
    param_1[10] = 0;
    param_1[5] = -1;
    goto LAB_007d82eb;
  case 3:
    iStack_38 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    while( true ) {
      if ((*(uint *)(iStack_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      uVar1 = *(undefined4 *)(param_1[4] + 0x28);
      uVar3 = FUN_00eaeae1();
      iVar4 = FUN_00eae9a0();
      *(undefined4 *)(iVar4 + 4) = uVar1;
      FUN_00eaebca();
      iVar4 = FUN_00eae9a0();
      *(undefined4 *)(iVar4 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar3,&PTR_DAT_01be3a98);
      iStack_38 = FUN_00975000();
      if ((*(uint *)(iStack_38 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 4;
        FUN_00eaeca8();
        FUN_00d9f900();
        FUN_00dfc9c0();
        return;
      }
LAB_007d8181:
      if ((*(uint *)(iStack_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_3c = FUN_0077af00();
      if ((*(uint *)(iStack_3c + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 5;
        FUN_00eaeca8();
        FUN_00d9f900();
        FUN_00dfc9c0();
        return;
      }
LAB_007d813a:
      if ((*(uint *)(iStack_3c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((*(char *)(iStack_3c + 0x20) != '\0') || (param_1[6] = param_1[6] + 1, 2 < param_1[6]))
      break;
      iStack_38 = FUN_007877c0(0,0,0,*(double *)(param_1[4] + 0xc) / _DAT_018d5950,
                               *(double *)(param_1[4] + 4) / _DAT_018d5950);
      if ((*(uint *)(iStack_38 + 0x1c) & 0x1600000) == 0) {
        param_1[5] = 3;
        FUN_00eaecdd();
        FUN_00d9f900();
        FUN_00dfc9c0();
        return;
      }
    }
    iStack_3c = FUN_0077af00();
    if ((*(uint *)(iStack_3c + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 6;
      FUN_00eaecdd();
      FUN_00d9f900();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 4:
    iStack_38 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d8181;
  case 5:
    iStack_3c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    goto LAB_007d813a;
  case 6:
    iStack_3c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[5] = -1;
    break;
  case 7:
    iStack_38 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d800e;
  case 8:
    iStack_38 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[5] = -1;
    goto LAB_007d7fce;
  default:
    iVar5 = FUN_00eae9a0();
    *(undefined ***)(iVar5 + 4) = &PTR_DAT_01c0f378;
    *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
    uVar2 = *(uint *)(iVar5 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
      *(uint *)(iVar5 + 8) = uVar2 + 1;
      *(undefined ***)(*(int *)(iVar5 + 4) + 8 + uVar2 * 4) = &PTR_DAT_01bfa5d4;
    }
    else {
      FUN_00ccd380();
    }
    *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
    uVar2 = *(uint *)(iVar5 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
      *(uint *)(iVar5 + 8) = uVar2 + 1;
      *(undefined ***)(*(int *)(iVar5 + 4) + 8 + uVar2 * 4) = &PTR_DAT_01bfbae4;
    }
    else {
      FUN_00ccd380();
    }
    *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
    uVar2 = *(uint *)(iVar5 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
      *(uint *)(iVar5 + 8) = uVar2 + 1;
      *(undefined ***)(*(int *)(iVar5 + 4) + 8 + uVar2 * 4) = &PTR_DAT_01bf8ee8;
    }
    else {
      FUN_00ccd380();
    }
    *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
    uVar2 = *(uint *)(iVar5 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
      *(uint *)(iVar5 + 8) = uVar2 + 1;
      *(undefined ***)(*(int *)(iVar5 + 4) + 8 + uVar2 * 4) = &PTR_DAT_01bfa268;
    }
    else {
      FUN_00ccd380();
    }
    *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
    uVar2 = *(uint *)(iVar5 + 8);
    if (uVar2 < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
      *(uint *)(iVar5 + 8) = uVar2 + 1;
      *(undefined ***)(*(int *)(iVar5 + 4) + 8 + uVar2 * 4) = &PTR_DAT_01bf9db0;
    }
    else {
      FUN_00ccd380();
    }
    FUN_00eaed7c();
    goto LAB_007d874b;
  }
  if ((*(uint *)(iStack_3c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(char *)(iStack_3c + 0x20) == '\0') {
    in_stack_ffffffa0 = *(undefined4 *)(*(int *)(*(int *)(iVar5 + 0x14) + 4) + 4);
    FUN_00906a20();
    FUN_00782420();
  }
  iStack_38 = FUN_007d31a0();
  if ((*(uint *)(iStack_38 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 7;
    FUN_00eaeca8();
    FUN_00d9f900();
    FUN_00dfc9c0();
    return;
  }
LAB_007d800e:
  if ((*(uint *)(iStack_38 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iStack_38 = FUN_00975000();
  if ((*(uint *)(iStack_38 + 0x1c) & 0x1600000) == 0) {
    param_1[5] = 8;
    FUN_00eaeca8();
    FUN_00d9f900();
    FUN_00dfc9c0();
  }
  else {
LAB_007d7fce:
    if ((*(uint *)(iStack_38 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[1] = 0;
    param_1[3] = 0;
    param_1[4] = 0;
LAB_007d874b:
    FUN_00eae9a0();
    FUN_00eaeca8();
    iStack_14 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
    if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
      param_1[5] = 0;
      FUN_00eaecdd();
      FUN_00d9f900();
      FUN_00dfca00();
    }
    else {
LAB_007d85dc:
      if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaebca();
      FUN_00eae9a0();
      FUN_00e9a56b(in_stack_ffffffa0);
      iVar5 = FUN_00e4d8a0(&PTR_DAT_01549ea4);
      if (iVar5 == 0) {
        in_stack_ffffffa0 = 0x7d87d6;
        iStack_18 = FUN_0077acc0();
        if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
          param_1[5] = 1;
          FUN_00eaecdd();
          FUN_00d9f900();
          FUN_00dfca00(&PTR_DAT_01568d68);
          return;
        }
LAB_007d859a:
        if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(iStack_18 + 0x20) != 0) {
          if (*(int *)(DAT_01c289d4 + 0x40) == 0) {
            FUN_00eae9a0();
            FUN_00e9a290(in_stack_ffffffa0);
            FUN_00eaec14();
          }
          FUN_00e4ee90(&PTR_DAT_01544498);
          FUN_00e4ee50();
        }
        FUN_00eaeca8();
        if ((*(int *)(extraout_ECX_00 + 0xc) != 0) &&
           (*(int *)(*(int *)(extraout_ECX_00 + 0xc) + 8) != 0)) {
          in_stack_ffffffa0 = 0x7d889d;
          iStack_1c = FUN_0077abc0();
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[5] = 2;
            FUN_00eaecdd();
            FUN_00d9f900();
            FUN_00dfca00(&PTR_DAT_01553fd0);
            return;
          }
LAB_007d82eb:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaebca();
          if (*(int *)(*(int *)(extraout_ECX + 4) + 8) != 0) {
            FUN_00eae9a0();
            FUN_00e9a57c(in_stack_ffffffa0);
            FUN_00eae9a0();
            FUN_00cf24b0();
            FUN_00e4ee50();
            FUN_00eaeca8();
          }
          FUN_00e4e3a0();
                    /* WARNING: Subroutine does not return */
          FUN_00860240();
        }
        FUN_007876b0();
      }
      else {
        FUN_007876b0();
      }
      param_1[5] = -2;
      param_1[2] = 0;
      if (param_1[7] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaecdd();
      }
      else {
        iVar5 = FUN_00c0a790(0);
        if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_00931e50();
        }
      }
    }
  }
  return;
}

