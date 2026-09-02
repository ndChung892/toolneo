/* Address: 00a29b50 | Ghidra name: FUN_00a29b50 */

undefined4 __fastcall FUN_00a29b50(int param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  
  if ((int)param_2 < 0) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  uVar1 = *(uint *)(*(int *)(param_1 + 4) + 8);
  if ((int)uVar1 <= (int)param_2) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01b7d1e4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (uVar1 <= param_2) {
                    /* WARNING: Subroutine does not return */
    FUN_009319a0();
  }
  iVar2 = *(int *)(*(int *)(param_1 + 4) + 4);
  if (param_2 < *(uint *)(iVar2 + 4)) {
    return *(undefined4 *)(iVar2 + 8 + param_2 * 4);
  }
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

