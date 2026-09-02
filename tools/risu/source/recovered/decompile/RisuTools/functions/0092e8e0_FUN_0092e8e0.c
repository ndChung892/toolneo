/* Address: 0092e8e0 | Ghidra name: FUN_0092e8e0 */

/* WARNING: Removing unreachable block (ram,0x0092ea29) */
/* WARNING: Removing unreachable block (ram,0x0092ea31) */
/* WARNING: Removing unreachable block (ram,0x0092eb67) */
/* WARNING: Removing unreachable block (ram,0x0092ea3d) */
/* WARNING: Removing unreachable block (ram,0x0092ea51) */
/* WARNING: Removing unreachable block (ram,0x0092ea5e) */
/* WARNING: Removing unreachable block (ram,0x0092ea6e) */
/* WARNING: Removing unreachable block (ram,0x0092eb87) */
/* WARNING: Removing unreachable block (ram,0x0092ea66) */
/* WARNING: Removing unreachable block (ram,0x0092ea59) */
/* WARNING: Removing unreachable block (ram,0x0092ea80) */
/* WARNING: Removing unreachable block (ram,0x0092ea86) */
/* WARNING: Removing unreachable block (ram,0x0092ea97) */

void __fastcall FUN_0092e8e0(uint param_1,uint param_2,uint *param_3,int param_4,uint param_5)

{
  short sVar1;
  uint uVar2;
  uint local_14;
  
  local_14 = *param_3;
  uVar2 = 10;
  if (param_1 != 0xffffffff) {
    uVar2 = param_1;
  }
  if ((0x10 < uVar2) || ((0xfafbU >> (uVar2 & 0x1f) & 1) != 0)) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01beef04);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_5 <= local_14) {
    FUN_00eae9a0();
    FUN_00911790();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (((param_2 & 0x1000) == 0) && (FUN_0092ee80(param_4,param_5), local_14 == param_5)) {
    FUN_00eae9a0();
    FUN_0091d220();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_5 <= local_14) goto LAB_0092eb8d;
  sVar1 = *(short *)(param_4 + local_14 * 2);
  if (sVar1 == 0x2d) {
    if (uVar2 != 10) {
      FUN_00eae9a0();
      FUN_00911540();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if ((param_2 & 0x200) != 0) {
      FUN_00eae9a0();
      FUN_0092e8a0();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
LAB_0092e99f:
    local_14 = local_14 + 1;
  }
  else if (sVar1 == 0x2b) goto LAB_0092e99f;
  if ((((param_1 != 0xffffffff) && (param_1 != 0x10)) || ((int)param_5 <= (int)(local_14 + 1))) ||
     ((local_14 < param_5 &&
      ((*(short *)(param_4 + local_14 * 2) != 0x30 || (local_14 + 1 < param_5)))))) {
    FUN_0092ef00((param_2 & 0x200) != 0,param_4,param_5);
    FUN_00eae9a0();
    FUN_0091d220();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
LAB_0092eb8d:
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

