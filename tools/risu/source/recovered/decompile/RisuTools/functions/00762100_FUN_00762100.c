/* Address: 00762100 | Ghidra name: FUN_00762100 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00762100(void)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  int iVar9;
  uint *puVar10;
  uint *puVar11;
  uint local_48 [14];
  
  local_48[0] = 0;
  local_48[1] = 0;
  local_48[2] = 0;
  local_48[3] = 0;
  local_48[4] = 0;
  local_48[5] = 0;
  local_48[6] = 0;
  local_48[7] = 0;
  local_48[8] = 0;
  local_48[9] = 0;
  local_48[10] = 0;
  local_48[0xb] = 0;
  local_48[0xc] = 0;
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 4) = &PTR_DAT_01bee8dc;
  *(undefined ***)(iVar4 + 8) = &PTR_DAT_01b42be8;
  *(undefined1 *)(iVar4 + 0x42) = 1;
  *(undefined1 *)(iVar4 + 0x48) = 0;
  *(undefined1 *)(iVar4 + 0x40) = 1;
  iVar4 = FUN_00850d90();
  if (iVar4 == 0) {
    FUN_0076251c();
  }
  else {
    FUN_00850500();
    FUN_0098fb00();
    iVar5 = FUN_00851170();
    if ((iVar5 != 0) && (*(char *)(iVar4 + 0x82) != '\0')) {
      FUN_00850a70();
    }
    iVar5 = FUN_00eaea6e();
    *(undefined4 *)(iVar5 + 8) = 0xa000d;
    FUN_00908570(1,iVar5 + 8,2);
    iVar5 = 0;
    FUN_00e4eb70(&PTR_DAT_0154a000);
    (*(code *)PTR_FUN_01c46618)();
    while (iVar6 = (*(code *)PTR_FUN_01c3a330)(), iVar6 != 0) {
      iVar6 = (*(code *)PTR_FUN_01c46820)();
      iVar6 = FUN_00e1dd60(*(undefined4 *)(iVar6 + 4));
      if (0 < iVar6) {
        iVar6 = FUN_00909690(iVar6);
        if (*(int *)(iVar6 + 4) != 0) {
          if (*(short *)(iVar6 + 8) != 0x22) {
            if (*(uint *)(iVar6 + 4) <= *(int *)(iVar6 + 4) - 1U) goto LAB_007623b9;
            if (*(short *)(iVar6 + 6 + *(int *)(iVar6 + 4) * 2) != 0x22) goto LAB_00762276;
          }
          iVar6 = FUN_00909980(3,1);
        }
LAB_00762276:
        iVar7 = FUN_00909650();
        if (*(int *)(iVar7 + 4) != 0) {
          if (*(short *)(iVar7 + 8) != 0x22) {
            if (*(uint *)(iVar7 + 4) <= *(int *)(iVar7 + 4) - 1U) {
LAB_007623b9:
                    /* WARNING: Subroutine does not return */
              FUN_009c2bf0();
            }
            if (*(short *)(iVar7 + 6 + *(int *)(iVar7 + 4) * 2) != 0x22) goto LAB_007622c7;
          }
          FUN_00909980(3,1);
        }
