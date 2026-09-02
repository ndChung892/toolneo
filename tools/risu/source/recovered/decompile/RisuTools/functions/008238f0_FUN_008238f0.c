/* Address: 008238f0 | Ghidra name: FUN_008238f0 */

undefined4 FUN_008238f0(void)

{
  int iVar1;
  int iVar2;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  
  iVar1 = DAT_01c28a84;
  if (*(int *)(DAT_01c28a84 + 0x234) == 0) {
    FUN_00eae9a0();
    FUN_00ea52b7(unaff_ESI,unaff_EDI);
    FUN_00eae9a0();
    iVar2 = FUN_00eaec5e();
    *(undefined4 *)(iVar2 + 8) = 0;
    *(undefined ***)(iVar2 + 0x10) = &PTR_DAT_01bff3bc;
    *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01ba70b4;
    FUN_00eaebca();
  }
  return *(undefined4 *)(iVar1 + 0x234);
}

