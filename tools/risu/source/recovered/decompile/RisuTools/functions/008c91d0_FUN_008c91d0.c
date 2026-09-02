/* Address: 008c91d0 | Ghidra name: FUN_008c91d0 */

void FUN_008c91d0(undefined4 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  
  FUN_00898400();
  FUN_00eaec5e();
  FUN_00eaec5e();
  if (param_3 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = FUN_0084ceb0(0,0);
  }
  if ((iVar1 == 0) && (PTR_FUN_01c21e20 != (undefined *)0x0)) {
    FUN_00e8e637();
  }
  FUN_00eaeca8();
  FUN_00decc30(0,&PTR_DAT_01b94ef8,&PTR_DAT_01bf4c34);
  FUN_00eaebca();
  if (PTR_FUN_01c21d48 != (undefined *)0x0) {
    FUN_00e8e549();
  }
  FUN_00ddc620(*(undefined4 *)(DAT_01c28c90 + 4),0,&PTR_DAT_01b6c434,&PTR_DAT_01bef660);
  FUN_00eaebca();
  return;
}

