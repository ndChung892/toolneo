/* Address: 00498350 | Ghidra name: FUN_00498350 */

void __thiscall
FUN_00498350(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5
            ,undefined4 param_6,undefined4 param_7)

{
  undefined4 *puVar1;
  int iVar2;
  char local_20;
  int local_1c;
  char local_18;
  int local_14;
  
  FUN_00497f30();
  if (local_18 != '\0') {
    (*(code *)PTR_FUN_01c3f328)();
    puVar1 = (undefined4 *)FUN_0099a9c0();
    if (puVar1 != (undefined4 *)0x0) {
      FUN_00497f30();
      if ((undefined *)*puVar1 == &DAT_015ef128) {
        FUN_005b3eb0();
      }
      else if ((undefined *)*puVar1 == &DAT_015ef28c) {
        FUN_0082a470();
        if (PTR_FUN_01c21c08 != (undefined *)0x0) {
          FUN_00e8c9f3();
        }
        FUN_005b5300();
      }
      else {
        FUN_0082a470();
        if (PTR_FUN_01c21c08 != (undefined *)0x0) {
          FUN_00e8c9f3();
        }
        FUN_005b5300();
      }
      if ((local_18 == local_20) && ((local_18 == '\0' || (local_14 == local_1c)))) {
        if (*(char *)(param_1 + 8) == '\0') {
          if ((undefined *)*puVar1 == &DAT_015ef28c) {
            iVar2 = FUN_00eae9a0();
            FUN_00eaec14();
            FUN_00eaebef();
            FUN_00966f60();
          }
          else if ((undefined *)*puVar1 == &DAT_015ef5b8) {
            iVar2 = FUN_00eae9a0();
            FUN_00eaec14();
            FUN_00eaebef();
            FUN_00966f60();
          }
          else {
            iVar2 = (*(code *)PTR_FUN_01c4ed10)();
          }
          FUN_00498120(iVar2,param_2,param_3,param_4,param_5,param_6,param_7);
          if (iVar2 != 0) {
            (*(code *)PTR_FUN_01c36768)();
          }
          return;
        }
        FUN_00eae9a0();
        FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
  }
  FUN_00eae9a0();
  FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

