/* Address: 008935c0 | Ghidra name: FUN_008935c0 */

/* WARNING: Removing unreachable block (ram,0x00893850) */
/* WARNING: Removing unreachable block (ram,0x008937c1) */
/* WARNING: Removing unreachable block (ram,0x00893722) */
/* WARNING: Removing unreachable block (ram,0x00893691) */
/* WARNING: Removing unreachable block (ram,0x00893613) */
/* WARNING: Removing unreachable block (ram,0x00893653) */
/* WARNING: Removing unreachable block (ram,0x008936e2) */
/* WARNING: Removing unreachable block (ram,0x00893770) */
/* WARNING: Removing unreachable block (ram,0x00893801) */
/* WARNING: Removing unreachable block (ram,0x00893897) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_008935c0(void)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  uVar1 = 0;
  uVar2 = 0;
  iVar3 = 0;
  FUN_0099d430(6);
  if (((iVar3 == 0) && (FUN_0099d6f0(uVar1,uVar2), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
    FUN_0099d6f0(uVar1,uVar2);
    FUN_00e52ce0(&PTR_DAT_01546ecc);
    if (((iVar3 == 0) && (FUN_0099d6f0(), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
      FUN_0099d6f0();
      FUN_00e52ce0(&PTR_DAT_01546e98);
      if (((iVar3 == 0) && (FUN_0099d6f0(), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
        FUN_0099d6f0();
        FUN_00dfc8a0();
        if (iVar3 == 0) {
          FUN_0099d6f0();
          FUN_0099d560(uVar1,uVar2,iVar3);
          return;
        }
      }
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

