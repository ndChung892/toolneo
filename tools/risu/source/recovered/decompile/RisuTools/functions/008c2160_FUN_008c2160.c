/* Address: 008c2160 | Ghidra name: FUN_008c2160 */

void __fastcall FUN_008c2160(char param_1,char param_2)

{
  int iVar1;
  
  if (param_1 == param_2) {
    return;
  }
  iVar1 = FUN_00eae9a0();
  *(char *)(iVar1 + 4) = param_1;
  iVar1 = FUN_00eae9a0();
  *(char *)(iVar1 + 4) = param_2;
  FUN_00eae9a0();
  FUN_00890cc0(iVar1);
  FUN_0098cdc0();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

