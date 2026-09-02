/* Address: 00b5f120 | Ghidra name: FUN_00b5f120 */

/* WARNING: Removing unreachable block (ram,0x00b5f486) */
/* WARNING: Removing unreachable block (ram,0x00b5f4e6) */
/* WARNING: Removing unreachable block (ram,0x00b5f4f3) */
/* WARNING: Removing unreachable block (ram,0x00b5f496) */
/* WARNING: Removing unreachable block (ram,0x00b5f4af) */
/* WARNING: Removing unreachable block (ram,0x00b5f377) */
/* WARNING: Removing unreachable block (ram,0x00b5f3d0) */
/* WARNING: Removing unreachable block (ram,0x00b5f3dd) */
/* WARNING: Removing unreachable block (ram,0x00b5f387) */
/* WARNING: Removing unreachable block (ram,0x00b5f3a0) */
/* WARNING: Removing unreachable block (ram,0x00b5f645) */
/* WARNING: Removing unreachable block (ram,0x00b5f6a4) */
/* WARNING: Removing unreachable block (ram,0x00b5f6b1) */
/* WARNING: Removing unreachable block (ram,0x00b5f655) */
/* WARNING: Removing unreachable block (ram,0x00b5f66e) */

void __fastcall FUN_00b5f120(int *param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int extraout_ECX;
  int iStack_3c;
  int iStack_38;
  int local_30;
  int local_20;
  undefined1 local_18 [4];
  uint local_14;
  
  local_14 = param_1[2];
  iVar4 = param_1[1];
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
      iVar2 = *(int *)(iVar4 + 0x3c);
      *(int *)(iVar4 + 0x3c) = 1;
      UNLOCK();
      if (iVar2 == 1) {
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
LAB_00b5f29d:
    if (local_20 != 0) {
      iVar2 = FUN_0099aa80();
      if (iVar2 == 0) {
        (*(code *)PTR_FUN_01c4f210)();
      }
      else if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_30 = (**(code **)(**(int **)(iVar4 + 8) + 0x50))(param_1[5]);
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      local_14 = 1;
      param_1[2] = 1;
      FUN_00eaecdd();
      param_1[0xe] = 0;
      FUN_00e14660();
      FUN_00e052c0();
      FUN_00b5fa5a();
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
    goto LAB_00b5f7b5;
  case 3:
    local_20 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[0xc] = 0;
    local_14 = 0xffffffff;
    param_1[2] = -1;
    goto LAB_00b5f74b;
  case 4:
    local_30 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[0xe] = 0;
    local_14 = 0xffffffff;
    param_1[2] = -1;
    goto LAB_00b5f1d9;
  default:
    if ((char)param_1[3] != '\0') goto LAB_00b5f822;
    iVar2 = *param_1;
    if (iVar2 == 0) {
      iVar5 = 0;
      uVar3 = 0;
    }
    else {
      iVar5 = iVar2 + 8;
      uVar3 = *(undefined4 *)(iVar2 + 4);
    }
    FUN_008eb840(local_18,iVar5,uVar3);
    FUN_00eaee5e();
    param_1[6] = 0;
    param_1[7] = 0;
    FUN_00eaee5e();
    param_1[8] = 0;
    uVar1 = param_1[7];
    if (0 < (int)uVar1) {
      iVar2 = param_1[6];
      if ((iVar2 == 0) || (*(uint *)(iVar2 + 4) < uVar1)) {
LAB_00b5f890:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      (**(code **)(**(int **)(iVar4 + 8) + 0x70))(param_1[5],iVar2,0,uVar1);
      local_20 = 0;
      goto LAB_00b5f29d;
    }
    goto LAB_00b5f803;
  }
  if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
LAB_00b5f803:
  FUN_008ecd20();
  iVar2 = FUN_008ecbf0();
  if (iVar2 != 0) {
    FUN_00eae9a0();
    uVar3 = FUN_008ecd60();
    FUN_00931850(uVar3);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_1[10] == 1) {
    *(undefined1 *)((int)param_1 + 0xd) = 1;
  }
LAB_00b5f822:
  if ((*(char *)((int)param_1 + 0xd) == '\0') &&
     (*(undefined1 *)(iVar4 + 0x60) = 1,
     *(int *)(*(int *)(iVar4 + 100) + 4) - *(int *)(iVar4 + 0x6c) < 0x1040)) {
    FUN_008e5f50();
  }
  do {
    if (*(char *)((int)param_1 + 0xd) != '\0') {
      FUN_008ea6f0();
      if ((int)local_14 < 0) {
        if (*param_1 == 0) {
          *(undefined4 *)(iVar4 + 0x3c) = 0;
          *(undefined1 *)(iVar4 + 0xf) = 0;
        }
        FUN_008ecd20();
        *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
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
        iVar4 = FUN_00c0a790(0);
        if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_00931e50();
        }
      }
      return;
    }
    FUN_00dae540(param_1[5]);
    iStack_3c = 0;
    iStack_38 = 0;
LAB_00b5f7b5:
    if (iStack_3c != 0) {
      iVar2 = FUN_0099aa80();
      if (iVar2 == 0) {
        iStack_38 = (*(code *)PTR_FUN_01c52698)();
      }
      else {
        if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_38 = *(int *)(iVar2 + 0x20);
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
         ((*(char *)(iVar4 + 0x88) == '\x16' || (*(char *)(iVar4 + 0x88) == '\x14')))) {
        FUN_008edcf0();
        FUN_00eaeca8();
        param_1[0x10] = 0;
        param_1[0x11] = extraout_ECX;
      }
    }
    else {
      iVar2 = param_1[6];
      if (iVar2 == 0) {
        if (param_1[7] != 0) goto LAB_00b5f890;
      }
      else if (*(uint *)(iVar2 + 4) < (uint)param_1[7]) goto LAB_00b5f890;
      iVar2 = FUN_00eaecdd();
      param_1[0x10] = 0;
      param_1[0x11] = iVar2;
    }
    if (param_1[0x11] != 0) {
      (**(code **)(**(int **)(iVar4 + 8) + 0x70))
                (param_1[5],param_1[0xf],param_1[0x10],param_1[0x11]);
      local_20 = 0;
LAB_00b5f74b:
      if (local_20 != 0) {
        iVar2 = FUN_0099aa80();
        if (iVar2 == 0) {
          (*(code *)PTR_FUN_01c4f210)();
        }
        else if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      local_30 = (**(code **)(**(int **)(iVar4 + 8) + 0x50))(param_1[5]);
      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
        local_14 = 4;
        param_1[2] = 4;
        FUN_00eaecdd();
        param_1[0xe] = 0;
        FUN_00e14660();
        FUN_00e052c0();
        FUN_00b5fa5a();
        return;
      }
LAB_00b5f1d9:
      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iVar2 = param_1[6];
    param_1[6] = 0;
    param_1[7] = 0;
    if (((char)param_1[8] != '\0') && (iVar2 != 0)) {
      if (PTR_LAB_01c23e74 != (undefined *)0x0) {
        FUN_00e8f528(iVar2);
      }
      FUN_00b7f720(0);
    }
    if ((param_1[10] != 1) && (param_1[10] != 2)) {
      if ((*(char *)(iVar4 + 0x88) == '\x15') &&
         ((*(char *)(iVar4 + 0x85) != '\0' && (param_1[10] == 0x22)))) {
        iVar2 = FUN_00eae9a0();
        *(undefined1 *)(iVar2 + 4) = *(undefined1 *)(iVar4 + 0x85);
        FUN_009007a0();
        FUN_008e4f90();
        iVar4 = FUN_00eae9a0();
        FUN_008ecd60();
        *(undefined4 *)(iVar4 + 0x24) = 0x80131500;
        FUN_00eaebef();
        FUN_00eaebca();
        *(undefined4 *)(iVar4 + 0x24) = 0x80131501;
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      iVar4 = FUN_00eae9a0();
      FUN_008ecd60();
      *(undefined4 *)(iVar4 + 0x24) = 0x80131500;
      *(undefined ***)(iVar4 + 4) = &PTR_DAT_01b51488;
      FUN_00eaebca();
      *(undefined4 *)(iVar4 + 0x24) = 0x80131501;
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

