/* Address: 00714540 | Ghidra name: FUN_00714540 */

void __fastcall FUN_00714540(int param_1,undefined4 param_2,int param_3)

{
  uint *puVar1;
  int iVar2;
  
  switch(param_2) {
  case 2:
    FUN_00eae9a0();
    FUN_0098cde0(2);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  case 5:
    if (param_3 == 0) {
      iVar2 = FUN_00eae9a0();
      *(undefined4 *)(iVar2 + 0x24) = 0x80131500;
      *(undefined ***)(iVar2 + 4) = &PTR_DAT_01b51008;
      *(undefined4 *)(iVar2 + 0x24) = 0x80070005;
    }
    else {
      iVar2 = FUN_00eae9a0();
      FUN_00713480();
      *(undefined4 *)(iVar2 + 0x24) = 0x80131500;
      FUN_00eaebca();
      *(undefined4 *)(iVar2 + 0x24) = 0x80070005;
    }
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  case 6:
    if ((*(byte *)(param_1 + 0xc) & 8) == 0) {
      puVar1 = (uint *)(*(int *)(param_1 + 4) + 8);
      LOCK();
      *puVar1 = *puVar1 | 1;
      UNLOCK();
      FUN_009024f0();
      *(undefined4 *)(param_1 + 4) = 0;
    }
  }
  FUN_00eae9a0();
  FUN_00712e50();
  FUN_0098cde0(param_2);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

