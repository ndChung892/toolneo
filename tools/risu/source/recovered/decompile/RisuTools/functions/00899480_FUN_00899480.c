/* Address: 00899480 | Ghidra name: FUN_00899480 */

void __fastcall FUN_00899480(int param_1,int param_2)

{
  int iVar1;
  
  if (param_2 != 0) {
    iVar1 = FUN_00de1fa0(*(undefined4 *)(param_2 + 4),0,10);
    if (-1 < iVar1) {
      FUN_00eae9a0();
      FUN_0091d220();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  if (*(char *)(param_1 + 0x20) == '\0') {
    FUN_00eaec39();
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00931fb0();
}

