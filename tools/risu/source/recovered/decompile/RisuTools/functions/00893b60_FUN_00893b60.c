/* Address: 00893b60 | Ghidra name: FUN_00893b60 */

/* WARNING: Removing unreachable block (ram,0x00893df2) */
/* WARNING: Removing unreachable block (ram,0x00893d6e) */
/* WARNING: Removing unreachable block (ram,0x00893cd2) */
/* WARNING: Removing unreachable block (ram,0x00893c41) */
/* WARNING: Removing unreachable block (ram,0x00893bb3) */
/* WARNING: Removing unreachable block (ram,0x00893bf3) */
/* WARNING: Removing unreachable block (ram,0x00893c92) */
/* WARNING: Removing unreachable block (ram,0x00893d1b) */
/* WARNING: Removing unreachable block (ram,0x00893dae) */
/* WARNING: Removing unreachable block (ram,0x00893e3f) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00893b60(int param_1)

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
    FUN_00e52ce0(&PTR_DAT_01546e98);
    if (((iVar3 == 0) && (FUN_0099d6f0(), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
      FUN_0099d6f0();
      FUN_00ddf000(*(undefined4 *)(param_1 + 0x10),*(undefined4 *)(param_1 + 0x14),
                   *(undefined4 *)(param_1 + 0x18),*(undefined4 *)(param_1 + 0x1c));
      if (((iVar3 == 0) && (FUN_0099d6f0(), iVar3 == 0)) && (FUN_0099d670(), iVar3 == 0)) {
        FUN_0099d6f0();
        FUN_00ded500(*(undefined4 *)(param_1 + 4),*(undefined4 *)(param_1 + 8));
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

