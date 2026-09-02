/* Address: 008c22f0 | Ghidra name: FUN_008c22f0 */

void __fastcall FUN_008c22f0(int *param_1)

{
  char cVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  int *piVar6;
  uint uVar7;
  int *piVar8;
  int iVar9;
  undefined4 uVar10;
  undefined1 uVar11;
  undefined4 uVar12;
  undefined4 *puVar13;
  int iVar14;
  uint local_14;
  
  iVar9 = 0;
  uVar10 = 0;
  uVar11 = 0;
  uVar12 = 0;
  puVar13 = (undefined4 *)0x0;
  iVar14 = 0;
  local_14 = param_1[4];
  piVar6 = param_1;
  if (2 < local_14) {
    uVar11 = 0;
    if (PTR_LAB_01c23e74 != (undefined *)0x0) {
      uVar11 = 0;
      FUN_00e8f528(param_1,0,0,0,0,0,0,0);
    }
    FUN_00b7f560();
    FUN_00eaeca8();
  }
  piVar8 = piVar6;
  switch(local_14) {
  case 0:
switchD_008c2366_caseD_0:
    if (local_14 == 0) {
      puVar13 = (undefined4 *)param_1[9];
      iVar14 = param_1[10];
      piVar6[9] = 0;
      piVar6[10] = 0;
      local_14 = 0xffffffff;
      piVar6[4] = -1;
      param_1 = piVar6;
LAB_008c24da:
      if ((puVar13[7] & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar2 = puVar13[8];
    }
    else {
      if (*(char *)((int)param_1 + 0x19) != '\0') {
        puVar13 = (undefined4 *)FUN_008d99b0(param_1[8],2,1,1);
        if ((puVar13 != (undefined4 *)0x0) && ((undefined *)*puVar13 != &DAT_0189ff74)) {
          puVar13 = (undefined4 *)FUN_0099ad00();
        }
        iVar14 = 0;
        if ((puVar13[7] & 0x1600000) == 0) {
          param_1[4] = 0;
          FUN_00eaecdd();
          param_1[10] = iVar14;
          FUN_00dad000();
          FUN_00e05320(&PTR_DAT_0156ec28);
          FUN_008c2a43();
          return;
        }
        goto LAB_008c24da;
      }
      iVar2 = FUN_008d9510();
    }
    if (*(int *)(iVar2 + 4) == 0) {
      FUN_00eae9a0();
      FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    iVar2 = *(int *)(iVar2 + 8);
    break;
  case 1:
    iVar2 = param_1[0xb];
    uVar11 = (undefined1)((uint)param_1[0xc] >> 0x18);
    piVar6[0xb] = 0;
    piVar6[0xc] = 0;
    local_14 = 0xffffffff;
    piVar6[4] = -1;
    goto LAB_008c23ec;
  case 2:
    iVar2 = param_1[0xb];
    iVar3 = param_1[0xc];
    piVar6[0xb] = 0;
    piVar6[0xc] = 0;
    local_14 = 0xffffffff;
    piVar6[4] = -1;
    goto LAB_008c2389;
  default:
    if (*(int *)(param_1[3] + 4) == 0) goto LAB_008c296e;
    *(undefined1 *)(param_1[3] + 8) = 4;
    if (*(uint *)(param_1[3] + 4) < 2) goto LAB_008c296e;
    *(undefined1 *)(param_1[3] + 9) = 1;
    iVar2 = param_1[3];
    if ((iVar2 == 0) || (*(int *)(iVar2 + 4) < 2)) goto LAB_008c2904;
    if (*(int *)(iVar2 + 4) - 2U < 2) {
                    /* WARNING: Subroutine does not return */
      FUN_00931d90();
    }
    *(ushort *)(iVar2 + 10) = *(ushort *)(param_1 + 5) >> 8 | *(ushort *)(param_1 + 5) << 8;
    iVar2 = *param_1;
    if ((iVar2 == 0) || (iVar2 = FUN_00dc1b50(iVar2 + 8,*(undefined4 *)(iVar2 + 4)), iVar2 == 0)) {
      iVar2 = 0;
      if ((char)param_1[6] == '\0') goto switchD_008c2366_caseD_0;
    }
    else if (*(int *)(iVar2 + 4) != 0) {
      iVar2 = FUN_008e1ae0();
      if (iVar2 == 0) {
        FUN_00eae9a0();
        FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      iVar2 = FUN_008e1ce0();
    }
  }
  if (iVar2 == 0) {
    if (*(uint *)(param_1[3] + 4) < 5) goto LAB_008c296e;
    *(undefined1 *)(param_1[3] + 0xc) = 0;
    if (*(uint *)(param_1[3] + 4) < 6) goto LAB_008c296e;
    *(undefined1 *)(param_1[3] + 0xd) = 0;
    if (*(uint *)(param_1[3] + 4) < 7) goto LAB_008c296e;
    *(undefined1 *)(param_1[3] + 0xe) = 0;
    if (*(uint *)(param_1[3] + 4) < 8) goto LAB_008c296e;
    *(undefined1 *)(param_1[3] + 0xf) = 0xff;
    piVar8 = piVar6;
  }
  else {
    iVar3 = param_1[3];
    if ((iVar3 == 0) || (*(int *)(iVar3 + 4) < 4)) goto LAB_008c2904;
    FUN_008e1990(iVar3 + 0xc,*(int *)(iVar3 + 4) + -4);
    piVar8 = piVar6;
  }
  if (param_1[1] == 0) {
    iVar3 = 0;
  }
  else {
    iVar3 = *(int *)(param_1[1] + 8);
  }
  if (iVar3 == 0) {
    iVar4 = 0;
    uVar5 = 0;
  }
  else {
    iVar4 = iVar3 + 8;
    uVar5 = *(undefined4 *)(iVar3 + 4);
  }
  iVar3 = param_1[3];
  if ((iVar3 == 0) || (*(int *)(iVar3 + 4) < 8)) goto LAB_008c2904;
  iVar3 = FUN_008c20e0(iVar3 + 0x10,*(int *)(iVar3 + 4) + -8,iVar4,uVar5);
  if (iVar3 + 8U < *(uint *)(param_1[3] + 4)) {
    *(undefined1 *)(param_1[3] + 0x10 + iVar3) = 0;
    uVar7 = iVar3 + 9;
    if (iVar2 == 0) {
      iVar2 = *param_1;
      if (iVar2 == 0) {
        iVar3 = 0;
        uVar5 = 0;
      }
      else {
        iVar3 = iVar2 + 8;
        uVar5 = *(undefined4 *)(iVar2 + 4);
      }
      iVar2 = param_1[3];
      if (iVar2 == 0) {
        if (uVar7 != 0) goto LAB_008c2904;
        iVar4 = 0;
        iVar2 = 0;
      }
      else {
        if (*(uint *)(iVar2 + 4) < uVar7) goto LAB_008c2904;
        iVar4 = iVar2 + 8 + uVar7;
        iVar2 = *(int *)(iVar2 + 4) - uVar7;
      }
      iVar2 = FUN_008c20e0(iVar4,iVar2,iVar3,uVar5);
      uVar7 = uVar7 + iVar2;
      if (*(uint *)(param_1[3] + 4) <= uVar7) goto LAB_008c296e;
      *(undefined1 *)(param_1[3] + 8 + uVar7) = 0;
      uVar7 = uVar7 + 1;
    }
    iVar2 = param_1[3];
    if (iVar2 == 0) {
      if (uVar7 != 0) goto LAB_008c2904;
      iVar2 = 0;
      uVar7 = 0;
    }
    else if (*(uint *)(iVar2 + 4) < uVar7) goto LAB_008c2904;
    FUN_008c21d0(*(undefined1 *)((int)param_1 + 0x19),iVar2,0,uVar7);
    piVar6 = param_1;
    iVar2 = iVar9;
    if (iVar9 != 0) {
      iVar3 = FUN_0099aa80();
      if (iVar3 == 0) {
        uVar7 = (*(code *)PTR_FUN_01c397b8)();
      }
      else {
        uVar7 = *(uint *)(iVar3 + 0x1c) & 0x1600000;
      }
      if (uVar7 == 0) {
        param_1[4] = 1;
        FUN_00eaee5e();
        param_1[0xb] = iVar2;
        FUN_00dad000();
        FUN_00e051e0();
        FUN_008c2a43();
        return;
      }
    }
LAB_008c23ec:
    if (iVar2 != 0) {
      iVar2 = FUN_0099aa80();
      if (iVar2 == 0) {
        (*(code *)PTR_FUN_01c4f118)();
      }
      else if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iVar2 = piVar6[3];
    if ((iVar2 == 0) || (*(int *)(iVar2 + 4) < 8)) {
LAB_008c2904:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    FUN_008c2270(*(undefined1 *)((int)piVar6 + 0x19),iVar2,0,8);
    iVar3 = CONCAT13(uVar11,(uint3)(ushort)uVar10);
    iVar2 = iVar9;
    if (iVar9 != 0) {
      iVar4 = FUN_0099aa80();
      if (iVar4 == 0) {
        uVar7 = (*(code *)PTR_FUN_01c397b8)();
      }
      else {
        uVar7 = *(uint *)(iVar4 + 0x1c) & 0x1600000;
      }
      if (uVar7 == 0) {
        piVar6[4] = 2;
        FUN_00eaee5e();
        piVar6[0xb] = iVar2;
        FUN_00dad000();
        FUN_00e051e0();
        FUN_008c2a43();
        return;
      }
    }
LAB_008c2389:
    if (iVar2 != 0) {
      iVar4 = FUN_0099aa80();
      if (iVar4 == 0) {
        (*(code *)PTR_FUN_01c4f118)();
      }
      else if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    if (1 < *(uint *)(piVar6[3] + 4)) {
      cVar1 = *(char *)(piVar6[3] + 9);
      if (cVar1 == 'Z') {
        if ((int)local_14 < 0) {
          if (PTR_LAB_01c23e74 != (undefined *)0x0) {
            FUN_00e8f528(piVar8,iVar9,uVar10,iVar2,iVar3,uVar12,puVar13,iVar14);
          }
          FUN_00b7f720(0);
        }
        piVar6[4] = -2;
        piVar6[3] = 0;
        if (piVar6[7] == 0) {
          if (PTR_FUN_01c22188 != (undefined *)0x0) {
            FUN_00e8ec31();
          }
          FUN_00eaecdd();
        }
        else {
          iVar14 = FUN_00c0a790(0);
          if (iVar14 == 0) {
                    /* WARNING: Subroutine does not return */
            FUN_00931e50();
          }
        }
        return;
      }
      if (cVar1 == ']') {
        FUN_00eae9a0();
        FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      FUN_00eae9a0();
      if (1 < *(uint *)(piVar6[3] + 4)) {
        FUN_00912470();
        FUN_00890ca0();
        FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
LAB_008c296e:
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

