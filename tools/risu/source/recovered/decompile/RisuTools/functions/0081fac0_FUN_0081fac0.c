/* Address: 0081fac0 | Ghidra name: FUN_0081fac0 */

undefined4 FUN_0081fac0(void)

{
  int iVar1;
  int iVar2;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  
  iVar1 = DAT_01c28a84;
  if (*(int *)(DAT_01c28a84 + 0xa8) == 0) {
    FUN_00eae9a0();
    FUN_00ea47e3(unaff_ESI,unaff_EDI);
    FUN_00eae9a0();
    iVar2 = FUN_00eaec5e();
    *(undefined4 *)(iVar2 + 8) = 0;
    *(undefined ***)(iVar2 + 0x10) = &PTR_DAT_01bfe37c;
    *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01b51694;
    FUN_00eaebca();
  }
  return *(undefined4 *)(iVar1 + 0xa8);
}

