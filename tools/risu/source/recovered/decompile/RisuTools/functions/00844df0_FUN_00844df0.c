/* Address: 00844df0 | Ghidra name: FUN_00844df0 */

undefined4 __fastcall
FUN_00844df0(undefined4 param_1,int param_2,int param_3,int param_4,int param_5,int param_6)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740(param_1);
  }
  if (param_4 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740(param_1);
  }
  if (param_6 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if (param_5 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  iVar1 = *(int *)(param_2 + 4);
  if (iVar1 - param_6 < param_5) {
    FUN_00eae9a0(param_1,iVar1,0,0);
    FUN_009117c0(&PTR_DAT_01b7cf18);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((param_3 < 0) || (iVar2 = *(int *)(param_4 + 4), iVar2 < param_3)) {
    FUN_00eae9a0(param_1,iVar1,0,0);
    FUN_009117c0(&PTR_DAT_01b7d110);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_5 == 0) {
    return 0;
  }
  if (iVar2 != 0) {
    uVar3 = FUN_00845210(iVar2 - param_3,param_4 + 8 + param_3 * 2,param_5);
    return uVar3;
  }
  FUN_00eae9a0(param_1,iVar1,0,0);
  FUN_00911790();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

