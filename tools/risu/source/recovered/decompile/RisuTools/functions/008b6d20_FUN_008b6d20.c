/* Address: 008b6d20 | Ghidra name: FUN_008b6d20 */

void __fastcall FUN_008b6d20(int param_1)

{
  code *pcVar1;
  
  if (*(int *)(param_1 + 0x1c) != 0) {
    if (*(char *)(param_1 + 0x38) != '\0') {
                    /* WARNING: Subroutine does not return */
      FUN_008b5860();
    }
    FUN_008b5900();
    pcVar1 = (code *)swi(3);
    (*pcVar1)();
    return;
  }
  if (*(char *)(param_1 + 0x36) != '\x06') {
    return;
  }
  FUN_008b5900();
  pcVar1 = (code *)swi(3);
  (*pcVar1)();
  return;
}

