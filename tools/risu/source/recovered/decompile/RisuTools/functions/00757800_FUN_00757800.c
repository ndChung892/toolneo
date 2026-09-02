/* Address: 00757800 | Ghidra name: FUN_00757800 */

undefined4 __fastcall FUN_00757800(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00eaeae1();
  *(undefined ***)(iVar1 + 8) = &PTR_DAT_01c15fb8;
  uVar2 = FUN_00eae9a0();
  FUN_00cbc8b0(&PTR_DAT_01be2274,iVar1);
  if (param_1 != 0) {
    iVar1 = (*(code *)PTR_FUN_01c35808)();
    if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      FUN_0099ac20();
    }
  }
  return uVar2;
}

