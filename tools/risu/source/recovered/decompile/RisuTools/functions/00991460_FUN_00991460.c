/* Address: 00991460 | Ghidra name: FUN_00991460 */

undefined8 __fastcall FUN_00991460(int param_1,undefined4 param_2,uint param_3,int param_4)

{
  bool bVar1;
  
  if (*(char *)(param_1 + 0x2c) == '\0') {
                    /* WARNING: Subroutine does not return */
    FUN_00932040();
  }
  switch(param_2) {
  case 0:
    if (param_4 < 0) {
      FUN_00eae9a0();
      FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    break;
  case 1:
    bVar1 = CARRY4(*(uint *)(param_1 + 0xc),param_3);
    param_3 = *(uint *)(param_1 + 0xc) + param_3;
    param_4 = *(int *)(param_1 + 0x10) + param_4 + (uint)bVar1;
    if (param_4 < 0) {
      FUN_00eae9a0();
      FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    break;
  case 2:
    bVar1 = CARRY4(*(uint *)(param_1 + 0x24),param_3);
    param_3 = *(uint *)(param_1 + 0x24) + param_3;
    param_4 = param_4 + (uint)bVar1;
    if (param_4 < 0) {
      FUN_00eae9a0();
      FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    break;
  default:
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  *(uint *)(param_1 + 0xc) = param_3;
  *(int *)(param_1 + 0x10) = param_4;
  return CONCAT44(param_4,param_3);
}

