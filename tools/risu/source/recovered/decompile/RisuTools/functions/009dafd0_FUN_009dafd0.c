/* Address: 009dafd0 | Ghidra name: FUN_009dafd0 */

void __fastcall FUN_009dafd0(int param_1)

{
  if (*(undefined ***)(param_1 + 8) != &PTR_DAT_01c15044) {
    return;
  }
  if (*(int *)(param_1 + 0xc) == -1) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

