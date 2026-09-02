/* Address: 0048fab0 | Ghidra name: FUN_0048fab0 */

undefined4 __fastcall FUN_0048fab0(int *param_1)

{
  FUN_00978480(0x1b);
  FUN_0092af10();
  FUN_009775b0();
  FUN_00978480(0xb);
  FUN_0092af10();
  FUN_009775b0();
  FUN_00978480(0xe);
  FUN_0040d410(param_1[4],param_1[5],param_1[6],param_1[7],param_1[8],param_1[9],param_1[10],
               param_1[0xb]);
  FUN_009775b0();
  FUN_00978480(0xc);
  if ((int *)*param_1 != (int *)0x0) {
    (**(code **)(*(int *)*param_1 + 0x14))();
    FUN_009775b0();
  }
  return 1;
}

