/* Address: 00dc3a00 | Ghidra name: FUN_00dc3a00 */

int __fastcall FUN_00dc3a00(uint param_1,int param_2,int param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  short sVar3;
  short sVar4;
  uint uVar5;
  int iVar6;
  
  if (param_1 < param_4) {
    sVar3 = *(short *)(param_3 + param_1 * 2);
    uVar1 = param_1 + 1;
    while( true ) {
      if ((int)param_4 <= (int)uVar1) {
        iVar6 = FUN_00eae9a0();
        *(short *)(iVar6 + 4) = sVar3;
        FUN_00eae9a0();
        FUN_00930f10();
        FUN_0091d220();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      uVar2 = uVar1 + 1;
      if (param_4 <= uVar1) break;
      sVar4 = *(short *)(param_3 + uVar1 * 2);
      if (sVar4 == sVar3) {
        return uVar2 - param_1;
      }
      if (sVar4 == 0x5c) {
        if ((int)param_4 <= (int)uVar2) {
          FUN_00eae9a0();
          FUN_0091d220();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
        uVar1 = uVar1 + 2;
        if (param_4 <= uVar2) break;
        uVar5 = *(uint *)(param_2 + 4);
        if (uVar5 < *(uint *)(param_2 + 0xc)) {
          *(undefined2 *)(*(int *)(param_2 + 8) + uVar5 * 2) = *(undefined2 *)(param_3 + uVar2 * 2);
          *(uint *)(param_2 + 4) = uVar5 + 1;
        }
        else {
          FUN_00b860f0();
        }
      }
      else {
        uVar5 = *(uint *)(param_2 + 4);
        uVar1 = uVar2;
        if (uVar5 < *(uint *)(param_2 + 0xc)) {
          *(short *)(*(int *)(param_2 + 8) + uVar5 * 2) = sVar4;
          *(uint *)(param_2 + 4) = uVar5 + 1;
        }
        else {
          FUN_00b860f0();
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

