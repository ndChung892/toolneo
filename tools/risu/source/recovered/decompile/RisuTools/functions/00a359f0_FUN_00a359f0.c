/* Address: 00a359f0 | Ghidra name: FUN_00a359f0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00a359f0(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  undefined4 local_58;
  undefined4 local_54;
  uint local_20;
  char local_1c;
  uint local_18 [2];
  
  uVar6 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_18 + uVar6) = 0;
    *(undefined4 *)((int)local_18 + uVar6 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar6) = 0;
    *(undefined4 *)((int)&param_1 + uVar6) = 0;
    iVar5 = param_1;
    *(undefined4 *)(&stack0x00000008 + uVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + uVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar6) = 0;
    *(undefined4 *)(&stack0x00000014 + uVar6) = 0;
    uVar6 = uVar6 + 0x30;
  } while (uVar6 != 0);
  local_18[0] = uVar6;
  local_18[1] = uVar6;
  FUN_00a3a080();
  *(undefined1 *)(iVar5 + 0x3c) = 1;
  *(undefined4 *)(iVar5 + 0x44) = local_58;
  *(undefined4 *)(iVar5 + 0x48) = local_54;
  FUN_00a3a080();
  *(undefined1 *)(iVar5 + 0x4c) = 1;
  *(undefined4 *)(iVar5 + 0x54) = 0;
  *(undefined4 *)(iVar5 + 0x58) = 0;
  iVar7 = FUN_00a492a0();
  FUN_00eaebca();
  if ((*(int *)(iVar5 + 0x2c) == 0) || (*(int *)(*(int *)(iVar5 + 0x2c) + 4) == 0)) {
    FUN_00a321f0();
    *(undefined1 *)(iVar5 + 0x34) = 1;
  }
  if (*(char *)(iVar5 + 0x34) == '\0') {
    return;
  }
  FUN_0099d430(3);
  if (local_18[1] < local_20) goto LAB_00a35cd2;
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
  if ((local_1c == '\0') && (iVar7 != 0)) {
    if (local_18[1] < local_20) goto LAB_00a35cd2;
    if (local_18[1] - local_20 < *(uint *)(iVar7 + 4)) goto LAB_00a35b68;
    FUN_00930280(*(int *)(iVar7 + 4) * 2);
    local_20 = local_20 + *(int *)(iVar7 + 4);
  }
  else {
LAB_00a35b68:
    FUN_0099d670();
  }
  uVar4 = _UNK_018dcd7c;
  uVar3 = _UNK_018dcd78;
  uVar2 = _UNK_018dcd74;
  if (local_20 <= local_18[1]) {
    puVar1 = (undefined4 *)(local_18[0] + local_20 * 2);
    if (local_18[1] - local_20 < 0xf) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018dcd70;
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
    uVar4 = _UNK_018dcd8c;
    uVar3 = _UNK_018dcd88;
    uVar2 = _UNK_018dcd84;
    if (local_20 <= local_18[1]) {
      puVar1 = (undefined4 *)(local_18[0] + local_20 * 2);
      if (local_18[1] - local_20 < 0x17) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018dcd80;
        puVar1[1] = uVar2;
        puVar1[2] = uVar3;
        puVar1[3] = uVar4;
        uVar4 = _UNK_018dcd9c;
        uVar3 = _UNK_018dcd98;
        uVar2 = _UNK_018dcd94;
        puVar1[4] = _DAT_018dcd90;
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
        FUN_00eaec5e();
        return;
      }
    }
  }
LAB_00a35cd2:
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

