/* Address: 008c17d0 | Ghidra name: FUN_008c17d0 */

/* WARNING: Removing unreachable block (ram,0x008c1831) */
/* WARNING: Removing unreachable block (ram,0x008c1853) */
/* WARNING: Removing unreachable block (ram,0x008c1841) */
/* WARNING: Removing unreachable block (ram,0x008c185c) */

undefined4 __fastcall FUN_008c17d0(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if (*(char *)(param_1 + 0x14) != '\0') {
                    /* WARNING: Subroutine does not return */
    FUN_00931fb0();
  }
  if ((param_3 != 0) && (*(int *)(param_3 + 0x10) != 0)) {
    uVar2 = FUN_00e52640(param_3);
    return uVar2;
  }
  iVar1 = FUN_008c18f0();
  if (iVar1 != 0) {
    uVar2 = FUN_00e52600();
    return uVar2;
  }
  if (*(int **)(param_1 + 8) != (int *)0x0) {
    (**(code **)(**(int **)(param_1 + 8) + 0x2c))(param_3,1,param_2);
    if (PTR_DAT_01c2399c != (undefined *)0x0) {
      FUN_00e8f3d4();
    }
    return *(undefined4 *)(DAT_01c2bbbc + 4);
  }
  uVar2 = FUN_008c1be0(param_3);
  return uVar2;
}

