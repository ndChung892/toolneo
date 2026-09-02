/* Address: 009fa1a0 | Ghidra name: FUN_009fa1a0 */

int __fastcall FUN_009fa1a0(undefined4 *param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int local_44 [11];
  undefined4 *puStack_18;
  undefined4 local_14;
  undefined4 local_10;
  
  local_44[0] = 0;
  local_44[1] = 0;
  local_44[2] = 0;
  local_44[3] = 0;
  local_44[4] = 0;
  local_44[5] = 0;
  local_44[6] = 0;
  local_44[7] = 0;
  local_44[8] = 0;
  local_44[9] = 0;
  if ((((param_1 != (undefined4 *)0x0) && ((undefined *)*param_1 != &DAT_01620edc)) &&
      ((undefined *)*param_1 != &DAT_016206e8)) && ((undefined *)*param_1 != &DAT_01620758)) {
    param_1 = (undefined4 *)0x0;
  }
  if (param_1 != (undefined4 *)0x0) {
    local_44[10] = 0;
    local_10 = 0;
    local_14 = 0;
    puStack_18 = param_1;
    FUN_009f1990();
    local_44[0] = *(int *)(local_44[4] + 4);
    local_44[2] = 0xffffffff;
    local_44[3] = 0xffffffff;
    local_44[1] = 0;
    if ((local_44[5] != 0) && (iVar1 = FUN_00c1f470(local_44 + 2), iVar1 == 0)) {
      FUN_009c02c0();
      FUN_00906a20();
      FUN_0090e2c0(0,0,4,0);
    }
    piVar2 = local_44;
    piVar3 = local_44 + 6;
    for (iVar1 = 4; iVar1 != 0; iVar1 = iVar1 + -1) {
      *piVar3 = *piVar2;
      piVar2 = piVar2 + 1;
      piVar3 = piVar3 + 1;
    }
    iVar1 = FUN_009f1640();
    while (iVar1 != 0) {
      if (local_44[7] == 0) {
        FUN_0090e2c0(0,0,4,0);
      }
      iVar1 = FUN_009fa2c0();
      if (iVar1 != 0) {
        return iVar1;
      }
      iVar1 = FUN_009f1640();
    }
  }
  return 0;
}

