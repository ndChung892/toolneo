/* Address: 008c2aa0 | Ghidra name: FUN_008c2aa0 */

/* WARNING: Removing unreachable block (ram,0x008c3567) */
/* WARNING: Removing unreachable block (ram,0x008c35c8) */
/* WARNING: Removing unreachable block (ram,0x008c35d5) */
/* WARNING: Removing unreachable block (ram,0x008c3577) */
/* WARNING: Removing unreachable block (ram,0x008c3590) */
/* WARNING: Removing unreachable block (ram,0x008c321a) */
/* WARNING: Removing unreachable block (ram,0x008c327b) */
/* WARNING: Removing unreachable block (ram,0x008c3288) */
/* WARNING: Removing unreachable block (ram,0x008c322a) */
/* WARNING: Removing unreachable block (ram,0x008c3243) */
/* WARNING: Removing unreachable block (ram,0x008c2f5f) */
/* WARNING: Removing unreachable block (ram,0x008c2fc0) */
/* WARNING: Removing unreachable block (ram,0x008c2fcd) */
/* WARNING: Removing unreachable block (ram,0x008c2f6f) */
/* WARNING: Removing unreachable block (ram,0x008c2f88) */
/* WARNING: Removing unreachable block (ram,0x008c2e9a) */
/* WARNING: Removing unreachable block (ram,0x008c2ef5) */
/* WARNING: Removing unreachable block (ram,0x008c2f02) */
/* WARNING: Removing unreachable block (ram,0x008c2eaa) */
/* WARNING: Removing unreachable block (ram,0x008c2ec3) */
/* WARNING: Removing unreachable block (ram,0x008c314f) */
/* WARNING: Removing unreachable block (ram,0x008c31b0) */
/* WARNING: Removing unreachable block (ram,0x008c31bd) */
/* WARNING: Removing unreachable block (ram,0x008c315f) */
/* WARNING: Removing unreachable block (ram,0x008c3178) */
/* WARNING: Removing unreachable block (ram,0x008c349c) */
/* WARNING: Removing unreachable block (ram,0x008c34fd) */
/* WARNING: Removing unreachable block (ram,0x008c350a) */
/* WARNING: Removing unreachable block (ram,0x008c34ac) */
/* WARNING: Removing unreachable block (ram,0x008c34c5) */
/* WARNING: Removing unreachable block (ram,0x008c36b9) */
/* WARNING: Removing unreachable block (ram,0x008c371a) */
/* WARNING: Removing unreachable block (ram,0x008c3727) */
/* WARNING: Removing unreachable block (ram,0x008c36c9) */
/* WARNING: Removing unreachable block (ram,0x008c36e2) */

