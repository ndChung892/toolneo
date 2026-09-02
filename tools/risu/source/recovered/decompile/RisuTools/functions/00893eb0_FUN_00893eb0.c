/* Address: 00893eb0 | Ghidra name: FUN_00893eb0 */

/* WARNING: Removing unreachable block (ram,0x00894212) */
/* WARNING: Removing unreachable block (ram,0x00894183) */
/* WARNING: Removing unreachable block (ram,0x008940ee) */
/* WARNING: Removing unreachable block (ram,0x0089405b) */
/* WARNING: Removing unreachable block (ram,0x00893fd2) */
/* WARNING: Removing unreachable block (ram,0x00893f43) */
/* WARNING: Removing unreachable block (ram,0x00893f03) */
/* WARNING: Removing unreachable block (ram,0x00893f81) */
/* WARNING: Removing unreachable block (ram,0x00894012) */
/* WARNING: Removing unreachable block (ram,0x008940ae) */
/* WARNING: Removing unreachable block (ram,0x00894132) */
/* WARNING: Removing unreachable block (ram,0x008941c3) */
/* WARNING: Removing unreachable block (ram,0x00894259) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00893eb0(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  uVar1 = 0;
  uVar2 = 0;
  iVar3 = 0;
  FUN_0099d430(8);
  if (((iVar3 == 0) && (FUN_0099d6f0(uVar1,uVar2), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
    FUN_0099d6f0(uVar1,uVar2);
    FUN_00e52ce0(&PTR_DAT_01546ecc);
    if (((iVar3 == 0) && (FUN_0099d6f0(), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
      FUN_0099d6f0();
      FUN_00ddf000(*(undefined4 *)(param_1 + 0x14),*(undefined4 *)(param_1 + 0x18),
                   *(undefined4 *)(param_1 + 0x1c),*(undefined4 *)(param_1 + 0x20));
      if (((iVar3 == 0) && (FUN_0099d6f0(), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
        FUN_0099d6f0();
        FUN_00ded500(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8));
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
  }
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

