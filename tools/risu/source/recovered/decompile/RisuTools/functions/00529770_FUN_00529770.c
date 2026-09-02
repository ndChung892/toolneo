/* Address: 00529770 | Ghidra name: FUN_00529770 */

void __fastcall FUN_00529770(undefined4 param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  local_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 0;
  iVar1 = FUN_005297e0(&local_30,param_3);
  if (iVar1 != 0) {
    *param_2 = local_30;
    param_2[1] = uStack_2c;
    param_2[2] = uStack_28;
    param_2[3] = uStack_24;
    param_2[4] = local_20;
    param_2[5] = uStack_1c;
    param_2[6] = uStack_18;
    param_2[7] = uStack_14;
    return;
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

