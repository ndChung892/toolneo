/* Address: 008af710 | Ghidra name: FUN_008af710 */

/* WARNING: Removing unreachable block (ram,0x008af867) */
/* WARNING: Removing unreachable block (ram,0x008af8b7) */
/* WARNING: Removing unreachable block (ram,0x008af8c4) */
/* WARNING: Removing unreachable block (ram,0x008af877) */
/* WARNING: Removing unreachable block (ram,0x008af88a) */

void __fastcall FUN_008af710(int *param_1)

{
  undefined *puVar1;
  undefined4 uVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  byte local_1a;
  int local_18;
  uint local_14;
  
  iVar6 = *param_1;
  if (param_1[2] == 0) {
    local_18 = param_1[5];
    local_14 = param_1[6];
    param_1[5] = 0;
    param_1[6] = 0;
    param_1[2] = -1;
  }
  else {
    if (*(char *)(iVar6 + 0x57) != '\0') {
      FUN_00eae9a0();
      FUN_00898ed0(0,0,0,&PTR_DAT_01b512b8);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    FUN_008993b0();
    puVar4 = (undefined4 *)FUN_00896aa0(param_1[4]);
    if ((((puVar4 != (undefined4 *)0x0) && ((undefined *)*puVar4 != &DAT_0160b614)) &&
        ((undefined *)*puVar4 != &DAT_0160b854)) && ((undefined *)*puVar4 != &DAT_0160b7a0)) {
      puVar4 = (undefined4 *)0x0;
    }
    if (puVar4 == (undefined4 *)0x0) goto LAB_008af911;
    puVar1 = (undefined *)*puVar4;
    if (puVar1 == &DAT_0160b614) {
      if (puVar4[2] == 0) {
        bVar7 = false;
      }
      else {
        bVar7 = *(char *)(puVar4[2] + 0x58) == '\0';
      }
    }
    else {
      if (puVar1 != &DAT_0160b854) goto LAB_008af911;
      if (puVar4[2] == 0) {
        bVar7 = false;
      }
      else {
        bVar7 = *(char *)(puVar4[2] + 0x58) == '\0';
      }
    }
    if (!bVar7) goto LAB_008af911;
    uVar2 = *(undefined4 *)(*(int *)(*(int *)(*(int *)(iVar6 + 0x14) + 4) + 0x10) + 0x50);
    if (puVar1 == &DAT_0160b614) {
      FUN_008a99c0(uVar2);
    }
    else if (puVar1 == &DAT_0160b854) {
      FUN_008ac240(uVar2);
    }
    else {
      local_1a = 0;
    }
    local_18 = 0;
    local_14 = (uint)local_1a << 0x10;
  }
  if (local_18 == 0) {
    uVar3 = local_14 >> 0x10 & 0xff;
  }
  else {
    iVar5 = FUN_0099aa80();
    if (iVar5 == 0) {
      uVar3 = FUN_00cf1820();
    }
    else {
      if ((*(uint *)(iVar5 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      uVar3 = (uint)*(byte *)(iVar5 + 0x20);
    }
  }
  if ((uVar3 == 0) || (*(char *)(iVar6 + 0x57) != '\0')) {
    FUN_00eae9a0();
    FUN_00898ed0(0,0,0,&PTR_DAT_01b512b8);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
LAB_008af911:
  FUN_00899800();
  FUN_009024f0();
  param_1[2] = -2;
  if (param_1[3] == 0) {
    if (PTR_FUN_01c22188 != (undefined *)0x0) {
      FUN_00e8ec31();
    }
    FUN_00eaecdd();
  }
  else {
    iVar6 = FUN_00c0a790(0);
    if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

