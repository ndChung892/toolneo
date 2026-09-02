/* Address: 008a6670 | Ghidra name: FUN_008a6670 */

void __fastcall FUN_008a6670(int param_1,int param_2)

{
  int iVar1;
  int iVar2;
  char *pcVar3;
  undefined4 uVar4;
  undefined **ppuVar5;
  bool bVar6;
  
  iVar1 = *(int *)(*(int *)(param_2 + 4) + 8);
  if (iVar1 == 0) {
    iVar1 = FUN_00898a00();
  }
  if (iVar1 == 0) {
    iVar2 = 0;
    uVar4 = 0;
  }
  else {
    iVar2 = iVar1 + 8;
    uVar4 = *(undefined4 *)(iVar1 + 4);
  }
  FUN_008a6c30(iVar2,uVar4);
  if (*(char *)(*(int *)(param_2 + 4) + 0x1d) == '\0') {
    if (*(char *)(*(int *)(param_1 + 0x14) + 0x78) == '\x02') {
      FUN_008a6c30("http://",7);
      FUN_008a8d70();
    }
    FUN_00a007b0();
    FUN_008a6ca0();
  }
  else {
    if (*(int *)(param_2 + 0xc) == 0) {
LAB_008a684a:
      iVar1 = FUN_00eae9a0();
      FUN_0090da50();
      *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b557d0;
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    FUN_00899050();
    iVar1 = FUN_008d3150();
    if (iVar1 == 0) goto LAB_008a684a;
    FUN_008a6ca0();
  }
  if (*(int *)(*(int *)(param_2 + 0x10) + 8) == 0) {
    bVar6 = *(int *)(*(int *)(param_2 + 0x10) + 4) == 1;
  }
  else {
    bVar6 = false;
  }
  if (bVar6) {
    pcVar3 = " HTTP/1.0\r\n";
  }
  else {
    pcVar3 = " HTTP/1.1\r\n";
  }
  FUN_008a6c30(pcVar3,0xb);
  if (*(int *)(param_2 + 0xc) != 0) {
    FUN_00899050();
    iVar1 = FUN_008d3150();
    if (iVar1 != 0) goto LAB_008a67be;
  }
  iVar1 = *(int *)(*(int *)(param_1 + 0x14) + 0x34);
  if (iVar1 == 0) {
    if (PTR_FUN_01c21e24 != (undefined *)0x0) {
      FUN_00e8e648();
    }
    iVar1 = *(int *)(*(int *)(DAT_01c28d58 + 0xa8) + 0x10);
    if (iVar1 == 0) {
      iVar2 = 0;
      uVar4 = 0;
    }
    else {
      iVar2 = iVar1 + 8;
      uVar4 = *(undefined4 *)(iVar1 + 4);
    }
    FUN_008a6c30(iVar2,uVar4);
    FUN_008a8d70();
    FUN_008a6bc0();
  }
  else {
    FUN_008a6c30(iVar1 + 8,*(undefined4 *)(iVar1 + 4));
  }
LAB_008a67be:
  ppuVar5 = (undefined **)0x0;
  if (*(char *)(*(int *)(*(int *)(*(int *)(param_1 + 0x14) + 4) + 0x10) + 100) != '\0') {
    ppuVar5 = (undefined **)FUN_008e0750();
    if ((ppuVar5 == &PTR_DAT_01b39360) ||
       ((ppuVar5 != (undefined **)0x0 && (ppuVar5[1] == (undefined *)0x0)))) {
      ppuVar5 = (undefined **)0x0;
    }
  }
  if (ppuVar5 != (undefined **)0x0 || *(int *)(param_2 + 0xc) != 0) {
    FUN_00899050();
    FUN_008a6880(ppuVar5);
  }
  if (*(int *)(param_2 + 0x14) == 0) {
    if (*(char *)(*(int *)(param_2 + 4) + 0x1c) != '\0') {
      FUN_008a6c30("Content-Length: 0\r\n",0x13);
    }
  }
  else {
    FUN_00896780();
    FUN_008a6880(0);
  }
  FUN_008a6bc0();
  return;
}

