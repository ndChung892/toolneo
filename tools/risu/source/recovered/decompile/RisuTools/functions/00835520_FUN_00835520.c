/* Address: 00835520 | Ghidra name: FUN_00835520 */

void __fastcall FUN_00835520(undefined4 *param_1,int param_2,int param_3)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  uint local_14;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  iVar2 = FUN_009bfdf0();
  if (iVar2 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  iVar2 = *(int *)(param_2 + 4);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_009c2c10();
  }
  puVar1 = (undefined *)*param_1;
  if (puVar1 == &DAT_015fffac) {
    iVar3 = param_1[6];
  }
  else {
    iVar3 = FUN_00835b40();
  }
  if (iVar2 - param_3 < iVar3) {
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  local_14 = 0;
  while( true ) {
    if (puVar1 == &DAT_015fffac) {
      iVar2 = param_1[6];
    }
    else {
      iVar2 = FUN_00835b40();
    }
    if (iVar2 <= (int)local_14) {
      return;
    }
    if (*(uint *)(param_1[1] + 4) <= local_14) break;
    uVar5 = *(undefined4 *)(param_1[1] + 8 + local_14 * 4);
    if (*(uint *)(param_1[2] + 4) <= local_14) break;
    uVar6 = *(undefined4 *)(param_1[2] + 8 + local_14 * 4);
    uVar4 = FUN_00eae9a0(uVar6,uVar5);
    FUN_00eaebef(uVar6,uVar5,uVar4);
    FUN_00eaebef();
    iVar2 = FUN_009bfdf0();
    if (iVar2 != 1) {
                    /* WARNING: Subroutine does not return */
      FUN_00931ca0();
    }
    uVar5 = FUN_0090b500();
    FUN_0090a5b0(uVar5);
    local_14 = local_14 + 1;
  }
                    /* WARNING: Subroutine does not return */
  FUN_009c2bf0();
}

