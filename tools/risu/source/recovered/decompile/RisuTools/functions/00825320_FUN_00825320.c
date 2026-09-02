/* Address: 00825320 | Ghidra name: FUN_00825320 */

undefined4 FUN_00825320(void)

{
  int iVar1;
  int iVar2;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  
  iVar1 = DAT_01c28a84;
  if (*(int *)(DAT_01c28a84 + 0x2d0) == 0) {
    FUN_00eae9a0();
    FUN_00ea5787(unaff_ESI,unaff_EDI);
    FUN_00eae9a0();
    iVar2 = FUN_00eaec5e();
    *(undefined4 *)(iVar2 + 8) = 0;
    *(undefined ***)(iVar2 + 0x10) = &PTR_DAT_01bff2bc;
    *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01b9012c;
    FUN_00eaebca();
  }
  return *(undefined4 *)(iVar1 + 0x2d0);
}