LAB_007622c7:
        if (iVar6 == 0) {
          local_48[0xc] = 0;
        }
        else {
          iVar7 = iVar6 + 8;
          uVar8 = *(undefined4 *)(iVar6 + 4);
          FUN_00958ea0(iVar7,uVar8);
          iVar7 = FUN_00dd21c0(local_48 + 0xc,iVar7,uVar8);
          if (iVar7 == 0) {
            uVar8 = (*(code *)PTR_FUN_01c43968)();
            do {
              iVar7 = (*(code *)PTR_FUN_01c3a330)();
              if (iVar7 == 0) goto LAB_0076239c;
              iVar9 = (*(code *)PTR_FUN_01c43a80)();
              iVar7 = *(int *)(*(int *)(iVar9 + 0x10) + 8);
            } while (((iVar7 == 0) || (*(int *)(iVar7 + 4) == 0)) ||
                    (iVar7 = FUN_00909ad0(iVar6,iVar9,uVar8), iVar7 == 0));
            iVar6 = *(int *)(iVar9 + 0x108);
            if ((((*(uint *)(iVar6 + 0x38) & 1) == 0) || (*(int *)(iVar6 + 0x34) != local_48[0xc]))
               && (*(uint *)(iVar6 + 0x34) = local_48[0xc], *(uint *)(iVar6 + 0x38) != 0x200)) {
              FUN_00bba640();
              FUN_00bb4c00();
            }
            iVar5 = iVar5 + 1;
LAB_0076239c:
            (*(code *)PTR_FUN_01c37170)();
          }
        }
      }
    }
    (*(code *)PTR_FUN_01c37170)();
    local_48[0xd] = iVar5;
    if (0 < iVar5) {
      FUN_0099d430(1);
      uVar3 = _UNK_018d33ac;
      uVar2 = _UNK_018d33a8;
      uVar8 = _UNK_018d33a4;
      puVar10 = local_48;
      puVar11 = local_48 + 6;
      for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
        *puVar11 = *puVar10;
        puVar10 = puVar10 + 1;
        puVar11 = puVar11 + 1;
      }
      if (local_48[0xb] < local_48[8]) {
LAB_007624bc:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      puVar1 = (undefined4 *)(local_48[10] + local_48[8] * 2);
      if (local_48[0xb] - local_48[8] < 0x20) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d33a0;
        puVar1[1] = uVar8;
        puVar1[2] = uVar2;
        puVar1[3] = uVar3;
        uVar3 = _UNK_018d33bc;
        uVar2 = _UNK_018d33b8;
        uVar8 = _UNK_018d33b4;
        puVar1[4] = _DAT_018d33b0;
        puVar1[5] = uVar8;
        puVar1[6] = uVar2;
        puVar1[7] = uVar3;
        uVar3 = _UNK_018d33cc;
        uVar2 = _UNK_018d33c8;
        uVar8 = _UNK_018d33c4;
        puVar1[8] = _DAT_018d33c0;
        puVar1[9] = uVar8;
        puVar1[10] = uVar2;
        puVar1[0xb] = uVar3;
        uVar3 = _UNK_018d33dc;
        uVar2 = _UNK_018d33d8;
        uVar8 = _UNK_018d33d4;
        puVar1[0xc] = _DAT_018d33d0;
        puVar1[0xd] = uVar8;
        puVar1[0xe] = uVar2;
        puVar1[0xf] = uVar3;
        local_48[8] = local_48[8] + 0x20;
      }
      FUN_00de77e0();
      uVar3 = _UNK_018d33ec;
      uVar2 = _UNK_018d33e8;
      uVar8 = _UNK_018d33e4;
      if (local_48[0xb] < local_48[8]) goto LAB_007624bc;
      puVar1 = (undefined4 *)(local_48[10] + local_48[8] * 2);
      if (local_48[0xb] - local_48[8] < 0x11) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d33e0;
        puVar1[1] = uVar8;
        puVar1[2] = uVar2;
        puVar1[3] = uVar3;
        uVar3 = _UNK_018d33fc;
        uVar2 = _UNK_018d33f8;
        uVar8 = _UNK_018d33f4;
        puVar1[4] = _DAT_018d33f0;
        puVar1[5] = uVar8;
        puVar1[6] = uVar2;
        puVar1[7] = uVar3;
        *(undefined2 *)(puVar1 + 8) = 0x21;
        local_48[8] = local_48[8] + 0x11;
      }
      FUN_0099d560();
      FUN_00761af0();
    }
    if (*(char *)(iVar4 + 0x89) == '\0') {
      FUN_00850610();
      *(undefined1 *)(iVar4 + 0x89) = 1;
    }
    FUN_009024f0();
  }
  return;
}