void __fastcall FUN_008c2aa0(int *param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  ushort *puVar7;
  undefined4 local_30;
  int local_1c;
  uint local_14;
  
  local_14 = param_1[4];
  if (6 < local_14) {
    if (PTR_LAB_01c23e74 != (undefined *)0x0) {
      FUN_00e8f528();
    }
    FUN_00b7f560();
    FUN_00eaeca8();
  }
  switch(local_14) {
  case 0:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[9] = 0;
    local_14 = 0xffffffff;
    param_1[4] = -1;
    break;
  case 1:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[9] = 0;
    local_14 = 0xffffffff;
    param_1[4] = -1;
    goto LAB_008c2d24;
  case 2:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[9] = 0;
    local_14 = 0xffffffff;
    param_1[4] = -1;
    goto LAB_008c2cc0;
  case 3:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[9] = 0;
    local_14 = 0xffffffff;
    param_1[4] = -1;
    goto LAB_008c2c5c;
  case 4:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[9] = 0;
    local_14 = 0xffffffff;
    param_1[4] = -1;
    goto LAB_008c2bf8;
  case 5:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[9] = 0;
    local_14 = 0xffffffff;
    param_1[4] = -1;
    goto LAB_008c2b94;
  case 6:
    local_1c = param_1[8];
    param_1[8] = 0;
    param_1[9] = 0;
    local_14 = 0xffffffff;
    param_1[4] = -1;
    goto LAB_008c2b30;
  default:
    if (*(int *)(param_1[3] + 4) == 0) goto LAB_008c380e;
    *(undefined1 *)(param_1[3] + 8) = 5;
    if (*param_1 == 0) {
      if (*(uint *)(param_1[3] + 4) < 2) goto LAB_008c380e;
      *(undefined1 *)(param_1[3] + 9) = 1;
      if (*(uint *)(param_1[3] + 4) < 3) goto LAB_008c380e;
      *(undefined1 *)(param_1[3] + 10) = 0;
    }
    else {
      if (*(uint *)(param_1[3] + 4) < 2) goto LAB_008c380e;
      *(undefined1 *)(param_1[3] + 9) = 2;
      if (*(uint *)(param_1[3] + 4) < 3) goto LAB_008c380e;
      *(undefined1 *)(param_1[3] + 10) = 0;
      if (*(uint *)(param_1[3] + 4) < 4) goto LAB_008c380e;
      *(undefined1 *)(param_1[3] + 0xb) = 2;
    }
    iVar1 = param_1[3];
    if (*(uint *)(iVar1 + 4) < 2) goto LAB_008c380e;
    uVar3 = *(byte *)(iVar1 + 9) + 2;
    if (iVar1 == 0) {
      if (uVar3 != 0) goto LAB_008c37aa;
      iVar1 = 0;
      uVar3 = 0;
    }
    else if (*(uint *)(iVar1 + 4) < uVar3) goto LAB_008c37aa;
    FUN_008c21d0((char)param_1[6],iVar1,0,uVar3);
    local_1c = 0;
  }
  if (local_1c != 0) {
    iVar1 = FUN_0099aa80();
    if (iVar1 == 0) {
      (*(code *)PTR_FUN_01c4f120)();
    }
    else if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  iVar1 = param_1[3];
  if ((iVar1 == 0) || (*(int *)(iVar1 + 4) < 2)) goto LAB_008c37aa;
  FUN_008c2270((char)param_1[6],iVar1,0,2);
  local_1c = 0;
LAB_008c2d24:
  if (local_1c != 0) {
    iVar1 = FUN_0099aa80();
    if (iVar1 == 0) {
      (*(code *)PTR_FUN_01c4f120)();
    }
    else if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  if (*(int *)(param_1[3] + 4) == 0) goto LAB_008c380e;
  FUN_008c2160();
  iVar1 = param_1[3];
  if (*(uint *)(iVar1 + 4) < 2) goto LAB_008c380e;
  if (*(char *)(iVar1 + 9) != '\0') {
    if (*(char *)(iVar1 + 9) != '\x02') {
      FUN_00eae9a0();
      FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (*param_1 == 0) {
      FUN_00eae9a0();
      FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (*(int *)(iVar1 + 4) == 0) goto LAB_008c380e;
    *(undefined1 *)(iVar1 + 8) = 1;
    iVar1 = *(int *)(*param_1 + 8);
    if (iVar1 == 0) {
      iVar2 = 0;
      uVar5 = 0;
    }
    else {
      iVar2 = iVar1 + 8;
      uVar5 = *(undefined4 *)(iVar1 + 4);
    }
    iVar1 = param_1[3];
    if ((iVar1 == 0) || (*(int *)(iVar1 + 4) < 2)) goto LAB_008c37aa;
    iVar1 = FUN_008c20e0(iVar1 + 10,*(int *)(iVar1 + 4) + -2,iVar2,uVar5);
    if (*(uint *)(param_1[3] + 4) < 2) goto LAB_008c380e;
    *(char *)(param_1[3] + 9) = (char)iVar1;
    iVar2 = FUN_008e2390();
    if (iVar2 == 0) {
      iVar4 = 0;
      local_30 = 0;
    }
    else {
      iVar4 = iVar2 + 8;
      local_30 = *(undefined4 *)(iVar2 + 4);
    }
    iVar2 = param_1[3];
    uVar3 = iVar1 + 3;
    if (iVar2 == 0) {
      if (uVar3 != 0) goto LAB_008c37aa;
      iVar6 = 0;
      iVar2 = 0;
    }
    else {
      if (*(uint *)(iVar2 + 4) < uVar3) goto LAB_008c37aa;
      iVar6 = iVar2 + 8 + uVar3;
      iVar2 = *(int *)(iVar2 + 4) - uVar3;
    }
    iVar2 = FUN_008c20e0(iVar6,iVar2,iVar4,local_30);
    if (*(uint *)(param_1[3] + 4) <= iVar1 + 2U) goto LAB_008c380e;
    *(char *)(param_1[3] + 10 + iVar1) = (char)iVar2;
    iVar4 = param_1[3];
    uVar3 = iVar1 + 3 + iVar2;
    if (iVar4 == 0) {
      if (uVar3 != 0) goto LAB_008c37aa;
      iVar4 = 0;
      uVar3 = 0;
    }
    else if (*(uint *)(iVar4 + 4) < uVar3) goto LAB_008c37aa;
    FUN_008c21d0((char)param_1[6],iVar4,0,uVar3);
    local_1c = 0;
LAB_008c2cc0:
    if (local_1c != 0) {
      iVar1 = FUN_0099aa80();
      if (iVar1 == 0) {
        (*(code *)PTR_FUN_01c4f120)();
      }
      else if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iVar1 = param_1[3];
    if ((iVar1 == 0) || (*(int *)(iVar1 + 4) < 2)) goto LAB_008c37aa;
    FUN_008c2270((char)param_1[6],iVar1,0,2);
    local_1c = 0;
LAB_008c2c5c:
    if (local_1c != 0) {
      iVar1 = FUN_0099aa80();
      if (iVar1 == 0) {
        (*(code *)PTR_FUN_01c4f120)();
      }
      else if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iVar1 = param_1[3];
    if (*(int *)(iVar1 + 4) == 0) goto LAB_008c380e;
    if (*(char *)(iVar1 + 8) != '\x01') {
LAB_008c375f:
      FUN_00eae9a0();
      FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (*(uint *)(iVar1 + 4) < 2) goto LAB_008c380e;
    if (*(char *)(iVar1 + 9) != '\0') goto LAB_008c375f;
  }
  if (*(int *)(param_1[3] + 4) != 0) {
    *(undefined1 *)(param_1[3] + 8) = 5;
    if (*(uint *)(param_1[3] + 4) < 2) goto LAB_008c380e;
    *(undefined1 *)(param_1[3] + 9) = 1;
    if (*(uint *)(param_1[3] + 4) < 3) goto LAB_008c380e;
    *(undefined1 *)(param_1[3] + 10) = 0;
    iVar1 = param_1[2];
    if ((iVar1 == 0) || (iVar1 = FUN_00dc1b50(iVar1 + 8,*(undefined4 *)(iVar1 + 4)), iVar1 == 0)) {
      if (*(uint *)(param_1[3] + 4) < 4) goto LAB_008c380e;
      *(undefined1 *)(param_1[3] + 0xb) = 3;
      iVar1 = param_1[2];
      if (iVar1 == 0) {
        iVar2 = 0;
        uVar5 = 0;
      }
      else {
        iVar2 = iVar1 + 8;
        uVar5 = *(undefined4 *)(iVar1 + 4);
      }
      iVar1 = param_1[3];
      if ((iVar1 == 0) || (*(int *)(iVar1 + 4) < 5)) goto LAB_008c37aa;
      iVar1 = FUN_008c20e0(iVar1 + 0xd,*(int *)(iVar1 + 4) + -5,iVar2,uVar5);
      if (*(uint *)(param_1[3] + 4) < 5) goto LAB_008c380e;
      *(char *)(param_1[3] + 0xc) = (char)iVar1;
      iVar1 = iVar1 + 1;
    }
    else if (*(int *)(iVar1 + 4) == 0) {
      if (*(uint *)(param_1[3] + 4) < 4) goto LAB_008c380e;
      *(undefined1 *)(param_1[3] + 0xb) = 1;
      iVar1 = param_1[3];
      if ((iVar1 == 0) || (*(int *)(iVar1 + 4) < 4)) goto LAB_008c37aa;
      FUN_008e1990(iVar1 + 0xc,*(int *)(iVar1 + 4) + -4);
      iVar1 = 4;
    }
    else {
      if (*(uint *)(param_1[3] + 4) < 4) goto LAB_008c380e;
      *(undefined1 *)(param_1[3] + 0xb) = 4;
      iVar1 = param_1[3];
      if ((iVar1 == 0) || (*(int *)(iVar1 + 4) < 4)) goto LAB_008c37aa;
      FUN_008e1990(iVar1 + 0xc,*(int *)(iVar1 + 4) + -4);
      iVar1 = 0x10;
    }
    iVar2 = param_1[3];
    uVar3 = iVar1 + 4;
    if (iVar2 == 0) {
      if (uVar3 != 0) goto LAB_008c37aa;
      puVar7 = (ushort *)0x0;
      iVar2 = 0;
    }
    else {
      if (*(uint *)(iVar2 + 4) < uVar3) goto LAB_008c37aa;
      puVar7 = (ushort *)(iVar2 + 8 + uVar3);
      iVar2 = *(int *)(iVar2 + 4) - uVar3;
    }
    if (iVar2 < 2) {
                    /* WARNING: Subroutine does not return */
      FUN_00931d90();
    }
    *puVar7 = *(ushort *)(param_1 + 5) >> 8 | *(ushort *)(param_1 + 5) << 8;
    iVar2 = param_1[3];
    uVar3 = iVar1 + 6;
    if (iVar2 == 0) {
      if (uVar3 != 0) goto LAB_008c37aa;
      iVar2 = 0;
      uVar3 = 0;
    }
    else if (*(uint *)(iVar2 + 4) < uVar3) goto LAB_008c37aa;
    FUN_008c21d0((char)param_1[6],iVar2,0,uVar3);
    local_1c = 0;
LAB_008c2bf8:
    if (local_1c != 0) {
      iVar1 = FUN_0099aa80();
      if (iVar1 == 0) {
        (*(code *)PTR_FUN_01c4f120)();
      }
      else if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iVar1 = param_1[3];
    if ((iVar1 == 0) || (*(int *)(iVar1 + 4) < 5)) goto LAB_008c37aa;
    FUN_008c2270((char)param_1[6],iVar1,0,5);
    local_1c = 0;
LAB_008c2b94:
    if (local_1c != 0) {
      iVar1 = FUN_0099aa80();
      if (iVar1 == 0) {
        (*(code *)PTR_FUN_01c4f120)();
      }
      else if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    if (*(int *)(param_1[3] + 4) != 0) {
      FUN_008c2160();
      iVar1 = param_1[3];
      if (1 < *(uint *)(iVar1 + 4)) {
        if (*(char *)(iVar1 + 9) == '\0') {
          if (3 < *(uint *)(iVar1 + 4)) {
            switch(*(undefined1 *)(iVar1 + 0xb)) {
            case 1:
              uVar3 = 5;
              break;
            default:
              FUN_00eae9a0();
              FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
              FUN_00eaeefb();
            case 3:
              if (*(uint *)(iVar1 + 4) < 5) goto LAB_008c380e;
              uVar3 = *(byte *)(iVar1 + 0xc) + 2;
              break;
            case 4:
              uVar3 = 0x11;
            }
            if (iVar1 == 0) {
              if (uVar3 != 0) goto LAB_008c37aa;
              iVar1 = 0;
              uVar3 = 0;
            }
            else if (*(uint *)(iVar1 + 4) < uVar3) {
LAB_008c37aa:
                    /* WARNING: Subroutine does not return */
              FUN_009318f0();
            }
            FUN_008c2270((char)param_1[6],iVar1,0,uVar3);
            local_1c = 0;
LAB_008c2b30:
            if (local_1c != 0) {
              iVar1 = FUN_0099aa80();
              if (iVar1 == 0) {
                (*(code *)PTR_FUN_01c4f120)();
              }
              else if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            if ((int)local_14 < 0) {
              if (PTR_LAB_01c23e74 != (undefined *)0x0) {
                FUN_00e8f528();
              }
              FUN_00b7f720(0);
            }
            param_1[4] = -2;
            param_1[3] = 0;
            if (param_1[7] == 0) {
              if (PTR_FUN_01c22188 != (undefined *)0x0) {
                FUN_00e8ec31();
              }
              FUN_00eaecdd();
            }
            else {
              iVar1 = FUN_00c0a790(0);
              if (iVar1 == 0) {
                    /* WARNING: Subroutine does not return */
                FUN_00931e50();
              }
            }
            return;
          }
        }
        else {
          FUN_00eae9a0();
          if (1 < *(uint *)(iVar1 + 4)) {
            FUN_00912470();
            FUN_00890ca0();
            FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
            FUN_00eaeefb();
          }
        }
      }
    }
  }
LAB_008c380e:
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

