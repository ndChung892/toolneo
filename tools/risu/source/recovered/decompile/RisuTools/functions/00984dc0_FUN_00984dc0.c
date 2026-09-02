/* Address: 00984dc0 | Ghidra name: FUN_00984dc0 */

int __fastcall FUN_00984dc0(int param_1,ushort *param_2,int param_3,int param_4)

{
  undefined4 *puVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  ushort *puVar6;
  ushort *puVar7;
  undefined **ppuVar8;
  ushort *local_20;
  uint local_1c;
  int local_18;
  ushort *local_14;
  
  local_14 = param_2 + param_4;
  local_18 = 0;
  local_1c = 0;
  if (param_3 == 0) {
    if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) {
      puVar1 = (undefined4 *)FUN_00eae9a0();
      FUN_0097ce10();
    }
    else if ((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615898) {
      puVar1 = (undefined4 *)FUN_00eae9a0();
    }
    else {
      puVar1 = (undefined4 *)FUN_00eae9a0();
      puVar1[8] = 0xffffffff;
    }
  }
  else {
    local_1c = (uint)*(ushort *)(param_3 + 0x14);
    puVar1 = (undefined4 *)FUN_0097baa0();
    if ((undefined *)*puVar1 != &DAT_016158d4) {
      if ((undefined *)*puVar1 == &DAT_01615af0) {
        iVar3 = puVar1[9];
        if (iVar3 < 0) goto LAB_00984e3d;
      }
      else {
        iVar3 = puVar1[8];
        if (iVar3 < 1) goto LAB_00984e3d;
      }
      if (0 < iVar3) {
        if (*(int *)(param_1 + 4) == 0) {
          FUN_0097d4c0();
        }
        if (*(int *)(param_3 + 4) == 0) {
          ppuVar8 = (undefined **)0x0;
        }
        else {
          iVar3 = FUN_00902fd0();
          if ((*(int **)(iVar3 + 8) == (int *)0x0) ||
             (piVar4 = (int *)**(int **)(iVar3 + 8), piVar4 == (int *)0x0)) {
            piVar4 = (int *)FUN_00903100();
          }
          ppuVar8 = (undefined **)(**(code **)(*piVar4 + 0x14))();
        }
        if (ppuVar8 == (undefined **)0x0) {
          ppuVar8 = &PTR_DAT_01b39360;
        }
        FUN_00eae9a0();
        FUN_00930f30(ppuVar8);
        FUN_00911540();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
LAB_00984e3d:
  puVar7 = local_14;
  puVar1[3] = param_2;
  puVar1[4] = local_14;
  puVar1 = (undefined4 *)FUN_00eaec5e();
  *(undefined2 *)(puVar1 + 7) = 0;
  *(undefined1 *)((int)puVar1 + 0x1e) = 0;
  puVar1[5] = 0;
  uVar5 = local_1c;
LAB_00984f22:
  while( true ) {
    local_1c = uVar5;
    if ((undefined *)*puVar1 == &DAT_016158d4) {
      uVar2 = 0;
    }
    else if ((undefined *)*puVar1 == &DAT_01615af0) {
      uVar2 = FUN_0097cfe0();
    }
    else {
      uVar2 = FUN_0097c510();
    }
    *(bool *)((int)puVar1 + 0x1e) = uVar2 != 0;
    if (uVar2 == 0) {
      puVar1[5] = 0;
    }
    uVar5 = uVar2 & 0xffff;
    puVar6 = puVar7;
    if ((uVar2 != 0) || (puVar6 = local_14, param_2 < puVar7)) break;
    if (((param_3 != 0) && (*(char *)(param_3 + 0x16) == '\0')) || ((int)local_1c < 1)) {
      if (local_18 < 0) {
        FUN_00eae9a0();
        FUN_009117c0(&PTR_DAT_01bcc2f0);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      return local_18;
    }
LAB_00984f67:
    local_20 = param_2;
    FUN_0097c270(&local_20);
    local_1c = 0;
    puVar7 = puVar6;
    param_2 = local_20;
    uVar5 = local_1c;
  }
  if (uVar5 == 0) {
    uVar5 = (uint)*param_2;
    param_2 = param_2 + 1;
  }
  puVar7 = local_14;
  if (local_1c == 0) goto code_r0x00984ee8;
  if (0x3ff < uVar5 - 0xdc00) {
    param_2 = param_2 + -1;
    goto LAB_00984f67;
  }
  local_1c = 0;
  goto LAB_00984f91;
code_r0x00984ee8:
  if (0x3ff < uVar5 - 0xd800) {
    if (uVar5 - 0xdc00 < 0x400) {
      local_20 = param_2;
      FUN_0097c270(&local_20);
      puVar7 = local_14;
      param_2 = local_20;
      uVar5 = local_1c;
    }
    else {
LAB_00984f91:
      local_18 = local_18 + 4;
      uVar5 = local_1c;
    }
  }
  goto LAB_00984f22;
}

