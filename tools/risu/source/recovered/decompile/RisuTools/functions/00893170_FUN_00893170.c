/* Address: 00893170 | Ghidra name: FUN_00893170 */

int __fastcall FUN_00893170(undefined4 param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = 0;
  if (PTR_FUN_01c21d44 != (undefined *)0x0) {
    FUN_00e8e538();
  }
  iVar1 = FUN_00849750();
  if (iVar1 != 0) {
    iVar2 = FUN_00849770(2);
  }
  if (iVar2 == 0) {
    if (PTR_FUN_01c21c9c != (undefined *)0x0) {
      FUN_00e8e3d3();
    }
    iVar2 = FUN_00cc80a0();
    if ((iVar2 == 0) && (iVar2 = FUN_0084a200(0,param_1), iVar2 == 0)) {
      return 0;
    }
    FUN_00eae9a0();
    FUN_00846fc0();
    iVar2 = FUN_00847730();
  }
  return iVar2;
}

