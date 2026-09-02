/* Address: 00895240 | Ghidra name: FUN_00895240 */

void FUN_00895240(void)

{
  float10 fVar1;
  
  if (PTR_FUN_01c21d64 != (undefined *)0x0) {
    FUN_00e8cb10();
  }
  DAT_01c21d68 = FUN_0089a4a0(1);
  DAT_01c21d69 = FUN_0089a4a0(1);
  DAT_01c21d6a = FUN_0089a4a0(0);
  DAT_01c21d6c = FUN_008951b0();
  fVar1 = (float10)FUN_008951d0();
  DAT_01c21d70 = (double)fVar1;
  DAT_01c21d78 = FUN_0089a5c0(5000);
  DAT_01c21d7c = FUN_00895220();
  return;
}

