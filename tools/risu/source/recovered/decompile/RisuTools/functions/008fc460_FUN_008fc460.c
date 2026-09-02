/* Address: 008fc460 | Ghidra name: FUN_008fc460 */

void __fastcall FUN_008fc460(int param_1,undefined4 param_2,int param_3,int param_4)

{
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
  switch(param_2) {
  case 0:
    FUN_00eae9a0();
    FUN_00eaec14();
    FUN_00eaebca();
    *(int *)(param_1 + 0x10) = param_3;
    break;
  case 1:
    FUN_00eae9a0();
    FUN_00eaec14();
    FUN_00eaebca();
    *(int *)(param_1 + 0x14) = param_3;
    break;
  default:
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be0b48);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  case 4:
    if (param_4 != 0) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01be0b48);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (param_3 != -1) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01be0b48);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  *(undefined4 *)(param_1 + 0xc) = param_2;
  return;
}

