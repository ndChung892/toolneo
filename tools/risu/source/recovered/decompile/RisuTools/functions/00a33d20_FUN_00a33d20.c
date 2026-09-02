/* Address: 00a33d20 | Ghidra name: FUN_00a33d20 */

void __fastcall FUN_00a33d20(undefined1 param_1,undefined1 param_2)

{
  int iVar1;
  
  iVar1 = FUN_00eae9a0();
  *(undefined1 *)(iVar1 + 4) = param_1;
  iVar1 = FUN_00eae9a0();
  *(undefined1 *)(iVar1 + 4) = param_2;
  FUN_00a32210(iVar1);
  FUN_00a33c20();
  return;
}

