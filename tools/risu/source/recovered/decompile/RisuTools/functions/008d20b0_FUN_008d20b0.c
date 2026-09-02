/* Address: 008d20b0 | Ghidra name: FUN_008d20b0 */

/* WARNING: Removing unreachable block (ram,0x008d212a) */
/* WARNING: Removing unreachable block (ram,0x008d2133) */
/* WARNING: Removing unreachable block (ram,0x008d20ea) */
/* WARNING: Removing unreachable block (ram,0x008d20f3) */
/* WARNING: Removing unreachable block (ram,0x008d210a) */
/* WARNING: Removing unreachable block (ram,0x008d2113) */
/* WARNING: Removing unreachable block (ram,0x008d2142) */
/* WARNING: Removing unreachable block (ram,0x008d214b) */

undefined4 __fastcall FUN_008d20b0(int param_1,int param_2)

{
  int iVar1;
  
  if ((param_2 == 0) || (*(int *)(param_2 + 4) == 0)) {
                    /* WARNING: Subroutine does not return */
    FUN_00911670();
  }
  iVar1 = FUN_008cf5e0();
  if (iVar1 == 0) {
    FUN_00eae9a0();
    FUN_00890ca0();
    FUN_0091d220();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((*(byte *)(param_1 + 0xc) & 0x10) != 0) {
    return 0;
  }
  if ((*(byte *)(param_1 + 0xd) & 0x10) == 0) {
    FUN_00eae9a0();
    FUN_00890ca0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  return 0;
}

