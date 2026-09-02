/* Address: 009028f0 | Ghidra name: FUN_009028f0 */

void FUN_009028f0(uint param_1,int param_2)

{
  FUN_00ded360(param_1,param_2);
  if (((int)(uint)(param_1 < 0x7fffffff) <= param_2) &&
     ((int)(uint)(param_1 < 0x80000000) <= param_2)) {
                    /* WARNING: Subroutine does not return */
    FUN_00ded240(0x7fffffff,0,param_1,param_2);
  }
  FUN_00902580();
  FUN_00902600(param_1,param_2);
  return;
}

