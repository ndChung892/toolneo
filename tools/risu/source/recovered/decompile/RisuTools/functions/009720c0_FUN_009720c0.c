/* Address: 009720c0 | Ghidra name: FUN_009720c0 */

undefined4 __fastcall FUN_009720c0(undefined4 param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740(0,param_1);
  }
  uVar2 = FUN_00cc81e0(param_2,param_1,0,0);
  uVar3 = FUN_009724a0();
  uVar1 = *(uint *)(*(int *)(param_2 + 8) + 0x18);
  if (uVar1 < *(uint *)(*(int *)(DAT_01c28ef8 + 8) + 4)) {
    if (*(int *)(*(int *)(*(int *)(DAT_01c28ef8 + 8) + 8 + uVar1 * 4) + 0x14) == 0) {
      FUN_00eaebca();
      FUN_009c3320();
      return *(undefined4 *)(param_2 + 8);
    }
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01bee908);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0(param_2,param_1,uVar3,uVar2);
}

