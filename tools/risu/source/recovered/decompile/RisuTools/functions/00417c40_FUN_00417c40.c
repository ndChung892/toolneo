/* Address: 00417c40 | Ghidra name: FUN_00417c40 */

/* WARNING: Removing unreachable block (ram,0x00417cd1) */
/* WARNING: Removing unreachable block (ram,0x00417cd8) */
/* WARNING: Removing unreachable block (ram,0x00417cdd) */

void __fastcall FUN_00417c40(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = FUN_00e8fc44();
  iVar1 = *(int *)(iVar1 + 8);
  if (iVar1 == 0) {
    iVar1 = FUN_00967ab0();
  }
  if (iVar1 != *(int *)(param_1 + 0x28)) {
    FUN_004191c0();
  }
  if (*(int *)(param_1 + 0x1c) == 0) {
    FUN_00eae9a0();
    FUN_0092f260();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_2 == 0) {
    FUN_00eae9a0();
    FUN_009116c0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(char *)(param_1 + 100) != '\0') {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (0 < *(int *)(param_1 + 0x58)) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00cbcb60();
  FUN_00416a30(8);
  FUN_00419360(0);
  FUN_00cbcb30();
  if (*(int *)(*(int *)(param_1 + 0x40) + 8) == 0) {
    if (*(char *)(param_1 + 99) == '\0') {
      *(undefined1 *)(param_1 + 0x62) = 0;
    }
    else {
      FUN_00418040();
    }
  }
  return;
}

