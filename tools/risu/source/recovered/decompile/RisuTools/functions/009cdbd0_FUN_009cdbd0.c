/* Address: 009cdbd0 | Ghidra name: FUN_009cdbd0 */

void __fastcall FUN_009cdbd0(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int local_1c [2];
  undefined4 local_14;
  
  local_1c[0] = 0;
  if (*(int *)(param_1 + 8) == -0x80000000) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(char *)(param_1 + 0x10) != '\0') {
    if (*(int *)(*(int *)(param_1 + 4) + 0x1c) != 0) {
      uVar1 = FUN_0093dbc0(param_1 + 0xc);
      local_14 = 0;
      FUN_00966f60(*(undefined4 *)(*(int *)(param_1 + 4) + 0x1c));
      local_14 = 1;
      iVar2 = FUN_00d00c00(local_1c);
      iVar3 = local_1c[0];
      if (iVar2 == 0) {
        iVar3 = 0;
      }
      FUN_009671c0();
      if (iVar3 == 0) {
        if (*(int *)(param_1 + 0xc) == -1) {
          iVar3 = FUN_0093df30();
        }
        else {
          iVar3 = FUN_0093e140();
        }
      }
      *param_2 = uVar1;
      param_2[1] = iVar3;
      return;
    }
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

