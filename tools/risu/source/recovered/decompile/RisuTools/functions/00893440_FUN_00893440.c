/* Address: 00893440 | Ghidra name: FUN_00893440 */

/* WARNING: Removing unreachable block (ram,0x0089351f) */
/* WARNING: Removing unreachable block (ram,0x00893492) */
/* WARNING: Removing unreachable block (ram,0x008934d2) */
/* WARNING: Removing unreachable block (ram,0x0089356b) */

void FUN_00893440(void)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  uVar1 = 0;
  uVar2 = 0;
  iVar3 = 0;
  FUN_0099d430(2);
  if (((iVar3 == 0) && (FUN_0099d6f0(uVar1,uVar2), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
    FUN_0099d6f0(uVar1,uVar2);
    FUN_00e52ce0(&PTR_DAT_01546e98);
    if (iVar3 == 0) {
      FUN_0099d6f0();
      FUN_0099d560(uVar1,uVar2,iVar3);
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

