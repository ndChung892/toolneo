/* Address: 008fc570 | Ghidra name: FUN_008fc570 */

void __fastcall FUN_008fc570(int param_1,uint param_2,int param_3,int param_4)

{
  *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
  if (param_2 < 2) {
    if (param_4 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00911740();
    }
    if (param_3 < -1) {
                    /* WARNING: Subroutine does not return */
      FUN_00de70c0(&PTR_DAT_01bf08b8);
    }
    if (param_2 == 0) {
      FUN_00eae9a0();
      FUN_00eaebef();
      FUN_00eaebca();
      *(int *)(param_1 + 0x10) = param_3;
    }
    else {
      FUN_00eae9a0();
      FUN_00eaebef();
      FUN_00eaebca();
      *(int *)(param_1 + 0x14) = param_3;
    }
  }
  else {
    if (param_2 != 4) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01be0b48);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
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
  *(uint *)(param_1 + 0xc) = param_2;
  return;
}

