/* Address: 009ea160 | Ghidra name: FUN_009ea160 */

void FUN_009ea160(void)

{
  int iVar1;
  undefined4 uVar2;
  int extraout_ECX;
  uint uVar3;
  int *piVar4;
  int *piVar5;
  uint local_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  int aiStack_48 [14];
  
  local_54 = 0;
  uStack_50 = 0;
  uStack_4c = 0;
  aiStack_48[0] = 0;
  aiStack_48[1] = 0;
  aiStack_48[2] = 0;
  aiStack_48[3] = 0;
  aiStack_48[4] = 0;
  aiStack_48[5] = 0;
  aiStack_48[6] = 0;
  aiStack_48[7] = 0;
  aiStack_48[8] = 0;
  aiStack_48[9] = 0;
  aiStack_48[10] = 0;
  aiStack_48[0xb] = 0;
  aiStack_48[0xc] = 0;
  aiStack_48[0xd] = 0;
  FUN_009f1990();
  aiStack_48[2] = *(undefined4 *)(aiStack_48[6] + 4);
  aiStack_48[4] = 0xffffffff;
  aiStack_48[5] = 0xffffffff;
  if ((aiStack_48[7] != 0) && (iVar1 = FUN_00c1f470(aiStack_48 + 4), iVar1 == 0)) {
    FUN_009c02c0();
    FUN_00906a20();
    FUN_0090e2c0(0,0,4,0);
  }
  piVar4 = aiStack_48 + 2;
  piVar5 = aiStack_48 + 8;
  for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
    *piVar5 = *piVar4;
    piVar4 = piVar4 + 1;
    piVar5 = piVar5 + 1;
  }
  do {
    do {
      iVar1 = FUN_009f1640();
      if (iVar1 == 0) {
        if ((aiStack_48[0xc] != 0) && (aiStack_48[0xd] != *(uint *)(aiStack_48[0xc] + 4))) {
          FUN_00e3f230(&PTR_DAT_0155c4ac);
        }
        FUN_00eaebca();
        return;
      }
      if (aiStack_48[9] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      uStack_50 = *(undefined4 *)(*(int *)(*(int *)(aiStack_48[9] + 8) + 4) + 4);
      uStack_4c = 0;
      aiStack_48[0] = 0;
      aiStack_48[1] = 0;
      uStack_4c = FUN_009bf400(aiStack_48);
      aiStack_48[1] = 0;
      iVar1 = aiStack_48[0];
    } while (aiStack_48[0] == 0);
    do {
      iVar1 = iVar1 + -1;
      FUN_009bf400(&local_54);
      uVar3 = local_54 & 0x1ffffff;
      uVar2 = FUN_009acfc0();
      if ((aiStack_48[0xc] == 0) || (aiStack_48[0xd] == *(uint *)(aiStack_48[0xc] + 4))) {
        FUN_00e3f230(&PTR_DAT_0155c4ac);
      }
      if (*(uint *)(aiStack_48[0xc] + 4) <= (uint)aiStack_48[0xd]) {
        aiStack_48[0xd] = aiStack_48[0xd] + 1U;
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0(uVar2);
      }
      aiStack_48[0xd] = aiStack_48[0xd] + 1U;
      FUN_00eaebca();
      FUN_00eaec39();
      *(uint *)(extraout_ECX + 8) = uVar3 | 0x70000000;
    } while (iVar1 != 0);
  } while( true );
}

