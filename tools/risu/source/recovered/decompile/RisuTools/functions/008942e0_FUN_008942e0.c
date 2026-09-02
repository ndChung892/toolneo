/* Address: 008942e0 | Ghidra name: FUN_008942e0 */

void __fastcall FUN_008942e0(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  int iVar8;
  int local_c4;
  LARGE_INTEGER local_a8;
  int local_a0;
  int iStack_9c;
  int iStack_98;
  int iStack_94;
  int local_28;
  int local_24;
  char local_20 [8];
  int local_18 [2];
  
  iVar1 = -0xc0;
  do {
    *(undefined4 *)((int)local_18 + iVar1) = 0;
    *(undefined4 *)((int)local_18 + iVar1 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar1) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar1) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar1) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar1) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar1) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar1) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar1) = 0;
    iVar1 = iVar1 + 0x30;
  } while (iVar1 != 0);
  local_18[1] = param_1[6];
  iVar1 = param_1[1];
  local_18[0] = 0;
  if (local_18[1] != 0) {
    if ((((*(byte *)(*param_1 + 0x1c) & 2) != 0) && (iVar3 = *(int *)(iVar1 + 0xc), iVar3 != 0)) &&
       (local_c4 = *(int *)(iVar3 + 4), 0 < local_c4)) {
      puVar6 = (undefined4 *)(iVar3 + 8);
      do {
        uVar2 = *puVar6;
        FUN_00899050();
        FUN_008d2840(uVar2);
        puVar6 = puVar6 + 1;
        local_c4 = local_c4 + -1;
      } while (local_c4 != 0);
    }
    if (PTR_FUN_01c21d44 != (undefined *)0x0) {
      FUN_00e8e538();
    }
    FUN_00eaecdd();
    param_1[0xc] = 0;
    param_1[0xd] = 0;
    param_1[0xe] = 0;
    param_1[0xf] = 0;
    FUN_00893170();
    FUN_00eaeca8();
    if (param_1[3] != 0) {
      iVar3 = *(int *)(*(int *)(*param_1 + 4) + 4);
      if (iVar3 == 0) {
        iVar5 = 0;
        uVar2 = 0;
      }
      else {
        iVar5 = iVar3 + 8;
        uVar2 = *(undefined4 *)(iVar3 + 4);
      }
      FUN_00898810(iVar5,uVar2);
      FUN_008469f0();
      if (*(char *)(param_1[3] + 0x5c) != '\0') {
        FUN_00894a60(local_20);
        FUN_008470d0(local_18[0]);
        if (local_20[0] != '\0') {
          FUN_008470d0(*(undefined4 *)(*(int *)(*param_1 + 4) + 4));
        }
        if ((*(int *)(*param_1 + 8) != 0) && (*(int *)(*(int *)(*param_1 + 8) + 0x14) != 0)) {
          uVar2 = FUN_00894b20();
          FUN_008470d0(uVar2);
          iVar3 = FUN_00eae9a0();
          uVar2 = FUN_00a00bc0();
          *(undefined4 *)(iVar3 + 4) = uVar2;
          FUN_008470d0(iVar3);
          uVar2 = FUN_0089aad0(param_1[3]);
          FUN_008470d0(uVar2);
        }
      }
      iVar3 = FUN_0084a1c0();
      if (iVar3 != 0) {
        FUN_00eae9a0();
        uVar2 = FUN_00eaec5e();
        FUN_0084a280(uVar2);
      }
    }
    iVar3 = FUN_0084a1c0();
    if (iVar3 != 0) {
      QueryPerformanceCounter(&local_a8);
      FUN_00926ef0();
      param_1[0xc] = local_a0;
      param_1[0xd] = iStack_9c;
      param_1[0xe] = iStack_98;
      param_1[0xf] = iStack_94;
      FUN_00eae9a0();
      iVar3 = param_1[0xc];
      iVar5 = param_1[0xd];
      iVar7 = param_1[0xe];
      iVar8 = param_1[0xf];
      iVar4 = FUN_00eaec14();
      *(int *)(iVar4 + 0x10) = iVar3;
      *(int *)(iVar4 + 0x14) = iVar5;
      *(int *)(iVar4 + 0x18) = iVar7;
      *(int *)(iVar4 + 0x1c) = iVar8;
      *(DWORD *)(iVar4 + 4) = local_a8.s.LowPart;
      *(LONG *)(iVar4 + 8) = local_a8.s.HighPart;
      FUN_0084a280(iVar4);
      if (DAT_01c81020 != 0) {
        FUN_00eaf191();
      }
    }
    if (param_1[3] != 0) {
      FUN_00893360(*param_1);
    }
    param_1[4] = 0;
    param_1[5] = 0;
    param_1[7] = 5;
  }
  if (local_18[1] == 0) {
    local_28 = param_1[0x10];
    local_24 = param_1[0x11];
    param_1[0x10] = 0;
    param_1[0x11] = 0;
    local_18[1] = -1;
    param_1[6] = -1;
  }
  else {
    if ((char)param_1[8] == '\0') {
      (**(code **)(**(int **)(iVar1 + 4) + 0x20))(param_1[0xb]);
      goto LAB_00894635;
    }
    local_28 = (**(code **)(**(int **)(iVar1 + 4) + 0x24))(param_1[0xb]);
    local_24 = 0;
    if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
      local_18[1] = 0;
      param_1[6] = 0;
      FUN_00eaecdd();
      param_1[0x11] = local_24;
      FUN_00da70c0(&PTR_DAT_01546e68);
      FUN_00e05320(&PTR_DAT_01554d2c);
      FUN_008947e2();
      return;
    }
  }
  if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
LAB_00894635:
  FUN_00eaeca8();
  FUN_008947e2();
  param_1[6] = -2;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  if (param_1[9] == 0) {
    FUN_00eaeca8();
    if (PTR_DAT_01c239a4 != (undefined *)0x0) {
      FUN_00e8f3e5();
    }
    FUN_00eaeca8();
  }
  else {
    iVar1 = FUN_00cc8af0();
    if (iVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

