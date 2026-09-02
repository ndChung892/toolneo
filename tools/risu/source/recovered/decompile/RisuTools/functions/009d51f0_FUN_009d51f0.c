/* Address: 009d51f0 | Ghidra name: FUN_009d51f0 */

void __fastcall FUN_009d51f0(int param_1)

{
  undefined **ppuVar1;
  
  ppuVar1 = &PTR_DAT_01b93e0c;
  if (-1 < param_1) {
    ppuVar1 = &PTR_DAT_01bcc2f0;
  }
  FUN_00eae9a0();
  FUN_009117c0(ppuVar1);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

