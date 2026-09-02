/* Address: 008a8e60 | Ghidra name: FUN_008a8e60 */

void __thiscall FUN_008a8e60(uint param_1,undefined4 param_2,uint param_3)

{
  undefined4 uVar1;
  
  if (PTR_LAB_01c22128 != (undefined *)0x0) {
    FUN_00e8eb21();
  }
  if (param_3 < param_1) {
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  FUN_0097da60(param_2,param_1);
  uVar1 = FUN_00890ca0();
  FUN_00eae9a0();
  FUN_00898ed0(0,0,0,uVar1);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

