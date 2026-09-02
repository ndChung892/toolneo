/* Address: 009e5760 | Ghidra name: FUN_009e5760 */

void __fastcall FUN_009e5760(int param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int local_40 [12];
  
  local_40[0] = 0;
  local_40[1] = 0;
  local_40[2] = 0;
  local_40[3] = 0;
  local_40[4] = 0;
  local_40[5] = 0;
  local_40[6] = 0;
  local_40[7] = 0;
  local_40[8] = 0;
  local_40[9] = 0;
  if (*(int *)(param_1 + 4) == 0) {
    local_40[10] = 0;
    local_40[0xb] = 0;
    FUN_009f1990();
    local_40[0] = *(int *)(local_40[4] + 4);
    local_40[2] = 0xffffffff;
    local_40[3] = 0xffffffff;
    local_40[1] = 0;
    if ((local_40[5] != 0) && (iVar1 = FUN_00c1f470(local_40 + 2), iVar1 == 0)) {
      FUN_009c02c0();
      FUN_00906a20();
      FUN_0090e2c0(0,0,4,0);
    }
    piVar2 = local_40;
    piVar3 = local_40 + 6;
    for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar3 = *piVar2;
      piVar2 = piVar2 + 1;
      piVar3 = piVar3 + 1;
    }
    iVar1 = FUN_009f1640();
    while (iVar1 != 0) {
      if (local_40[7] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      FUN_009e5b00();
      if ((local_40[10] == 0) || (local_40[0xb] == *(uint *)(local_40[10] + 4))) {
        FUN_00e3f6a0(&PTR_DAT_0155cb9c);
      }
      if (*(uint *)(local_40[10] + 4) <= (uint)local_40[0xb]) {
        local_40[0xb] = local_40[0xb] + 1U;
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      local_40[0xb] = local_40[0xb] + 1U;
      FUN_00eaec39();
      FUN_00eaec5e();
      iVar1 = FUN_009f1640();
    }
    if ((local_40[10] != 0) && (local_40[0xb] != *(uint *)(local_40[10] + 4))) {
      FUN_00e3f6a0(&PTR_DAT_0155cb9c);
    }
    FUN_00eaebca();
  }
  return;
}

