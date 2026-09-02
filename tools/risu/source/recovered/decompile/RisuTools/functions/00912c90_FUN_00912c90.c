/* Address: 00912c90 | Ghidra name: FUN_00912c90 */

uint __fastcall FUN_00912c90(int param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00931d20();
  }
  if (*(uint *)(param_1 + 4) <= param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_00931dc0();
  }
  uVar2 = (uint)*(ushort *)(param_1 + 8 + param_2 * 2);
  uVar1 = uVar2 - 0xd800;
  if (0x7ff < uVar1) {
    return uVar2;
  }
  if ((((int)uVar1 < 0x400) && (param_2 + 1 < *(uint *)(param_1 + 4))) &&
     (uVar2 = *(ushort *)(param_1 + 10 + param_2 * 2) - 0xdc00, uVar2 < 0x400)) {
    return uVar1 * 0x400 + 0x10000 + uVar2;
  }
  iVar3 = FUN_00eae9a0();
  *(uint *)(iVar3 + 4) = param_2;
  FUN_00eae9a0();
  FUN_00930f10();
  FUN_009115d0(&PTR_DAT_01bef660);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

