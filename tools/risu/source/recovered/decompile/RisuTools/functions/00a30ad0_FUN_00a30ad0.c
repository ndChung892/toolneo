/* Address: 00a30ad0 | Ghidra name: FUN_00a30ad0 */

undefined4 __fastcall FUN_00a30ad0(uint param_1,uint param_2)

{
  undefined4 uVar1;
  
  if ((param_1 & 0xffff) <= (param_2 & 0xffff)) {
    uVar1 = FUN_00eae9a0();
    FUN_00a30a40(((param_2 & 0xffff) - (param_1 & 0xffff)) + 1);
    return uVar1;
  }
  FUN_00eae9a0();
  FUN_00911790();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

