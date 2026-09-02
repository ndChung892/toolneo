/* Address: 0097bc00 | Ghidra name: FUN_0097bc00 */

void __fastcall FUN_0097bc00(undefined4 param_1,ushort param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00eae9a0();
  *(uint *)(iVar1 + 4) = (uint)param_2;
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 4) = param_3;
  uVar2 = FUN_00eae9a0();
  FUN_00930f30(iVar1);
  FUN_0097bdc0(param_3,param_2);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb(uVar2);
}

