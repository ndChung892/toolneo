/* Address: 00972230 | Ghidra name: FUN_00972230 */

void __fastcall FUN_00972230(int param_1,int param_2)

{
  int iVar1;
  
  if (*(uint *)(*(int *)(DAT_01c28ef8 + 8) + 4) <= *(uint *)(param_1 + 0x18)) {
                    /* WARNING: Subroutine does not return */
    FUN_009c2bf0();
  }
  iVar1 = *(int *)(*(int *)(DAT_01c28ef8 + 8) + 8 + *(uint *)(param_1 + 0x18) * 4);
  if (*(int *)(iVar1 + 0x14) != 0) {
    if ((param_2 != 0) && (*(int *)(iVar1 + 0x14) != param_2)) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01bee148);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    return;
  }
  FUN_00eae9a0();
  FUN_009115d0(&PTR_DAT_01bee148);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

