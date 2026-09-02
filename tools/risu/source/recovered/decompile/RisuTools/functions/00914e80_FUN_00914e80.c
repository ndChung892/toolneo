/* Address: 00914e80 | Ghidra name: FUN_00914e80 */

int __fastcall FUN_00914e80(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  while (((0 < param_2 && (uVar3 = *(ushort *)(param_1 + -2 + param_2 * 2) - 9, uVar3 < 0x18)) &&
         ((0x800013U >> (uVar3 & 0x1f) & 1) != 0))) {
    param_2 = param_2 + -1;
  }
  FUN_00914f20();
  iVar1 = FUN_00eaea6e();
  if (-1 < param_2) {
    iVar2 = FUN_00914b40(iVar1 + 8,*(undefined4 *)(iVar1 + 4),param_1,param_2);
    if (iVar2 == 0) {
      FUN_00eae9a0();
      FUN_0091d220();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    return iVar1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

