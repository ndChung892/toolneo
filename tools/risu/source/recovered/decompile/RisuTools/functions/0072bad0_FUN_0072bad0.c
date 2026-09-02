/* Address: 0072bad0 | Ghidra name: FUN_0072bad0 */

undefined ** __fastcall FUN_0072bad0(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  undefined **local_c;
  
  local_c = (undefined **)0x0;
  if ((param_2 != (undefined4 *)0x0) && ((undefined *)*param_2 == &DAT_016118bc)) {
    if (PTR_FUN_01c21b04 != (undefined *)0x0) {
      FUN_00e8e290();
    }
    iVar1 = FUN_00aa5500(&local_c);
    if (iVar1 != 0) {
      return local_c;
    }
  }
  return &PTR_DAT_01b88084;
}

