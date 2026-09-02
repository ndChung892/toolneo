/* Address: 00a33d90 | Ghidra name: FUN_00a33d90 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int FUN_00a33d90(undefined4 param_1,undefined4 param_2,byte param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  undefined4 local_58;
  undefined4 local_54;
  uint local_20;
  uint local_18 [2];
  
  uVar4 = 0xffffffa0;
  do {
    *(undefined4 *)((int)local_18 + uVar4) = 0;
    *(undefined4 *)((int)local_18 + uVar4 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffff4 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffff8 + uVar4) = 0;
    *(undefined4 *)(&stack0xfffffffc + uVar4) = 0;
    *(undefined4 *)(&stack0x00000000 + uVar4) = 0;
    *(undefined4 *)((int)&param_1 + uVar4) = 0;
    *(undefined4 *)((int)&param_2 + uVar4) = 0;
    *(undefined4 *)(&param_3 + uVar4) = 0;
    *(undefined4 *)(&stack0x00000010 + uVar4) = 0;
    *(undefined4 *)(&stack0x00000014 + uVar4) = 0;
    uVar4 = uVar4 + 0x30;
  } while (uVar4 != 0);
  uVar7 = (uint)param_3;
  local_18[0] = uVar4;
  local_18[1] = uVar4;
  if (PTR_LAB_01c22148 != (undefined *)0x0) {
    FUN_00e8eba9();
  }
  uVar5 = FUN_0097da60(param_1,param_2);
  FUN_00a33fd0(uVar5,uVar7);
  FUN_00a3a080();
  FUN_00a3a080();
  FUN_0099d430(2);
  uVar3 = _UNK_018dcc3c;
  uVar2 = _UNK_018dcc38;
  uVar5 = _UNK_018dcc34;
  if (local_20 <= local_18[1]) {
    puVar1 = (undefined4 *)(local_18[0] + local_20 * 2);
    if (local_18[1] - local_20 < 0xd) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018dcc30;
      puVar1[1] = uVar5;
      puVar1[2] = uVar2;
      puVar1[3] = uVar3;
      puVar1[4] = 0x650062;
      puVar1[5] = 0x3a0072;
      *(undefined2 *)(puVar1 + 6) = 0x20;
      local_20 = local_20 + 0xd;
    }
    FUN_00ded500(local_58,local_54);
    uVar3 = _UNK_018dcc4c;
    uVar2 = _UNK_018dcc48;
    uVar5 = _UNK_018dcc44;
    if (local_20 <= local_18[1]) {
      puVar1 = (undefined4 *)(local_18[0] + local_20 * 2);
      if (local_18[1] - local_20 < 0x17) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018dcc40;
        puVar1[1] = uVar5;
        puVar1[2] = uVar2;
        puVar1[3] = uVar3;
        uVar3 = _UNK_018dcc5c;
        uVar2 = _UNK_018dcc58;
        uVar5 = _UNK_018dcc54;
        puVar1[4] = _DAT_018dcc50;
        puVar1[5] = uVar5;
        puVar1[6] = uVar2;
        puVar1[7] = uVar3;
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
        iVar6 = FUN_00eae9a0();
        FUN_0099d560();
        FUN_00906a20();
        *(undefined4 *)(iVar6 + 0x24) = 0x80131500;
        FUN_00eaebca();
        FUN_00eaebca();
        *(undefined1 *)(iVar6 + 0x3c) = 1;
        *(undefined4 *)(iVar6 + 0x44) = local_58;
        *(undefined4 *)(iVar6 + 0x48) = local_54;
        *(undefined1 *)(iVar6 + 0x4c) = 1;
        *(undefined4 *)(iVar6 + 0x54) = 0;
        *(undefined4 *)(iVar6 + 0x58) = 0;
        *(undefined4 *)(iVar6 + 0x30) = 0;
        return iVar6;
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

