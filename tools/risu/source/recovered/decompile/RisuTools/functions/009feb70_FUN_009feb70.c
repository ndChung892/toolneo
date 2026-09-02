/* Address: 009feb70 | Ghidra name: FUN_009feb70 */

int __fastcall FUN_009feb70(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar1 = FUN_00df4fc0();
  if (iVar1 != 0) {
    if (PTR_FUN_01c22014 != (undefined *)0x0) {
      FUN_00e8ea44();
    }
    iVar1 = FUN_0095ba10();
    return iVar1;
  }
  if (param_1 == 0) {
    iVar1 = 0;
    uVar3 = 0;
  }
  else {
    iVar1 = param_1 + 8;
    uVar3 = *(undefined4 *)(param_1 + 4);
  }
  FUN_00a09e20(iVar1,uVar3);
  if (PTR_FUN_01c22364 != (undefined *)0x0) {
    FUN_00e8ee73();
  }
  iVar1 = DAT_01c29124;
  iVar2 = FUN_009542e0(0);
  if (iVar2 == 0) {
    iVar4 = 0;
    uVar3 = 0;
  }
  else {
    iVar4 = iVar2 + 8;
    uVar3 = *(undefined4 *)(iVar2 + 4);
  }
  if (*(int **)(iVar1 + 4) != (int *)0x0) {
    iVar1 = (**(code **)(**(int **)(iVar1 + 4) + 0x30))(iVar4,uVar3);
    if (iVar1 != 0) {
      FUN_00eae9a0();
      FUN_0091d220();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    return iVar2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931d20();
}

