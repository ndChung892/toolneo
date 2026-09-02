/* Address: 00b5fac0 | Ghidra name: FUN_00b5fac0 */

/* WARNING: Removing unreachable block (ram,0x00b5fe67) */
/* WARNING: Removing unreachable block (ram,0x00b5ff9d) */
/* WARNING: Removing unreachable block (ram,0x00b5fe71) */
/* WARNING: Removing unreachable block (ram,0x00b5fe8d) */
/* WARNING: Removing unreachable block (ram,0x00b5fe9d) */
/* WARNING: Removing unreachable block (ram,0x00b5fc97) */
/* WARNING: Removing unreachable block (ram,0x00b5fca7) */
/* WARNING: Removing unreachable block (ram,0x00b5fcf1) */
/* WARNING: Removing unreachable block (ram,0x00b5fcfe) */
/* WARNING: Removing unreachable block (ram,0x00b5fcc0) */

void __fastcall FUN_00b5fac0(int *param_1)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  undefined4 uVar7;
  int extraout_ECX;
  uint uVar8;
  int extraout_ECX_00;
  int iStack_30;
  int local_2c;
  int local_18;
  
  uVar5 = param_1[1];
  iVar2 = *param_1;
  if (1 < uVar5) {
    if (*(int *)(iVar2 + 0x10) != 0) {
      FUN_008ec280();
    }
    iVar4 = FUN_008e95f0();
    if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_008ea310();
    }
    LOCK();
    iVar4 = *(int *)(iVar2 + 0x38);
    if (iVar4 == 0) {
      *(int *)(iVar2 + 0x38) = 1;
      iVar4 = 0;
    }
    UNLOCK();
    if (iVar4 != 0) {
      FUN_0092e290();
      FUN_00eae9a0();
      FUN_008e4f90();
      FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  if (uVar5 == 0) {
    iStack_30 = param_1[9];
    local_2c = param_1[10];
    param_1[9] = 0;
    param_1[10] = 0;
    param_1[0xb] = 0;
    param_1[1] = -1;
LAB_00b5fb56:
    if (iStack_30 != 0) {
      iVar4 = FUN_0099aa80();
      if (iVar4 == 0) {
        local_2c = (*(code *)PTR_FUN_01c526a0)();
      }
      else {
        if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_2c = *(int *)(iVar4 + 0x20);
      }
    }
    if (local_2c != 0) {
      FUN_008ea8d0(local_2c);
      uVar5 = *(uint *)(iVar2 + 0x58);
      if (uVar5 != 0) {
        iVar6 = FUN_00eaea6e();
        iVar4 = *(int *)(iVar2 + 100);
        uVar3 = *(uint *)(iVar2 + 0x68);
        uVar8 = *(int *)(iVar2 + 0x6c) - uVar3;
        if (iVar4 == 0) {
          if (uVar3 != 0 || uVar8 != 0) goto LAB_00b5ff91;
          uVar8 = 0;
        }
        else if ((*(uint *)(iVar4 + 4) < uVar3) || (*(int *)(iVar4 + 4) - uVar3 < uVar8))
        goto LAB_00b5ff91;
        uVar3 = *(uint *)(iVar2 + 0x58);
        if (uVar8 < uVar3) {
LAB_00b5ff91:
                    /* WARNING: Subroutine does not return */
          FUN_009318f0();
        }
        if (uVar5 < uVar3) {
                    /* WARNING: Subroutine does not return */
          FUN_00931910(iVar6 + 8);
        }
        FUN_00930280(uVar3);
        piVar1 = (int *)(iVar2 + 0x58);
        *(int *)(iVar2 + 0x68) = *(int *)(iVar2 + 0x68) + *(int *)(iVar2 + 0x58);
        if (*(int *)(iVar2 + 0x68) == *(int *)(iVar2 + 0x6c)) {
          *(undefined4 *)(iVar2 + 0x68) = 0;
          *(undefined4 *)(iVar2 + 0x6c) = 0;
        }
        *piVar1 = *piVar1 - *(int *)(iVar2 + 0x58);
        if (*piVar1 == 0) {
          *(int *)(iVar2 + 0x68) = *(int *)(iVar2 + 0x68) + *(int *)(iVar2 + 0x5c);
          if (*(int *)(iVar2 + 0x68) == *(int *)(iVar2 + 0x6c)) {
            *(undefined4 *)(iVar2 + 0x68) = 0;
            *(undefined4 *)(iVar2 + 0x6c) = 0;
          }
          *(undefined4 *)(iVar2 + 0x5c) = 0;
        }
      }
      FUN_00eae9a0();
      uVar7 = FUN_008eeb50(0,0);
      FUN_0098ce00(uVar7);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    *(undefined1 *)(iVar2 + 0x54) = 1;
  }
  else {
    if (uVar5 != 1) {
      param_1[2] = 0;
      iVar4 = 0x7fffffff;
      if (*(int *)(iVar2 + 0x58) != 0) {
        iVar4 = FUN_008eaa00(param_1[5],param_1[6],param_1[7]);
        param_1[2] = iVar4;
        if (param_1[2] != param_1[7]) {
          FUN_008ec600();
          iVar4 = FUN_008eaad0(0,0);
          iVar6 = FUN_008ec660();
          if (iVar4 <= iVar6) {
            uVar5 = param_1[2];
            if ((uint)param_1[7] < uVar5) goto LAB_00b5ffe9;
            iVar6 = param_1[6];
            FUN_00eaeca8();
            param_1[6] = uVar5 + iVar6;
            param_1[7] = extraout_ECX_00;
            goto LAB_00b5ff66;
          }
        }
        local_18 = param_1[2];
        FUN_00b6010e();
        goto LAB_00b60060;
      }
LAB_00b5ff66:
      if ((*(char *)(iVar2 + 0x54) != '\0') && (iVar4 == 0x7fffffff)) {
        local_18 = 0;
        FUN_00b6010e();
        goto LAB_00b60060;
      }
LAB_00b5fc62:
      FUN_00dae850(0x4040,param_1[8]);
      iStack_30 = 0;
      local_2c = 0;
      goto LAB_00b5fb56;
    }
    iVar4 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[0xd] = 0;
    param_1[1] = -1;
    if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iVar2 + 0x58) < 1) {
LAB_00b5fc02:
      if (param_1[2] == 0) goto LAB_00b5fc62;
      FUN_008ec600();
      iVar4 = FUN_008eaad0(0,0);
      if (iVar4 <= ((*(int *)(iVar2 + 0x6c) - *(int *)(iVar2 + 0x68)) - *(int *)(iVar2 + 0x5c)) -
                   *(int *)(iVar2 + 0x58)) {
        FUN_008ec600();
        FUN_008eda30(0,0);
        if (*(char *)(iVar2 + 0x88) == '\x17') goto LAB_00b5fc62;
      }
    }
    else {
      uVar5 = FUN_008eaa00(param_1[5],param_1[6],param_1[7]);
      param_1[2] = param_1[2] + uVar5;
      if (uVar5 != param_1[7]) {
        if ((uint)param_1[7] < uVar5) {
LAB_00b5ffe9:
                    /* WARNING: Subroutine does not return */
          FUN_00931d90();
        }
        iVar4 = FUN_00eaed12();
        param_1[6] = extraout_ECX;
        param_1[7] = iVar4;
        goto LAB_00b5fc02;
      }
    }
  }
  local_18 = param_1[2];
  FUN_00b6010e();
LAB_00b60060:
  param_1[1] = -2;
  if (param_1[3] == 0) {
    param_1[4] = local_18;
    if (PTR_LAB_01c23edc != (undefined *)0x0) {
      FUN_00e8f5e3();
    }
    FUN_00eaecdd();
  }
  else {
    *(int *)(param_1[3] + 0x1c) = local_18;
    FUN_00bb8120();
  }
  return;
}

