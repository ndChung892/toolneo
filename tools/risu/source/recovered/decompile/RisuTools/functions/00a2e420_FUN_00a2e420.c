/* Address: 00a2e420 | Ghidra name: FUN_00a2e420 */

undefined4 FUN_00a2e420(void)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_009a01e0();
  if (iVar1 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be2868);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = FUN_009a01e0();
  if (iVar1 < 0x10) {
    uVar2 = FUN_00eaea6e();
    FUN_00dbc340(iVar1 * 4 + 8,0);
    return uVar2;
  }
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 4) = 0xf;
  FUN_00eae9a0();
  FUN_00a2c420();
  FUN_009115d0(&PTR_DAT_01be2868);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

