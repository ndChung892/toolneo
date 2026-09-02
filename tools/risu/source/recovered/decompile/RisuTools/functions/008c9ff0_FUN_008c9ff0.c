/* Address: 008c9ff0 | Ghidra name: FUN_008c9ff0 */

void FUN_008c9ff0(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  undefined4 extraout_var;
  undefined4 uVar6;
  
  FUN_00decc30(0,&PTR_DAT_01b94e40,&PTR_DAT_01bf4bec);
  FUN_00eaebca();
  uVar6 = extraout_var;
  uVar1 = FUN_00eae9a0();
  FUN_00ddc610();
  iVar2 = FUN_00eaea6e();
  puVar4 = &DAT_01583a48;
  puVar5 = (undefined1 *)(iVar2 + 8);
  for (iVar3 = 0x70; iVar3 != 0; iVar3 = iVar3 + -1) {
    *puVar5 = *puVar4;
    puVar4 = puVar4 + 1;
    puVar5 = puVar5 + 1;
  }
  FUN_00eae9a0(iVar2,uVar1,uVar6);
  FUN_00eaec39();
  FUN_00ba0c00();
  FUN_00ddc620(uVar1,0,&PTR_DAT_01bbc244,&PTR_DAT_01bef660);
  FUN_00eaebca();
  if (PTR_FUN_01c21d48 != (undefined *)0x0) {
    FUN_00e8e549();
  }
  FUN_00ddc620(*(undefined4 *)(DAT_01c28c90 + 4),0,&PTR_DAT_01bba090,&PTR_DAT_01bef660);
  FUN_00eaebca();
  return;
}

