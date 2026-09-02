/* Address: 00824670 | Ghidra name: FUN_00824670 */

undefined4 FUN_00824670(void)

{
  int iVar1;
  int iVar2;
  undefined4 unaff_EBX;
  undefined4 unaff_ESI;
  undefined4 unaff_EDI;
  
  iVar1 = DAT_01c28a84;
  if (*(int *)(DAT_01c28a84 + 0x284) == 0) {
    FUN_00eae9a0();
    FUN_00ea551f(unaff_EBX,unaff_ESI);
    FUN_00eae9a0();
    FUN_00ea553b(unaff_EDI);
    FUN_00eae9a0();
    FUN_00eaec5e();
    iVar2 = FUN_00eaec14();
    *(undefined ***)(iVar2 + 0x10) = &PTR_DAT_01bfe42c;
    *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01b900e0;
    FUN_00eaebca();
  }
  return *(undefined4 *)(iVar1 + 0x284);
}

