/* Address: 007ff570 | Ghidra name: FUN_007ff570 */

undefined4 FUN_007ff570(void)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00909ad0();
  if (iVar1 == 0) {
    iVar1 = FUN_00909ad0();
    if (iVar1 == 0) {
      uVar2 = FUN_00909ad0();
      return uVar2;
    }
  }
  return 1;
}

