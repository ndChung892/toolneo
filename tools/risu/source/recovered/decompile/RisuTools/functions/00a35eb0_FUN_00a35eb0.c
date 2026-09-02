/* Address: 00a35eb0 | Ghidra name: FUN_00a35eb0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __thiscall FUN_00a35eb0(int param_1,int *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  int iVar6;
  int *piVar7;
  int iVar8;
  undefined4 local_58;
  undefined4 local_54;
  uint local_20;
  uint local_18 [2];
  
  uVar5 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_18 + uVar5) = 0;
    *(undefined4 *)((int)local_18 + uVar5 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar5) = 0;
    *(undefined4 *)((int)&param_2 + uVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + uVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar5) = 0;
    *(undefined4 *)(&stack0x00000014 + uVar5) = 0;
    uVar5 = uVar5 + 0x30;
  } while (uVar5 != 0);
  local_18[0] = uVar5;
  local_18[1] = uVar5;
  iVar6 = (**(code **)(*param_2 + 0x20))();
  if (*(int *)(param_1 + 0x1c) == 0) {
    piVar7 = (int *)0x0;
  }
  else {
    piVar7 = *(int **)(*(int *)(param_1 + 0x1c) + 0x30);
  }
  if (piVar7 == (int *)0x0) {
    piVar7 = *(int **)(*(int *)(param_1 + 0x30) + 0x60);
  }
  (**(code **)(*piVar7 + 0x14))(piVar7);
  iVar8 = FUN_00909ad0();
  if (iVar8 == 0) {
    if (0 < *(int *)(iVar6 + 4)) {
      FUN_00906a20();
    }
    FUN_00a321f0();
    FUN_00906a20();
  }
  FUN_00a3a080();
  FUN_00a3a080();
  FUN_0099d430(3);
  if (local_20 <= local_18[1]) {
    puVar1 = (undefined4 *)(local_18[0] + local_20 * 2);
    if (local_18[1] - local_20 < 7) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = 0x500020;
      puVar1[1] = 0x740061;
      puVar1[2] = 0x3a0068;
      *(undefined2 *)(puVar1 + 3) = 0x20;
      local_20 = local_20 + 7;
    }
    FUN_00a492a0();
    FUN_0099d620();
    uVar4 = _UNK_018dcdac;
    uVar3 = _UNK_018dcda8;
    uVar2 = _UNK_018dcda4;
    if (local_20 <= local_18[1]) {
      puVar1 = (undefined4 *)(local_18[0] + local_20 * 2);
      if (local_18[1] - local_20 < 0xf) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018dcda0;
        puVar1[1] = uVar2;
        puVar1[2] = uVar3;
        puVar1[3] = uVar4;
        puVar1[4] = 0x6d0075;
        puVar1[5] = 0x650062;
        puVar1[6] = 0x3a0072;
        *(undefined2 *)(puVar1 + 7) = 0x20;
        local_20 = local_20 + 0xf;
      }
      FUN_00ded500(local_58,local_54);
      uVar4 = _UNK_018dcdbc;
      uVar3 = _UNK_018dcdb8;
      uVar2 = _UNK_018dcdb4;
      if (local_20 <= local_18[1]) {
        puVar1 = (undefined4 *)(local_18[0] + local_20 * 2);
        if (local_18[1] - local_20 < 0x17) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018dcdb0;
          puVar1[1] = uVar2;
          puVar1[2] = uVar3;
          puVar1[3] = uVar4;
          uVar4 = _UNK_018dcdcc;
          uVar3 = _UNK_018dcdc8;
          uVar2 = _UNK_018dcdc4;
          puVar1[4] = _DAT_018dcdc0;
          puVar1[5] = uVar2;
          puVar1[6] = uVar3;
          puVar1[7] = uVar4;
          puVar1[8] = 0x4c006e;
          puVar1[9] = &DAT_006e0069;
          puVar1[10] = 0x3a0065;
          *(undefined2 *)(puVar1 + 0xb) = 0x20;
          local_20 = local_20 + 0x17;
        }
        FUN_00ded500(0,0);
        if (local_20 <= local_18[1]) {
          if (local_18[1] == local_20) {
            FUN_0099d6f0();
          }
          else {
            *(undefined2 *)(local_18[0] + local_20 * 2) = 0x2e;
          }
          FUN_0099d560();
          FUN_00906a20();
          FUN_00eae9a0();
          FUN_0092a110(param_2);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

