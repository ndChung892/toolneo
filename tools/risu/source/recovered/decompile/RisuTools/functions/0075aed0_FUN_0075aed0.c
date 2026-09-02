/* Address: 0075aed0 | Ghidra name: FUN_0075aed0 */

void __fastcall FUN_0075aed0(int param_1)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 unaff_EBX;
  undefined4 uVar4;
  
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00cbc0b0(0,3,&PTR_DAT_01b39360);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00cbc0b0(0,3,&PTR_DAT_01b39360);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00b6c7b0(0,3,0);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00b6c7b0(0,3,0);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00cbc0b0(0,3,&PTR_DAT_01b39360);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00cbc0b0(0,3,&PTR_DAT_01b39360);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00cbc0b0(0,3,&PTR_DAT_01b39360);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00cbc0b0(0,3,&PTR_DAT_01b39360);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00cbc0b0(0,3,&PTR_DAT_01b39360);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00b6c7b0(0,3,0);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00b6c7b0(0,3,0);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_007147f0();
  FUN_00bb48a0(0,3,0x32);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_00779dd0();
  FUN_00eaec5e();
  FUN_00eae9a0();
  if (PTR_FUN_01c22380 != (undefined *)0x0) {
    FUN_00e8eeea();
  }
  uVar4 = *(undefined4 *)(DAT_01c2914c + 4);
  pcVar1 = (code *)FUN_00998940();
  if (((uint)pcVar1 & 2) == 0) {
    uVar2 = (*pcVar1)();
  }
  else {
    uVar2 = (**(code **)(pcVar1 + -2))();
  }
  uVar3 = FUN_007147f0(uVar2,uVar4);
  FUN_00cbbf10(1,uVar3);
  FUN_00eaec5e();
  FUN_00eae9a0();
  uVar3 = *(undefined4 *)(param_1 + 0x38);
  FUN_00e9814b(uVar2);
  FUN_00e53c30(&PTR_DAT_01548afc);
  FUN_00eae9a0(uVar4,uVar3);
  pcVar1 = (code *)FUN_00998940();
  if (((uint)pcVar1 & 2) == 0) {
    (*pcVar1)();
  }
  else {
    (**(code **)(pcVar1 + -2))();
  }
  uVar2 = FUN_007147f0();
  FUN_00cbbf10(1,uVar2);
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_00e9815c(uVar4);
  FUN_00e53c30(&PTR_DAT_01548afc);
  FUN_0075b260();
  FUN_00eae9a0();
  FUN_00e9816d(uVar3);
  FUN_00db1da0();
  FUN_00eae9a0();
  FUN_00e9817e(unaff_EBX);
  FUN_00de7e60();
  return;
}

