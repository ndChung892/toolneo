/* Address: 00955160 | Ghidra name: FUN_00955160 */

void __fastcall FUN_00955160(ushort param_1,byte param_2)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = (uint)param_1;
  if ((((0x2c < uVar2) && (uVar2 != 0x2f)) && (6 < uVar2 - 0x3a)) &&
     (((5 < uVar2 - 0x5b && (4 < uVar2 - 0x7b)) && ((param_2 & uVar2 == 0x2d) == 0)))) {
    return;
  }
  iVar1 = FUN_00eae9a0();
  *(ushort *)(iVar1 + 4) = param_1;
  FUN_00eae9a0();
  FUN_00930f10();
  FUN_009115d0(&PTR_DAT_01be310c);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

