/* Address: 00b61760 | Ghidra name: FUN_00b61760 */

/* WARNING: Removing unreachable block (ram,0x00b61adb) */
/* WARNING: Removing unreachable block (ram,0x00b61b3b) */
/* WARNING: Removing unreachable block (ram,0x00b61b48) */
/* WARNING: Removing unreachable block (ram,0x00b61aeb) */
/* WARNING: Removing unreachable block (ram,0x00b61b04) */
/* WARNING: Removing unreachable block (ram,0x00b619b7) */
/* WARNING: Removing unreachable block (ram,0x00b61a10) */
/* WARNING: Removing unreachable block (ram,0x00b61a1d) */
/* WARNING: Removing unreachable block (ram,0x00b619c7) */
/* WARNING: Removing unreachable block (ram,0x00b619e0) */
/* WARNING: Removing unreachable block (ram,0x00b61cfb) */
/* WARNING: Removing unreachable block (ram,0x00b61d5a) */
/* WARNING: Removing unreachable block (ram,0x00b61d67) */
/* WARNING: Removing unreachable block (ram,0x00b61d0b) */
/* WARNING: Removing unreachable block (ram,0x00b61d24) */

void __fastcall FUN_00b61760(int *param_1)

{
  uint uVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int extraout_ECX;
  uint uVar7;
  uint uVar8;
  undefined4 *puVar9;
  int iStack_3c;
  int iStack_38;
  int local_30;
  int local_20;
  undefined1 local_18 [4];
  uint local_14;
  
  local_14 = param_1[2];
  iVar5 = param_1[1];
  if (4 < local_14) {
    *(undefined1 *)((int)param_1 + 0xd) = 0;
    param_1[6] = 0;
    param_1[7] = 0;
    param_1[8] = 0;
    param_1[9] = 0;
    param_1[10] = 0;
    *(undefined1 *)(param_1 + 8) = 1;
    if (*param_1 == 0) {
      LOCK();
      iVar3 = *(int *)(iVar5 + 0x3c);
      *(int *)(iVar5 + 0x3c) = 1;
      UNLOCK();
      if (iVar3 == 1) {
        FUN_00eae9a0();
        FUN_008e4f90();
        FUN_00928850();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
  switch(local_14) {
  case 0:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[0xc] = 0;
    local_14 = 0xffffffff;
    param_1[2] = -1;
LAB_00b618dd:
    if (local_20 != 0) {
      iVar3 = FUN_0099aa80();
      if (iVar3 == 0) {
        (*(code *)PTR_FUN_01c4f238)();
      }
      else if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    (**(code **)(**(int **)(iVar5 + 8) + 0x4c))();
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    local_30 = *(int *)(DAT_01c28f00 + 0x10);
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      local_14 = 1;
      param_1[2] = 1;
      FUN_00eaecdd();
      param_1[0xe] = 0;
      FUN_00e15300();
      FUN_00e052c0();
      FUN_00b62149();
      return;
    }
    break;
  case 1:
    local_30 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[0xe] = 0;
    local_14 = 0xffffffff;
    param_1[2] = -1;
    break;
  case 2:
    iStack_3c = param_1[0x12];
    iStack_38 = param_1[0x13];
    param_1[0x12] = 0;
    param_1[0x13] = 0;
    param_1[0x14] = 0;
    local_14 = 0xffffffff;
    param_1[2] = -1;
    goto LAB_00b61e80;
  case 3:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[0xc] = 0;
    local_14 = 0xffffffff;
    param_1[2] = -1;
    goto LAB_00b61e16;
  case 4:
    local_30 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[0xe] = 0;
    local_14 = 0xffffffff;
    param_1[2] = -1;
    goto LAB_00b61819;
  default:
    if ((char)param_1[3] != '\0') goto LAB_00b61eed;
    iVar3 = *param_1;
    if (iVar3 == 0) {
      iVar6 = 0;
      uVar4 = 0;
    }
    else {
      iVar6 = iVar3 + 8;
      uVar4 = *(undefined4 *)(iVar3 + 4);
    }
    FUN_008eb840(local_18,iVar6,uVar4);
    FUN_00eaee5e();
    param_1[6] = 0;
    param_1[7] = 0;
    FUN_00eaee5e();
    param_1[8] = 0;
    uVar1 = param_1[7];
    if (0 < (int)uVar1) {
      iVar3 = param_1[6];
      if ((iVar3 == 0) || (*(uint *)(iVar3 + 4) < uVar1)) {
LAB_00b61f65:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      FUN_008e6150(param_1[5],iVar3,0,uVar1);
      local_20 = 0;
      goto LAB_00b618dd;
    }
    goto LAB_00b61ece;
  }
  if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
LAB_00b61ece:
  FUN_008ecd20();
  iVar3 = FUN_008ecbf0();
  if (iVar3 != 0) {
    FUN_00eae9a0();
    uVar4 = FUN_008ecd60();
    FUN_00931850(uVar4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_1[10] == 1) {
    *(undefined1 *)((int)param_1 + 0xd) = 1;
  }
LAB_00b61eed:
  if ((*(char *)((int)param_1 + 0xd) == '\0') &&
     (*(undefined1 *)(iVar5 + 0x60) = 1,
     *(int *)(*(int *)(iVar5 + 100) + 4) - *(int *)(iVar5 + 0x6c) < 0x1040)) {
    FUN_008e5f50();
  }
  do {
    if (*(char *)((int)param_1 + 0xd) != '\0') {
      FUN_008ea6f0();
      if ((int)local_14 < 0) {
        if (*param_1 == 0) {
          *(undefined4 *)(iVar5 + 0x3c) = 0;
          *(undefined1 *)(iVar5 + 0xf) = 0;
        }
        FUN_008ecd20();
        *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
      }
      param_1[2] = -2;
      param_1[6] = 0;
      param_1[7] = 0;
      param_1[8] = 0;
      param_1[9] = 0;
      param_1[10] = 0;
      if (param_1[4] == 0) {
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
      return;
    }
    FUN_00daeac0(param_1[5]);
    iStack_3c = 0;
    iStack_38 = 0;
LAB_00b61e80:
    if (iStack_3c != 0) {
      iVar3 = FUN_0099aa80();
      if (iVar3 == 0) {
        iStack_38 = (*(code *)PTR_FUN_01c526b8)();
      }
      else {
        if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_38 = *(int *)(iVar3 + 0x20);
      }
    }
    FUN_008ea520(iStack_38);
    FUN_00eaee5e();
    param_1[6] = 0;
    param_1[7] = 0;
    FUN_00eaee5e();
    param_1[8] = 0;
    param_1[0xf] = 0;
    param_1[0x10] = 0;
    param_1[0x11] = 0;
    if (param_1[7] < 1) {
      if (((param_1[10] != 1) && (param_1[10] != 2)) &&
         ((*(char *)(iVar5 + 0x88) == '\x16' || (*(char *)(iVar5 + 0x88) == '\x14')))) {
        FUN_008edcf0();
        FUN_00eaeca8();
        param_1[0x10] = 0;
        param_1[0x11] = extraout_ECX;
      }
    }
    else {
      iVar3 = param_1[6];
      if (iVar3 == 0) {
        if (param_1[7] != 0) goto LAB_00b61f65;
      }
      else if (*(uint *)(iVar3 + 4) < (uint)param_1[7]) goto LAB_00b61f65;
      iVar3 = FUN_00eaecdd();
      param_1[0x10] = 0;
      param_1[0x11] = iVar3;
    }
    uVar1 = param_1[0x11];
    if (uVar1 != 0) {
      puVar2 = (undefined4 *)param_1[0xf];
      iVar3 = 0;
      uVar7 = 0;
      if (puVar2 != (undefined4 *)0x0) {
        if (*(int *)*puVar2 < 0) {
          puVar9 = puVar2 + 2;
          uVar7 = puVar2[1];
        }
        else {
          if ((undefined *)*puVar2 == &DAT_01728b34) {
            puVar9 = (undefined4 *)puVar2[1];
            uVar7 = puVar2[2];
          }
          else {
            puVar9 = (undefined4 *)puVar2[1];
            uVar7 = puVar2[2];
          }
          if ((int)uVar7 < 0) goto LAB_00b61f65;
        }
        uVar8 = param_1[0x10] & 0x7fffffff;
        if ((uVar7 < uVar8) || (uVar7 - uVar8 < uVar1)) goto LAB_00b61f65;
        iVar3 = (int)puVar9 + uVar8;
        uVar7 = uVar1;
      }
      (**(code **)(**(int **)(iVar5 + 8) + 0x88))(iVar3,uVar7);
      local_20 = 0;
LAB_00b61e16:
      if (local_20 != 0) {
        iVar3 = FUN_0099aa80();
        if (iVar3 == 0) {
          (*(code *)PTR_FUN_01c4f238)();
        }
        else if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      (**(code **)(**(int **)(iVar5 + 8) + 0x4c))();
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      local_30 = *(int *)(DAT_01c28f00 + 0x10);
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        local_14 = 4;
        param_1[2] = 4;
        FUN_00eaecdd();
        param_1[0xe] = 0;
        FUN_00e15300();
        FUN_00e052c0();
        FUN_00b62149();
        return;
      }
LAB_00b61819:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iVar3 = param_1[6];
    param_1[6] = 0;
    param_1[7] = 0;
    if (((char)param_1[8] != '\0') && (iVar3 != 0)) {
      if (PTR_LAB_01c23e74 != (undefined *)0x0) {
        FUN_00e8f528(iVar3);
      }
      FUN_00b7f720(0);
    }
    if ((param_1[10] != 1) && (param_1[10] != 2)) {
      if ((*(char *)(iVar5 + 0x88) == '\x15') &&
         ((*(char *)(iVar5 + 0x85) != '\0' && (param_1[10] == 0x22)))) {
        iVar3 = FUN_00eae9a0();
        *(undefined1 *)(iVar3 + 4) = *(undefined1 *)(iVar5 + 0x85);
        FUN_009007a0();
        FUN_008e4f90();
        iVar5 = FUN_00eae9a0();
        FUN_008ecd60();
        *(undefined4 *)(iVar5 + 0x24) = 0x80131500;
        FUN_00eaebef();
        FUN_00eaebca();
        *(undefined4 *)(iVar5 + 0x24) = 0x80131501;
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      iVar5 = FUN_00eae9a0();
      FUN_008ecd60();
      *(undefined4 *)(iVar5 + 0x24) = 0x80131500;
      *(undefined ***)(iVar5 + 4) = &PTR_DAT_01b51488;
      FUN_00eaebca();
      *(undefined4 *)(iVar5 + 0x24) = 0x80131501;
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (param_1[10] == 1) {
      *(undefined1 *)((int)param_1 + 0xd) = 1;
    }
    param_1[0xf] = 0;
    param_1[0x10] = 0;
    param_1[0x11] = 0;
  } while( true );
}

