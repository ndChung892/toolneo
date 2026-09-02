/* Address: 009f23c0 | Ghidra name: FUN_009f23c0 */

int * __fastcall FUN_009f23c0(int *param_1,int param_2,int *param_3,undefined4 *param_4)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  int local_90;
  uint uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined4 local_80 [4];
  undefined4 local_70;
  int local_6c [6];
  undefined4 local_54;
  undefined1 local_50;
  int local_44;
  uint local_3c;
  undefined1 local_34 [4];
  uint local_30;
  int local_2c;
  int local_28;
  int local_24 [5];
  
  local_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0;
  uStack_84 = 0;
  iVar1 = -0x60;
  do {
    *(undefined4 *)((int)local_24 + iVar1 + 4) = 0;
    *(undefined4 *)((int)local_24 + iVar1 + 8) = 0;
    *(undefined4 *)((int)local_24 + iVar1 + 0xc) = 0;
    *(undefined4 *)((int)local_24 + iVar1 + 0x10) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar1) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar1) = 0;
    puVar5 = (undefined4 *)(&stack0x00000000 + iVar1);
    *puVar5 = 0;
    puVar5[1] = 0;
    puVar5[2] = 0;
    puVar5[3] = 0;
    iVar1 = iVar1 + 0x30;
  } while (iVar1 != 0);
  *param_4 = 0;
  *param_3 = 0;
  local_24[1] = iVar1;
  local_24[2] = iVar1;
  local_24[3] = iVar1;
  piVar2 = (int *)FUN_009eb6b0();
  local_24[4] = (**(code **)(*piVar2 + 0x1c))();
  FUN_009f1990();
  local_6c[0] = *(int *)(local_2c + 4);
  local_6c[2] = 0xffffffff;
  local_6c[3] = 0xffffffff;
  if (local_28 != 0) {
    iVar1 = FUN_00c1f470(local_6c + 2);
    if (iVar1 == 0) {
      FUN_009c02c0();
      FUN_00906a20();
      FUN_0090e2c0(0,0,4,0);
    }
  }
  piVar3 = local_6c;
  piVar4 = local_24;
  for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
    *piVar4 = *piVar3;
    piVar3 = piVar3 + 1;
    piVar4 = piVar4 + 1;
  }
  do {
    do {
      iVar1 = FUN_009f1640();
      if (iVar1 == 0) {
        return (int *)0x0;
      }
      if (local_24[1] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      FUN_009f29f0(local_34,0x15);
    } while (local_44 == 0);
    local_70 = 0;
    FUN_009fc640(&local_70,(uint)local_24[4] >> 8 & local_3c);
    local_80[2] = uStack_88;
    local_80[3] = uStack_84;
    puVar5 = local_80;
    puVar6 = &local_54;
    for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
      *puVar6 = *puVar5;
      puVar5 = puVar5 + 1;
      puVar6 = puVar6 + 1;
    }
    local_54 = local_70;
    local_50 = (undefined1)local_24[4];
    while( true ) {
      FUN_009fe260();
      if (local_6c[4] == 0) break;
      uStack_8c = 0;
      FUN_009fc400(&uStack_8c);
      if (local_30 <= uStack_8c) {
        FUN_00eae9a0();
        FUN_009119e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      (**(code **)(*param_1 + 0x20))();
      piVar3 = (int *)FUN_009ec220();
      piVar4 = (int *)FUN_009eb660();
      if (piVar4 == (int *)0x0) {
        piVar4 = (int *)(**(code **)(*piVar3 + 0x24))();
        if (param_2 == 0) {
          piVar4 = (int *)FUN_00eaebca();
        }
        else if (param_2 == 1) {
          piVar4 = (int *)FUN_00eaebca();
        }
      }
      if (piVar2 == piVar4) {
        local_90 = 0;
        FUN_009fc400(&local_90);
        *param_3 = local_90;
        if (*param_3 != -1) {
          FUN_00eaed12();
          return piVar3;
        }
      }
    }
  } while( true );
}

