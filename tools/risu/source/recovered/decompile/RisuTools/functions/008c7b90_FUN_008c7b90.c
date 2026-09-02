/* Address: 008c7b90 | Ghidra name: FUN_008c7b90 */

void __fastcall FUN_008c7b90(int param_1)

{
  int iVar1;
  
  if (*(char *)(param_1 + 0x34) == '\0') {
    return;
  }
  iVar1 = FUN_00eae9a0();
  FUN_0090da50();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b6e584;
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

