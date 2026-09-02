/* Address: 00a6bdf0 | Ghidra name: FUN_00a6bdf0 */

int FUN_00a6bdf0(void)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_008feba0();
  if (((puVar1 != (undefined4 *)0x0) && ((undefined *)*puVar1 == &DAT_016118bc)) &&
     (0 < (int)puVar1[1])) {
    return puVar1[1];
  }
  return 10000;
}

