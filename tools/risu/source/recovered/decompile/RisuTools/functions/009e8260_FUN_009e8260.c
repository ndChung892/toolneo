/* Address: 009e8260 | Ghidra name: FUN_009e8260 */

undefined4 __fastcall FUN_009e8260(int param_1,undefined1 *param_2)

{
  int iVar1;
  undefined4 uVar2;
  uint *puVar3;
  uint *puVar4;
  uint uVar5;
  undefined4 local_64;
  uint auStack_60 [19];
  int local_14;
  
  local_64 = 0;
  auStack_60[0] = 0;
  auStack_60[1] = 0;
  auStack_60[2] = 0;
  auStack_60[3] = 0;
  auStack_60[4] = 0;
  auStack_60[5] = 0;
  auStack_60[6] = 0;
  auStack_60[7] = 0;
  auStack_60[8] = 0;
  auStack_60[9] = 0;
  auStack_60[10] = 0;
  auStack_60[0xb] = 0;
  auStack_60[0xc] = 0;
  auStack_60[0xd] = 0;
  auStack_60[0xe] = 0;
  auStack_60[0xf] = 0;
  auStack_60[0x10] = 0;
  auStack_60[0x11] = 0;
  local_14 = FUN_00eafb60();
  auStack_60[0x12] = param_1 - local_14;
  FUN_009f1990();
  auStack_60[0] = *(uint *)(auStack_60[9] + 4);
  auStack_60[2] = 0xffffffff;
  auStack_60[3] = 0xffffffff;
  uVar5 = auStack_60[10];
  if ((auStack_60[10] != 0) && (iVar1 = FUN_00c1f470(auStack_60 + 2), iVar1 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  puVar3 = auStack_60;
  puVar4 = auStack_60 + 0xb;
  for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar4 = *puVar3;
    puVar3 = puVar3 + 1;
    puVar4 = puVar4 + 1;
  }
  iVar1 = FUN_009f1640(param_2,uVar5);
  do {
    if (iVar1 == 0) {
      *param_2 = 0;
      iVar1 = FUN_009e4e30(auStack_60 + 0xf,auStack_60 + 0x10);
      if (iVar1 == 0) {
        return 0;
      }
      uVar2 = FUN_009e8640(auStack_60[0xf]);
      return uVar2;
    }
    if (auStack_60[0xc] == 0) {
      FUN_0090e2c0(0,0,4,0);
    }
    if (**(int **)(auStack_60[0xc] + 4) == local_14) {
      iVar1 = FUN_00be3940(&local_64);
      if (iVar1 == 0) {
        FUN_00be3f60();
      }
      local_64 = 0;
      iVar1 = FUN_009e9a40(auStack_60 + 4);
      if (iVar1 != 0) {
        *param_2 = (auStack_60[4] & 2) != 0;
        if ((auStack_60[5] & 0x1ffffff) == 0) {
          return 0;
        }
        uVar2 = FUN_009e8420(auStack_60[8],auStack_60[7],auStack_60[6]);
        return uVar2;
      }
    }
    iVar1 = FUN_009f1640();
  } while( true );
}

