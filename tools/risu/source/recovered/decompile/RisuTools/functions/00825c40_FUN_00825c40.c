/* Address: 00825c40 | Ghidra name: FUN_00825c40 */

undefined4 FUN_00825c40(void)

{
  int iVar1;
  int iVar2;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  
  iVar1 = DAT_01c28a84;
  if (*(int *)(DAT_01c28a84 + 0x308) == 0) {
    FUN_00eae9a0();
    FUN_00ea592b(unaff_ESI,unaff_EDI);
    FUN_00eae9a0();
    iVar2 = FUN_00eaec5e();
    *(undefined4 *)(iVar2 + 8) = 0;
    *(undefined ***)(iVar2 + 0x10) = &PTR_DAT_01bff1ac;
    *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01b902d0;
    FUN_00eaebca();
  }
  return *(undefined4 *)(iVar1 + 0x308);
}

