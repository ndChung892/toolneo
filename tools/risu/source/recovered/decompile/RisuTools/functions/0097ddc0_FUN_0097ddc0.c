/* Address: 0097ddc0 | Ghidra name: FUN_0097ddc0 */

void __fastcall FUN_0097ddc0(int param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 4) = *(undefined4 *)(param_1 + 0x10);
  FUN_00eae9a0();
  uVar2 = FUN_00902fd0();
  FUN_00930f30(uVar2);
  FUN_009115d0(&PTR_DAT_01be381c);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

