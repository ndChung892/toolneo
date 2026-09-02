/* Address: 007167a0 | Ghidra name: FUN_007167a0 */

undefined4 __fastcall FUN_007167a0(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00eaeae1();
  *(undefined ***)(iVar1 + 8) = &PTR_DAT_01c15fc4;
  uVar2 = FUN_00eae9a0();
  FUN_00cbc8b0(&PTR_DAT_01be21dc,iVar1);
  if (param_1 != 0) {
    iVar1 = (*(code *)PTR_FUN_01c35800)();
    if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      FUN_0099ac20();
    }
  }
  return uVar2;
}

